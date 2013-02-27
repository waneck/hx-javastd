package com.sun.security.sasl.digest;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
@:internal extern class DigestMD5Base extends com.sun.security.sasl.util.AbstractSaslImpl
{
	/* Constants - defined in RFC2831 */
	private static var MAX_CHALLENGE_LENGTH(default, null) : Int;
	
	private static var MAX_RESPONSE_LENGTH(default, null) : Int;
	
	private static var DEFAULT_MAXBUF(default, null) : Int;
	
	/* Supported ciphers for 'auth-conf' */
	private static var DES3(default, null) : Int;
	
	private static var RC4(default, null) : Int;
	
	private static var DES(default, null) : Int;
	
	private static var RC4_56(default, null) : Int;
	
	private static var RC4_40(default, null) : Int;
	
	private static var CIPHER_TOKENS(default, null) : java.NativeArray<String>;
	
	/*
	* If QOP is set to 'auth-conf', a DIGEST-MD5 mechanism must have
	* support for the DES and Triple DES cipher algorithms (optionally,
	* support for RC4 [128/56/40 bit keys] ciphers) to provide for
	* confidentiality. See RFC 2831 for details. This implementation
	* provides support for DES, Triple DES and RC4 ciphers.
	*
	* The value of strength effects the strength of cipher used. The mappings
	* of 'high', 'medium', and 'low' give the following behaviour.
	*
	*  HIGH_STRENGTH   - Triple DES
	*                  - RC4 (128bit)
	*  MEDIUM_STRENGTH - DES
	*                  - RC4 (56bit)
	*  LOW_SRENGTH     - RC4 (40bit)
	*/
	private static var DES_3_STRENGTH(default, null) : java.StdTypes.Int8;
	
	private static var RC4_STRENGTH(default, null) : java.StdTypes.Int8;
	
	private static var DES_STRENGTH(default, null) : java.StdTypes.Int8;
	
	private static var RC4_56_STRENGTH(default, null) : java.StdTypes.Int8;
	
	private static var RC4_40_STRENGTH(default, null) : java.StdTypes.Int8;
	
	private static var UNSET(default, null) : java.StdTypes.Int8;
	
	private static var CIPHER_MASKS(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	private static var EMPTY_BYTE_ARRAY(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/* Used to track progress of authentication; step numbers from RFC 2831 */
	private var step : Int;
	
	/* Used to obtain authorization, pw info, canonicalized authzid for server */
	private var cbh : javax.security.auth.callback.CallbackHandler;
	
	private var secCtx : com.sun.security.sasl.digest.SecurityCtx;
	
	private var H_A1 : java.NativeArray<java.StdTypes.Int8>;
	
	private var nonce : java.NativeArray<java.StdTypes.Int8>;
	
	/* Variables set when parsing directives in digest challenge/response. */
	private var negotiatedStrength : String;
	
	private var negotiatedCipher : String;
	
	private var negotiatedQop : String;
	
	private var negotiatedRealm : String;
	
	private var useUTF8 : Bool;
	
	private var encoding : String;
	
	private var digestUri : String;
	
	private var authzid : String;
	
	/**
	* Constucts an instance of DigestMD5Base. Calls super constructor
	* to parse properties for mechanism.
	*
	* @param props A map of property/value pairs
	* @param className name of class to use for logging
	* @param firstStep number of first step in authentication state machine
	* @param digestUri digestUri used in authentication
	* @param cbh callback handler used to get info required for auth
	*
	* @throws SaslException If invalid value found in props.
	*/
	@:overload private function new(props : java.util.Map<Dynamic, Dynamic>, className : String, firstStep : Int, digestUri : String, cbh : javax.security.auth.callback.CallbackHandler) : Void;
	
	/**
	* Retrieves the SASL mechanism IANA name.
	*
	* @return The String "DIGEST-MD5"
	*/
	@:overload public function getMechanismName() : String;
	
	/**
	* Unwrap the incoming message using the wrap method of the secCtx object
	* instance.
	*
	* @param incoming The byte array containing the incoming bytes.
	* @param start The offset from which to read the byte array.
	* @param len The number of bytes to read from the offset.
	* @return The unwrapped message according to either the integrity or
	* privacy quality-of-protection specifications.
	* @throws SaslException if an error occurs when unwrapping the incoming
	* message
	*/
	@:overload public function unwrap(incoming : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Wrap outgoing bytes using the wrap method of the secCtx object
	* instance.
	*
	* @param outgoing The byte array containing the outgoing bytes.
	* @param start The offset from which to read the byte array.
	* @param len The number of bytes to read from the offset.
	* @return The wrapped message according to either the integrity or
	* privacy quality-of-protection specifications.
	* @throws SaslException if an error occurs when wrapping the outgoing
	* message
	*/
	@:overload public function wrap(outgoing : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function dispose() : Void;
	
	@:overload override public function getNegotiatedProperty(propName : String) : Dynamic;
	
	@:overload @:final private static function generateNonce() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Checks if a byte[] contains characters that must be quoted
	* and write the resulting, possibly escaped, characters to out.
	*/
	@:overload private static function writeQuotedStringValue(out : java.io.ByteArrayOutputStream, buf : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload private static function quotedStringValue(str : String) : String;
	
	/**
	* Convert a byte array to hexadecimal string.
	*
	* @param a non-null byte array
	* @return a non-null String contain the HEX value
	*/
	@:overload private function binaryToHex(digest : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Used to convert username-value, passwd or realm to 8859_1 encoding
	* if all chars in string are within the 8859_1 (Latin 1) encoding range.
	*
	* @param a non-null String
	* @return a non-nuill byte array containing the correct character encoding
	* for username, paswd or realm.
	*/
	@:overload private function stringToByte_8859_1(str : String) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private static function getPlatformCiphers() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Assembles response-value for digest-response.
	*
	* @param authMethod "AUTHENTICATE" for client-generated response;
	*        "" for server-generated response
	* @return A non-null byte array containing the repsonse-value.
	* @throws NoSuchAlgorithmException if the platform does not have MD5
	* digest support.
	* @throws UnsupportedEncodingException if a an error occurs
	* encoding a string into either Latin-1 or UTF-8.
	* @throws IOException if an error occurs writing to the output
	* byte array buffer.
	*/
	@:overload private function generateResponseValue(authMethod : String, digestUriValue : String, qopValue : String, usernameValue : String, realmValue : String, passwdValue : java.NativeArray<java.StdTypes.Char16>, nonceValue : java.NativeArray<java.StdTypes.Int8>, cNonceValue : java.NativeArray<java.StdTypes.Int8>, nonceCount : Int, authzidValue : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Takes 'nonceCount' value and returns HEX value of the value.
	*
	* @return A non-null String representing the current NONCE-COUNT
	*/
	@:overload private static function nonceCountToHex(count : Int) : String;
	
	/**
	* Parses digest-challenge string, extracting each token
	* and value(s)
	*
	* @param buf A non-null digest-challenge string.
	* @param multipleAllowed true if multiple qop or realm or QOP directives
	*  are allowed.
	* @throws SaslException if the buf cannot be parsed according to RFC 2831
	*/
	@:overload private static function parseDirectives(buf : java.NativeArray<java.StdTypes.Int8>, keyTable : java.NativeArray<String>, realmChoices : java.util.List<java.NativeArray<java.StdTypes.Int8>>, realmIndex : Int) : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	
}
/**
* Implementation of the SecurityCtx interface allowing for messages
* between the client and server to be integrity checked. After a
* successful DIGEST-MD5 authentication, integtrity checking is invoked
* if the SASL QOP (quality-of-protection) is set to 'auth-int'.
* <p>
* Further details on the integrity-protection mechanism can be found
* at section 2.3 - Integrity protection in the
* <a href="http://www.ietf.org/rfc/rfc2831.txt">RFC2831</a> definition.
*
* @author Jonathan Bruce
*/
@:native('com$sun$security$sasl$digest$DigestMD5Base$DigestIntegrity') @:internal extern class DigestMD5Base_DigestIntegrity implements com.sun.security.sasl.digest.SecurityCtx
{
	/* Key pairs for integrity checking */
	private var myKi : java.NativeArray<java.StdTypes.Int8>;
	
	private var peerKi : java.NativeArray<java.StdTypes.Int8>;
	
	private var mySeqNum : Int;
	
	private var peerSeqNum : Int;
	
	private var messageType(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	private var sequenceNum(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Append MAC onto outgoing message.
	*
	* @param outgoing A non-null byte array containing the outgoing message.
	* @param start The offset from which to read the byte array.
	* @param len The non-zero number of bytes for be read from the offset.
	* @return The message including the integrity MAC
	* @throws SaslException if an error is encountered converting a string
	* into a UTF-8 byte encoding, or if the MD5 message digest algorithm
	* cannot be found or if there is an error writing to the byte array
	* output buffers.
	*/
	@:overload public function wrap(outgoing : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Return verified message without MAC - only if the received MAC
	* and re-generated MAC are the same.
	*
	* @param incoming A non-null byte array containing the incoming
	* message.
	* @param start The offset from which to read the byte array.
	* @param len The non-zero number of bytes to read from the offset
	* position.
	* @return The verified message or null if integrity checking fails.
	* @throws SaslException if an error is encountered converting a string
	* into a UTF-8 byte encoding, or if the MD5 message digest algorithm
	* cannot be found or if there is an error writing to the byte array
	* output buffers
	*/
	@:overload public function unwrap(incoming : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Generates MAC to be appended onto out-going messages.
	*
	* @param Ki A non-null byte array containing the key for the digest
	* @param SeqNum A non-null byte array contain the sequence number
	* @param msg  The message to be digested
	* @param start The offset from which to read the msg byte array
	* @param len The non-zero number of bytes to be read from the offset
	* @return The MAC of a message.
	*
	* @throws SaslException if an error occurs when generating MAC.
	*/
	@:overload private function getHMAC(Ki : java.NativeArray<java.StdTypes.Int8>, seqnum : java.NativeArray<java.StdTypes.Int8>, msg : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Increment own sequence number and set answer in NBO sequenceNum field.
	*/
	@:overload private function incrementSeqNum() : Void;
	
	
}
/**
* Implementation of the SecurityCtx interface allowing for messages
* between the client and server to be integrity checked and encrypted.
* After a successful DIGEST-MD5 authentication, privacy is invoked if the
* SASL QOP (quality-of-protection) is set to 'auth-conf'.
* <p>
* Further details on the integrity-protection mechanism can be found
* at section 2.4 - Confidentiality protection in
* <a href="http://www.ietf.org/rfc/rfc2831.txt">RFC2831</a> definition.
*
* @author Jonathan Bruce
*/
@:native('com$sun$security$sasl$digest$DigestMD5Base$DigestPrivacy') @:internal extern class DigestMD5Base_DigestPrivacy extends DigestMD5Base_DigestIntegrity implements com.sun.security.sasl.digest.SecurityCtx
{
	/**
	* Encrypt out-going message.
	*
	* @param outgoing A non-null byte array containing the outgoing message.
	* @param start The offset from which to read the byte array.
	* @param len The non-zero number of bytes to be read from the offset.
	* @return The encrypted message.
	*
	* @throws SaslException if an error occurs when writing to or from the
	* byte array output buffers or if the MD5 message digest algorithm
	* cannot loaded or if an UTF-8 encoding is not supported on the
	* platform.
	*/
	@:overload override public function wrap(outgoing : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/*
	* Decrypt incoming messages and verify their integrity.
	*
	* @param incoming A non-null byte array containing the incoming
	* encrypted message.
	* @param start The offset from which to read the byte array.
	* @param len The non-zero number of bytes to read from the offset
	* position.
	* @return The decrypted, verified message or null if integrity
	* checking
	* fails.
	* @throws SaslException if there are the SASL buffer is empty or if
	* if an error occurs reading the SASL buffer.
	*/
	@:overload override public function unwrap(incoming : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}

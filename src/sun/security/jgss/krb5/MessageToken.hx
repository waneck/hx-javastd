package sun.security.jgss.krb5;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MessageToken extends sun.security.jgss.krb5.Krb5Token
{
	/**
	* Used to obtain the GSSHeader that was at the start of this
	* token.
	*/
	@:overload @:public @:final public function getGSSHeader() : sun.security.jgss.GSSHeader;
	
	/**
	* Used to obtain the token id that was contained in this token.
	* @return the token id in the token
	*/
	@:overload @:public @:final public function getTokenId() : Int;
	
	/**
	* Used to obtain the encrypted sequence number in this token.
	* @return the encrypted sequence number in the token
	*/
	@:overload @:public @:final public function getEncSeqNumber() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Used to obtain the checksum that was contained in this token.
	* @return the checksum in the token
	*/
	@:overload @:public @:final public function getChecksum() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Used to determine if this token contains any encrypted data.
	* @return true if it contains any encrypted data, false if there is only
	* plaintext data or if there is no data.
	*/
	@:overload @:public @:final public function getConfState() : Bool;
	
	/**
	* Generates the checksum field and the encrypted sequence number
	* field. The encrypted sequence number uses the 8 bytes of the checksum
	* as an initial vector in a fixed DesCbc algorithm.
	*
	* @param prop the MessageProp structure that determines what sort of
	* checksum and sealing algorithm should be used. The lower byte
	* of qop determines the checksum algorithm while the upper byte
	* determines the signing algorithm.
	*       Checksum values are:
	*           0 - default (DES_MAC)
	*           1 - MD5
	*           2 - DES_MD5
	*           3 - DES_MAC
	*           4 - HMAC_SHA1
	*       Sealing values are:
	*           0 - default (DES)
	*           1 - DES
	*           2 - DES3-KD
	*
	* @param optionalHeader an optional header that will be processed first
	* during  checksum calculation
	*
	* @param data the application data to checksum
	* @param offset the offset where the data starts
	* @param len the length of the data
	*
	* @param optionalTrailer an optional trailer that will be processed
	* last during checksum calculation. e.g., padding that should be
	* appended to the application data
	*
	* @throws GSSException if an error occurs in the checksum calculation or
	* encryption sequence number calculation.
	*/
	@:overload @:public public function genSignAndSeqNumber(prop : org.ietf.jgss.MessageProp, optionalHeader : java.NativeArray<java.StdTypes.Int8>, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, optionalTrailer : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Verifies that the checksum field and sequence number direction bytes
	* are valid and consistent with the application data.
	*
	* @param optionalHeader an optional header that will be processed first
	* during checksum calculation.
	*
	* @param data the application data
	* @param offset the offset where the data begins
	* @param len the length of the application data
	*
	* @param optionalTrailer an optional trailer that will be processed last
	* during checksum calculation. e.g., padding that should be appended to
	* the application data
	*
	* @throws GSSException if an error occurs in the checksum calculation or
	* encryption sequence number calculation.
	*/
	@:overload @:public @:final public function verifySignAndSeqNumber(optionalHeader : java.NativeArray<java.StdTypes.Int8>, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, optionalTrailer : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload @:public @:final public function getSequenceNumber() : Int;
	
	/**
	* Encodes a GSSHeader and this token onto an OutputStream.
	*
	* @param os the OutputStream to which this should be written
	* @throws GSSException if an error occurs while writing to the OutputStream
	*/
	@:overload @:public public function encode(os : java.io.OutputStream) : Void;
	
	/**
	* Obtains the size of this token. Note that this excludes the size of
	* the GSSHeader.
	* @return token size
	*/
	@:overload @:protected private function getKrb5TokenSize() : Int;
	
	@:overload @:protected @:final private function getTokenSize() : Int;
	
	@:native('getTokenSize') @:overload @:protected @:static @:final private static function _getTokenSize(ch : sun.security.jgss.krb5.CipherHelper) : Int;
	
	/**
	* Obtains the encryption algorithm that should be used in this token
	* given the state of confidentiality the application requested.
	* Requested qop must be consistent with negotiated session key.
	* @param confRequested true if the application desired confidentiality
	* on this token, false otherwise
	* @param qop the qop requested by the application
	* @throws GSSException if qop is incompatible with the negotiated
	*         session key
	*/
	@:overload @:protected @:abstract private function getSealAlg(confRequested : Bool, qop : Int) : Int;
	
	/**
	* Determine signing algorithm based on QOP.
	*/
	@:overload @:protected private function getSgnAlg(qop : Int) : Int;
	
	
}
/**
* This inner class represents the initial portion of the message token
* and contains information about the checksum and encryption algorithms
* that are in use. It constitutes the first 8 bytes of the
* message token:
* <pre>
*     0..1           TOK_ID          Identification field.
*                                    01 01 - Mic token
*                                    02 01 - Wrap token
*     2..3           SGN_ALG         Checksum algorithm indicator.
*                                    00 00 - DES MAC MD5
*                                    01 00 - MD2.5
*                                    02 00 - DES MAC
*                                    04 00 - HMAC SHA1 DES3-KD
*                                    11 00 - RC4-HMAC
*     4..5           SEAL_ALG        ff ff - none
*                                    00 00 - DES
*                                    02 00 - DES3-KD
*                                    10 00 - RC4-HMAC
*     6..7           Filler          Contains ff ff
* </pre>
*/
@:native('sun$security$jgss$krb5$MessageToken$MessageTokenHeader') @:internal extern class MessageToken_MessageTokenHeader
{
	/**
	* Constructs a MessageTokenHeader for the specified token type with
	* appropriate checksum and encryption algorithms fields.
	*
	* @param tokenId the token id for this mesage token
	* @param conf true if confidentiality will be resuested with this
	* message token, false otherwise.
	* @param qop the value of the quality of protection that will be
	* desired.
	*/
	@:overload @:public public function new(tokenId : Int, conf : Bool, qop : Int) : Void;
	
	/**
	* Constructs a MessageTokenHeader by reading it from an InputStream
	* and sets the appropriate confidentiality and quality of protection
	* values in a MessageProp structure.
	*
	* @param is the InputStream to read from
	* @param prop the MessageProp to populate
	* @throws IOException is an error occurs while reading from the
	* InputStream
	*/
	@:overload @:public public function new(is : java.io.InputStream, prop : org.ietf.jgss.MessageProp) : Void;
	
	/**
	* Encodes this MessageTokenHeader onto an OutputStream
	* @param os the OutputStream to write to
	* @throws IOException is an error occurs while writing
	*/
	@:overload @:public @:final public function encode(os : java.io.OutputStream) : Void;
	
	/**
	* Returns the token id for the message token.
	* @return the token id
	* @see sun.security.jgss.krb5.Krb5Token#MIC_ID
	* @see sun.security.jgss.krb5.Krb5Token#WRAP_ID
	*/
	@:overload @:public @:final public function getTokenId() : Int;
	
	/**
	* Returns the sign algorithm for the message token.
	* @return the sign algorithm
	* @see sun.security.jgss.krb5.MessageToken#SIGN_DES_MAC
	* @see sun.security.jgss.krb5.MessageToken#SIGN_DES_MAC_MD5
	*/
	@:overload @:public @:final public function getSignAlg() : Int;
	
	/**
	* Returns the seal algorithm for the message token.
	* @return the seal algorithm
	* @see sun.security.jgss.krb5.MessageToken#SEAL_ALG_DES
	* @see sun.security.jgss.krb5.MessageToken#SEAL_ALG_NONE
	*/
	@:overload @:public @:final public function getSealAlg() : Int;
	
	/**
	* Returns the bytes of this header.
	* @return 8 bytes that form this header
	*/
	@:overload @:public @:final public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	
}

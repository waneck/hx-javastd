package sun.security.jgss.krb5;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MessageToken_v2 extends sun.security.jgss.krb5.Krb5Token
{
	/**
	* This class is a base class for new GSS token definitions, as defined
	* in RFC 4121, that pertain to per-message GSS-API calls. Conceptually
	* GSS-API has two types of per-message tokens: WrapToken and MicToken.
	* They differ in the respect that a WrapToken carries additional plaintext
	* or ciphertext application data besides just the sequence number and
	* checksum. This class encapsulates the commonality in the structure of
	* the WrapToken and the MicToken. This structure can be represented as:
	* <p>
	* <pre>
	* Wrap Tokens
	*
	*     Octet no   Name        Description
	*    ---------------------------------------------------------------
	*      0..1     TOK_ID     Identification field.  Tokens emitted by
	*                          GSS_Wrap() contain the hex value 05 04
	*                          expressed in big-endian order in this field.
	*      2        Flags      Attributes field, as described in section
	*                          4.2.2.
	*      3        Filler     Contains the hex value FF.
	*      4..5     EC         Contains the "extra count" field, in big-
	*                          endian order as described in section 4.2.3.
	*      6..7     RRC        Contains the "right rotation count" in big
	*                          endian order, as described in section 4.2.5.
	*      8..15    SND_SEQ    Sequence number field in clear text,
	*                          expressed in big-endian order.
	*      16..last Data       Encrypted data for Wrap tokens with
	*                          confidentiality, or plaintext data followed
	*                          by the checksum for Wrap tokens without
	*                          confidentiality, as described in section
	*                          4.2.4.
	* MIC Tokens
	*
	*     Octet no   Name        Description
	*     -----------------------------------------------------------------
	*      0..1     TOK_ID     Identification field.  Tokens emitted by
	*                          GSS_GetMIC() contain the hex value 04 04
	*                          expressed in big-endian order in this field.
	*      2        Flags      Attributes field, as described in section
	*                          4.2.2.
	*      3..7     Filler     Contains five octets of hex value FF.
	*      8..15    SND_SEQ    Sequence number field in clear text,
	*                          expressed in big-endian order.
	*      16..last SGN_CKSUM  Checksum of the "to-be-signed" data and
	*                          octet 0..15, as described in section 4.2.4.
	*
	* </pre>
	* <p>
	* This class is the super class of WrapToken_v2 and MicToken_v2. The token's
	* header (bytes[0..15]) and data (byte[16..]) are saved in tokenHeader and
	* tokenData fields. Since there is no easy way to find out the exact length
	* of a WrapToken_v2 token from any header info, in the case of reading from
	* stream, we read all available() bytes into the token.
	* <p>
	* All read actions are performed in this super class. On the write part, the
	* super class only write the tokenHeader, and the content writing is inside
	* child classes.
	*
	* @author Seema Malkani
	*/
	private static var TOKEN_HEADER_SIZE(default, null) : Int;
	
	/**
	* The size of the random confounder used in a WrapToken.
	*/
	private static var CONFOUNDER_SIZE(default, null) : Int;
	
	private var tokenData : java.NativeArray<java.StdTypes.Int8>;
	
	private var tokenDataLen : Int;
	
	/**
	* Used to obtain the token id that was contained in this token.
	* @return the token id in the token
	*/
	@:overload @:final public function getTokenId() : Int;
	
	/**
	* Used to obtain the key_usage type for this token.
	* @return the key_usage for the token
	*/
	@:overload @:final public function getKeyUsage() : Int;
	
	/**
	* Used to determine if this token contains any encrypted data.
	* @return true if it contains any encrypted data, false if there is only
	* plaintext data or if there is no data.
	*/
	@:overload @:final public function getConfState() : Bool;
	
	/**
	* Generates the checksum field and the sequence number field.
	*
	* @param prop the MessageProp structure
	* @param data the application data to checksum
	* @param offset the offset where the data starts
	* @param len the length of the data
	*
	* @throws GSSException if an error occurs in the checksum calculation or
	* sequence number calculation.
	*/
	@:overload public function genSignAndSeqNumber(prop : org.ietf.jgss.MessageProp, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Verifies the validity of checksum field
	*
	* @param data the application data
	* @param offset the offset where the data begins
	* @param len the length of the application data
	*
	* @throws GSSException if an error occurs in the checksum calculation
	*/
	@:overload @:final public function verifySign(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Bool;
	
	@:overload @:final public function getSequenceNumber() : Int;
	
	/**
	* Encodes a MessageTokenHeader onto an OutputStream.
	*
	* @param os the OutputStream to which this should be written
	* @throws IOException is an error occurs while writing to the OutputStream
	*/
	@:overload private function encodeHeader(os : java.io.OutputStream) : Void;
	
	/**
	* Encodes a MessageToken_v2 onto an OutputStream.
	*
	* @param os the OutputStream to which this should be written
	* @throws IOException is an error occurs while encoding the token
	*/
	@:overload @:abstract public function encode(os : java.io.OutputStream) : Void;
	
	@:overload @:final private function getTokenHeader() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/**
* This inner class represents the initial portion of the message token.
* It constitutes the first 16 bytes of the message token.
*/
@:native('sun$security$jgss$krb5$MessageToken_v2$MessageTokenHeader') @:internal extern class MessageToken_v2_MessageTokenHeader
{
	@:overload public function new(tokenId : Int, conf : Bool) : Void;
	
	/**
	* Reads a MessageTokenHeader from an InputStream and sets the
	* appropriate confidentiality and quality of protection
	* values in a MessageProp structure.
	*
	* @param is the InputStream to read from
	* @param prop the MessageProp to populate
	* @throws IOException is an error occurs while reading from the
	* InputStream
	*/
	@:overload public function new(is : java.io.InputStream, prop : org.ietf.jgss.MessageProp, tokId : Int) : Void;
	
	/**
	* Encodes this MessageTokenHeader onto an OutputStream
	* @param os the OutputStream to write to
	* @throws IOException is an error occurs while writing
	*/
	@:overload @:final public function encode(os : java.io.OutputStream) : Void;
	
	/**
	* Returns the token id for the message token.
	* @return the token id
	* @see sun.security.jgss.krb5.Krb5Token#MIC_ID_v2
	* @see sun.security.jgss.krb5.Krb5Token#WRAP_ID_v2
	*/
	@:overload @:final public function getTokenId() : Int;
	
	/**
	* Returns the bytes of this header.
	* @return 8 bytes that form this header
	*/
	@:overload @:final public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	
}

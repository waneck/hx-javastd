package com.sun.org.apache.xml.internal.security.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class Base64
{
	/** Field BASE64DEFAULTLENGTH */
	public static var BASE64DEFAULTLENGTH(default, null) : Int;
	
	/**
	* Encode in Base64 the given <code>{@link BigInteger}<code>.
	*
	* @param big
	* @return String with Base64 encoding
	*/
	@:overload @:final public static function encode(big : java.math.BigInteger) : String;
	
	/**
	* Returns a byte-array representation of a <code>{@link BigInteger}<code>.
	* No sign-bit is outputed.
	*
	* <b>N.B.:</B> <code>{@link BigInteger}<code>'s toByteArray
	* retunrs eventually longer arrays because of the leading sign-bit.
	*
	* @param big <code>BigInteger<code> to be converted
	* @param bitlen <code>int<code> the desired length in bits of the representation
	* @return a byte array with <code>bitlen</code> bits of <code>big</code>
	*/
	@:overload @:final public static function encode(big : java.math.BigInteger, bitlen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method decodeBigIntegerFromElement
	*
	* @param element
	* @return the biginter obtained from the node
	* @throws Base64DecodingException
	*/
	@:overload @:final public static function decodeBigIntegerFromElement(element : org.w3c.dom.Element) : java.math.BigInteger;
	
	/**
	* Method decodeBigIntegerFromText
	*
	* @param text
	* @return the biginter obtained from the text node
	* @throws Base64DecodingException
	*/
	@:overload @:final public static function decodeBigIntegerFromText(text : org.w3c.dom.Text) : java.math.BigInteger;
	
	/**
	* This method takes an (empty) Element and a BigInteger and adds the
	* base64 encoded BigInteger to the Element.
	*
	* @param element
	* @param biginteger
	*/
	@:overload @:final public static function fillElementWithBigInteger(element : org.w3c.dom.Element, biginteger : java.math.BigInteger) : Void;
	
	/**
	* Method decode
	*
	* Takes the <CODE>Text</CODE> children of the Element and interprets
	* them as input for the <CODE>Base64.decode()</CODE> function.
	*
	* @param element
	* @return the byte obtained of the decoding the element
	* $todo$ not tested yet
	* @throws Base64DecodingException
	*/
	@:overload @:final public static function decode(element : org.w3c.dom.Element) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method encodeToElement
	*
	* @param doc
	* @param localName
	* @param bytes
	* @return an Element with the base64 encoded in the text.
	*
	*/
	@:overload @:final public static function encodeToElement(doc : org.w3c.dom.Document, localName : String, bytes : java.NativeArray<java.StdTypes.Int8>) : org.w3c.dom.Element;
	
	/**
	* Method decode
	*
	*
	* @param base64
	* @return the UTF bytes of the base64
	* @throws Base64DecodingException
	*
	*/
	@:overload @:final public static function decode(base64 : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Encode a byte array and fold lines at the standard 76th character unless
	* ignore line breaks property is set.
	*
	* @param binaryData <code>byte[]<code> to be base64 encoded
	* @return the <code>String<code> with encoded data
	*/
	@:overload @:final public static function encode(binaryData : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* Base64 decode the lines from the reader and return an InputStream
	* with the bytes.
	*
	*
	* @param reader
	* @return InputStream with the decoded bytes
	* @exception IOException passes what the reader throws
	* @throws IOException
	* @throws Base64DecodingException
	*/
	@:overload @:final public static function decode(reader : java.io.BufferedReader) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:final private static function isWhiteSpace(octect : java.StdTypes.Int8) : Bool;
	
	@:overload @:final private static function isPad(octect : java.StdTypes.Int8) : Bool;
	
	/**
	* Encode a byte array in Base64 format and return an optionally
	* wrapped line.
	*
	* @param binaryData <code>byte[]</code> data to be encoded
	* @param length <code>int<code> length of wrapped lines; No wrapping if less than 4.
	* @return a <code>String</code> with encoded data
	*/
	@:overload @:final public static function encode(binaryData : java.NativeArray<java.StdTypes.Int8>, length : Int) : String;
	
	/**
	* Decodes Base64 data into octects
	*
	* @param encoded String containing base64 encoded data
	* @return byte array containing the decoded data
	* @throws Base64DecodingException if there is a problem decoding the data
	*/
	@:overload @:final public static function decode(encoded : String) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:final private static function getBytesInternal(s : String, result : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:final private static function decodeInternal(base64Data : java.NativeArray<java.StdTypes.Int8>, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decodes Base64 data into  outputstream
	*
	* @param base64Data String containing Base64 data
	* @param os the outputstream
	* @throws IOException
	* @throws Base64DecodingException
	*/
	@:overload @:final public static function decode(base64Data : String, os : java.io.OutputStream) : Void;
	
	/**
	* Decodes Base64 data into  outputstream
	*
	* @param base64Data Byte array containing Base64 data
	* @param os the outputstream
	* @throws IOException
	* @throws Base64DecodingException
	*/
	@:overload @:final public static function decode(base64Data : java.NativeArray<java.StdTypes.Int8>, os : java.io.OutputStream) : Void;
	
	@:overload @:final private static function decode(base64Data : java.NativeArray<java.StdTypes.Int8>, os : java.io.OutputStream, len : Int) : Void;
	
	/**
	* Decodes Base64 data into  outputstream
	*
	* @param is containing Base64 data
	* @param os the outputstream
	* @throws IOException
	* @throws Base64DecodingException
	*/
	@:overload @:final public static function decode(is : java.io.InputStream, os : java.io.OutputStream) : Void;
	
	/**
	* remove WhiteSpace from MIME containing encoded Base64 data.
	*
	* @param data  the byte array of base64 data (with WS)
	* @return      the new length
	*/
	@:overload @:final private static function removeWhiteSpace(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	
}

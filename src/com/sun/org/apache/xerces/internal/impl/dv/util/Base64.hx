package com.sun.org.apache.xerces.internal.impl.dv.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* This class provides encode/decode for RFC 2045 Base64 as
* defined by RFC 2045, N. Freed and N. Borenstein.
* RFC 2045: Multipurpose Internet Mail Extensions (MIME)
* Part One: Format of Internet Message Bodies. Reference
* 1996 Available at: http://www.ietf.org/rfc/rfc2045.txt
* This class is used by XML Schema binary format validation
*
* This implementation does not encode/decode streaming
* data. You need the data that you will encode/decode
* already on a byte arrray.
*
* @xerces.internal
*
* @author Jeffrey Rodriguez
* @author Sandy Gao
*/
extern class Base64
{
	@:overload private static function isWhiteSpace(octect : java.StdTypes.Char16) : Bool;
	
	@:overload private static function isPad(octect : java.StdTypes.Char16) : Bool;
	
	@:overload private static function isData(octect : java.StdTypes.Char16) : Bool;
	
	@:overload private static function isBase64(octect : java.StdTypes.Char16) : Bool;
	
	/**
	* Encodes hex octects into Base64
	*
	* @param binaryData Array containing binaryData
	* @return Encoded Base64 array
	*/
	@:overload public static function encode(binaryData : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* Decodes Base64 data into octects
	*
	* @param encoded string containing Base64 data
	* @return Array containind decoded data.
	*/
	@:overload public static function decode(encoded : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* remove WhiteSpace from MIME containing encoded Base64 data.
	*
	* @param data  the byte array of base64 data (with WS)
	* @return      the new length
	*/
	@:overload private static function removeWhiteSpace(data : java.NativeArray<java.StdTypes.Char16>) : Int;
	
	
}

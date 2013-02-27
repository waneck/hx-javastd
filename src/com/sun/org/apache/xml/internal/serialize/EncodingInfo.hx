package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004,2005 The Apache Software Foundation.
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
extern class EncodingInfo
{
	/**
	* Creates new <code>EncodingInfo</code> instance.
	*/
	@:overload public function new(ianaName : String, javaName : String, lastPrintable : Int) : Void;
	
	/**
	* Returns a MIME charset name of this encoding.
	*/
	@:overload public function getIANAName() : String;
	
	/**
	* Returns a writer for this encoding based on
	* an output stream.
	*
	* @return A suitable writer
	* @exception UnsupportedEncodingException There is no convertor
	*  to support this encoding
	*/
	@:overload public function getWriter(output : java.io.OutputStream) : java.io.Writer;
	
	/**
	* Checks whether the specified character is printable or not in this encoding.
	*
	* @param ch a code point (0-0x10ffff)
	*/
	@:overload public function isPrintable(ch : java.StdTypes.Char16) : Bool;
	
	@:overload public static function testJavaEncodingName(name : String) : Void;
	
	
}
/**
* Holder of methods from java.nio.charset.Charset and java.nio.charset.CharsetEncoder.
*/
@:native('com$sun$org$apache$xml$internal$serialize$EncodingInfo$CharsetMethods') @:internal extern class EncodingInfo_CharsetMethods
{
	
}
/**
* Holder of methods from sun.io.CharToByteConverter.
*/
@:native('com$sun$org$apache$xml$internal$serialize$EncodingInfo$CharToByteConverterMethods') @:internal extern class EncodingInfo_CharToByteConverterMethods
{
	
}

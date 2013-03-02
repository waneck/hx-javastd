package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: EncodingInfo.java,v 1.2.4.2 2005/09/15 12:01:24 suresh_emailid Exp $
*/
extern class EncodingInfo
{
	/**
	* This is not a public API. It returns true if the
	* char in question is in the encoding.
	* @param ch the char in question.
	* @xsl.usage internal
	*/
	@:overload public function isInEncoding(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* This is not a public API. It returns true if the
	* character formed by the high/low pair is in the encoding.
	* @param high a char that the a high char of a high/low surrogate pair.
	* @param low a char that is the low char of a high/low surrogate pair.
	* @xsl.usage internal
	*/
	@:overload public function isInEncoding(high : java.StdTypes.Char16, low : java.StdTypes.Char16) : Bool;
	
	/**
	* Create an EncodingInfo object based on the ISO name and Java name.
	* If both parameters are null any character will be considered to
	* be in the encoding. This is useful for when the serializer is in
	* temporary output state, and has no assciated encoding.
	*
	* @param name reference to the ISO name.
	* @param javaName reference to the Java encoding name.
	*/
	@:overload public function new(name : String, javaName : String) : Void;
	
	
}
/**
* A simple interface to isolate the implementation.
* We could also use some new JRE 1.4 methods in another implementation
* provided we use reflection with them.
* <p>
* This interface is not a public API,
* and should only be used internally within the serializer.
* @xsl.usage internal
*/
@:native('com$sun$org$apache$xml$internal$serializer$EncodingInfo$InEncoding') @:internal extern interface EncodingInfo_InEncoding
{
	/**
	* Returns true if the char is in the encoding
	*/
	@:overload public function isInEncoding(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Returns true if the high/low surrogate pair forms
	* a character that is in the encoding.
	*/
	@:overload public function isInEncoding(high : java.StdTypes.Char16, low : java.StdTypes.Char16) : Bool;
	
	
}
/**
* This class implements the
*/
@:native('com$sun$org$apache$xml$internal$serializer$EncodingInfo$EncodingImpl') @:internal extern class EncodingInfo_EncodingImpl implements EncodingInfo_InEncoding
{
	@:overload public function isInEncoding(ch1 : java.StdTypes.Char16) : Bool;
	
	@:overload public function isInEncoding(high : java.StdTypes.Char16, low : java.StdTypes.Char16) : Bool;
	
	
}

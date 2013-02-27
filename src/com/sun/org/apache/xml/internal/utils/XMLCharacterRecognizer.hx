package com.sun.org.apache.xml.internal.utils;
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
* $Id: XMLCharacterRecognizer.java,v 1.2.4.1 2005/09/15 08:16:01 suresh_emailid Exp $
*/
/**
* Class used to verify whether the specified <var>ch</var>
* conforms to the XML 1.0 definition of whitespace.
* @xsl.usage internal
*/
extern class XMLCharacterRecognizer
{
	/**
	* Returns whether the specified <var>ch</var> conforms to the XML 1.0 definition
	* of whitespace.  Refer to <A href="http://www.w3.org/TR/1998/REC-xml-19980210#NT-S">
	* the definition of <CODE>S</CODE></A> for details.
	* @param ch Character to check as XML whitespace.
	* @return =true if <var>ch</var> is XML whitespace; otherwise =false.
	*/
	@:overload public static function isWhiteSpace(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Tell if the string is whitespace.
	*
	* @param ch Character array to check as XML whitespace.
	* @param start Start index of characters in the array
	* @param length Number of characters in the array
	* @return True if the characters in the array are
	* XML whitespace; otherwise, false.
	*/
	@:overload public static function isWhiteSpace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Bool;
	
	/**
	* Tell if the string is whitespace.
	*
	* @param buf StringBuffer to check as XML whitespace.
	* @return True if characters in buffer are XML whitespace, false otherwise
	*/
	@:overload public static function isWhiteSpace(buf : java.lang.StringBuffer) : Bool;
	
	/**
	* Tell if the string is whitespace.
	*
	* @param s String to check as XML whitespace.
	* @return True if characters in buffer are XML whitespace, false otherwise
	*/
	@:overload public static function isWhiteSpace(s : String) : Bool;
	
	
}

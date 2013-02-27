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
* $Id: Encodings.java,v 1.3 2005/09/28 13:49:04 pvedula Exp $
*/
extern class Encodings extends Dynamic
{
	/**
	* Returns the last printable character for an unspecified
	* encoding.
	*
	* @return the default size
	*/
	@:overload public static function getLastPrintable() : Int;
	
	/**
	* Try the best we can to convert a Java encoding to a XML-style encoding.
	*
	* @param encoding non-null reference to encoding string, java style.
	*
	* @return ISO-style encoding string.
	*/
	@:overload public static function convertMime2JavaEncoding(encoding : String) : String;
	
	
}

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
* $Id: XMLStringFactoryDefault.java,v 1.2.4.1 2005/09/15 08:16:03 suresh_emailid Exp $
*/
/**
* The default implementation of XMLStringFactory.
* This implementation creates XMLStringDefault objects.
*/
extern class XMLStringFactoryDefault extends com.sun.org.apache.xml.internal.utils.XMLStringFactory
{
	/**
	* Create a new XMLString from a Java string.
	*
	*
	* @param string Java String reference, which must be non-null.
	*
	* @return An XMLString object that wraps the String reference.
	*/
	@:overload @:public override public function newstr(string : String) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Create a XMLString from a FastStringBuffer.
	*
	*
	* @param fsb FastStringBuffer reference, which must be non-null.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	*
	* @return An XMLString object that wraps the FastStringBuffer reference.
	*/
	@:overload @:public override public function newstr(fsb : com.sun.org.apache.xml.internal.utils.FastStringBuffer, start : Int, length : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Create a XMLString from a FastStringBuffer.
	*
	*
	* @param string FastStringBuffer reference, which must be non-null.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	*
	* @return An XMLString object that wraps the FastStringBuffer reference.
	*/
	@:overload @:public override public function newstr(string : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Get a cheap representation of an empty string.
	*
	* @return An non-null reference to an XMLString that represents "".
	*/
	@:overload @:public override public function emptystr() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	
}

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
* $Id: Method.java,v 1.2.4.1 2005/09/15 08:15:19 suresh_emailid Exp $
*/
/**
* This class defines the constants which are the names of the four default
* output methods.
* <p>
* Three default output methods are defined: XML, HTML, and TEXT.
* These constants can be used as an argument to the
* OutputPropertiesFactory.getDefaultMethodProperties() method to get
* the properties to create a serializer.
*
* This class is a public API.
*
* @see OutputPropertiesFactory
* @see Serializer
*
* @xsl.usage general
*/
extern class Method
{
	/**
	* The output method type for XML documents: <tt>xml</tt>.
	*/
	public static var XML(default, null) : String;
	
	/**
	* The output method type for HTML documents: <tt>html</tt>.
	*/
	public static var HTML(default, null) : String;
	
	/**
	* The output method for XHTML documents,
	* this method type is not currently supported: <tt>xhtml</tt>.
	*/
	public static var XHTML(default, null) : String;
	
	/**
	* The output method type for text documents: <tt>text</tt>.
	*/
	public static var TEXT(default, null) : String;
	
	/**
	* The "internal" method, just used when no method is
	* specified in the style sheet, and a serializer of this type wraps either an
	* XML or HTML type (depending on the first tag in the output being html or
	* not)
	*/
	public static var UNKNOWN(default, null) : String;
	
	
}

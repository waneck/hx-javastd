package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
extern class XML11Char
{
	/** XML 1.1 Valid character mask. */
	public static var MASK_XML11_VALID(default, null) : Int;
	
	/** XML 1.1 Space character mask. */
	public static var MASK_XML11_SPACE(default, null) : Int;
	
	/** XML 1.1 Name start character mask. */
	public static var MASK_XML11_NAME_START(default, null) : Int;
	
	/** XML 1.1 Name character mask. */
	public static var MASK_XML11_NAME(default, null) : Int;
	
	/** XML 1.1 control character mask */
	public static var MASK_XML11_CONTROL(default, null) : Int;
	
	/** XML 1.1 content for external entities (valid - "special" chars - control chars) */
	public static var MASK_XML11_CONTENT(default, null) : Int;
	
	/** XML namespaces 1.1 NCNameStart */
	public static var MASK_XML11_NCNAME_START(default, null) : Int;
	
	/** XML namespaces 1.1 NCName */
	public static var MASK_XML11_NCNAME(default, null) : Int;
	
	/** XML 1.1 content for internal entities (valid - "special" chars) */
	public static var MASK_XML11_CONTENT_INTERNAL(default, null) : Int;
	
	/**
	* Returns true if the specified character is a space character
	* as amdended in the XML 1.1 specification.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11Space(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is valid. This method
	* also checks the surrogate character range from 0x10000 to 0x10FFFF.
	* <p>
	* If the program chooses to apply the mask directly to the
	* <code>XML11CHARS</code> array, then they are responsible for checking
	* the surrogate character range.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11Valid(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is invalid.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11Invalid(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is valid and permitted outside
	* of a character reference.
	* That is, this method will return false for the same set as
	* isXML11Valid, except it also reports false for "control characters".
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11ValidLiteral(c : Int) : Bool;
	
	/**
	* Returns true if the specified character can be considered
	* content in an external parsed entity.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11Content(c : Int) : Bool;
	
	/**
	* Returns true if the specified character can be considered
	* content in an internal parsed entity.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11InternalEntityContent(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid name start
	* character as defined by production [4] in the XML 1.1
	* specification.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11NameStart(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid name
	* character as defined by production [4a] in the XML 1.1
	* specification.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11Name(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid NCName start
	* character as defined by production [4] in Namespaces in XML
	* 1.1 recommendation.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11NCNameStart(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid NCName
	* character as defined by production [5] in Namespaces in XML
	* 1.1 recommendation.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11NCName(c : Int) : Bool;
	
	/**
	* Returns whether the given character is a valid
	* high surrogate for a name character. This includes
	* all high surrogates for characters [0x10000-0xEFFFF].
	* In other words everything excluding planes 15 and 16.
	*
	* @param c The character to check.
	*/
	@:overload public static function isXML11NameHighSurrogate(c : Int) : Bool;
	
	/**
	* Check to see if a string is a valid Name according to [5]
	* in the XML 1.1 Recommendation
	*
	* @param name string to check
	* @return true if name is a valid Name
	*/
	@:overload public static function isXML11ValidName(name : String) : Bool;
	
	/**
	* Check to see if a string is a valid NCName according to [4]
	* from the XML Namespaces 1.1 Recommendation
	*
	* @param ncName string to check
	* @return true if name is a valid NCName
	*/
	@:overload public static function isXML11ValidNCName(ncName : String) : Bool;
	
	/**
	* Check to see if a string is a valid Nmtoken according to [7]
	* in the XML 1.1 Recommendation
	*
	* @param nmtoken string to check
	* @return true if nmtoken is a valid Nmtoken
	*/
	@:overload public static function isXML11ValidNmtoken(nmtoken : String) : Bool;
	
	/**
	* Simple check to determine if qname is legal. If it returns false
	* then <param>str</param> is illegal; if it returns true then
	* <param>str</param> is legal.
	*/
	@:overload public static function isXML11ValidQName(str : String) : Bool;
	
	
}

package com.sun.org.apache.xerces.internal.util;
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
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XMLChar
{
	/** Valid character mask. */
	@:public @:static @:final public static var MASK_VALID(default, null) : Int;
	
	/** Space character mask. */
	@:public @:static @:final public static var MASK_SPACE(default, null) : Int;
	
	/** Name start character mask. */
	@:public @:static @:final public static var MASK_NAME_START(default, null) : Int;
	
	/** Name character mask. */
	@:public @:static @:final public static var MASK_NAME(default, null) : Int;
	
	/** Pubid character mask. */
	@:public @:static @:final public static var MASK_PUBID(default, null) : Int;
	
	/**
	* Content character mask. Special characters are those that can
	* be considered the start of markup, such as '&lt;' and '&amp;'.
	* The various newline characters are considered special as well.
	* All other valid XML characters can be considered content.
	* <p>
	* This is an optimization for the inner loop of character scanning.
	*/
	@:public @:static @:final public static var MASK_CONTENT(default, null) : Int;
	
	/** NCName start character mask. */
	@:public @:static @:final public static var MASK_NCNAME_START(default, null) : Int;
	
	/** NCName character mask. */
	@:public @:static @:final public static var MASK_NCNAME(default, null) : Int;
	
	/**
	* Returns true if the specified character is a supplemental character.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isSupplemental(c : Int) : Bool;
	
	/**
	* Returns true the supplemental character corresponding to the given
	* surrogates.
	*
	* @param h The high surrogate.
	* @param l The low surrogate.
	*/
	@:overload @:public @:static public static function supplemental(h : java.StdTypes.Char16, l : java.StdTypes.Char16) : Int;
	
	/**
	* Returns the high surrogate of a supplemental character
	*
	* @param c The supplemental character to "split".
	*/
	@:overload @:public @:static public static function highSurrogate(c : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the low surrogate of a supplemental character
	*
	* @param c The supplemental character to "split".
	*/
	@:overload @:public @:static public static function lowSurrogate(c : Int) : java.StdTypes.Char16;
	
	/**
	* Returns whether the given character is a high surrogate
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isHighSurrogate(c : Int) : Bool;
	
	/**
	* Returns whether the given character is a low surrogate
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isLowSurrogate(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is valid. This method
	* also checks the surrogate character range from 0x10000 to 0x10FFFF.
	* <p>
	* If the program chooses to apply the mask directly to the
	* <code>CHARS</code> array, then they are responsible for checking
	* the surrogate character range.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isValid(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is invalid.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isInvalid(c : Int) : Bool;
	
	/**
	* Returns true if the specified character can be considered content.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isContent(c : Int) : Bool;
	
	/**
	* Returns true if the specified character can be considered markup.
	* Markup characters include '&lt;', '&amp;', and '%'.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isMarkup(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a space character
	* as defined by production [3] in the XML 1.0 specification.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isSpace(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid name start
	* character as defined by production [5] in the XML 1.0
	* specification.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isNameStart(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid name
	* character as defined by production [4] in the XML 1.0
	* specification.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isName(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid NCName start
	* character as defined by production [4] in Namespaces in XML
	* recommendation.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isNCNameStart(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid NCName
	* character as defined by production [5] in Namespaces in XML
	* recommendation.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isNCName(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid Pubid
	* character as defined by production [13] in the XML 1.0
	* specification.
	*
	* @param c The character to check.
	*/
	@:overload @:public @:static public static function isPubid(c : Int) : Bool;
	
	/**
	* Check to see if a string is a valid Name according to [5]
	* in the XML 1.0 Recommendation
	*
	* @param name string to check
	* @return true if name is a valid Name
	*/
	@:overload @:public @:static public static function isValidName(name : String) : Bool;
	
	/**
	* Check to see if a string is a valid NCName according to [4]
	* from the XML Namespaces 1.0 Recommendation
	*
	* @param ncName string to check
	* @return true if name is a valid NCName
	*/
	@:overload @:public @:static public static function isValidNCName(ncName : String) : Bool;
	
	/**
	* Check to see if a string is a valid Nmtoken according to [7]
	* in the XML 1.0 Recommendation
	*
	* @param nmtoken string to check
	* @return true if nmtoken is a valid Nmtoken
	*/
	@:overload @:public @:static public static function isValidNmtoken(nmtoken : String) : Bool;
	
	/**
	* Returns true if the encoding name is a valid IANA encoding.
	* This method does not verify that there is a decoder available
	* for this encoding, only that the characters are valid for an
	* IANA encoding name.
	*
	* @param ianaEncoding The IANA encoding name.
	*/
	@:overload @:public @:static public static function isValidIANAEncoding(ianaEncoding : String) : Bool;
	
	/**
	* Returns true if the encoding name is a valid Java encoding.
	* This method does not verify that there is a decoder available
	* for this encoding, only that the characters are valid for an
	* Java encoding name.
	*
	* @param javaEncoding The Java encoding name.
	*/
	@:overload @:public @:static public static function isValidJavaEncoding(javaEncoding : String) : Bool;
	
	/**
	* Trims space characters as defined by production [3] in
	* the XML 1.0 specification from both ends of the given string.
	*
	* @param value the string to be trimmed
	* @return the given string with the space characters trimmed
	* from both ends
	*/
	@:overload @:public @:static public static function trim(value : String) : String;
	
	
}

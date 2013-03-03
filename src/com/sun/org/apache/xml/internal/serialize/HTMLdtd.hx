package com.sun.org.apache.xml.internal.serialize;
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
//// Aug 21, 2000:
////   Fixed bug in isElement and made HTMLdtd public.
////   Contributed by Eric SCHAEFFER" <eschaeffer@posterconseil.com>
extern class HTMLdtd
{
	/**
	* Public identifier for HTML 4.01 (Strict) document type.
	*/
	@:public @:static @:final public static var HTMLPublicId(default, null) : String;
	
	/**
	* System identifier for HTML 4.01 (Strict) document type.
	*/
	@:public @:static @:final public static var HTMLSystemId(default, null) : String;
	
	/**
	* Public identifier for XHTML 1.0 (Strict) document type.
	*/
	@:public @:static @:final public static var XHTMLPublicId(default, null) : String;
	
	/**
	* System identifier for XHTML 1.0 (Strict) document type.
	*/
	@:public @:static @:final public static var XHTMLSystemId(default, null) : String;
	
	/**
	* Returns true if element is declared to be empty. HTML elements are
	* defines as empty in the DTD, not by the document syntax.
	*
	* @param tagName The element tag name (upper case)
	* @return True if element is empty
	*/
	@:overload @:public @:static public static function isEmptyTag(tagName : String) : Bool;
	
	/**
	* Returns true if element is declared to have element content.
	* Whitespaces appearing inside element content will be ignored,
	* other text will simply report an error.
	*
	* @param tagName The element tag name (upper case)
	* @return True if element content
	*/
	@:overload @:public @:static public static function isElementContent(tagName : String) : Bool;
	
	/**
	* Returns true if element's textual contents preserves spaces.
	* This only applies to PRE and TEXTAREA, all other HTML elements
	* do not preserve space.
	*
	* @param tagName The element tag name (upper case)
	* @return True if element's text content preserves spaces
	*/
	@:overload @:public @:static public static function isPreserveSpace(tagName : String) : Bool;
	
	/**
	* Returns true if element's closing tag is optional and need not
	* exist. An error will not be reported for such elements if they
	* are not closed. For example, <tt>LI</tt> is most often not closed.
	*
	* @param tagName The element tag name (upper case)
	* @return True if closing tag implied
	*/
	@:overload @:public @:static public static function isOptionalClosing(tagName : String) : Bool;
	
	/**
	* Returns true if element's closing tag is generally not printed.
	* For example, <tt>LI</tt> should not print the closing tag.
	*
	* @param tagName The element tag name (upper case)
	* @return True if only opening tag should be printed
	*/
	@:overload @:public @:static public static function isOnlyOpening(tagName : String) : Bool;
	
	/**
	* Returns true if the opening of one element (<tt>tagName</tt>) implies
	* the closing of another open element (<tt>openTag</tt>). For example,
	* every opening <tt>LI</tt> will close the previously open <tt>LI</tt>,
	* and every opening <tt>BODY</tt> will close the previously open <tt>HEAD</tt>.
	*
	* @param tagName The newly opened element
	* @param openTag The already opened element
	* @return True if closing tag closes opening tag
	*/
	@:overload @:public @:static public static function isClosing(tagName : String, openTag : String) : Bool;
	
	/**
	* Returns true if the specified attribute it a URI and should be
	* escaped appropriately. In HTML URIs are escaped differently
	* than normal attributes.
	*
	* @param tagName The element's tag name
	* @param attrName The attribute's name
	*/
	@:overload @:public @:static public static function isURI(tagName : String, attrName : String) : Bool;
	
	/**
	* Returns true if the specified attribute is a boolean and should be
	* printed without the value. This applies to attributes that are true
	* if they exist, such as selected (OPTION/INPUT).
	*
	* @param tagName The element's tag name
	* @param attrName The attribute's name
	*/
	@:overload @:public @:static public static function isBoolean(tagName : String, attrName : String) : Bool;
	
	/**
	* Returns the value of an HTML character reference by its name. If the
	* reference is not found or was not defined as a character reference,
	* returns EOF (-1).
	*
	* @param name Name of character reference
	* @return Character code or EOF (-1)
	*/
	@:overload @:public @:static public static function charFromName(name : String) : Int;
	
	/**
	* Returns the name of an HTML character reference based on its character
	* value. Only valid for entities defined from character references. If no
	* such character value was defined, return null.
	*
	* @param value Character value of entity
	* @return Entity's name or null
	*/
	@:overload @:public @:static public static function fromChar(value : Int) : String;
	
	
}

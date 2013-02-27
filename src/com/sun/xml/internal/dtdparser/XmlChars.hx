package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* Methods in this class are used to determine whether characters may
* appear in certain roles in XML documents.  Such methods are used
* both to parse and to create such documents.
*
* @author David Brownell
* @version 1.1, 00/08/05
*/
extern class XmlChars
{
	/**
	* Returns true if the argument, a UCS-4 character code, is valid in
	* XML documents.  Unicode characters fit into the low sixteen
	* bits of a UCS-4 character, and pairs of Unicode <em>surrogate
	* characters</em> can be combined to encode UCS-4 characters in
	* documents containing only Unicode.  (The <code>char</code> datatype
	* in the Java Programming Language represents Unicode characters,
	* including unpaired surrogates.)
	* <p/>
	* <P> In XML, UCS-4 characters can also be encoded by the use of
	* <em>character references</em> such as <b>&amp;#x12345678;</b>, which
	* happens to refer to a character that is disallowed in XML documents.
	* UCS-4 characters allowed in XML documents can be expressed with
	* one or two Unicode characters.
	*
	* @param ucs4char The 32-bit UCS-4 character being tested.
	*/
	@:overload public static function isChar(ucs4char : Int) : Bool;
	
	/**
	* Returns true if the character is allowed to be a non-initial
	* character in names according to the XML recommendation.
	*
	* @see #isNCNameChar(char)
	* @see #isLetter(char)
	*/
	@:overload public static function isNameChar(c : java.StdTypes.Char16) : Bool;
	
	/**
	* Returns true if the character is allowed to be a non-initial
	* character in unscoped names according to the rules of the XML
	* Namespaces proposed recommendation.  Except for precluding
	* the colon (used to separate names from their scopes) these
	* characters are just as allowed by the XML recommendation.
	*
	* @see #isNameChar(char)
	* @see #isLetter(char)
	*/
	@:overload public static function isNCNameChar(c : java.StdTypes.Char16) : Bool;
	
	/**
	* Returns true if the character is allowed where XML supports
	* whitespace characters, false otherwise.
	*/
	@:overload public static function isSpace(c : java.StdTypes.Char16) : Bool;
	
	/**
	* Returns true if the character is an XML "letter".  XML Names must
	* start with Letters or a few other characters, but other characters
	* in names must only satisfy the <em>isNameChar</em> predicate.
	*
	* @see #isNameChar(char)
	* @see #isNCNameChar(char)
	*/
	@:overload public static function isLetter(c : java.StdTypes.Char16) : Bool;
	
	
}

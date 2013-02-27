package com.sun.xml.internal.fastinfoset.org.apache.xerces.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2004 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XMLChar
{
	/** Valid character mask. */
	public static var MASK_VALID(default, null) : Int;
	
	/** Space character mask. */
	public static var MASK_SPACE(default, null) : Int;
	
	/** Name start character mask. */
	public static var MASK_NAME_START(default, null) : Int;
	
	/** Name character mask. */
	public static var MASK_NAME(default, null) : Int;
	
	/** Pubid character mask. */
	public static var MASK_PUBID(default, null) : Int;
	
	/**
	* Content character mask. Special characters are those that can
	* be considered the start of markup, such as '&lt;' and '&amp;'.
	* The various newline characters are considered special as well.
	* All other valid XML characters can be considered content.
	* <p>
	* This is an optimization for the inner loop of character scanning.
	*/
	public static var MASK_CONTENT(default, null) : Int;
	
	/** NCName start character mask. */
	public static var MASK_NCNAME_START(default, null) : Int;
	
	/** NCName character mask. */
	public static var MASK_NCNAME(default, null) : Int;
	
	/**
	* Returns true if the specified character is a supplemental character.
	*
	* @param c The character to check.
	*/
	@:overload public static function isSupplemental(c : Int) : Bool;
	
	/**
	* Returns true the supplemental character corresponding to the given
	* surrogates.
	*
	* @param h The high surrogate.
	* @param l The low surrogate.
	*/
	@:overload public static function supplemental(h : java.StdTypes.Char16, l : java.StdTypes.Char16) : Int;
	
	/**
	* Returns the high surrogate of a supplemental character
	*
	* @param c The supplemental character to "split".
	*/
	@:overload public static function highSurrogate(c : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the low surrogate of a supplemental character
	*
	* @param c The supplemental character to "split".
	*/
	@:overload public static function lowSurrogate(c : Int) : java.StdTypes.Char16;
	
	/**
	* Returns whether the given character is a high surrogate
	*
	* @param c The character to check.
	*/
	@:overload public static function isHighSurrogate(c : Int) : Bool;
	
	/**
	* Returns whether the given character is a low surrogate
	*
	* @param c The character to check.
	*/
	@:overload public static function isLowSurrogate(c : Int) : Bool;
	
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
	@:overload public static function isValid(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is invalid.
	*
	* @param c The character to check.
	*/
	@:overload public static function isInvalid(c : Int) : Bool;
	
	/**
	* Returns true if the specified character can be considered content.
	*
	* @param c The character to check.
	*/
	@:overload public static function isContent(c : Int) : Bool;
	
	/**
	* Returns true if the specified character can be considered markup.
	* Markup characters include '&lt;', '&amp;', and '%'.
	*
	* @param c The character to check.
	*/
	@:overload public static function isMarkup(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a space character
	* as defined by production [3] in the XML 1.0 specification.
	*
	* @param c The character to check.
	*/
	@:overload public static function isSpace(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid name start
	* character as defined by production [5] in the XML 1.0
	* specification.
	*
	* @param c The character to check.
	*/
	@:overload public static function isNameStart(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid name
	* character as defined by production [4] in the XML 1.0
	* specification.
	*
	* @param c The character to check.
	*/
	@:overload public static function isName(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid NCName start
	* character as defined by production [4] in Namespaces in XML
	* recommendation.
	*
	* @param c The character to check.
	*/
	@:overload public static function isNCNameStart(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid NCName
	* character as defined by production [5] in Namespaces in XML
	* recommendation.
	*
	* @param c The character to check.
	*/
	@:overload public static function isNCName(c : Int) : Bool;
	
	/**
	* Returns true if the specified character is a valid Pubid
	* character as defined by production [13] in the XML 1.0
	* specification.
	*
	* @param c The character to check.
	*/
	@:overload public static function isPubid(c : Int) : Bool;
	
	/**
	* Check to see if a string is a valid Name according to [5]
	* in the XML 1.0 Recommendation
	*
	* @param name string to check
	* @return true if name is a valid Name
	*/
	@:overload public static function isValidName(name : String) : Bool;
	
	/**
	* Check to see if a string is a valid NCName according to [4]
	* from the XML Namespaces 1.0 Recommendation
	*
	* @param ncName string to check
	* @return true if name is a valid NCName
	*/
	@:overload public static function isValidNCName(ncName : String) : Bool;
	
	/**
	* Check to see if a string is a valid Nmtoken according to [7]
	* in the XML 1.0 Recommendation
	*
	* @param nmtoken string to check
	* @return true if nmtoken is a valid Nmtoken
	*/
	@:overload public static function isValidNmtoken(nmtoken : String) : Bool;
	
	/**
	* Returns true if the encoding name is a valid IANA encoding.
	* This method does not verify that there is a decoder available
	* for this encoding, only that the characters are valid for an
	* IANA encoding name.
	*
	* @param ianaEncoding The IANA encoding name.
	*/
	@:overload public static function isValidIANAEncoding(ianaEncoding : String) : Bool;
	
	/**
	* Returns true if the encoding name is a valid Java encoding.
	* This method does not verify that there is a decoder available
	* for this encoding, only that the characters are valid for an
	* Java encoding name.
	*
	* @param javaEncoding The Java encoding name.
	*/
	@:overload public static function isValidJavaEncoding(javaEncoding : String) : Bool;
	
	
}

package sun.text.normalizer;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
/*
*******************************************************************************
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class UCharacterProperty
{
	/**
	* Trie data
	*/
	@:public public var m_trie_ : sun.text.normalizer.CharTrie;
	
	/**
	* Optimization
	* CharTrie index array
	*/
	@:public public var m_trieIndex_ : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Optimization
	* CharTrie data array
	*/
	@:public public var m_trieData_ : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Optimization
	* CharTrie data offset
	*/
	@:public public var m_trieInitialValue_ : Int;
	
	/**
	* Unicode version
	*/
	@:public public var m_unicodeVersion_ : sun.text.normalizer.VersionInfo;
	
	/** From uchar.c/uprops.icu properties vectors trie */
	@:public @:static @:final public static var SRC_PROPSVEC(default, null) : Int;
	
	/** One more than the highest UPropertySource (SRC_) constant. */
	@:public @:static @:final public static var SRC_COUNT(default, null) : Int;
	
	/**
	* Java friends implementation
	*/
	@:overload @:public public function setIndexData(friendagent : sun.text.normalizer.CharTrie.CharTrie_FriendAgent) : Void;
	
	/**
	* Gets the property value at the index.
	* This is optimized.
	* Note this is alittle different from CharTrie the index m_trieData_
	* is never negative.
	* @param ch code point whose property value is to be retrieved
	* @return property value of code point
	*/
	@:overload @:public @:final public function getProperty(ch : Int) : Int;
	
	/**
	* Getting the unsigned numeric value of a character embedded in the property
	* argument
	* @param prop the character
	* @return unsigned numberic value
	*/
	@:overload @:public @:static public static function getUnsignedValue(prop : Int) : Int;
	
	/**
	* Gets the unicode additional properties.
	* C version getUnicodeProperties.
	* @param codepoint codepoint whose additional properties is to be
	*                  retrieved
	* @param column
	* @return unicode properties
	*/
	@:overload @:public public function getAdditional(codepoint : Int, column : Int) : Int;
	
	/**
	* <p>Get the "age" of the code point.</p>
	* <p>The "age" is the Unicode version when the code point was first
	* designated (as a non-character or for Private Use) or assigned a
	* character.</p>
	* <p>This can be useful to avoid emitting code points to receiving
	* processes that do not accept newer characters.</p>
	* <p>The data is from the UCD file DerivedAge.txt.</p>
	* <p>This API does not check the validity of the codepoint.</p>
	* @param codepoint The code point.
	* @return the Unicode version number
	*/
	@:overload @:public public function getAge(codepoint : Int) : sun.text.normalizer.VersionInfo;
	
	/**
	* Forms a supplementary code point from the argument character<br>
	* Note this is for internal use hence no checks for the validity of the
	* surrogate characters are done
	* @param lead lead surrogate character
	* @param trail trailing surrogate character
	* @return code point of the supplementary character
	*/
	@:overload @:public @:static public static function getRawSupplementary(lead : java.StdTypes.Char16, trail : java.StdTypes.Char16) : Int;
	
	/**
	* Loads the property data and initialize the UCharacterProperty instance.
	* @throws MissingResourceException when data is missing or data has been corrupted
	*/
	@:overload @:public @:static public static function getInstance() : sun.text.normalizer.UCharacterProperty;
	
	/**
	* Checks if the argument c is to be treated as a white space in ICU
	* rules. Usually ICU rule white spaces are ignored unless quoted.
	* Equivalent to test for Pattern_White_Space Unicode property.
	* Stable set of characters, won't change.
	* See UAX #31 Identifier and Pattern Syntax: http://www.unicode.org/reports/tr31/
	* @param c codepoint to check
	* @return true if c is a ICU white space
	*/
	@:overload @:public @:static public static function isRuleWhiteSpace(c : Int) : Bool;
	
	@:overload @:public public function upropsvec_addPropertyStarts(set : sun.text.normalizer.UnicodeSet) : Void;
	
	
}

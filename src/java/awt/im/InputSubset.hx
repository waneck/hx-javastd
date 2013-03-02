package java.awt.im;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
* Defines additional Unicode subsets for use by input methods.  Unlike the
* UnicodeBlock subsets defined in the <code>{@link
* java.lang.Character.UnicodeBlock}</code> class, these constants do not
* directly correspond to Unicode code blocks.
*
* @since   1.2
*/
@:require(java2) extern class InputSubset extends java.lang.Character.Character_Subset
{
	/**
	* Constant for all Latin characters, including the characters
	* in the BASIC_LATIN, LATIN_1_SUPPLEMENT, LATIN_EXTENDED_A,
	* LATIN_EXTENDED_B Unicode character blocks.
	*/
	public static var LATIN(default, null) : java.awt.im.InputSubset;
	
	/**
	* Constant for the digits included in the BASIC_LATIN Unicode character
	* block.
	*/
	public static var LATIN_DIGITS(default, null) : java.awt.im.InputSubset;
	
	/**
	* Constant for all Han characters used in writing Traditional Chinese,
	* including a subset of the CJK unified ideographs as well as Traditional
	* Chinese Han characters that may be defined as surrogate characters.
	*/
	public static var TRADITIONAL_HANZI(default, null) : java.awt.im.InputSubset;
	
	/**
	* Constant for all Han characters used in writing Simplified Chinese,
	* including a subset of the CJK unified ideographs as well as Simplified
	* Chinese Han characters that may be defined as surrogate characters.
	*/
	public static var SIMPLIFIED_HANZI(default, null) : java.awt.im.InputSubset;
	
	/**
	* Constant for all Han characters used in writing Japanese, including a
	* subset of the CJK unified ideographs as well as Japanese Han characters
	* that may be defined as surrogate characters.
	*/
	public static var KANJI(default, null) : java.awt.im.InputSubset;
	
	/**
	* Constant for all Han characters used in writing Korean, including a
	* subset of the CJK unified ideographs as well as Korean Han characters
	* that may be defined as surrogate characters.
	*/
	public static var HANJA(default, null) : java.awt.im.InputSubset;
	
	/**
	* Constant for the halfwidth katakana subset of the Unicode halfwidth and
	* fullwidth forms character block.
	*/
	public static var HALFWIDTH_KATAKANA(default, null) : java.awt.im.InputSubset;
	
	/**
	* Constant for the fullwidth ASCII variants subset of the Unicode halfwidth and
	* fullwidth forms character block.
	* @since 1.3
	*/
	@:require(java3) public static var FULLWIDTH_LATIN(default, null) : java.awt.im.InputSubset;
	
	/**
	* Constant for the fullwidth digits included in the Unicode halfwidth and
	* fullwidth forms character block.
	* @since 1.3
	*/
	@:require(java3) public static var FULLWIDTH_DIGITS(default, null) : java.awt.im.InputSubset;
	
	
}

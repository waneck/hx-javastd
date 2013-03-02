package sun.font;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
*/
/*
* (C) Copyright IBM Corp. 1999,  All rights reserved.
*/
extern class FontResolver
{
	/**
	* Return an index for the given character.  The index identifies a
	* font family to getFont(), and has no other inherent meaning.
	* @param c the character to map
	* @return a value for consumption by getFont()
	* @see #getFont
	*/
	@:overload public function getFontIndex(c : java.StdTypes.Char16) : Int;
	
	@:overload public function getFontIndex(cp : Int) : Int;
	
	/**
	* Determines the font index for the code point at the current position in the
	* iterator, then advances the iterator to the first code point that has
	* a different index or until the iterator is DONE, and returns the font index.
	* @param iter a code point iterator, this will be advanced past any code
	*             points that have the same font index
	* @return the font index for the initial code point found, or 1 if the iterator
	* was empty.
	*/
	@:overload public function nextFontRunIndex(iter : sun.text.CodePointIterator) : Int;
	
	/**
	* Return a Font from a given font index with properties
	* from attributes.  The font index, which should have been produced
	* by getFontIndex(), determines a font family.  The size and style
	* of the Font reflect the properties in attributes.  Any Font or
	* font family specifications in attributes are ignored, on the
	* assumption that clients have already handled them.
	* @param index an index from getFontIndex() which determines the
	*        font family
	* @param attributes a Map from which the size and style of the Font
	*        are determined.  The default size is 12 and the default style
	*        is Font.PLAIN
	* @see #getFontIndex
	*/
	@:overload public function getFont(index : Int, attributes : java.util.Map<Dynamic, Dynamic>) : java.awt.Font;
	
	/**
	* Return a shared instance of FontResolver.
	*/
	@:overload public static function getInstance() : sun.font.FontResolver;
	
	
}

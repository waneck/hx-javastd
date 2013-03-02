package sun.font;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This isn't a critical performance case, so don't do any
* char->glyph map caching for Type1 fonts. The ones that are used
* in composites will be cached there.
*/
extern class Type1GlyphMapper extends sun.font.CharToGlyphMapper
{
	@:overload public function new(font : sun.font.Type1Font) : Void;
	
	@:overload public function getNumGlyphs() : Int;
	
	@:overload public function getMissingGlyphCode() : Int;
	
	@:overload public function canDisplay(ch : java.StdTypes.Char16) : Bool;
	
	@:overload public function charToGlyph(ch : java.StdTypes.Char16) : Int;
	
	@:overload public function charToGlyph(ch : Int) : Int;
	
	@:overload public function charsToGlyphs(count : Int, unicodes : java.NativeArray<java.StdTypes.Char16>, glyphs : java.NativeArray<Int>) : Void;
	
	@:overload public function charsToGlyphs(count : Int, unicodes : java.NativeArray<Int>, glyphs : java.NativeArray<Int>) : Void;
	
	/* This variant checks if shaping is needed and immediately
	* returns true if it does. A caller of this method should be expecting
	* to check the return type because it needs to know how to handle
	* the character data for display.
	*/
	@:overload public function charsToGlyphsNS(count : Int, unicodes : java.NativeArray<java.StdTypes.Char16>, glyphs : java.NativeArray<Int>) : Bool;
	
	
}

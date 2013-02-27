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
* NB the versions that take a char as an int are used by the opentype
* layout engine. If that remains in native these methods may not be
* needed in the Java class.
*/
extern class CharToGlyphMapper
{
	public static var HI_SURROGATE_START(default, null) : Int;
	
	public static var HI_SURROGATE_END(default, null) : Int;
	
	public static var LO_SURROGATE_START(default, null) : Int;
	
	public static var LO_SURROGATE_END(default, null) : Int;
	
	public static var UNINITIALIZED_GLYPH(default, null) : Int;
	
	public static var INVISIBLE_GLYPH_ID(default, null) : Int;
	
	public static var INVISIBLE_GLYPHS(default, null) : Int;
	
	private var missingGlyph : Int;
	
	@:overload public function getMissingGlyphCode() : Int;
	
	/* Default implementations of these methods may be overridden by
	* subclasses which have special requirements or optimisations
	*/
	@:overload public function canDisplay(ch : java.StdTypes.Char16) : Bool;
	
	@:overload public function canDisplay(cp : Int) : Bool;
	
	@:overload public function charToGlyph(unicode : java.StdTypes.Char16) : Int;
	
	@:overload public function charToGlyph(unicode : Int) : Int;
	
	@:overload @:abstract public function getNumGlyphs() : Int;
	
	@:overload @:abstract public function charsToGlyphs(count : Int, unicodes : java.NativeArray<java.StdTypes.Char16>, glyphs : java.NativeArray<Int>) : Void;
	
	@:overload @:abstract public function charsToGlyphsNS(count : Int, unicodes : java.NativeArray<java.StdTypes.Char16>, glyphs : java.NativeArray<Int>) : Bool;
	
	@:overload @:abstract public function charsToGlyphs(count : Int, unicodes : java.NativeArray<Int>, glyphs : java.NativeArray<Int>) : Void;
	
	
}

package sun.awt;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class PlatformFont implements java.awt.peer.FontPeer
{
	@:protected private var componentFonts : java.NativeArray<sun.awt.FontDescriptor>;
	
	@:protected private var defaultChar : java.StdTypes.Char16;
	
	@:protected private var fontConfig : sun.awt.FontConfiguration;
	
	@:protected private var defaultFont : sun.awt.FontDescriptor;
	
	@:protected private var familyName : String;
	
	@:protected @:static private static var FONTCACHESIZE : Int;
	
	@:protected @:static private static var FONTCACHEMASK : Int;
	
	@:protected @:static private static var osVersion : String;
	
	@:overload @:public public function new(name : String, style : Int) : Void;
	
	/**
	* Returns the character that should be rendered when a glyph
	* is missing.
	*/
	@:overload @:protected @:abstract private function getMissingGlyphCharacter() : java.StdTypes.Char16;
	
	/**
	* make a array of CharsetString with given String.
	*/
	@:overload @:public public function makeMultiCharsetString(str : String) : java.NativeArray<sun.awt.CharsetString>;
	
	/**
	* make a array of CharsetString with given String.
	*/
	@:overload @:public public function makeMultiCharsetString(str : String, allowdefault : Bool) : java.NativeArray<sun.awt.CharsetString>;
	
	/**
	* make a array of CharsetString with given char array.
	* @param str The char array to convert.
	* @param offset offset of first character of interest
	* @param len number of characters to convert
	*/
	@:overload @:public public function makeMultiCharsetString(str : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : java.NativeArray<sun.awt.CharsetString>;
	
	/**
	* make a array of CharsetString with given char array.
	* @param str The char array to convert.
	* @param offset offset of first character of interest
	* @param len number of characters to convert
	* @param allowDefault whether to allow the default char.
	* Setting this to true overloads the meaning of this method to
	* return non-null only if all chars can be converted.
	* @return array of CharsetString or if allowDefault is false and any
	* of the returned chars would have been converted to a default char,
	* then return null.
	* This is used to choose alternative means of displaying the text.
	*/
	@:overload @:public public function makeMultiCharsetString(str : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int, allowDefault : Bool) : java.NativeArray<sun.awt.CharsetString>;
	
	/**
	* Is it possible that this font's metrics require the multi-font calls?
	* This might be true, for example, if the font supports kerning.
	**/
	@:overload @:public public function mightHaveMultiFontMetrics() : Bool;
	
	/**
	* Specialized fast path string conversion for AWT.
	*/
	@:overload @:public public function makeConvertedMultiFontString(str : String) : java.NativeArray<Dynamic>;
	
	@:overload @:public public function makeConvertedMultiFontChars(data : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : java.NativeArray<Dynamic>;
	
	/*
	* Create fontCache on demand instead of during construction to
	* reduce overall memory consumption.
	*
	* This method is declared final so that its code can be inlined
	* by the compiler.
	*/
	@:overload @:protected @:final private function getFontCache() : java.NativeArray<Dynamic>;
	
	
}
@:native('sun$awt$PlatformFont$PlatformFontCache') @:internal extern class PlatformFont_PlatformFontCache
{
	
}

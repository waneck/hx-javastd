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
/* remember that the API requires a Font use a
* consistent glyph id. for a code point, and this is a
* problem if a particular strike uses native scaler sometimes
* and T2K others. That needs to be dealt with somewhere, but
* here we can just always get the same glyph code without
* needing a strike.
*
* The C implementation would cache the results of anything up
* to the maximum surrogate pair code point.
* This implementation will not cache as much, since the storage
* requirements are not justifiable. Even so it still can use up
* to 216*256*4 bytes of storage per composite font. If an app
* calls canDisplay on this range for all 20 composite fonts that's
* over 1Mb of cached data. May need to employ WeakReferences if
* this appears to cause problems.
*/
extern class CompositeGlyphMapper extends sun.font.CharToGlyphMapper
{
	@:public @:static @:final public static var SLOTMASK(default, null) : Int;
	
	@:public @:static @:final public static var GLYPHMASK(default, null) : Int;
	
	@:public @:static @:final public static var NBLOCKS(default, null) : Int;
	
	@:public @:static @:final public static var BLOCKSZ(default, null) : Int;
	
	@:public @:static @:final public static var MAXUNICODE(default, null) : Int;
	
	@:overload @:public public function new(compFont : sun.font.CompositeFont) : Void;
	
	@:overload @:public @:final public function compositeGlyphCode(slot : Int, glyphCode : Int) : Int;
	
	@:overload @:public override public function getNumGlyphs() : Int;
	
	@:overload @:public override public function charToGlyph(unicode : Int) : Int;
	
	@:overload @:public public function charToGlyph(unicode : Int, prefSlot : Int) : Int;
	
	@:overload @:public override public function charToGlyph(unicode : java.StdTypes.Char16) : Int;
	
	/* This variant checks if shaping is needed and immediately
	* returns true if it does. A caller of this method should be expecting
	* to check the return type because it needs to know how to handle
	* the character data for display.
	*/
	@:overload @:public override public function charsToGlyphsNS(count : Int, unicodes : java.NativeArray<java.StdTypes.Char16>, glyphs : java.NativeArray<Int>) : Bool;
	
	/* The conversion is not very efficient - looping as it does, converting
	* one char at a time. However the cache should fill very rapidly.
	*/
	@:overload @:public override public function charsToGlyphs(count : Int, unicodes : java.NativeArray<java.StdTypes.Char16>, glyphs : java.NativeArray<Int>) : Void;
	
	@:overload @:public override public function charsToGlyphs(count : Int, unicodes : java.NativeArray<Int>, glyphs : java.NativeArray<Int>) : Void;
	
	
}

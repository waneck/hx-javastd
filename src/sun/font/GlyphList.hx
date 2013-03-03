package sun.font;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class GlyphList
{
	@:overload @:public @:static public static function getInstance() : sun.font.GlyphList;
	
	/* GlyphList is in an invalid state until setFrom* method is called.
	* After obtaining a new GlyphList it is the caller's responsibility
	* that one of these methods is executed before handing off the
	* GlyphList
	*/
	@:overload @:public public function setFromString(info : sun.java2d.loops.FontInfo, str : String, x : Single, y : Single) : Bool;
	
	@:overload @:public public function setFromChars(info : sun.java2d.loops.FontInfo, chars : java.NativeArray<java.StdTypes.Char16>, off : Int, alen : Int, x : Single, y : Single) : Bool;
	
	@:overload @:public public function setFromGlyphVector(info : sun.java2d.loops.FontInfo, gv : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	@:overload @:public public function getBounds() : java.NativeArray<Int>;
	
	/* This method now assumes "state", so must be called 0->len
	* The metrics it returns are accumulated on the fly
	* So it could be renamed "nextGlyph()".
	* Note that a laid out GlyphVector which has assigned glyph positions
	* doesn't have this stricture..
	*/
	@:overload @:public public function setGlyphIndex(i : Int) : Void;
	
	@:overload @:public public function getMetrics() : java.NativeArray<Int>;
	
	@:overload @:public public function getGrayBits() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getImages() : java.NativeArray<haxe.Int64>;
	
	@:overload @:public public function usePositions() : Bool;
	
	@:overload @:public public function getPositions() : java.NativeArray<Single>;
	
	@:overload @:public public function getX() : Single;
	
	@:overload @:public public function getY() : Single;
	
	@:overload @:public public function getStrike() : Dynamic;
	
	@:overload @:public public function isSubPixPos() : Bool;
	
	@:overload @:public public function isRGBOrder() : Bool;
	
	/* There's a reference equality test overhead here, but it allows us
	* to avoid synchronizing for GL's that will just be GC'd. This
	* helps MP throughput.
	*/
	@:overload @:public public function dispose() : Void;
	
	/* The value here is for use by the rendering engine as it reflects
	* the number of glyphs in the array to be blitted. Surrogates pairs
	* may have two slots (the second of these being a dummy entry of the
	* invisible glyph), whereas an application client would expect only
	* one glyph. In other words don't propagate this value up to client code.
	*
	* {dlf} an application client should have _no_ expectations about the
	* number of glyphs per char.  This ultimately depends on the font
	* technology and layout process used, which in general clients will
	* know nothing about.
	*/
	@:overload @:public public function getNumGlyphs() : Int;
	
	
}

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
extern class NativeFont extends sun.font.PhysicalFont
{
	/**
	* Verifies native font is accessible.
	* @throws FontFormatException - if the font can't be located.
	*/
	@:overload @:public public function new(platName : String, bitmapDelegate : Bool) : Void;
	
	@:overload @:public @:static public static function fontExists(xlfd : String) : Bool;
	
	@:overload @:public public function getMapper() : sun.font.CharToGlyphMapper;
	
	@:overload @:public public function getMaxCharBounds(frc : java.awt.font.FontRenderContext) : java.awt.geom.Rectangle2D;
	
	@:overload @:public public function getGlyphOutline(pScalerContext : haxe.Int64, glyphCode : Int, x : Single, y : Single) : java.awt.geom.GeneralPath;
	
	@:overload @:public public function getGlyphVectorOutline(pScalerContext : haxe.Int64, glyphs : java.NativeArray<Int>, numGlyphs : Int, x : Single, y : Single) : java.awt.geom.GeneralPath;
	
	@:overload @:public override public function getNumGlyphs() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}

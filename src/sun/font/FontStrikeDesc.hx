package sun.font;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
* This class encapsulates every thing needed that distinguishes a strike.
* It can be used as a key to locate a FontStrike in a Hashmap/cache.
* It is not mutatable, but contains mutatable AffineTransform objects,
* which for performance reasons it does not keep private copies of.
* Therefore code constructing these must pass in transforms it guarantees
* not to mutate.
*/
extern class FontStrikeDesc
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/* This maps a public text AA hint value into one of the subset of values
	* used to index strikes. For the purpose of the strike cache there are
	* only 4 values : OFF, ON, LCD_HRGB, LCD_VRGB.
	* Font and ptSize are needed to resolve the 'gasp' table. The ptSize
	* must therefore include device and font transforms.
	*/
	@:overload public static function getAAHintIntVal(aa : Dynamic, font2D : sun.font.Font2D, ptSize : Int) : Int;
	
	/* This maps a public text AA hint value into one of the subset of values
	* used to index strikes. For the purpose of the strike cache there are
	* only 4 values : OFF, ON, LCD_HRGB, LCD_VRGB.
	* Font and FontRenderContext are needed to resolve the 'gasp' table.
	* This is similar to the method above, but used by callers which have not
	* already calculated the glyph device point size.
	*/
	@:overload public static function getAAHintIntVal(font2D : sun.font.Font2D, font : java.awt.Font, frc : java.awt.font.FontRenderContext) : Int;
	
	@:overload public static function getFMHintIntVal(fm : Dynamic) : Int;
	
	@:overload public function new(devAt : java.awt.geom.AffineTransform, at : java.awt.geom.AffineTransform, fStyle : Int, aa : Int, fm : Int) : Void;
	
	@:overload public function toString() : String;
	
	
}

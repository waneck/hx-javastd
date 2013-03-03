package sun.java2d.loops;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class FontInfo implements java.lang.Cloneable
{
	/*
	* A FontInfo object holds all calculated or derived data needed
	* to handle rendering operations based on a particular set of
	* Graphics2D rendering attributes.
	* Note that this does not use a Font2DHandle, and also has a reference
	* to the strike which also references the Font2D.
	* So presently, until SG2D objects no longer reference this FontInfo,
	* there is still some potential for a bad Font2D to be used for a short
	* time. I am reluctant to add the overhead of that machinery here without
	* a proven benefit.
	*/
	@:public public var font : java.awt.Font;
	
	@:public public var font2D : sun.font.Font2D;
	
	@:public public var fontStrike : sun.font.FontStrike;
	
	@:public public var devTx : java.NativeArray<Float>;
	
	@:public public var glyphTx : java.NativeArray<Float>;
	
	@:public public var pixelHeight : Int;
	
	@:public public var originX : Single;
	
	@:public public var originY : Single;
	
	@:public public var aaHint : Int;
	
	@:public public var lcdRGBOrder : Bool;
	
	/* lcdSubPixPos is used if FM is ON for HRGB/HBGR LCD text mode */
	@:public public var lcdSubPixPos : Bool;
	
	@:overload @:public public function mtx(matrix : java.NativeArray<Float>) : String;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	
}

package sun.awt;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class X11CustomCursor extends sun.awt.CustomCursor
{
	/**
	* A class to encapsulate a custom image-based cursor.
	*
	* @see Component#setCursor
	* @author      Thomas Ball
	*/
	@:overload @:public public function new(cursor : java.awt.Image, hotSpot : java.awt.Point, name : String) : Void;
	
	@:overload @:protected override private function createNativeCursor(im : java.awt.Image, pixels : java.NativeArray<Int>, width : Int, height : Int, xHotSpot : Int, yHotSpot : Int) : Void;
	
	@:overload @:protected @:abstract private function createCursor(xorMask : java.NativeArray<java.StdTypes.Int8>, andMask : java.NativeArray<java.StdTypes.Int8>, width : Int, height : Int, fcolor : Int, bcolor : Int, xHotSpot : Int, yHotSpot : Int) : Void;
	
	
}

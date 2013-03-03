package sun.java2d.xr;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* Represents a single tile, used to store the rectangles covering the area
* of the mask where the tile is located.
*
* @author Clemens Eisserer
*/
extern class MaskTile
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function addRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function addLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload @:public public function calculateDirtyAreas() : Void;
	
	@:overload @:public public function reset() : Void;
	
	@:overload @:public public function translate(x : Int, y : Int) : Void;
	
	@:overload @:public public function getRects() : sun.java2d.xr.GrowableRectArray;
	
	@:overload @:public public function getDirtyArea() : sun.java2d.xr.DirtyRegion;
	
	
}

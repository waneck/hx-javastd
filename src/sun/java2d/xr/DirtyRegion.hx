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
extern class DirtyRegion implements java.lang.Cloneable
{
	@:overload public function new() : Void;
	
	@:overload public function clear() : Void;
	
	@:overload public function growDirtyRegion(x : Int, y : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload public function getWidth() : Int;
	
	@:overload public function getHeight() : Int;
	
	@:overload public function growDirtyRegionTileLimit(x : Int, y : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload public static function combineRegion(region1 : DirtyRegion, region2 : DirtyRegion) : DirtyRegion;
	
	@:overload public function setDirtyLineRegion(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload public function translate(x : Int, y : Int) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function cloneRegion() : DirtyRegion;
	
	
}

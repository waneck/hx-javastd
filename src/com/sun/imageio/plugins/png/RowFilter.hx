package com.sun.imageio.plugins.png;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class RowFilter
{
	@:overload private static function subFilter(currRow : java.NativeArray<java.StdTypes.Int8>, subFilteredRow : java.NativeArray<java.StdTypes.Int8>, bytesPerPixel : Int, bytesPerRow : Int) : Int;
	
	@:overload private static function upFilter(currRow : java.NativeArray<java.StdTypes.Int8>, prevRow : java.NativeArray<java.StdTypes.Int8>, upFilteredRow : java.NativeArray<java.StdTypes.Int8>, bytesPerPixel : Int, bytesPerRow : Int) : Int;
	
	@:overload @:final private function paethPredictor(a : Int, b : Int, c : Int) : Int;
	
	@:overload public function filterRow(colorType : Int, currRow : java.NativeArray<java.StdTypes.Int8>, prevRow : java.NativeArray<java.StdTypes.Int8>, scratchRows : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>, bytesPerRow : Int, bytesPerPixel : Int) : Int;
	
	
}

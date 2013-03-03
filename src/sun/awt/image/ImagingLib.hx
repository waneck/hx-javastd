package sun.awt.image;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ImagingLib
{
	@:overload @:static @:public @:native public static function transformBI(src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage, matrix : java.NativeArray<Float>, interpType : Int) : Int;
	
	@:overload @:static @:public @:native public static function transformRaster(src : java.awt.image.Raster, dst : java.awt.image.Raster, matrix : java.NativeArray<Float>, interpType : Int) : Int;
	
	@:overload @:static @:public @:native public static function convolveBI(src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage, kernel : java.awt.image.Kernel, edgeHint : Int) : Int;
	
	@:overload @:static @:public @:native public static function convolveRaster(src : java.awt.image.Raster, dst : java.awt.image.Raster, kernel : java.awt.image.Kernel, edgeHint : Int) : Int;
	
	@:overload @:static @:public @:native public static function lookupByteBI(src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage, table : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>) : Int;
	
	@:overload @:static @:public @:native public static function lookupByteRaster(src : java.awt.image.Raster, dst : java.awt.image.Raster, table : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>) : Int;
	
	@:overload @:public @:static public static function filter(op : java.awt.image.RasterOp, src : java.awt.image.Raster, dst : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	@:overload @:public @:static public static function filter(op : java.awt.image.BufferedImageOp, src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage) : java.awt.image.BufferedImage;
	
	
}

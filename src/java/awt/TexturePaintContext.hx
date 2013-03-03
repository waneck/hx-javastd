package java.awt;
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
@:internal extern class TexturePaintContext implements java.awt.PaintContext
{
	@:public @:static public static var xrgbmodel : java.awt.image.ColorModel;
	
	@:public @:static public static var argbmodel : java.awt.image.ColorModel;
	
	@:overload @:public @:static public static function getContext(bufImg : java.awt.image.BufferedImage, xform : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints, devBounds : java.awt.Rectangle) : java.awt.PaintContext;
	
	@:overload @:public @:static public static function isFilterableICM(cm : java.awt.image.ColorModel) : Bool;
	
	@:overload @:public @:static public static function isFilterableDCM(cm : java.awt.image.ColorModel) : Bool;
	
	@:overload @:public @:static public static function isMaskOK(mask : Int, canbezero : Bool) : Bool;
	
	@:overload @:public @:static public static function getInternedColorModel(cm : java.awt.image.ColorModel) : java.awt.image.ColorModel;
	
	/**
	* Release the resources allocated for the operation.
	*/
	@:overload @:public public function dispose() : Void;
	
	/**
	* Return the ColorModel of the output.
	*/
	@:overload @:public public function getColorModel() : java.awt.image.ColorModel;
	
	/**
	* Return a Raster containing the colors generated for the graphics
	* operation.
	* @param x,y,w,h The area in device space for which colors are
	* generated.
	*/
	@:overload @:public public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	@:overload @:public @:abstract public function makeRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	@:overload @:public @:abstract public function setRaster(x : Int, y : Int, xerr : Int, yerr : Int, w : Int, h : Int, bWidth : Int, bHeight : Int, colincx : Int, colincxerr : Int, colincy : Int, colincyerr : Int, rowincx : Int, rowincxerr : Int, rowincy : Int, rowincyerr : Int) : Void;
	
	/*
	* Blends the four ARGB values in the rgbs array using the factors
	* described by xmul and ymul in the following ratio:
	*
	*     rgbs[0] * (1-xmul) * (1-ymul) +
	*     rgbs[1] * (  xmul) * (1-ymul) +
	*     rgbs[2] * (1-xmul) * (  ymul) +
	*     rgbs[3] * (  xmul) * (  ymul)
	*
	* xmul and ymul are integer values in the half-open range [0, 2^31)
	* where 0 == 0.0 and 2^31 == 1.0.
	*
	* Note that since the range is half-open, the values are always
	* logically less than 1.0.  This makes sense because while choosing
	* pixels to blend, when the error values reach 1.0 we move to the
	* next pixel and reset them to 0.0.
	*/
	@:overload @:public @:static public static function blend(rgbs : java.NativeArray<Int>, xmul : Int, ymul : Int) : Int;
	
	
}
@:native('java$awt$TexturePaintContext$Int') @:internal extern class TexturePaintContext_Int extends java.awt.TexturePaintContext
{
	@:overload @:public public function new(srcRas : sun.awt.image.IntegerInterleavedRaster, cm : java.awt.image.ColorModel, xform : java.awt.geom.AffineTransform, maxw : Int, filter : Bool) : Void;
	
	@:overload @:public override public function makeRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	@:overload @:public override public function setRaster(x : Int, y : Int, xerr : Int, yerr : Int, w : Int, h : Int, bWidth : Int, bHeight : Int, colincx : Int, colincxerr : Int, colincy : Int, colincyerr : Int, rowincx : Int, rowincxerr : Int, rowincy : Int, rowincyerr : Int) : Void;
	
	
}
@:native('java$awt$TexturePaintContext$Byte') @:internal extern class TexturePaintContext_Byte extends java.awt.TexturePaintContext
{
	@:overload @:public public function new(srcRas : sun.awt.image.ByteInterleavedRaster, cm : java.awt.image.ColorModel, xform : java.awt.geom.AffineTransform, maxw : Int) : Void;
	
	@:overload @:public override public function makeRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	@:overload @:public override public function dispose() : Void;
	
	@:overload @:public override public function setRaster(x : Int, y : Int, xerr : Int, yerr : Int, w : Int, h : Int, bWidth : Int, bHeight : Int, colincx : Int, colincxerr : Int, colincy : Int, colincyerr : Int, rowincx : Int, rowincxerr : Int, rowincy : Int, rowincyerr : Int) : Void;
	
	
}
@:native('java$awt$TexturePaintContext$ByteFilter') @:internal extern class TexturePaintContext_ByteFilter extends java.awt.TexturePaintContext
{
	@:overload @:public public function new(srcRas : sun.awt.image.ByteInterleavedRaster, cm : java.awt.image.ColorModel, xform : java.awt.geom.AffineTransform, maxw : Int) : Void;
	
	@:overload @:public override public function makeRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	@:overload @:public override public function setRaster(x : Int, y : Int, xerr : Int, yerr : Int, w : Int, h : Int, bWidth : Int, bHeight : Int, colincx : Int, colincxerr : Int, colincy : Int, colincyerr : Int, rowincx : Int, rowincxerr : Int, rowincy : Int, rowincyerr : Int) : Void;
	
	
}
@:native('java$awt$TexturePaintContext$Any') @:internal extern class TexturePaintContext_Any extends java.awt.TexturePaintContext
{
	@:overload @:public public function new(srcRas : java.awt.image.WritableRaster, cm : java.awt.image.ColorModel, xform : java.awt.geom.AffineTransform, maxw : Int, filter : Bool) : Void;
	
	@:overload @:public override public function makeRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	@:overload @:public override public function setRaster(x : Int, y : Int, xerr : Int, yerr : Int, w : Int, h : Int, bWidth : Int, bHeight : Int, colincx : Int, colincxerr : Int, colincy : Int, colincyerr : Int, rowincx : Int, rowincxerr : Int, rowincy : Int, rowincyerr : Int) : Void;
	
	
}

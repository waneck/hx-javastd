package java.awt;
/*
* Copyright (c) 2006, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MultipleGradientPaintContext implements java.awt.PaintContext
{
	/**
	* The PaintContext's ColorModel.  This is ARGB if colors are not all
	* opaque, otherwise it is RGB.
	*/
	@:protected private var model : java.awt.image.ColorModel;
	
	/** The cached ColorModel. */
	@:protected @:static private static var cachedModel : java.awt.image.ColorModel;
	
	/** The cached raster, which is reusable among instances. */
	@:protected @:static private static var cached : java.lang.ref.WeakReference<java.awt.image.Raster>;
	
	/** Raster is reused whenever possible. */
	@:protected private var saved : java.awt.image.Raster;
	
	/** The method to use when painting out of the gradient bounds. */
	@:protected private var cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod;
	
	/** The ColorSpace in which to perform the interpolation */
	@:protected private var colorSpace : java.awt.MultipleGradientPaint.MultipleGradientPaint_ColorSpaceType;
	
	/** Elements of the inverse transform matrix. */
	@:protected private var a00 : Single;
	
	@:protected private var a01 : Single;
	
	@:protected private var a10 : Single;
	
	@:protected private var a11 : Single;
	
	@:protected private var a02 : Single;
	
	@:protected private var a12 : Single;
	
	/**
	* This boolean specifies wether we are in simple lookup mode, where an
	* input value between 0 and 1 may be used to directly index into a single
	* array of gradient colors.  If this boolean value is false, then we have
	* to use a 2-step process where we have to determine which gradient array
	* we fall into, then determine the index into that array.
	*/
	@:protected private var isSimpleLookup : Bool;
	
	/**
	* Size of gradients array for scaling the 0-1 index when looking up
	* colors the fast way.
	*/
	@:protected private var fastGradientArraySize : Int;
	
	/**
	* Array which contains the interpolated color values for each interval,
	* used by calculateSingleArrayGradient().  It is protected for possible
	* direct access by subclasses.
	*/
	@:protected private var gradient : java.NativeArray<Int>;
	
	/**
	* Constant number of max colors between any 2 arbitrary colors.
	* Used for creating and indexing gradients arrays.
	*/
	@:protected @:static @:final private static var GRADIENT_SIZE(default, null) : Int;
	
	@:protected @:static @:final private static var GRADIENT_SIZE_INDEX(default, null) : Int;
	
	/**
	* Constructor for MultipleGradientPaintContext superclass.
	*/
	@:overload @:protected private function new(mgp : java.awt.MultipleGradientPaint, cm : java.awt.image.ColorModel, deviceBounds : java.awt.Rectangle, userBounds : java.awt.geom.Rectangle2D, t : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod, colorSpace : java.awt.MultipleGradientPaint.MultipleGradientPaint_ColorSpaceType) : Void;
	
	/**
	* Helper function to index into the gradients array.  This is necessary
	* because each interval has an array of colors with uniform size 255.
	* However, the color intervals are not necessarily of uniform length, so
	* a conversion is required.
	*
	* @param position the unmanipulated position, which will be mapped
	*                 into the range 0 to 1
	* @returns integer color to display
	*/
	@:overload @:protected @:final private function indexIntoGradientsArrays(position : Single) : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	@:overload @:protected @:abstract private function fillRaster(pixels : java.NativeArray<Int>, off : Int, adjust : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function dispose() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function getColorModel() : java.awt.image.ColorModel;
	
	
}

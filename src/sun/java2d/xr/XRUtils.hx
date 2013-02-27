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
* XRender constants and utility methods.
*
* @author Clemens Eisserer
*/
extern class XRUtils
{
	public static var None(default, null) : Int;
	
	/* Composition Operators */
	public static var PictOpClear(default, null) : java.StdTypes.Int8;
	
	public static var PictOpSrc(default, null) : java.StdTypes.Int8;
	
	public static var PictOpDst(default, null) : java.StdTypes.Int8;
	
	public static var PictOpOver(default, null) : java.StdTypes.Int8;
	
	public static var PictOpOverReverse(default, null) : java.StdTypes.Int8;
	
	public static var PictOpIn(default, null) : java.StdTypes.Int8;
	
	public static var PictOpInReverse(default, null) : java.StdTypes.Int8;
	
	public static var PictOpOut(default, null) : java.StdTypes.Int8;
	
	public static var PictOpOutReverse(default, null) : java.StdTypes.Int8;
	
	public static var PictOpAtop(default, null) : java.StdTypes.Int8;
	
	public static var PictOpAtopReverse(default, null) : java.StdTypes.Int8;
	
	public static var PictOpXor(default, null) : java.StdTypes.Int8;
	
	public static var PictOpAdd(default, null) : java.StdTypes.Int8;
	
	public static var PictOpSaturate(default, null) : java.StdTypes.Int8;
	
	/* Repeats */
	public static var RepeatNone(default, null) : Int;
	
	public static var RepeatNormal(default, null) : Int;
	
	public static var RepeatPad(default, null) : Int;
	
	public static var RepeatReflect(default, null) : Int;
	
	/* Interpolation qualities */
	public static var FAST(default, null) : Int;
	
	public static var GOOD(default, null) : Int;
	
	public static var BEST(default, null) : Int;
	
	public static var FAST_NAME(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	public static var GOOD_NAME(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	public static var BEST_NAME(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/* PictFormats */
	public static var PictStandardARGB32(default, null) : Int;
	
	public static var PictStandardRGB24(default, null) : Int;
	
	public static var PictStandardA8(default, null) : Int;
	
	public static var PictStandardA4(default, null) : Int;
	
	public static var PictStandardA1(default, null) : Int;
	
	/**
	* Maps the specified affineTransformOp to the corresponding XRender image
	* filter.
	*/
	@:overload public static function ATransOpToXRQuality(affineTranformOp : Int) : Int;
	
	/**
	* Maps the specified affineTransformOp to the corresponding XRender image
	* filter.
	*/
	@:overload public static function ATransOpToXRQualityName(affineTranformOp : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function getFilterName(filterType : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the XRender picture Format which is required to fullfill the
	* Java2D transparency requirement.
	*/
	@:overload public static function getPictureFormatForTransparency(transparency : Int) : Int;
	
	@:overload public static function getXRSurfaceTypeForTransparency(transparency : Int) : sun.java2d.loops.SurfaceType;
	
	/**
	* Maps Java2D CycleMethod to XRender's Repeat property.
	*/
	@:overload public static function getRepeatForCycleMethod(cycleMethod : CycleMethod) : Int;
	
	/**
	* Converts a double into an XFixed.
	*/
	@:overload public static function XDoubleToFixed(dbl : Float) : Int;
	
	@:overload public static function XFixedToDouble(fixed : Int) : Float;
	
	@:overload public static function convertFloatsToFixed(values : java.NativeArray<Single>) : java.NativeArray<Int>;
	
	@:overload public static function intToULong(signed : Int) : haxe.Int64;
	
	/**
	* Maps the specified Java2D composition rule, to the corresponding XRender
	* composition rule.
	*/
	@:overload public static function j2dAlphaCompToXR(j2dRule : Int) : java.StdTypes.Int8;
	
	@:overload public static function clampToShort(x : Int) : java.StdTypes.Int16;
	
	@:overload public static function clampToUShort(x : Int) : java.StdTypes.Int16;
	
	
}

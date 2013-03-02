package sun.java2d.loops;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class MaskFill extends sun.java2d.loops.GraphicsPrimitive
{
	/**
	* MaskFill
	* 1) fills rectangles of pixels on a surface
	* 2) performs compositing of colors based upon a Composite
	*    parameter
	* 3) blends result of composite with destination using an
	*    alpha coverage mask
	* 4) the mask may be null in which case it should be treated
	*    as if it were an array of all opaque values (0xff)
	*/
	public static var methodSignature(default, null) : String;
	
	public static var fillPgramSignature(default, null) : String;
	
	public static var drawPgramSignature(default, null) : String;
	
	public static var primTypeID(default, null) : Int;
	
	@:overload public static function locate(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.MaskFill;
	
	@:overload public static function locatePrim(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.MaskFill;
	
	/*
	* Note that this uses locatePrim, not locate, so it can return
	* null if there is no specific loop to handle this op...
	*/
	@:overload public static function getFromCache(src : sun.java2d.loops.SurfaceType, comp : sun.java2d.loops.CompositeType, dst : sun.java2d.loops.SurfaceType) : sun.java2d.loops.MaskFill;
	
	@:overload private function new(alternateSignature : String, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload private function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload public function new(pNativePrim : haxe.Int64, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	/**
	* All MaskFill implementors must have this invoker method
	*/
	@:overload @:native public function new(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, comp : java.awt.Composite, x : Int, y : Int, w : Int, h : Int, mask : java.NativeArray<java.StdTypes.Int8>, maskoff : Int, maskscan : Int) : Void;
	
	@:overload @:native public function FillAAPgram(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, comp : java.awt.Composite, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	@:overload @:native public function DrawAAPgram(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, comp : java.awt.Composite, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float) : Void;
	
	@:overload public function canDoParallelograms() : Bool;
	
	@:overload override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
@:native('sun$java2d$loops$MaskFill$General') @:internal extern class MaskFill_General extends sun.java2d.loops.MaskFill
{
	@:overload public function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload override public function MaskFill(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, comp : java.awt.Composite, x : Int, y : Int, w : Int, h : Int, mask : java.NativeArray<java.StdTypes.Int8>, offset : Int, scan : Int) : Void;
	
	
}
@:native('sun$java2d$loops$MaskFill$TraceMaskFill') @:internal extern class MaskFill_TraceMaskFill extends sun.java2d.loops.MaskFill
{
	@:overload public function new(target : sun.java2d.loops.MaskFill) : Void;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function MaskFill(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, comp : java.awt.Composite, x : Int, y : Int, w : Int, h : Int, mask : java.NativeArray<java.StdTypes.Int8>, maskoff : Int, maskscan : Int) : Void;
	
	@:overload override public function FillAAPgram(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, comp : java.awt.Composite, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	@:overload override public function DrawAAPgram(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, comp : java.awt.Composite, x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float) : Void;
	
	@:overload override public function canDoParallelograms() : Bool;
	
	
}

package sun.java2d.loops;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class TransformHelper extends sun.java2d.loops.GraphicsPrimitive
{
	/**
	* TransformHelper
	* 1) applies an AffineTransform to a rectangle of pixels while copying
	*    from one surface to another
	* 2) performs compositing of colors based upon a Composite
	*    parameter
	*
	* precise behavior is undefined if the source surface
	* and the destination surface are the same surface
	* with overlapping regions of pixels
	*/
	@:public @:static @:final public static var methodSignature(default, null) : String;
	
	@:public @:static @:final public static var primTypeID(default, null) : Int;
	
	@:overload @:public @:static public static function locate(srctype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.TransformHelper;
	
	@:overload @:public @:static @:synchronized public static function getFromCache(src : sun.java2d.loops.SurfaceType) : sun.java2d.loops.TransformHelper;
	
	@:overload @:protected private function new(srctype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:public public function new(pNativePrim : haxe.Int64, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:public @:native public function Transform(output : sun.java2d.loops.MaskBlit, src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, itx : java.awt.geom.AffineTransform, txtype : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, edges : java.NativeArray<Int>, dxoff : Int, dyoff : Int) : Void;
	
	@:overload @:public override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
@:native('sun$java2d$loops$TransformHelper$TraceTransformHelper') @:internal extern class TransformHelper_TraceTransformHelper extends sun.java2d.loops.TransformHelper
{
	@:overload @:public public function new(target : sun.java2d.loops.TransformHelper) : Void;
	
	@:overload @:public override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public override public function Transform(output : sun.java2d.loops.MaskBlit, src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, itx : java.awt.geom.AffineTransform, txtype : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, edges : java.NativeArray<Int>, dxoff : Int, dyoff : Int) : Void;
	
	
}

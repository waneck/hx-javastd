package sun.java2d.loops;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class TransformBlit extends sun.java2d.loops.GraphicsPrimitive
{
	/**
	* TransformBlit
	* 1) applies an AffineTransform to a rectangle of pixels while copying
	*    from one surface to another
	* 2) performs compositing of colors based upon a Composite
	*    parameter
	*
	* precise behavior is undefined if the source surface
	* and the destination surface are the same surface
	* with overlapping regions of pixels
	*/
	public static var methodSignature(default, null) : String;
	
	public static var primTypeID(default, null) : Int;
	
	@:overload public static function locate(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.TransformBlit;
	
	@:overload public static function getFromCache(src : sun.java2d.loops.SurfaceType, comp : sun.java2d.loops.CompositeType, dst : sun.java2d.loops.SurfaceType) : sun.java2d.loops.TransformBlit;
	
	@:overload private function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload public function new(pNativePrim : haxe.Int64, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:native public function Transform(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, at : java.awt.geom.AffineTransform, hint : Int, srcx : Int, srcy : Int, dstx : Int, dsty : Int, width : Int, height : Int) : Void;
	
	@:overload override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
@:native('sun$java2d$loops$TransformBlit$TraceTransformBlit') @:internal extern class TransformBlit_TraceTransformBlit extends sun.java2d.loops.TransformBlit
{
	@:overload public function new(target : sun.java2d.loops.TransformBlit) : Void;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function Transform(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, at : java.awt.geom.AffineTransform, hint : Int, srcx : Int, srcy : Int, dstx : Int, dsty : Int, width : Int, height : Int) : Void;
	
	
}

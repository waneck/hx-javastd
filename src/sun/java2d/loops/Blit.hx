package sun.java2d.loops;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Blit extends sun.java2d.loops.GraphicsPrimitive
{
	/**
	* Blit
	* 1) copies rectangle of pixels from one surface to another
	* 2) performs compositing of colors based upon a Composite
	*    parameter
	*
	* precise behavior is undefined if the source surface
	* and the destination surface are the same surface
	* with overlapping regions of pixels
	*/
	public static var methodSignature(default, null) : String;
	
	public static var primTypeID(default, null) : Int;
	
	@:overload public static function locate(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.Blit;
	
	@:overload public static function getFromCache(src : sun.java2d.loops.SurfaceType, comp : sun.java2d.loops.CompositeType, dst : sun.java2d.loops.SurfaceType) : sun.java2d.loops.Blit;
	
	@:overload private function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload public function new(pNativePrim : haxe.Int64, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	/**
	* All Blit implementors must have this invoker method
	*/
	@:overload @:native public function new(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, width : Int, height : Int) : Void;
	
	@:overload override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
@:native('sun$java2d$loops$Blit$AnyBlit') @:internal extern class Blit_AnyBlit extends sun.java2d.loops.Blit
{
	public static var instance : sun.java2d.loops.Blit.Blit_AnyBlit;
	
	@:overload public function new() : Void;
	
	@:overload override public function Blit(srcData : sun.java2d.SurfaceData, dstData : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, width : Int, height : Int) : Void;
	
	
}
@:native('sun$java2d$loops$Blit$GeneralMaskBlit') @:internal extern class Blit_GeneralMaskBlit extends sun.java2d.loops.Blit
{
	@:overload public function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload override public function Blit(srcData : sun.java2d.SurfaceData, dstData : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, width : Int, height : Int) : Void;
	
	
}
@:native('sun$java2d$loops$Blit$GeneralXorBlit') @:internal extern class Blit_GeneralXorBlit extends sun.java2d.loops.Blit implements sun.java2d.loops.GraphicsPrimitive.GraphicsPrimitive_GeneralBinaryOp
{
	@:overload public function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload public function setPrimitives(srcconverter : sun.java2d.loops.Blit, dstconverter : sun.java2d.loops.Blit, genericop : sun.java2d.loops.GraphicsPrimitive, resconverter : sun.java2d.loops.Blit) : Void;
	
	@:overload @:synchronized override public function Blit(srcData : sun.java2d.SurfaceData, dstData : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, width : Int, height : Int) : Void;
	
	
}
@:native('sun$java2d$loops$Blit$TraceBlit') @:internal extern class Blit_TraceBlit extends sun.java2d.loops.Blit
{
	@:overload public function new(target : sun.java2d.loops.Blit) : Void;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, width : Int, height : Int) : Void;
	
	
}

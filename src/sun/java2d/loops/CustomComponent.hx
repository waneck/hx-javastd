package sun.java2d.loops;
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
/*
* @author Charlton Innovations, Inc.
* @author Jim Graham
*/
extern class CustomComponent
{
	/**
	*   CustomComponent, collection of GraphicsPrimitive
	*   Basically, this collection of components performs conversion from
	*   ANY to ANY via opaque copy
	*/
	@:overload @:public @:static public static function register() : Void;
	
	@:overload @:public @:static public static function getRegionOfInterest(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, w : Int, h : Int) : sun.java2d.pipe.Region;
	
	
}
@:internal extern class OpaqueCopyAnyToArgb extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OpaqueCopyArgbToAny extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class XorCopyArgbToAny extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, srcx : Int, srcy : Int, dstx : Int, dsty : Int, w : Int, h : Int) : Void;
	
	
}

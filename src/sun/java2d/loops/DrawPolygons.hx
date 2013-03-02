package sun.java2d.loops;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
*/
extern class DrawPolygons extends sun.java2d.loops.GraphicsPrimitive
{
	/**
	*   DrawPolygons
	*   1) draw single-width line polygons onto destination surface
	*   2) must accept output area [x, y, dx, dy]
	*      from within the surface description data for clip rect
	*/
	public static var methodSignature(default, null) : String;
	
	public static var primTypeID(default, null) : Int;
	
	@:overload public static function locate(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.DrawPolygons;
	
	@:overload private function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload public function new(pNativePrim : haxe.Int64, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	/**
	*   All DrawPolygon implementors must have this invoker method
	*/
	@:overload @:native public function new(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : java.NativeArray<Int>, numPolys : Int, transX : Int, transY : Int, close : Bool) : Void;
	
	@:overload override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
@:native('sun$java2d$loops$DrawPolygons$TraceDrawPolygons') @:internal extern class DrawPolygons_TraceDrawPolygons extends sun.java2d.loops.DrawPolygons
{
	@:overload public function new(target : sun.java2d.loops.DrawPolygons) : Void;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function DrawPolygons(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : java.NativeArray<Int>, numPolys : Int, transX : Int, transY : Int, close : Bool) : Void;
	
	
}

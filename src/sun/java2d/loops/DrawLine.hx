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
extern class DrawLine extends sun.java2d.loops.GraphicsPrimitive
{
	/**
	*   DrawLine
	*   1) draw solid color single width line onto destination surface
	*   2) must accept output area [x, y, dx, dy]
	*      from within the surface description data for clip rect
	*/
	@:public @:final @:static public static var methodSignature(default, null) : String;
	
	@:public @:final @:static public static var primTypeID(default, null) : Int;
	
	@:overload @:public @:static public static function locate(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.DrawLine;
	
	@:overload @:protected private function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:public public function new(pNativePrim : haxe.Int64, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	/**
	*   All DrawLine implementors must have this invoker method
	*/
	@:overload @:public @:native public function new(sg2d : sun.java2d.SunGraphics2D, dest : sun.java2d.SurfaceData, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload @:public override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
@:native('sun$java2d$loops$DrawLine$TraceDrawLine') @:internal extern class DrawLine_TraceDrawLine extends sun.java2d.loops.DrawLine
{
	@:overload @:public public function new(target : sun.java2d.loops.DrawLine) : Void;
	
	@:overload @:public override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public override public function DrawLine(sg2d : sun.java2d.SunGraphics2D, dest : sun.java2d.SurfaceData, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	
}

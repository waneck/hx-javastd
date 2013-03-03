package sun.java2d.loops;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class DrawGlyphListAA extends sun.java2d.loops.GraphicsPrimitive
{
	/**
	*   DrawGlyphListAA - loops for AATextRenderer pipe
	*   1) draw anti-aliased text onto destination surface
	*   2) must accept output area [x, y, dx, dy]
	*      from within the surface description data for clip rect
	*/
	@:public @:final @:static public static var methodSignature(default, null) : String;
	
	@:public @:final @:static public static var primTypeID(default, null) : Int;
	
	@:overload @:public @:static public static function locate(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.DrawGlyphListAA;
	
	@:overload @:protected private function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:public public function new(pNativePrim : haxe.Int64, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:public @:native public function new(sg2d : sun.java2d.SunGraphics2D, dest : sun.java2d.SurfaceData, srcData : sun.font.GlyphList) : Void;
	
	@:overload @:public override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
@:native('sun$java2d$loops$DrawGlyphListAA$General') extern class DrawGlyphListAA_General extends sun.java2d.loops.DrawGlyphListAA
{
	@:overload @:public public function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:public override public function DrawGlyphListAA(sg2d : sun.java2d.SunGraphics2D, dest : sun.java2d.SurfaceData, gl : sun.font.GlyphList) : Void;
	
	
}
@:native('sun$java2d$loops$DrawGlyphListAA$TraceDrawGlyphListAA') @:internal extern class DrawGlyphListAA_TraceDrawGlyphListAA extends sun.java2d.loops.DrawGlyphListAA
{
	@:overload @:public public function new(target : sun.java2d.loops.DrawGlyphListAA) : Void;
	
	@:overload @:public override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public override public function DrawGlyphListAA(sg2d : sun.java2d.SunGraphics2D, dest : sun.java2d.SurfaceData, glyphs : sun.font.GlyphList) : Void;
	
	
}

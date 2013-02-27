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
	@:native('methodSignature') public static var _methodSignature(default, null) : String;
	
	public static var primTypeID(default, null) : Int;
	
	@:overload public static function locate(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : DrawGlyphListAA;
	
	@:overload private function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload public function new(pNativePrim : haxe.Int64, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:native public function new(sg2d : sun.java2d.SunGraphics2D, dest : sun.java2d.SurfaceData, srcData : sun.font.GlyphList) : Void;
	
	@:overload override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
@:native('sun$java2d$loops$DrawGlyphListAA$General') extern class DrawGlyphListAA_General extends DrawGlyphListAA
{
	@:overload public function new(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload override public function DrawGlyphListAA(sg2d : sun.java2d.SunGraphics2D, dest : sun.java2d.SurfaceData, gl : sun.font.GlyphList) : Void;
	
	
}
@:native('sun$java2d$loops$DrawGlyphListAA$TraceDrawGlyphListAA') @:internal extern class DrawGlyphListAA_TraceDrawGlyphListAA extends DrawGlyphListAA
{
	@:overload public function new(target : DrawGlyphListAA) : Void;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function DrawGlyphListAA(sg2d : sun.java2d.SunGraphics2D, dest : sun.java2d.SurfaceData, glyphs : sun.font.GlyphList) : Void;
	
	
}
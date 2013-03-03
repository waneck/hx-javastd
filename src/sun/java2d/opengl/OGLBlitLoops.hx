package sun.java2d.opengl;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class OGLBlitLoops
{
	
}
@:internal extern class OGLSurfaceToSurfaceBlit extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLSurfaceToSurfaceScale extends sun.java2d.loops.ScaledBlit
{
	@:overload @:public override public function Scale(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	
}
@:internal extern class OGLSurfaceToSurfaceTransform extends sun.java2d.loops.TransformBlit
{
	@:overload @:public override public function Transform(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, at : java.awt.geom.AffineTransform, hint : Int, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLRTTSurfaceToSurfaceBlit extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLRTTSurfaceToSurfaceScale extends sun.java2d.loops.ScaledBlit
{
	@:overload @:public override public function Scale(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	
}
@:internal extern class OGLRTTSurfaceToSurfaceTransform extends sun.java2d.loops.TransformBlit
{
	@:overload @:public override public function Transform(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, at : java.awt.geom.AffineTransform, hint : Int, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLSurfaceToSwBlit extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLSwToSurfaceBlit extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLSwToSurfaceScale extends sun.java2d.loops.ScaledBlit
{
	@:overload @:public override public function Scale(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	
}
@:internal extern class OGLSwToSurfaceTransform extends sun.java2d.loops.TransformBlit
{
	@:overload @:public override public function Transform(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, at : java.awt.geom.AffineTransform, hint : Int, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLSwToTextureBlit extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLTextureToSurfaceBlit extends sun.java2d.loops.Blit
{
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLTextureToSurfaceScale extends sun.java2d.loops.ScaledBlit
{
	@:overload @:public override public function Scale(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float) : Void;
	
	
}
@:internal extern class OGLTextureToSurfaceTransform extends sun.java2d.loops.TransformBlit
{
	@:overload @:public override public function Transform(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, at : java.awt.geom.AffineTransform, hint : Int, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
@:internal extern class OGLGeneralBlit extends sun.java2d.loops.Blit
{
	@:overload @:public @:synchronized override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}

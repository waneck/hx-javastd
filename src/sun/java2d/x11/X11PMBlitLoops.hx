package sun.java2d.x11;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class X11PMBlitLoops extends sun.java2d.loops.Blit
{
	/**
	* X11PMBlitLoops
	*
	* This class accelerates Blits between two surfaces of types *PM.  Since
	* the onscreen surface is of that type and some of the offscreen surfaces
	* may be of that type (if they were created via X11OffScreenImage), then
	* this type of Blit will accelerated double-buffer copies between those
	* two surfaces.
*/
	@:overload @:public @:static public static function register() : Void;
	
	@:overload @:public public function new(srcType : sun.java2d.loops.SurfaceType, dstType : sun.java2d.loops.SurfaceType, over : Bool) : Void;
	
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}
/**
* This loop is used to render from a BITMASK Sw surface data
* to the Hw cached copies managed by SurfaceDataProxies.
* It first uses a delegate opaque Blit to perform the copy of
* the pixel data and then updates the X11 clipping bitmask from
* the transparent pixels in the source.
*/
@:native('sun$java2d$x11$X11PMBlitLoops$DelegateBlitLoop') @:internal extern class X11PMBlitLoops_DelegateBlitLoop extends sun.java2d.loops.Blit
{
	/**
	* @param realDstType SurfaceType for which the loop should be
	* registered
	* @param delegateDstType SurfaceType which will be used
	* for finding delegate loop
	*/
	@:overload @:public public function new(realDstType : sun.java2d.loops.SurfaceType, delegateDstType : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload @:public override public function Blit(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}

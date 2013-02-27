package sun.java2d.x11;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class X11PMBlitBgLoops extends sun.java2d.loops.BlitBg
{
	/**
	* X11PMBlitBgLoops
	*
	* This class accelerates Blits between two surfaces of types *PM.  Since
	* the onscreen surface is of that type and some of the offscreen surfaces
	* may be of that type (if they were created via X11OffScreenImage), then
	* this type of BlitBg will accelerated double-buffer copies between those
	* two surfaces.
*/
	@:overload public static function register() : Void;
	
	@:overload public function new(srcType : sun.java2d.loops.SurfaceType, dstType : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload override public function BlitBg(src : sun.java2d.SurfaceData, dst : sun.java2d.SurfaceData, comp : java.awt.Composite, clip : sun.java2d.pipe.Region, bgColor : Int, sx : Int, sy : Int, dx : Int, dy : Int, w : Int, h : Int) : Void;
	
	
}

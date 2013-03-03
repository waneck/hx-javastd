package sun.java2d.opengl;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class GLXVolatileSurfaceManager extends sun.awt.image.VolatileSurfaceManager
{
	@:overload @:public public function new(vImg : sun.awt.image.SunVolatileImage, context : Dynamic) : Void;
	
	@:overload @:protected override private function isAccelerationEnabled() : Bool;
	
	/**
	* Create a pbuffer-based SurfaceData object (or init the backbuffer
	* of an existing window if this is a double buffered GraphicsConfig)
	*/
	@:overload @:protected override private function initAcceleratedSurface() : sun.java2d.SurfaceData;
	
	@:overload @:protected override private function isConfigValid(gc : java.awt.GraphicsConfiguration) : Bool;
	
	@:overload @:public override public function initContents() : Void;
	
	
}

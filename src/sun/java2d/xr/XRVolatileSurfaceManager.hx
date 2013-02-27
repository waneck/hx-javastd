package sun.java2d.xr;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class XRVolatileSurfaceManager extends sun.awt.image.VolatileSurfaceManager
{
	/**
	* XRender platform implementation of the VolatileSurfaceManager class.
	*/
	@:overload public function new(vImg : sun.awt.image.SunVolatileImage, context : Dynamic) : Void;
	
	@:overload override private function isAccelerationEnabled() : Bool;
	
	/**
	* Create a pixmap-based SurfaceData object
	*/
	@:overload override private function initAcceleratedSurface() : sun.java2d.SurfaceData;
	
	/**
	* XRender should allow copies between different formats and depths.
	* TODO: verify that this assumption is correct.
	*/
	@:overload override private function isConfigValid(gc : java.awt.GraphicsConfiguration) : Bool;
	
	/**
	* Need to override the default behavior because Pixmaps-based
	* images are accelerated but not volatile.
	*/
	@:overload override public function getCapabilities(gc : java.awt.GraphicsConfiguration) : java.awt.ImageCapabilities;
	
	
}

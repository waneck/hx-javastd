package sun.java2d.opengl;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern interface OGLGraphicsConfig extends sun.java2d.pipe.hw.AccelGraphicsConfig extends sun.awt.image.SurfaceManager.SurfaceManager_ProxiedGraphicsConfig
{
	/**
	* This interface collects the methods that are provided by both
	* GLXGraphicsConfig and WGLGraphicsConfig, making it easier to invoke these
	* methods directly from OGLSurfaceData.
	*/
	@:overload public function getContext() : sun.java2d.opengl.OGLContext;
	
	@:overload public function getNativeConfigInfo() : haxe.Int64;
	
	@:overload public function isCapPresent(cap : Int) : Bool;
	
	@:overload public function createManagedSurface(w : Int, h : Int, transparency : Int) : sun.java2d.SurfaceData;
	
	
}

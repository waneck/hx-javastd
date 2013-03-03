package sun.java2d.opengl;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class OGLSurfaceDataProxy extends sun.java2d.SurfaceDataProxy
{
	/**
	* The proxy class contains the logic for when to replace a
	* SurfaceData with a cached OGL Texture and the code to create
	* the accelerated surfaces.
	*/
	@:overload @:public @:static public static function createProxy(srcData : sun.java2d.SurfaceData, dstConfig : sun.java2d.opengl.OGLGraphicsConfig) : sun.java2d.SurfaceDataProxy;
	
	@:overload @:public public function new(oglgc : sun.java2d.opengl.OGLGraphicsConfig, transparency : Int) : Void;
	
	@:overload @:public override public function validateSurfaceData(srcData : sun.java2d.SurfaceData, cachedData : sun.java2d.SurfaceData, w : Int, h : Int) : sun.java2d.SurfaceData;
	
	@:overload @:public override public function isSupportedOperation(srcData : sun.java2d.SurfaceData, txtype : Int, comp : sun.java2d.loops.CompositeType, bgColor : java.awt.Color) : Bool;
	
	
}

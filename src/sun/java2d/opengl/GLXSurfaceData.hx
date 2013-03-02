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
extern class GLXSurfaceData extends sun.java2d.opengl.OGLSurfaceData
{
	private var peer : sun.awt.X11ComponentPeer;
	
	@:overload @:native private function initPbuffer(pData : haxe.Int64, pConfigInfo : haxe.Int64, isOpaque : Bool, width : Int, height : Int) : Bool;
	
	@:overload private function new(peer : sun.awt.X11ComponentPeer, gc : sun.java2d.opengl.GLXGraphicsConfig, cm : java.awt.image.ColorModel, type : Int) : Void;
	
	@:overload override public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Creates a SurfaceData object representing the primary (front) buffer
	* of an on-screen Window.
	*/
	@:overload public static function createData(peer : sun.awt.X11ComponentPeer) : sun.java2d.opengl.GLXSurfaceData.GLXSurfaceData_GLXWindowSurfaceData;
	
	/**
	* Creates a SurfaceData object representing the back buffer of a
	* double-buffered on-screen Window.
	*/
	@:overload public static function createData(peer : sun.awt.X11ComponentPeer, image : java.awt.Image, type : Int) : sun.java2d.opengl.GLXSurfaceData.GLXSurfaceData_GLXOffScreenSurfaceData;
	
	/**
	* Creates a SurfaceData object representing an off-screen buffer (either
	* a Pbuffer or Texture).
	*/
	@:overload public static function createData(gc : sun.java2d.opengl.GLXGraphicsConfig, width : Int, height : Int, cm : java.awt.image.ColorModel, image : java.awt.Image, type : Int) : sun.java2d.opengl.GLXSurfaceData.GLXSurfaceData_GLXOffScreenSurfaceData;
	
	@:overload public static function getGC(peer : sun.awt.X11ComponentPeer) : sun.java2d.opengl.GLXGraphicsConfig;
	
	
}
@:native('sun$java2d$opengl$GLXSurfaceData$GLXWindowSurfaceData') extern class GLXSurfaceData_GLXWindowSurfaceData extends sun.java2d.opengl.GLXSurfaceData
{
	@:overload public function new(peer : sun.awt.X11ComponentPeer, gc : sun.java2d.opengl.GLXGraphicsConfig) : Void;
	
	@:overload override public function getReplacement() : sun.java2d.SurfaceData;
	
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns destination Component associated with this SurfaceData.
	*/
	@:overload override public function getDestination() : Dynamic;
	
	
}
/**
* A surface which implements a v-synced flip back-buffer with COPIED
* FlipContents.
*
* This surface serves as a back-buffer to the outside world, while
* it is actually an offscreen surface. When the BufferStrategy this surface
* belongs to is showed, it is first copied to the real private
* FLIP_BACKBUFFER, which is then flipped.
*/
@:native('sun$java2d$opengl$GLXSurfaceData$GLXVSyncOffScreenSurfaceData') extern class GLXSurfaceData_GLXVSyncOffScreenSurfaceData extends sun.java2d.opengl.GLXSurfaceData.GLXSurfaceData_GLXOffScreenSurfaceData
{
	@:overload public function new(peer : sun.awt.X11ComponentPeer, gc : sun.java2d.opengl.GLXGraphicsConfig, width : Int, height : Int, image : java.awt.Image, cm : java.awt.image.ColorModel, type : Int) : Void;
	
	@:overload public function getFlipSurface() : sun.java2d.SurfaceData;
	
	@:overload override public function flush() : Void;
	
	
}
@:native('sun$java2d$opengl$GLXSurfaceData$GLXOffScreenSurfaceData') extern class GLXSurfaceData_GLXOffScreenSurfaceData extends sun.java2d.opengl.GLXSurfaceData
{
	@:overload public function new(peer : sun.awt.X11ComponentPeer, gc : sun.java2d.opengl.GLXGraphicsConfig, width : Int, height : Int, image : java.awt.Image, cm : java.awt.image.ColorModel, type : Int) : Void;
	
	@:overload override public function getReplacement() : sun.java2d.SurfaceData;
	
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns destination Image associated with this SurfaceData.
	*/
	@:overload override public function getDestination() : Dynamic;
	
	
}

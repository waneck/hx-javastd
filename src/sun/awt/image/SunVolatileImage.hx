package sun.awt.image;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class is the base implementation of the VolatileImage
* abstract class.  The class implements most of the standard Image
* methods (width, height, etc.) but delegates all surface management
* issues to a platform-specific VolatileSurfaceManager.  When a new instance
* of SunVolatileImage is created, it automatically creates an
* appropriate VolatileSurfaceManager for the GraphicsConfiguration
* under which this SunVolatileImage was created.
*/
extern class SunVolatileImage extends java.awt.image.VolatileImage implements sun.java2d.DestSurfaceProvider
{
	@:protected private var volSurfaceManager : sun.awt.image.VolatileSurfaceManager;
	
	@:protected private var comp : java.awt.Component;
	
	@:overload @:protected private function new(comp : java.awt.Component, graphicsConfig : java.awt.GraphicsConfiguration, width : Int, height : Int, context : Dynamic, transparency : Int, caps : java.awt.ImageCapabilities, accType : Int) : Void;
	
	@:overload @:public public function new(comp : java.awt.Component, width : Int, height : Int) : Void;
	
	@:overload @:public public function new(comp : java.awt.Component, width : Int, height : Int, context : Dynamic) : Void;
	
	@:overload @:public public function new(graphicsConfig : java.awt.GraphicsConfiguration, width : Int, height : Int, transparency : Int, caps : java.awt.ImageCapabilities) : Void;
	
	@:overload @:public override public function getWidth() : Int;
	
	@:overload @:public override public function getHeight() : Int;
	
	@:overload @:public public function getGraphicsConfig() : java.awt.GraphicsConfiguration;
	
	@:overload @:public public function updateGraphicsConfig() : Void;
	
	@:overload @:public public function getComponent() : java.awt.Component;
	
	@:overload @:public public function getForcedAccelSurfaceType() : Int;
	
	@:overload @:protected private function createSurfaceManager(context : Dynamic, caps : java.awt.ImageCapabilities) : sun.awt.image.VolatileSurfaceManager;
	
	@:overload @:public override public function createGraphics() : java.awt.Graphics2D;
	
	@:overload @:public override public function getProperty(name : String, observer : java.awt.image.ImageObserver) : Dynamic;
	
	@:overload @:public override public function getWidth(observer : java.awt.image.ImageObserver) : Int;
	
	@:overload @:public override public function getHeight(observer : java.awt.image.ImageObserver) : Int;
	
	/**
	* This method creates a BufferedImage intended for use as a "snapshot"
	* or a backup surface.
	*/
	@:overload @:public public function getBackupImage() : java.awt.image.BufferedImage;
	
	@:overload @:public override public function getSnapshot() : java.awt.image.BufferedImage;
	
	@:overload @:public override public function validate(gc : java.awt.GraphicsConfiguration) : Int;
	
	@:overload @:public override public function contentsLost() : Bool;
	
	@:overload @:public override public function getCapabilities() : java.awt.ImageCapabilities;
	
	/**
	* {@inheritDoc}
	*
	* @see sun.java2d.DestSurfaceProvider#getDestSurface
	*/
	@:overload @:public public function getDestSurface() : sun.java2d.Surface;
	
	
}

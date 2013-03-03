package sun.awt;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class X11GraphicsDevice extends java.awt.GraphicsDevice implements sun.awt.DisplayChangedListener
{
	@:overload @:public public function new(screennum : Int) : Void;
	
	/**
	* Returns the X11 screen of the device.
	*/
	@:overload @:public public function getScreen() : Int;
	
	@:overload @:public public function getProxyKeyFor(st : sun.java2d.loops.SurfaceType) : Dynamic;
	
	/**
	* Returns the X11 Display of this device.
	* This method is also in MDrawingSurfaceInfo but need it here
	* to be able to allow a GraphicsConfigTemplate to get the Display.
	*/
	@:overload @:public @:native public function getDisplay() : haxe.Int64;
	
	/**
	* Returns the type of the graphics device.
	* @see #TYPE_RASTER_SCREEN
	* @see #TYPE_PRINTER
	* @see #TYPE_IMAGE_BUFFER
	*/
	@:overload @:public override public function getType() : Int;
	
	/**
	* Returns the identification string associated with this graphics
	* device.
	*/
	@:overload @:public override public function getIDstring() : String;
	
	/**
	* Returns all of the graphics
	* configurations associated with this graphics device.
	*/
	@:overload @:public override public function getConfigurations() : java.NativeArray<java.awt.GraphicsConfiguration>;
	
	/*
	* Returns the number of X11 visuals representable as an
	* X11GraphicsConfig object.
	*/
	@:overload @:public @:native public function getNumConfigs(screen : Int) : Int;
	
	/*
	* Returns the visualid for the given index of graphics configurations.
	*/
	@:overload @:public @:native public function getConfigVisualId(index : Int, screen : Int) : Int;
	
	/*
	* Returns the depth for the given index of graphics configurations.
	*/
	@:overload @:public @:native public function getConfigDepth(index : Int, screen : Int) : Int;
	
	/*
	* Returns the colormap for the given index of graphics configurations.
	*/
	@:overload @:public @:native public function getConfigColormap(index : Int, screen : Int) : Int;
	
	@:overload @:public @:static @:native public static function isDBESupported() : Bool;
	
	/**
	* Returns the default graphics configuration
	* associated with this graphics device.
	*/
	@:overload @:public override public function getDefaultConfiguration() : java.awt.GraphicsConfiguration;
	
	@:overload @:public override public function isFullScreenSupported() : Bool;
	
	@:overload @:public override public function isDisplayChangeSupported() : Bool;
	
	@:overload @:public @:synchronized override public function setFullScreenWindow(w : java.awt.Window) : Void;
	
	@:overload @:public @:synchronized override public function getDisplayMode() : java.awt.DisplayMode;
	
	@:overload @:public @:synchronized override public function getDisplayModes() : java.NativeArray<java.awt.DisplayMode>;
	
	@:overload @:public @:synchronized override public function setDisplayMode(dm : java.awt.DisplayMode) : Void;
	
	/**
	* From the DisplayChangedListener interface; called from
	* X11GraphicsEnvironment when the display mode has been changed.
	*/
	@:overload @:public @:synchronized public function displayChanged() : Void;
	
	/**
	* From the DisplayChangedListener interface; devices do not need
	* to react to this event.
	*/
	@:overload @:public public function paletteChanged() : Void;
	
	/**
	* Add a DisplayChangeListener to be notified when the display settings
	* are changed.  Typically, only top-level containers need to be added
	* to X11GraphicsDevice.
	*/
	@:overload @:public public function addDisplayChangedListener(client : sun.awt.DisplayChangedListener) : Void;
	
	/**
	* Remove a DisplayChangeListener from this X11GraphicsDevice.
	*/
	@:overload @:public public function removeDisplayChangedListener(client : sun.awt.DisplayChangedListener) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}

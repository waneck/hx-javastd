package sun.java2d;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SunGraphicsEnvironment extends java.awt.GraphicsEnvironment implements sun.awt.DisplayChangedListener
{
	/**
	* This is an implementation of a GraphicsEnvironment object for the
	* default local GraphicsEnvironment.
	*
	* @see GraphicsDevice
	* @see GraphicsConfiguration
	*/
	@:public @:static public static var isOpenSolaris : Bool;
	
	@:overload @:public public function new() : Void;
	
	@:protected private var screens : java.NativeArray<java.awt.GraphicsDevice>;
	
	/**
	* Returns an array of all of the screen devices.
	*/
	@:overload @:public @:synchronized override public function getScreenDevices() : java.NativeArray<java.awt.GraphicsDevice>;
	
	/**
	* Returns the number of screen devices of this graphics environment.
	*
	* @return the number of screen devices of this graphics environment
	*/
	@:overload @:protected @:abstract private function getNumScreens() : Int;
	
	/**
	* Create and return the screen device with the specified number. The
	* device with number <code>0</code> will be the default device (returned
	* by {@link #getDefaultScreenDevice()}.
	*
	* @param screennum the number of the screen to create
	*
	* @return the created screen device
	*/
	@:overload @:protected @:abstract private function makeScreenDevice(screennum : Int) : java.awt.GraphicsDevice;
	
	/**
	* Returns the default screen graphics device.
	*/
	@:overload @:public override public function getDefaultScreenDevice() : java.awt.GraphicsDevice;
	
	/**
	* Returns a Graphics2D object for rendering into the
	* given BufferedImage.
	* @throws NullPointerException if BufferedImage argument is null
	*/
	@:overload @:public override public function createGraphics(img : java.awt.image.BufferedImage) : java.awt.Graphics2D;
	
	@:overload @:public @:static public static function getFontManagerForSGE() : sun.font.FontManagerForSGE;
	
	/* Modifies the behaviour of a subsequent call to preferLocaleFonts()
	* to use Mincho instead of Gothic for dialoginput in JA locales
	* on windows. Not needed on other platforms.
	*
	* DO NOT MOVE OR RENAME OR OTHERWISE ALTER THIS METHOD.
	* ITS USED BY SOME NON-JRE INTERNAL CODE.
	*/
	@:overload @:public @:static public static function useAlternateFontforJALocales() : Void;
	
	/**
	* Returns all fonts available in this environment.
	*/
	@:overload @:public override public function getAllFonts() : java.NativeArray<java.awt.Font>;
	
	@:overload @:public override public function getAvailableFontFamilyNames(requestedLocale : java.util.Locale) : java.NativeArray<String>;
	
	@:overload @:public override public function getAvailableFontFamilyNames() : java.NativeArray<String>;
	
	/**
	* Return the bounds of a GraphicsDevice, less its screen insets.
	* See also java.awt.GraphicsEnvironment.getUsableBounds();
	*/
	@:overload @:public @:static public static function getUsableBounds(gd : java.awt.GraphicsDevice) : java.awt.Rectangle;
	
	/**
	* From the DisplayChangedListener interface; called
	* when the display mode has been changed.
	*/
	@:overload @:public public function displayChanged() : Void;
	
	/**
	* Part of the DisplayChangedListener interface:
	* propagate this event to listeners
	*/
	@:overload @:public public function paletteChanged() : Void;
	
	/**
	* Returns true when the display is local, false for remote displays.
	*
	* @return true when the display is local, false for remote displays
	*/
	@:overload @:public @:abstract public function isDisplayLocal() : Bool;
	
	/*
	* ----DISPLAY CHANGE SUPPORT----
	*/
	@:protected private var displayChanger : sun.awt.SunDisplayChanger;
	
	/**
	* Add a DisplayChangeListener to be notified when the display settings
	* are changed.
	*/
	@:overload @:public public function addDisplayChangedListener(client : sun.awt.DisplayChangedListener) : Void;
	
	/**
	* Remove a DisplayChangeListener from Win32GraphicsEnvironment
	*/
	@:overload @:public public function removeDisplayChangedListener(client : sun.awt.DisplayChangedListener) : Void;
	
	/**
	* Returns true if FlipBufferStrategy with COPIED buffer contents
	* is preferred for this peer's GraphicsConfiguration over
	* BlitBufferStrategy, false otherwise.
	*
	* The reason FlipBS could be preferred is that in some configurations
	* an accelerated copy to the screen is supported (like Direct3D 9)
	*
	* @return true if flip strategy should be used, false otherwise
	*/
	@:overload @:public public function isFlipStrategyPreferred(peer : java.awt.peer.ComponentPeer) : Bool;
	
	
}

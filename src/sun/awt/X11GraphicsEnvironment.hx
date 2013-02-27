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
extern class X11GraphicsEnvironment extends sun.java2d.SunGraphicsEnvironment
{
	@:overload public static function isGLXAvailable() : Bool;
	
	@:overload public static function isGLXVerbose() : Bool;
	
	@:overload public static function isXRenderAvailable() : Bool;
	
	@:overload public static function isXRenderVerbose() : Bool;
	
	@:overload public function new() : Void;
	
	@:overload @:native override private function getNumScreens() : Int;
	
	@:overload override private function makeScreenDevice(screennum : Int) : java.awt.GraphicsDevice;
	
	@:overload @:native private function getDefaultScreenNum() : Int;
	
	/**
	* Returns the default screen graphics device.
	*/
	@:overload override public function getDefaultScreenDevice() : java.awt.GraphicsDevice;
	
	@:overload override public function isDisplayLocal() : Bool;
	
	/**
	* Returns face name for default font, or null if
	* no face names are used for CompositeFontDescriptors
	* for this platform.
	*/
	@:overload public function getDefaultFontFaceName() : String;
	
	/**
	* Override for Xinerama case: call new Solaris API for getting the correct
	* centering point from the windowing system.
	*/
	@:overload override public function getCenterPoint() : java.awt.Point;
	
	/**
	* Override for Xinerama case
	*/
	@:overload override public function getMaximumWindowBounds() : java.awt.Rectangle;
	
	@:overload public function runningXinerama() : Bool;
	
	/**
	* Return the bounds for a centered Window on a system running in Xinerama
	* mode.
	*
	* Calculations are based on the assumption of a perfectly rectangular
	* display area (display edges line up with one another, and displays
	* have consistent width and/or height).
	*
	* The bounds to return depend on the arrangement of displays and on where
	* Windows are to be centered.  There are two common situations:
	*
	* 1) The center point lies at the center of the combined area of all the
	*    displays.  In this case, the combined area of all displays is
	*    returned.
	*
	* 2) The center point lies at the center of a single display.  In this case
	*    the user most likely wants centered Windows to be constrained to that
	*    single display.  The boundaries of the one display are returned.
	*
	* It is possible for the center point to be at both the center of the
	* entire display space AND at the center of a single monitor (a square of
	* 9 monitors, for instance).  In this case, the entire display area is
	* returned.
	*
	* Because the center point is arbitrarily settable by the user, it could
	* fit neither of the cases above.  The fallback case is to simply return
	* the combined area for all screens.
	*/
	@:overload private function getXineramaWindowBounds() : java.awt.Rectangle;
	
	/**
	* From the DisplayChangedListener interface; devices do not need
	* to react to this event.
	*/
	@:overload override public function paletteChanged() : Void;
	
	
}

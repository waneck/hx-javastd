package java.awt;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* The <code>DisplayMode</code> class encapsulates the bit depth, height,
* width, and refresh rate of a <code>GraphicsDevice</code>. The ability to
* change graphics device's display mode is platform- and
* configuration-dependent and may not always be available
* (see {@link GraphicsDevice#isDisplayChangeSupported}).
* <p>
* For more information on full-screen exclusive mode API, see the
* <a href="http://java.sun.com/docs/books/tutorial/extra/fullscreen/index.html">
* Full-Screen Exclusive Mode API Tutorial</a>.
*
* @see GraphicsDevice
* @see GraphicsDevice#isDisplayChangeSupported
* @see GraphicsDevice#getDisplayModes
* @see GraphicsDevice#setDisplayMode
* @author Michael Martak
* @since 1.4
*/
@:require(java4) extern class DisplayMode
{
	/**
	* Create a new display mode object with the supplied parameters.
	* @param width the width of the display, in pixels
	* @param height the height of the display, in pixels
	* @param bitDepth the bit depth of the display, in bits per
	*        pixel.  This can be <code>BIT_DEPTH_MULTI</code> if multiple
	*        bit depths are available.
	* @param refreshRate the refresh rate of the display, in hertz.
	*        This can be <code>REFRESH_RATE_UNKNOWN</code> if the
	*        information is not available.
	* @see #BIT_DEPTH_MULTI
	* @see #REFRESH_RATE_UNKNOWN
	*/
	@:overload @:public public function new(width : Int, height : Int, bitDepth : Int, refreshRate : Int) : Void;
	
	/**
	* Returns the height of the display, in pixels.
	* @return the height of the display, in pixels
	*/
	@:overload @:public public function getHeight() : Int;
	
	/**
	* Returns the width of the display, in pixels.
	* @return the width of the display, in pixels
	*/
	@:overload @:public public function getWidth() : Int;
	
	/**
	* Value of the bit depth if multiple bit depths are supported in this
	* display mode.
	* @see #getBitDepth
	*/
	@:public @:final @:static public static var BIT_DEPTH_MULTI(default, null) : Int;
	
	/**
	* Returns the bit depth of the display, in bits per pixel.  This may be
	* <code>BIT_DEPTH_MULTI</code> if multiple bit depths are supported in
	* this display mode.
	*
	* @return the bit depth of the display, in bits per pixel.
	* @see #BIT_DEPTH_MULTI
	*/
	@:overload @:public public function getBitDepth() : Int;
	
	/**
	* Value of the refresh rate if not known.
	* @see #getRefreshRate
	*/
	@:public @:final @:static public static var REFRESH_RATE_UNKNOWN(default, null) : Int;
	
	/**
	* Returns the refresh rate of the display, in hertz.  This may be
	* <code>REFRESH_RATE_UNKNOWN</code> if the information is not available.
	*
	* @return the refresh rate of the display, in hertz.
	* @see #REFRESH_RATE_UNKNOWN
	*/
	@:overload @:public public function getRefreshRate() : Int;
	
	/**
	* Returns whether the two display modes are equal.
	* @return whether the two display modes are equal
	*/
	@:overload @:public public function equals(dm : java.awt.DisplayMode) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function equals(dm : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}

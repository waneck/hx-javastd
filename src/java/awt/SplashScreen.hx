package java.awt;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SplashScreen
{
	/**
	* Returns the {@code SplashScreen} object used for
	* Java startup splash screen control on systems that support display.
	*
	* @throws UnsupportedOperationException if the splash screen feature is not
	*         supported by the current toolkit
	* @throws HeadlessException if {@code GraphicsEnvironment.isHeadless()}
	*         returns true
	* @return the {@link SplashScreen} instance, or <code>null</code> if there is
	*         none or it has already been closed
	*/
	@:overload @:public @:static public static function getSplashScreen() : java.awt.SplashScreen;
	
	/**
	* Changes the splash screen image. The new image is loaded from the
	* specified URL; GIF, JPEG and PNG image formats are supported.
	* The method returns after the image has finished loading and the window
	* has been updated.
	* The splash screen window is resized according to the size of
	* the image and is centered on the screen.
	*
	* @param imageURL the non-<code>null</code> URL for the new
	*        splash screen image
	* @throws NullPointerException if {@code imageURL} is <code>null</code>
	* @throws IOException if there was an error while loading the image
	* @throws IllegalStateException if the splash screen has already been
	*         closed
	*/
	@:overload @:public public function setImageURL(imageURL : java.net.URL) : Void;
	
	/**
	* Returns the current splash screen image.
	*
	* @return URL for the current splash screen image file
	* @throws IllegalStateException if the splash screen has already been closed
	*/
	@:overload @:public public function getImageURL() : java.net.URL;
	
	/**
	* Returns the bounds of the splash screen window as a {@link Rectangle}.
	* This may be useful if, for example, you want to replace the splash
	* screen with your window at the same location.
	* <p>
	* You cannot control the size or position of the splash screen.
	* The splash screen size is adjusted automatically when the image changes.
	* <p>
	* The image may contain transparent areas, and thus the reported bounds may
	* be larger than the visible splash screen image on the screen.
	*
	* @return a {@code Rectangle} containing the splash screen bounds
	* @throws IllegalStateException if the splash screen has already been closed
	*/
	@:overload @:public public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns the size of the splash screen window as a {@link Dimension}.
	* This may be useful if, for example,
	* you want to draw on the splash screen overlay surface.
	* <p>
	* You cannot control the size or position of the splash screen.
	* The splash screen size is adjusted automatically when the image changes.
	* <p>
	* The image may contain transparent areas, and thus the reported size may
	* be larger than the visible splash screen image on the screen.
	*
	* @return a {@link Dimension} object indicating the splash screen size
	* @throws IllegalStateException if the splash screen has already been closed
	*/
	@:overload @:public public function getSize() : java.awt.Dimension;
	
	/**
	* Creates a graphics context (as a {@link Graphics2D} object) for the splash
	* screen overlay image, which allows you to draw over the splash screen.
	* Note that you do not draw on the main image but on the image that is
	* displayed over the main image using alpha blending. Also note that drawing
	* on the overlay image does not necessarily update the contents of splash
	* screen window. You should call {@code update()} on the
	* <code>SplashScreen</code> when you want the splash screen to be
	* updated immediately.
	* <p>
	* The pixel (0, 0) in the coordinate space of the graphics context
	* corresponds to the origin of the splash screen native window bounds (see
	* {@link #getBounds()}).
	*
	* @return graphics context for the splash screen overlay surface
	* @throws IllegalStateException if the splash screen has already been closed
	*/
	@:overload @:public public function createGraphics() : java.awt.Graphics2D;
	
	/**
	* Updates the splash window with current contents of the overlay image.
	*
	* @throws IllegalStateException if the overlay image does not exist;
	*         for example, if {@code createGraphics} has never been called,
	*         or if the splash screen has already been closed
	*/
	@:overload @:public public function update() : Void;
	
	/**
	* Hides the splash screen, closes the window, and releases all associated
	* resources.
	*
	* @throws IllegalStateException if the splash screen has already been closed
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Determines whether the splash screen is visible. The splash screen may
	* be hidden using {@link #close()}, it is also hidden automatically when
	* the first AWT/Swing window is made visible.
	* <p>
	* Note that the native platform may delay presenting the splash screen
	* native window on the screen. The return value of {@code true} for this
	* method only guarantees that the conditions to hide the splash screen
	* window have not occurred yet.
	*
	* @return true if the splash screen is visible (has not been closed yet),
	*         false otherwise
	*/
	@:overload @:public public function isVisible() : Bool;
	
	
}

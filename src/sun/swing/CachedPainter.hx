package sun.swing;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A base class used for icons or images that are expensive to paint.
* A subclass will do the following:
* <ol>
* <li>Invoke <code>paint</code> when you want to paint the image,
*     if you are implementing <code>Icon</code> you'll invoke this from
*     <code>paintIcon</code>.
*     The args argument is useful when additional state is needed.
* <li>Override <code>paintToImage</code> to render the image.  The code that
*     lives here is equivalent to what previously would go in
*     <code>paintIcon</code>, for an <code>Icon</code>.
* </ol>
* The two ways to use this class are:
* <ol>
* <li>Invoke <code>paint</code> to draw the cached reprensentation at
*     the specified location.
* <li>Invoke <code>getImage</code> to get the cached reprensentation and
*     draw the image yourself.  This is primarly useful when you are not
*     using <code>VolatileImage</code>.
* </ol>
*
*
*/
extern class CachedPainter
{
	/**
	* Creates an instance of <code>CachedPainter</code> that will cache up
	* to <code>cacheCount</code> images of this class.
	*
	* @param cacheCount Max number of images to cache
	*/
	@:overload public function new(cacheCount : Int) : Void;
	
	/**
	* Renders the cached image to the the passed in <code>Graphic</code>.
	* If there is no cached image <code>paintToImage</code> will be invoked.
	* <code>paintImage</code> is invoked to paint the cached image.
	*
	* @param c Component rendering to, this may be null.
	* @param g Graphics to paint to
	* @param x X-coordinate to render to
	* @param y Y-coordinate to render to
	* @param w Width to render in
	* @param h Height to render in
	* @param arg Variable arguments that will be passed to paintToImage
	*/
	@:overload public function paint(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Paints the representation to cache to the supplied Graphics.
	*
	* @param c Component painting to, may be null.
	* @param image Image to paint to
	* @param g Graphics to paint to, obtained from the passed in Image.
	* @param w Width to paint to
	* @param h Height to paint to
	* @param args Arguments supplied to <code>paint</code>
	*/
	@:overload @:abstract private function paintToImage(c : java.awt.Component, image : java.awt.Image, g : java.awt.Graphics, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Paints the image to the specified location.
	*
	* @param c Component painting to
	* @param g Graphics to paint to
	* @param x X coordinate to paint to
	* @param y Y coordinate to paint to
	* @param w Width to paint to
	* @param h Height to paint to
	* @param image Image to paint
	* @param args Arguments supplied to <code>paint</code>
	*/
	@:overload private function paintImage(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, image : java.awt.Image, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Creates the image to cache.  This returns an opaque image, subclasses
	* that require translucency or transparency will need to override this
	* method.
	*
	* @param c Component painting to
	* @param w Width of image to create
	* @param h Height to image to create
	* @param config GraphicsConfiguration that will be
	*        rendered to, this may be null.
	* @param args Arguments passed to paint
	*/
	@:overload private function createImage(c : java.awt.Component, w : Int, h : Int, config : java.awt.GraphicsConfiguration, args : java.NativeArray<Dynamic>) : java.awt.Image;
	
	/**
	* Clear the image cache
	*/
	@:overload private function flush() : Void;
	
	
}

package javax.swing.plaf.nimbus;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ImageCache
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(maxPixelCount : Int, maxSingleImagePixelSize : Int) : Void;
	
	/** Clear the cache */
	@:overload @:public public function flush() : Void;
	
	/**
	* Check if the image size is to big to be stored in the cache
	*
	* @param w The image width
	* @param h The image height
	* @return True if the image size is less than max
	*/
	@:overload @:public public function isImageCachable(w : Int, h : Int) : Bool;
	
	/**
	* Get the cached image for given keys
	*
	* @param config The graphics configuration, needed if cached image is a Volatile Image. Used as part of cache key
	* @param w      The image width, used as part of cache key
	* @param h      The image height, used as part of cache key
	* @param args   Other arguments to use as part of the cache key
	* @return Returns the cached Image, or null there is no cached image for key
	*/
	@:overload @:public public function getImage(config : java.awt.GraphicsConfiguration, w : Int, h : Int, args : java.NativeArray<Dynamic>) : java.awt.Image;
	
	/**
	* Sets the cached image for the specified constraints.
	*
	* @param image  The image to store in cache
	* @param config The graphics configuration, needed if cached image is a Volatile Image. Used as part of cache key
	* @param w      The image width, used as part of cache key
	* @param h      The image height, used as part of cache key
	* @param args   Other arguments to use as part of the cache key
	* @return true if the image could be cached or false if the image is too big
	*/
	@:overload @:public public function setImage(image : java.awt.Image, config : java.awt.GraphicsConfiguration, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Bool;
	
	
}
/** Extended SoftReference that stores the pixel count even after the image is lost */
@:native('javax$swing$plaf$nimbus$ImageCache$PixelCountSoftReference') @:internal extern class ImageCache_PixelCountSoftReference extends java.lang.ref.SoftReference<java.awt.Image>
{
	@:overload @:public public function new(referent : java.awt.Image, q : java.lang.ref.ReferenceQueue<java.awt.Image>, pixelCount : Int, hash : Int, config : java.awt.GraphicsConfiguration, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public public function equals(config : java.awt.GraphicsConfiguration, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Bool;
	
	
}

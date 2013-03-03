package javax.swing;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
* An image filter that "disables" an image by turning
* it into a grayscale image, and brightening the pixels
* in the image. Used by buttons to create an image for
* a disabled button.
*
* @author      Jeff Dinkins
* @author      Tom Ball
* @author      Jim Graham
*/
extern class GrayFilter extends java.awt.image.RGBImageFilter
{
	/**
	* Creates a disabled image
	*/
	@:overload @:public @:static public static function createDisabledImage(i : java.awt.Image) : java.awt.Image;
	
	/**
	* Constructs a GrayFilter object that filters a color image to a
	* grayscale image. Used by buttons to create disabled ("grayed out")
	* button images.
	*
	* @param b  a boolean -- true if the pixels should be brightened
	* @param p  an int in the range 0..100 that determines the percentage
	*           of gray, where 100 is the darkest gray, and 0 is the lightest
	*/
	@:overload @:public public function new(b : Bool, p : Int) : Void;
	
	/**
	* Overrides <code>RGBImageFilter.filterRGB</code>.
	*/
	@:overload @:public override public function filterRGB(x : Int, y : Int, rgb : Int) : Int;
	
	
}

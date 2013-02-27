package sun.java2d.pipe;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
extern interface DrawImagePipe
{
	/**
	* This interface defines the set of calls that pipeline objects
	* can use to pass on responsibility for performing various
	* image copy commands.
	* There are 3 types of image copies handled by this class:
	*    - copyImage: These methods simply copy the pixels
	*      from the src to dest, either from (0, 0) (implicit)
	*      or from a given (sx, sy) location.
	*    - scaleImage: These methods copy from src to dest while
	*      scaling the source image.  The src and dest rectangles
	*      are used to specify the scale.
	*    - copyImageBg: These methods behave the same as the
	*      copyImage methods except they substitute the given
	*      background color for any transparent pixels.
	*    - scaleImageBg: These methods behave the same as the
	*      scaleImage methods except they substitute the given
	*      background color for any transparent pixels.
	*    - transformImage....
	*/
	@:overload public function copyImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function copyImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, dx : Int, dy : Int, sx : Int, sy : Int, w : Int, h : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function scaleImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, width : Int, height : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function scaleImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, atfm : java.awt.geom.AffineTransform, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.image.BufferedImage, op : java.awt.image.BufferedImageOp, x : Int, y : Int) : Void;
	
	
}

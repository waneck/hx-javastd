package sun.awt.image;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageRepresentation extends sun.awt.image.ImageWatched implements java.awt.image.ImageConsumer
{
	private var cmodel : java.awt.image.ColorModel;
	
	/**
	* Create an ImageRepresentation for the given Image.  The
	* width and height are unknown at this point.  The color
	* model is a hint as to the color model to use when creating
	* the buffered image.  If null, the src color model will
	* be used.
	*/
	@:overload public function new(im : sun.awt.image.ToolkitImage, cmodel : java.awt.image.ColorModel, forceCMhint : Bool) : Void;
	
	/* REMIND: Only used for Frame.setIcon - should use ImageWatcher instead */
	@:overload @:synchronized public function reconstruct(flags : Int) : Void;
	
	@:overload public function setDimensions(w : Int, h : Int) : Void;
	
	@:overload public function getWidth() : Int;
	
	@:overload public function getHeight() : Int;
	
	/**
	* Returns the BufferedImage that will be used as the representation of
	* the pixel data.  Subclasses can override this method to return
	* platform specific subclasses of BufferedImage that may or may not be
	* accelerated.
	*
	* It is subclass' responsibility to propagate acceleration priority
	* to the newly created image.
	*/
	@:overload private function createImage(cm : java.awt.image.ColorModel, raster : java.awt.image.WritableRaster, isRasterPremultiplied : Bool, properties : java.util.Hashtable<Dynamic, Dynamic>) : java.awt.image.BufferedImage;
	
	@:overload public function setProperties(props : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload public function setColorModel(model : java.awt.image.ColorModel) : Void;
	
	@:overload public function setHints(h : Int) : Void;
	
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pix : java.NativeArray<java.StdTypes.Int8>, off : Int, scansize : Int) : Void;
	
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pix : java.NativeArray<Int>, off : Int, scansize : Int) : Void;
	
	@:overload public function getOpaqueRGBImage() : java.awt.image.BufferedImage;
	
	@:overload public function imageComplete(status : Int) : Void;
	
	@:overload @:synchronized public function notifyWatcherListEmpty() : Void;
	
	@:overload public function prepare(iw : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function check(iw : java.awt.image.ImageObserver) : Int;
	
	@:overload public function drawToBufImage(g : java.awt.Graphics, img : sun.awt.image.ToolkitImage, x : Int, y : Int, bg : java.awt.Color, iw : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function drawToBufImage(g : java.awt.Graphics, img : sun.awt.image.ToolkitImage, x : Int, y : Int, w : Int, h : Int, bg : java.awt.Color, iw : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function drawToBufImage(g : java.awt.Graphics, img : sun.awt.image.ToolkitImage, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bg : java.awt.Color, iw : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function drawToBufImage(g : java.awt.Graphics, img : sun.awt.image.ToolkitImage, xform : java.awt.geom.AffineTransform, iw : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function setAccelerationPriority(priority : Single) : Void;
	
	
}

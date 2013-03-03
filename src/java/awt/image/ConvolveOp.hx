package java.awt.image;
/*
* Copyright (c) 1997, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class ConvolveOp implements java.awt.image.BufferedImageOp implements java.awt.image.RasterOp
{
	/**
	* Pixels at the edge of the destination image are set to zero.  This
	* is the default.
	*/
	@:public @:static @:final public static var EDGE_ZERO_FILL(default, null) : Int;
	
	/**
	* Pixels at the edge of the source image are copied to
	* the corresponding pixels in the destination without modification.
	*/
	@:public @:static @:final public static var EDGE_NO_OP(default, null) : Int;
	
	/**
	* Constructs a ConvolveOp given a Kernel, an edge condition, and a
	* RenderingHints object (which may be null).
	* @param kernel the specified <code>Kernel</code>
	* @param edgeCondition the specified edge condition
	* @param hints the specified <code>RenderingHints</code> object
	* @see Kernel
	* @see #EDGE_NO_OP
	* @see #EDGE_ZERO_FILL
	* @see java.awt.RenderingHints
	*/
	@:overload @:public public function new(kernel : java.awt.image.Kernel, edgeCondition : Int, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Constructs a ConvolveOp given a Kernel.  The edge condition
	* will be EDGE_ZERO_FILL.
	* @param kernel the specified <code>Kernel</code>
	* @see Kernel
	* @see #EDGE_ZERO_FILL
	*/
	@:overload @:public public function new(kernel : java.awt.image.Kernel) : Void;
	
	/**
	* Returns the edge condition.
	* @return the edge condition of this <code>ConvolveOp</code>.
	* @see #EDGE_NO_OP
	* @see #EDGE_ZERO_FILL
	*/
	@:overload @:public public function getEdgeCondition() : Int;
	
	/**
	* Returns the Kernel.
	* @return the <code>Kernel</code> of this <code>ConvolveOp</code>.
	*/
	@:overload @:public @:final public function getKernel() : java.awt.image.Kernel;
	
	/**
	* Performs a convolution on BufferedImages.  Each component of the
	* source image will be convolved (including the alpha component, if
	* present).
	* If the color model in the source image is not the same as that
	* in the destination image, the pixels will be converted
	* in the destination.  If the destination image is null,
	* a BufferedImage will be created with the source ColorModel.
	* The IllegalArgumentException may be thrown if the source is the
	* same as the destination.
	* @param src the source <code>BufferedImage</code> to filter
	* @param dst the destination <code>BufferedImage</code> for the
	*        filtered <code>src</code>
	* @return the filtered <code>BufferedImage</code>
	* @throws NullPointerException if <code>src</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>src</code> equals
	*         <code>dst</code>
	* @throws ImagingOpException if <code>src</code> cannot be filtered
	*/
	@:overload @:public @:final public function filter(src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage) : java.awt.image.BufferedImage;
	
	/**
	* Performs a convolution on Rasters.  Each band of the source Raster
	* will be convolved.
	* The source and destination must have the same number of bands.
	* If the destination Raster is null, a new Raster will be created.
	* The IllegalArgumentException may be thrown if the source is
	* the same as the destination.
	* @param src the source <code>Raster</code> to filter
	* @param dst the destination <code>WritableRaster</code> for the
	*        filtered <code>src</code>
	* @return the filtered <code>WritableRaster</code>
	* @throws NullPointerException if <code>src</code> is <code>null</code>
	* @throws ImagingOpException if <code>src</code> and <code>dst</code>
	*         do not have the same number of bands
	* @throws ImagingOpException if <code>src</code> cannot be filtered
	* @throws IllegalArgumentException if <code>src</code> equals
	*         <code>dst</code>
	*/
	@:overload @:public @:final public function filter(src : java.awt.image.Raster, dst : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Creates a zeroed destination image with the correct size and number
	* of bands.  If destCM is null, an appropriate ColorModel will be used.
	* @param src       Source image for the filter operation.
	* @param destCM    ColorModel of the destination.  Can be null.
	* @return a destination <code>BufferedImage</code> with the correct
	*         size and number of bands.
	*/
	@:overload @:public public function createCompatibleDestImage(src : java.awt.image.BufferedImage, destCM : java.awt.image.ColorModel) : java.awt.image.BufferedImage;
	
	/**
	* Creates a zeroed destination Raster with the correct size and number
	* of bands, given this source.
	*/
	@:overload @:public public function createCompatibleDestRaster(src : java.awt.image.Raster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the bounding box of the filtered destination image.  Since
	* this is not a geometric operation, the bounding box does not
	* change.
	*/
	@:overload @:public @:final public function getBounds2D(src : java.awt.image.BufferedImage) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounding box of the filtered destination Raster.  Since
	* this is not a geometric operation, the bounding box does not
	* change.
	*/
	@:overload @:public @:final public function getBounds2D(src : java.awt.image.Raster) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the location of the destination point given a
	* point in the source.  If dstPt is non-null, it will
	* be used to hold the return value.  Since this is not a geometric
	* operation, the srcPt will equal the dstPt.
	*/
	@:overload @:public @:final public function getPoint2D(srcPt : java.awt.geom.Point2D, dstPt : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Returns the rendering hints for this op.
	*/
	@:overload @:public @:final public function getRenderingHints() : java.awt.RenderingHints;
	
	
}

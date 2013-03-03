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
extern class RescaleOp implements java.awt.image.BufferedImageOp implements java.awt.image.RasterOp
{
	/**
	* Constructs a new RescaleOp with the desired scale factors
	* and offsets.  The length of the scaleFactor and offset arrays
	* must meet the restrictions stated in the class comments above.
	* The RenderingHints argument may be null.
	* @param scaleFactors the specified scale factors
	* @param offsets the specified offsets
	* @param hints the specified <code>RenderingHints</code>, or
	*        <code>null</code>
	*/
	@:overload @:public public function new(scaleFactors : java.NativeArray<Single>, offsets : java.NativeArray<Single>, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Constructs a new RescaleOp with the desired scale factor
	* and offset.  The scaleFactor and offset will be applied to
	* all bands in a source Raster and to all color (but not alpha)
	* components in a BufferedImage.
	* The RenderingHints argument may be null.
	* @param scaleFactor the specified scale factor
	* @param offset the specified offset
	* @param hints the specified <code>RenderingHints</code>, or
	*        <code>null</code>
	*/
	@:overload @:public public function new(scaleFactor : Single, offset : Single, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Returns the scale factors in the given array. The array is also
	* returned for convenience.  If scaleFactors is null, a new array
	* will be allocated.
	* @param scaleFactors the array to contain the scale factors of
	*        this <code>RescaleOp</code>
	* @return the scale factors of this <code>RescaleOp</code>.
	*/
	@:overload @:final @:public public function getScaleFactors(scaleFactors : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Returns the offsets in the given array. The array is also returned
	* for convenience.  If offsets is null, a new array
	* will be allocated.
	* @param offsets the array to contain the offsets of
	*        this <code>RescaleOp</code>
	* @return the offsets of this <code>RescaleOp</code>.
	*/
	@:overload @:final @:public public function getOffsets(offsets : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Returns the number of scaling factors and offsets used in this
	* RescaleOp.
	* @return the number of scaling factors and offsets of this
	*         <code>RescaleOp</code>.
	*/
	@:overload @:final @:public public function getNumFactors() : Int;
	
	/**
	* Rescales the source BufferedImage.
	* If the color model in the source image is not the same as that
	* in the destination image, the pixels will be converted
	* in the destination.  If the destination image is null,
	* a BufferedImage will be created with the source ColorModel.
	* An IllegalArgumentException may be thrown if the number of
	* scaling factors/offsets in this object does not meet the
	* restrictions stated in the class comments above, or if the
	* source image has an IndexColorModel.
	* @param src the <code>BufferedImage</code> to be filtered
	* @param dst the destination for the filtering operation
	*            or <code>null</code>
	* @return the filtered <code>BufferedImage</code>.
	* @throws IllegalArgumentException if the <code>ColorModel</code>
	*         of <code>src</code> is an <code>IndexColorModel</code>,
	*         or if the number of scaling factors and offsets in this
	*         <code>RescaleOp</code> do not meet the requirements
	*         stated in the class comments.
	*/
	@:overload @:public @:final public function filter(src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage) : java.awt.image.BufferedImage;
	
	/**
	* Rescales the pixel data in the source Raster.
	* If the destination Raster is null, a new Raster will be created.
	* The source and destination must have the same number of bands.
	* Otherwise, an IllegalArgumentException is thrown.
	* Note that the number of scaling factors/offsets in this object must
	* meet the restrictions stated in the class comments above.
	* Otherwise, an IllegalArgumentException is thrown.
	* @param src the <code>Raster</code> to be filtered
	* @param dst the destination for the filtering operation
	*            or <code>null</code>
	* @return the filtered <code>WritableRaster</code>.
	* @throws IllegalArgumentException if <code>src</code> and
	*         <code>dst</code> do not have the same number of bands,
	*         or if the number of scaling factors and offsets in this
	*         <code>RescaleOp</code> do not meet the requirements
	*         stated in the class comments.
	*/
	@:overload @:public @:final public function filter(src : java.awt.image.Raster, dst : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the bounding box of the rescaled destination image.  Since
	* this is not a geometric operation, the bounding box does not
	* change.
	*/
	@:overload @:public @:final public function getBounds2D(src : java.awt.image.BufferedImage) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounding box of the rescaled destination Raster.  Since
	* this is not a geometric operation, the bounding box does not
	* change.
	* @param src the rescaled destination <code>Raster</code>
	* @return the bounds of the specified <code>Raster</code>.
	*/
	@:overload @:public @:final public function getBounds2D(src : java.awt.image.Raster) : java.awt.geom.Rectangle2D;
	
	/**
	* Creates a zeroed destination image with the correct size and number of
	* bands.
	* @param src       Source image for the filter operation.
	* @param destCM    ColorModel of the destination.  If null, the
	*                  ColorModel of the source will be used.
	* @return the zeroed-destination image.
	*/
	@:overload @:public public function createCompatibleDestImage(src : java.awt.image.BufferedImage, destCM : java.awt.image.ColorModel) : java.awt.image.BufferedImage;
	
	/**
	* Creates a zeroed-destination <code>Raster</code> with the correct
	* size and number of bands, given this source.
	* @param src       the source <code>Raster</code>
	* @return the zeroed-destination <code>Raster</code>.
	*/
	@:overload @:public public function createCompatibleDestRaster(src : java.awt.image.Raster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the location of the destination point given a
	* point in the source.  If dstPt is non-null, it will
	* be used to hold the return value.  Since this is not a geometric
	* operation, the srcPt will equal the dstPt.
	* @param srcPt a point in the source image
	* @param dstPt the destination point or <code>null</code>
	* @return the location of the destination point.
	*/
	@:overload @:public @:final public function getPoint2D(srcPt : java.awt.geom.Point2D, dstPt : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Returns the rendering hints for this op.
	* @return the rendering hints of this <code>RescaleOp</code>.
	*/
	@:overload @:public @:final public function getRenderingHints() : java.awt.RenderingHints;
	
	
}

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
extern class LookupOp implements java.awt.image.BufferedImageOp implements java.awt.image.RasterOp
{
	/**
	* Constructs a <code>LookupOp</code> object given the lookup
	* table and a <code>RenderingHints</code> object, which might
	* be <code>null</code>.
	* @param lookup the specified <code>LookupTable</code>
	* @param hints the specified <code>RenderingHints</code>,
	*        or <code>null</code>
	*/
	@:overload @:public public function new(lookup : java.awt.image.LookupTable, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Returns the <code>LookupTable</code>.
	* @return the <code>LookupTable</code> of this
	*         <code>LookupOp</code>.
	*/
	@:overload @:public @:final public function getTable() : java.awt.image.LookupTable;
	
	/**
	* Performs a lookup operation on a <code>BufferedImage</code>.
	* If the color model in the source image is not the same as that
	* in the destination image, the pixels will be converted
	* in the destination.  If the destination image is <code>null</code>,
	* a <code>BufferedImage</code> will be created with an appropriate
	* <code>ColorModel</code>.  An <code>IllegalArgumentException</code>
	* might be thrown if the number of arrays in the
	* <code>LookupTable</code> does not meet the restrictions
	* stated in the class comment above, or if the source image
	* has an <code>IndexColorModel</code>.
	* @param src the <code>BufferedImage</code> to be filtered
	* @param dst the <code>BufferedImage</code> in which to
	*            store the results of the filter operation
	* @return the filtered <code>BufferedImage</code>.
	* @throws IllegalArgumentException if the number of arrays in the
	*         <code>LookupTable</code> does not meet the restrictions
	*         described in the class comments, or if the source image
	*         has an <code>IndexColorModel</code>.
	*/
	@:overload @:public @:final public function filter(src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage) : java.awt.image.BufferedImage;
	
	/**
	* Performs a lookup operation on a <code>Raster</code>.
	* If the destination <code>Raster</code> is <code>null</code>,
	* a new <code>Raster</code> will be created.
	* The <code>IllegalArgumentException</code> might be thrown
	* if the source <code>Raster</code> and the destination
	* <code>Raster</code> do not have the same
	* number of bands or if the number of arrays in the
	* <code>LookupTable</code> does not meet the
	* restrictions stated in the class comment above.
	* @param src the source <code>Raster</code> to filter
	* @param dst the destination <code>WritableRaster</code> for the
	*            filtered <code>src</code>
	* @return the filtered <code>WritableRaster</code>.
	* @throws IllegalArgumentException if the source and destinations
	*         rasters do not have the same number of bands, or the
	*         number of arrays in the <code>LookupTable</code> does
	*         not meet the restrictions described in the class comments.
	*
	*/
	@:overload @:public @:final public function filter(src : java.awt.image.Raster, dst : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the bounding box of the filtered destination image.  Since
	* this is not a geometric operation, the bounding box does not
	* change.
	* @param src the <code>BufferedImage</code> to be filtered
	* @return the bounds of the filtered definition image.
	*/
	@:overload @:public @:final public function getBounds2D(src : java.awt.image.BufferedImage) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounding box of the filtered destination Raster.  Since
	* this is not a geometric operation, the bounding box does not
	* change.
	* @param src the <code>Raster</code> to be filtered
	* @return the bounds of the filtered definition <code>Raster</code>.
	*/
	@:overload @:public @:final public function getBounds2D(src : java.awt.image.Raster) : java.awt.geom.Rectangle2D;
	
	/**
	* Creates a zeroed destination image with the correct size and number of
	* bands.  If destCM is <code>null</code>, an appropriate
	* <code>ColorModel</code> will be used.
	* @param src       Source image for the filter operation.
	* @param destCM    the destination's <code>ColorModel</code>, which
	*                  can be <code>null</code>.
	* @return a filtered destination <code>BufferedImage</code>.
	*/
	@:overload @:public public function createCompatibleDestImage(src : java.awt.image.BufferedImage, destCM : java.awt.image.ColorModel) : java.awt.image.BufferedImage;
	
	/**
	* Creates a zeroed-destination <code>Raster</code> with the
	* correct size and number of bands, given this source.
	* @param src the <code>Raster</code> to be transformed
	* @return the zeroed-destination <code>Raster</code>.
	*/
	@:overload @:public public function createCompatibleDestRaster(src : java.awt.image.Raster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the location of the destination point given a
	* point in the source.  If <code>dstPt</code> is not
	* <code>null</code>, it will be used to hold the return value.
	* Since this is not a geometric operation, the <code>srcPt</code>
	* will equal the <code>dstPt</code>.
	* @param srcPt a <code>Point2D</code> that represents a point
	*        in the source image
	* @param dstPt a <code>Point2D</code>that represents the location
	*        in the destination
	* @return the <code>Point2D</code> in the destination that
	*         corresponds to the specified point in the source.
	*/
	@:overload @:public @:final public function getPoint2D(srcPt : java.awt.geom.Point2D, dstPt : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Returns the rendering hints for this op.
	* @return the <code>RenderingHints</code> object associated
	*         with this op.
	*/
	@:overload @:public @:final public function getRenderingHints() : java.awt.RenderingHints;
	
	
}

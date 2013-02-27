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
extern interface RasterOp
{
	/**
	* Performs a single-input/single-output operation from a source Raster
	* to a destination Raster.  If the destination Raster is null, a
	* new Raster will be created.  The IllegalArgumentException may be thrown
	* if the source and/or destination Raster is incompatible with the types
	* of Rasters allowed by the class implementing this filter.
	* @param src the source <code>Raster</code>
	* @param dest the destination <code>WritableRaster</code>
	* @return a <code>WritableRaster</code> that represents the result of
	*         the filtering operation.
	*/
	@:overload public function filter(src : java.awt.image.Raster, dest : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the bounding box of the filtered destination Raster.
	* The IllegalArgumentException may be thrown if the source Raster
	* is incompatible with the types of Rasters allowed
	* by the class implementing this filter.
	* @param src the source <code>Raster</code>
	* @return a <code>Rectangle2D</code> that is the bounding box of
	*         the <code>Raster</code> resulting from the filtering
	*         operation.
	*/
	@:overload public function getBounds2D(src : java.awt.image.Raster) : java.awt.geom.Rectangle2D;
	
	/**
	* Creates a zeroed destination Raster with the correct size and number of
	* bands.
	* The IllegalArgumentException may be thrown if the source Raster
	* is incompatible with the types of Rasters allowed
	* by the class implementing this filter.
	* @param src the source <code>Raster</code>
	* @return a <code>WritableRaster</code> that is compatible with
	*         <code>src</code>
	*/
	@:overload public function createCompatibleDestRaster(src : java.awt.image.Raster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the location of the destination point given a
	* point in the source Raster.  If dstPt is non-null, it
	* will be used to hold the return value.
	* @param srcPt the source <code>Point2D</code>
	* @param dstPt the destination <code>Point2D</code>
	* @return the location of the destination point.
	*/
	@:overload public function getPoint2D(srcPt : java.awt.geom.Point2D, dstPt : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Returns the rendering hints for this RasterOp.  Returns
	* null if no hints have been set.
	* @return the <code>RenderingHints</code> object of this
	*         <code>RasterOp</code>.
	*/
	@:overload public function getRenderingHints() : java.awt.RenderingHints;
	
	
}

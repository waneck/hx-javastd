package java.awt.image;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class BandCombineOp implements java.awt.image.RasterOp
{
	/**
	* Constructs a <CODE>BandCombineOp</CODE> with the specified matrix.
	* The width of the matrix must be equal to the number of bands in
	* the source <CODE>Raster</CODE>, optionally plus one.  If there is one
	* more column in the matrix than the number of bands, there is an implied
	* 1 at the end of the vector of band samples representing a pixel.  The
	* height of the matrix must be equal to the number of bands in the
	* destination.
	* <p>
	* The first subscript is the row index and the second
	* is the column index.  This operation uses none of the currently
	* defined rendering hints; the <CODE>RenderingHints</CODE> argument can be
	* null.
	*
	* @param matrix The matrix to use for the band combine operation.
	* @param hints The <CODE>RenderingHints</CODE> object for this operation.
	* Not currently used so it can be null.
	*/
	@:overload public function new(matrix : java.NativeArray<java.NativeArray<Single>>, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Returns a copy of the linear combination matrix.
	*
	* @return The matrix associated with this band combine operation.
	*/
	@:overload @:final public function getMatrix() : java.NativeArray<java.NativeArray<Single>>;
	
	/**
	* Transforms the <CODE>Raster</CODE> using the matrix specified in the
	* constructor. An <CODE>IllegalArgumentException</CODE> may be thrown if
	* the number of bands in the source or destination is incompatible with
	* the matrix.  See the class comments for more details.
	* <p>
	* If the destination is null, it will be created with a number of bands
	* equalling the number of rows in the matrix. No exception is thrown
	* if the operation causes a data overflow.
	*
	* @param src The <CODE>Raster</CODE> to be filtered.
	* @param dst The <CODE>Raster</CODE> in which to store the results
	* of the filter operation.
	*
	* @return The filtered <CODE>Raster</CODE>.
	*
	* @throws IllegalArgumentException If the number of bands in the
	* source or destination is incompatible with the matrix.
	*/
	@:overload public function filter(src : java.awt.image.Raster, dst : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the bounding box of the transformed destination.  Since
	* this is not a geometric operation, the bounding box is the same for
	* the source and destination.
	* An <CODE>IllegalArgumentException</CODE> may be thrown if the number of
	* bands in the source is incompatible with the matrix.  See
	* the class comments for more details.
	*
	* @param src The <CODE>Raster</CODE> to be filtered.
	*
	* @return The <CODE>Rectangle2D</CODE> representing the destination
	* image's bounding box.
	*
	* @throws IllegalArgumentException If the number of bands in the source
	* is incompatible with the matrix.
	*/
	@:overload @:final public function getBounds2D(src : java.awt.image.Raster) : java.awt.geom.Rectangle2D;
	
	/**
	* Creates a zeroed destination <CODE>Raster</CODE> with the correct size
	* and number of bands.
	* An <CODE>IllegalArgumentException</CODE> may be thrown if the number of
	* bands in the source is incompatible with the matrix.  See
	* the class comments for more details.
	*
	* @param src The <CODE>Raster</CODE> to be filtered.
	*
	* @return The zeroed destination <CODE>Raster</CODE>.
	*/
	@:overload public function createCompatibleDestRaster(src : java.awt.image.Raster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the location of the corresponding destination point given a
	* point in the source <CODE>Raster</CODE>.  If <CODE>dstPt</CODE> is
	* specified, it is used to hold the return value.
	* Since this is not a geometric operation, the point returned
	* is the same as the specified <CODE>srcPt</CODE>.
	*
	* @param srcPt The <code>Point2D</code> that represents the point in
	*              the source <code>Raster</code>
	* @param dstPt The <CODE>Point2D</CODE> in which to store the result.
	*
	* @return The <CODE>Point2D</CODE> in the destination image that
	* corresponds to the specified point in the source image.
	*/
	@:overload @:final public function getPoint2D(srcPt : java.awt.geom.Point2D, dstPt : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Returns the rendering hints for this operation.
	*
	* @return The <CODE>RenderingHints</CODE> object associated with this
	* operation.  Returns null if no hints have been set.
	*/
	@:overload @:final public function getRenderingHints() : java.awt.RenderingHints;
	
	
}

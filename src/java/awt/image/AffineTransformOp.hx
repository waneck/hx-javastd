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
extern class AffineTransformOp implements java.awt.image.BufferedImageOp implements java.awt.image.RasterOp
{
	/**
	* Nearest-neighbor interpolation type.
	*/
	public static var TYPE_NEAREST_NEIGHBOR(default, null) : Int;
	
	/**
	* Bilinear interpolation type.
	*/
	public static var TYPE_BILINEAR(default, null) : Int;
	
	/**
	* Bicubic interpolation type.
	*/
	public static var TYPE_BICUBIC(default, null) : Int;
	
	/**
	* Constructs an <CODE>AffineTransformOp</CODE> given an affine transform.
	* The interpolation type is determined from the
	* <CODE>RenderingHints</CODE> object.  If the interpolation hint is
	* defined, it will be used. Otherwise, if the rendering quality hint is
	* defined, the interpolation type is determined from its value.  If no
	* hints are specified (<CODE>hints</CODE> is null),
	* the interpolation type is {@link #TYPE_NEAREST_NEIGHBOR
	* TYPE_NEAREST_NEIGHBOR}.
	*
	* @param xform The <CODE>AffineTransform</CODE> to use for the
	* operation.
	*
	* @param hints The <CODE>RenderingHints</CODE> object used to specify
	* the interpolation type for the operation.
	*
	* @throws ImagingOpException if the transform is non-invertible.
	* @see java.awt.RenderingHints#KEY_INTERPOLATION
	* @see java.awt.RenderingHints#KEY_RENDERING
	*/
	@:overload public function new(xform : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Constructs an <CODE>AffineTransformOp</CODE> given an affine transform
	* and the interpolation type.
	*
	* @param xform The <CODE>AffineTransform</CODE> to use for the operation.
	* @param interpolationType One of the integer
	* interpolation type constants defined by this class:
	* {@link #TYPE_NEAREST_NEIGHBOR TYPE_NEAREST_NEIGHBOR},
	* {@link #TYPE_BILINEAR TYPE_BILINEAR},
	* {@link #TYPE_BICUBIC TYPE_BICUBIC}.
	* @throws ImagingOpException if the transform is non-invertible.
	*/
	@:overload public function new(xform : java.awt.geom.AffineTransform, interpolationType : Int) : Void;
	
	/**
	* Returns the interpolation type used by this op.
	* @return the interpolation type.
	* @see #TYPE_NEAREST_NEIGHBOR
	* @see #TYPE_BILINEAR
	* @see #TYPE_BICUBIC
	*/
	@:overload @:final public function getInterpolationType() : Int;
	
	/**
	* Transforms the source <CODE>BufferedImage</CODE> and stores the results
	* in the destination <CODE>BufferedImage</CODE>.
	* If the color models for the two images do not match, a color
	* conversion into the destination color model is performed.
	* If the destination image is null,
	* a <CODE>BufferedImage</CODE> is created with the source
	* <CODE>ColorModel</CODE>.
	* <p>
	* The coordinates of the rectangle returned by
	* <code>getBounds2D(BufferedImage)</code>
	* are not necessarily the same as the coordinates of the
	* <code>BufferedImage</code> returned by this method.  If the
	* upper-left corner coordinates of the rectangle are
	* negative then this part of the rectangle is not drawn.  If the
	* upper-left corner coordinates of the  rectangle are positive
	* then the filtered image is drawn at that position in the
	* destination <code>BufferedImage</code>.
	* <p>
	* An <CODE>IllegalArgumentException</CODE> is thrown if the source is
	* the same as the destination.
	*
	* @param src The <CODE>BufferedImage</CODE> to transform.
	* @param dst The <CODE>BufferedImage</CODE> in which to store the results
	* of the transformation.
	*
	* @return The filtered <CODE>BufferedImage</CODE>.
	* @throws IllegalArgumentException if <code>src</code> and
	*         <code>dst</code> are the same
	* @throws ImagingOpException if the image cannot be transformed
	*         because of a data-processing error that might be
	*         caused by an invalid image format, tile format, or
	*         image-processing operation, or any other unsupported
	*         operation.
	*/
	@:overload @:final public function filter(src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage) : java.awt.image.BufferedImage;
	
	/**
	* Transforms the source <CODE>Raster</CODE> and stores the results in
	* the destination <CODE>Raster</CODE>.  This operation performs the
	* transform band by band.
	* <p>
	* If the destination <CODE>Raster</CODE> is null, a new
	* <CODE>Raster</CODE> is created.
	* An <CODE>IllegalArgumentException</CODE> may be thrown if the source is
	* the same as the destination or if the number of bands in
	* the source is not equal to the number of bands in the
	* destination.
	* <p>
	* The coordinates of the rectangle returned by
	* <code>getBounds2D(Raster)</code>
	* are not necessarily the same as the coordinates of the
	* <code>WritableRaster</code> returned by this method.  If the
	* upper-left corner coordinates of rectangle are negative then
	* this part of the rectangle is not drawn.  If the coordinates
	* of the rectangle are positive then the filtered image is drawn at
	* that position in the destination <code>Raster</code>.
	* <p>
	* @param src The <CODE>Raster</CODE> to transform.
	* @param dst The <CODE>Raster</CODE> in which to store the results of the
	* transformation.
	*
	* @return The transformed <CODE>Raster</CODE>.
	*
	* @throws ImagingOpException if the raster cannot be transformed
	*         because of a data-processing error that might be
	*         caused by an invalid image format, tile format, or
	*         image-processing operation, or any other unsupported
	*         operation.
	*/
	@:overload @:final public function filter(src : java.awt.image.Raster, dst : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the bounding box of the transformed destination.  The
	* rectangle returned is the actual bounding box of the
	* transformed points.  The coordinates of the upper-left corner
	* of the returned rectangle might not be (0,&nbsp;0).
	*
	* @param src The <CODE>BufferedImage</CODE> to be transformed.
	*
	* @return The <CODE>Rectangle2D</CODE> representing the destination's
	* bounding box.
	*/
	@:overload @:final public function getBounds2D(src : java.awt.image.BufferedImage) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounding box of the transformed destination.  The
	* rectangle returned will be the actual bounding box of the
	* transformed points.  The coordinates of the upper-left corner
	* of the returned rectangle might not be (0,&nbsp;0).
	*
	* @param src The <CODE>Raster</CODE> to be transformed.
	*
	* @return The <CODE>Rectangle2D</CODE> representing the destination's
	* bounding box.
	*/
	@:overload @:final public function getBounds2D(src : java.awt.image.Raster) : java.awt.geom.Rectangle2D;
	
	/**
	* Creates a zeroed destination image with the correct size and number of
	* bands.  A <CODE>RasterFormatException</CODE> may be thrown if the
	* transformed width or height is equal to 0.
	* <p>
	* If <CODE>destCM</CODE> is null,
	* an appropriate <CODE>ColorModel</CODE> is used; this
	* <CODE>ColorModel</CODE> may have
	* an alpha channel even if the source <CODE>ColorModel</CODE> is opaque.
	*
	* @param src  The <CODE>BufferedImage</CODE> to be transformed.
	* @param destCM  <CODE>ColorModel</CODE> of the destination.  If null,
	* an appropriate <CODE>ColorModel</CODE> is used.
	*
	* @return The zeroed destination image.
	*/
	@:overload public function createCompatibleDestImage(src : java.awt.image.BufferedImage, destCM : java.awt.image.ColorModel) : java.awt.image.BufferedImage;
	
	/**
	* Creates a zeroed destination <CODE>Raster</CODE> with the correct size
	* and number of bands.  A <CODE>RasterFormatException</CODE> may be thrown
	* if the transformed width or height is equal to 0.
	*
	* @param src The <CODE>Raster</CODE> to be transformed.
	*
	* @return The zeroed destination <CODE>Raster</CODE>.
	*/
	@:overload public function createCompatibleDestRaster(src : java.awt.image.Raster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the location of the corresponding destination point given a
	* point in the source.  If <CODE>dstPt</CODE> is specified, it
	* is used to hold the return value.
	*
	* @param srcPt The <code>Point2D</code> that represents the source
	*              point.
	* @param dstPt The <CODE>Point2D</CODE> in which to store the result.
	*
	* @return The <CODE>Point2D</CODE> in the destination that corresponds to
	* the specified point in the source.
	*/
	@:overload @:final public function getPoint2D(srcPt : java.awt.geom.Point2D, dstPt : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Returns the affine transform used by this transform operation.
	*
	* @return The <CODE>AffineTransform</CODE> associated with this op.
	*/
	@:overload @:final public function getTransform() : java.awt.geom.AffineTransform;
	
	/**
	* Returns the rendering hints used by this transform operation.
	*
	* @return The <CODE>RenderingHints</CODE> object associated with this op.
	*/
	@:overload @:final public function getRenderingHints() : java.awt.RenderingHints;
	
	
}

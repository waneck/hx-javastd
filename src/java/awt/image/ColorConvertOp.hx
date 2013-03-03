package java.awt.image;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**********************************************************************
**********************************************************************
**********************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997                      ***
*** As  an unpublished  work pursuant to Title 17 of the United    ***
*** States Code.  All rights reserved.                             ***
**********************************************************************
**********************************************************************
**********************************************************************/
extern class ColorConvertOp implements java.awt.image.BufferedImageOp implements java.awt.image.RasterOp
{
	/**
	* Constructs a new ColorConvertOp which will convert
	* from a source color space to a destination color space.
	* The RenderingHints argument may be null.
	* This Op can be used only with BufferedImages, and will convert
	* directly from the ColorSpace of the source image to that of the
	* destination.  The destination argument of the filter method
	* cannot be specified as null.
	* @param hints the <code>RenderingHints</code> object used to control
	*        the color conversion, or <code>null</code>
	*/
	@:overload @:public public function new(hints : java.awt.RenderingHints) : Void;
	
	/**
	* Constructs a new ColorConvertOp from a ColorSpace object.
	* The RenderingHints argument may be null.  This
	* Op can be used only with BufferedImages, and is primarily useful
	* when the {@link #filter(BufferedImage, BufferedImage) filter}
	* method is invoked with a destination argument of null.
	* In that case, the ColorSpace defines the destination color space
	* for the destination created by the filter method.  Otherwise, the
	* ColorSpace defines an intermediate space to which the source is
	* converted before being converted to the destination space.
	* @param cspace defines the destination <code>ColorSpace</code> or an
	*        intermediate <code>ColorSpace</code>
	* @param hints the <code>RenderingHints</code> object used to control
	*        the color conversion, or <code>null</code>
	* @throws NullPointerException if cspace is null
	*/
	@:overload @:public public function new(cspace : java.awt.color.ColorSpace, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Constructs a new ColorConvertOp from two ColorSpace objects.
	* The RenderingHints argument may be null.
	* This Op is primarily useful for calling the filter method on
	* Rasters, in which case the two ColorSpaces define the operation
	* to be performed on the Rasters.  In that case, the number of bands
	* in the source Raster must match the number of components in
	* srcCspace, and the number of bands in the destination Raster
	* must match the number of components in dstCspace.  For BufferedImages,
	* the two ColorSpaces define intermediate spaces through which the
	* source is converted before being converted to the destination space.
	* @param srcCspace the source <code>ColorSpace</code>
	* @param dstCspace the destination <code>ColorSpace</code>
	* @param hints the <code>RenderingHints</code> object used to control
	*        the color conversion, or <code>null</code>
	* @throws NullPointerException if either srcCspace or dstCspace is null
	*/
	@:overload @:public public function new(srcCspace : java.awt.color.ColorSpace, dstCspace : java.awt.color.ColorSpace, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Constructs a new ColorConvertOp from an array of ICC_Profiles.
	* The RenderingHints argument may be null.
	* The sequence of profiles may include profiles that represent color
	* spaces, profiles that represent effects, etc.  If the whole sequence
	* does not represent a well-defined color conversion, an exception is
	* thrown.
	* <p>For BufferedImages, if the ColorSpace
	* of the source BufferedImage does not match the requirements of the
	* first profile in the array,
	* the first conversion is to an appropriate ColorSpace.
	* If the requirements of the last profile in the array are not met
	* by the ColorSpace of the destination BufferedImage,
	* the last conversion is to the destination's ColorSpace.
	* <p>For Rasters, the number of bands in the source Raster must match
	* the requirements of the first profile in the array, and the
	* number of bands in the destination Raster must match the requirements
	* of the last profile in the array.  The array must have at least two
	* elements or calling the filter method for Rasters will throw an
	* IllegalArgumentException.
	* @param profiles the array of <code>ICC_Profile</code> objects
	* @param hints the <code>RenderingHints</code> object used to control
	*        the color conversion, or <code>null</code>
	* @exception IllegalArgumentException when the profile sequence does not
	*             specify a well-defined color conversion
	* @exception NullPointerException if profiles is null
	*/
	@:overload @:public public function new(profiles : java.NativeArray<java.awt.color.ICC_Profile>, hints : java.awt.RenderingHints) : Void;
	
	/**
	* Returns the array of ICC_Profiles used to construct this ColorConvertOp.
	* Returns null if the ColorConvertOp was not constructed from such an
	* array.
	* @return the array of <code>ICC_Profile</code> objects of this
	*         <code>ColorConvertOp</code>, or <code>null</code> if this
	*         <code>ColorConvertOp</code> was not constructed with an
	*         array of <code>ICC_Profile</code> objects.
	*/
	@:overload @:public @:final public function getICC_Profiles() : java.NativeArray<java.awt.color.ICC_Profile>;
	
	/**
	* ColorConverts the source BufferedImage.
	* If the destination image is null,
	* a BufferedImage will be created with an appropriate ColorModel.
	* @param src the source <code>BufferedImage</code> to be converted
	* @param dest the destination <code>BufferedImage</code>,
	*        or <code>null</code>
	* @return <code>dest</code> color converted from <code>src</code>
	*         or a new, converted <code>BufferedImage</code>
	*         if <code>dest</code> is <code>null</code>
	* @exception IllegalArgumentException if dest is null and this op was
	*             constructed using the constructor which takes only a
	*             RenderingHints argument, since the operation is ill defined.
	*/
	@:overload @:public @:final public function filter(src : java.awt.image.BufferedImage, dest : java.awt.image.BufferedImage) : java.awt.image.BufferedImage;
	
	/**
	* ColorConverts the image data in the source Raster.
	* If the destination Raster is null, a new Raster will be created.
	* The number of bands in the source and destination Rasters must
	* meet the requirements explained above.  The constructor used to
	* create this ColorConvertOp must have provided enough information
	* to define both source and destination color spaces.  See above.
	* Otherwise, an exception is thrown.
	* @param src the source <code>Raster</code> to be converted
	* @param dest the destination <code>WritableRaster</code>,
	*        or <code>null</code>
	* @return <code>dest</code> color converted from <code>src</code>
	*         or a new, converted <code>WritableRaster</code>
	*         if <code>dest</code> is <code>null</code>
	* @exception IllegalArgumentException if the number of source or
	*             destination bands is incorrect, the source or destination
	*             color spaces are undefined, or this op was constructed
	*             with one of the constructors that applies only to
	*             operations on BufferedImages.
	*/
	@:overload @:public @:final public function filter(src : java.awt.image.Raster, dest : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the bounding box of the destination, given this source.
	* Note that this will be the same as the the bounding box of the
	* source.
	* @param src the source <code>BufferedImage</code>
	* @return a <code>Rectangle2D</code> that is the bounding box
	*         of the destination, given the specified <code>src</code>
	*/
	@:overload @:public @:final public function getBounds2D(src : java.awt.image.BufferedImage) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounding box of the destination, given this source.
	* Note that this will be the same as the the bounding box of the
	* source.
	* @param src the source <code>Raster</code>
	* @return a <code>Rectangle2D</code> that is the bounding box
	*         of the destination, given the specified <code>src</code>
	*/
	@:overload @:public @:final public function getBounds2D(src : java.awt.image.Raster) : java.awt.geom.Rectangle2D;
	
	/**
	* Creates a zeroed destination image with the correct size and number of
	* bands, given this source.
	* @param src       Source image for the filter operation.
	* @param destCM    ColorModel of the destination.  If null, an
	*                  appropriate ColorModel will be used.
	* @return a <code>BufferedImage</code> with the correct size and
	* number of bands from the specified <code>src</code>.
	* @throws IllegalArgumentException if <code>destCM</code> is
	*         <code>null</code> and this <code>ColorConvertOp</code> was
	*         created without any <code>ICC_Profile</code> or
	*         <code>ColorSpace</code> defined for the destination
	*/
	@:overload @:public public function createCompatibleDestImage(src : java.awt.image.BufferedImage, destCM : java.awt.image.ColorModel) : java.awt.image.BufferedImage;
	
	/**
	* Creates a zeroed destination Raster with the correct size and number of
	* bands, given this source.
	* @param src the specified <code>Raster</code>
	* @return a <code>WritableRaster</code> with the correct size and number
	*         of bands from the specified <code>src</code>
	* @throws IllegalArgumentException if this <code>ColorConvertOp</code>
	*         was created without sufficient information to define the
	*         <code>dst</code> and <code>src</code> color spaces
	*/
	@:overload @:public public function createCompatibleDestRaster(src : java.awt.image.Raster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the location of the destination point given a
	* point in the source.  If <code>dstPt</code> is non-null,
	* it will be used to hold the return value.  Note that
	* for this class, the destination point will be the same
	* as the source point.
	* @param srcPt the specified source <code>Point2D</code>
	* @param dstPt the destination <code>Point2D</code>
	* @return <code>dstPt</code> after setting its location to be
	*         the same as <code>srcPt</code>
	*/
	@:overload @:public @:final public function getPoint2D(srcPt : java.awt.geom.Point2D, dstPt : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Returns the rendering hints used by this op.
	* @return the <code>RenderingHints</code> object of this
	*         <code>ColorConvertOp</code>
	*/
	@:overload @:public @:final public function getRenderingHints() : java.awt.RenderingHints;
	
	
}

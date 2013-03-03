package javax.imageio;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class IIOParam
{
	/**
	* The source region, on <code>null</code> if none is set.
	*/
	@:protected private var sourceRegion : java.awt.Rectangle;
	
	/**
	* The decimation subsampling to be applied in the horizontal
	* direction.  By default, the value is <code>1</code>.
	* The value must not be negative or 0.
	*/
	@:protected private var sourceXSubsampling : Int;
	
	/**
	* The decimation subsampling to be applied in the vertical
	* direction.  By default, the value is <code>1</code>.
	* The value must not be negative or 0.
	*/
	@:protected private var sourceYSubsampling : Int;
	
	/**
	* A horizontal offset to be applied to the subsampling grid before
	* subsampling.  The first pixel to be used will be offset this
	* amount from the origin of the region, or of the image if no
	* region is specified.
	*/
	@:protected private var subsamplingXOffset : Int;
	
	/**
	* A vertical offset to be applied to the subsampling grid before
	* subsampling.  The first pixel to be used will be offset this
	* amount from the origin of the region, or of the image if no
	* region is specified.
	*/
	@:protected private var subsamplingYOffset : Int;
	
	/**
	* An array of <code>int</code>s indicating which source bands
	* will be used, or <code>null</code>.  If <code>null</code>, the
	* set of source bands to be used is as described in the comment
	* for the <code>setSourceBands</code> method.  No value should
	* be allowed to be negative.
	*/
	@:protected private var sourceBands : java.NativeArray<Int>;
	
	/**
	* An <code>ImageTypeSpecifier</code> to be used to generate a
	* destination image when reading, or to set the output color type
	* when writing.  If non has been setm the value will be
	* <code>null</code>.  By default, the value is <code>null</code>.
	*/
	@:protected private var destinationType : javax.imageio.ImageTypeSpecifier;
	
	/**
	* The offset in the destination where the upper-left decoded
	* pixel should be placed.  By default, the value is (0, 0).
	*/
	@:protected private var destinationOffset : java.awt.Point;
	
	/**
	* The default <code>IIOParamController</code> that will be
	* used to provide settings for this <code>IIOParam</code>
	* object when the <code>activateController</code> method
	* is called.  This default should be set by subclasses
	* that choose to provide their own default controller,
	* usually a GUI, for setting parameters.
	*
	* @see IIOParamController
	* @see #getDefaultController
	* @see #activateController
	*/
	@:protected private var defaultController : javax.imageio.IIOParamController;
	
	/**
	* The <code>IIOParamController</code> that will be
	* used to provide settings for this <code>IIOParam</code>
	* object when the <code>activateController</code> method
	* is called.  This value overrides any default controller,
	* even when null.
	*
	* @see IIOParamController
	* @see #setController(IIOParamController)
	* @see #hasController()
	* @see #activateController()
	*/
	@:protected private var controller : javax.imageio.IIOParamController;
	
	/**
	* Protected constructor may be called only by subclasses.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Sets the source region of interest.  The region of interest is
	* described as a rectangle, with the upper-left corner of the
	* source image as pixel (0, 0) and increasing values down and to
	* the right.  The actual number of pixels used will depend on
	* the subsampling factors set by <code>setSourceSubsampling</code>.
	* If subsampling has been set such that this number is zero,
	* an <code>IllegalStateException</code> will be thrown.
	*
	* <p> The source region of interest specified by this method will
	* be clipped as needed to fit within the source bounds, as well
	* as the destination offsets, width, and height at the time of
	* actual I/O.
	*
	* <p> A value of <code>null</code> for <code>sourceRegion</code>
	* will remove any region specification, causing the entire image
	* to be used.
	*
	* @param sourceRegion a <code>Rectangle</code> specifying the
	* source region of interest, or <code>null</code>.
	*
	* @exception IllegalArgumentException if
	* <code>sourceRegion</code> is non-<code>null</code> and either
	* <code>sourceRegion.x</code> or <code>sourceRegion.y</code> is
	* negative.
	* @exception IllegalArgumentException if
	* <code>sourceRegion</code> is non-<code>null</code> and either
	* <code>sourceRegion.width</code> or
	* <code>sourceRegion.height</code> is negative or 0.
	* @exception IllegalStateException if subsampling is such that
	* this region will have a subsampled width or height of zero.
	*
	* @see #getSourceRegion
	* @see #setSourceSubsampling
	* @see ImageReadParam#setDestinationOffset
	* @see ImageReadParam#getDestinationOffset
	*/
	@:overload @:public public function setSourceRegion(sourceRegion : java.awt.Rectangle) : Void;
	
	/**
	* Returns the source region to be used.  The returned value is
	* that set by the most recent call to
	* <code>setSourceRegion</code>, and will be <code>null</code> if
	* there is no region set.
	*
	* @return the source region of interest as a
	* <code>Rectangle</code>, or <code>null</code>.
	*
	* @see #setSourceRegion
	*/
	@:overload @:public public function getSourceRegion() : java.awt.Rectangle;
	
	/**
	* Specifies a decimation subsampling to apply on I/O.  The
	* <code>sourceXSubsampling</code> and
	* <code>sourceYSubsampling</code> parameters specify the
	* subsampling period (<i>i.e.</i>, the number of rows and columns
	* to advance after every source pixel).  Specifically, a period of
	* 1 will use every row or column; a period of 2 will use every
	* other row or column.  The <code>subsamplingXOffset</code> and
	* <code>subsamplingYOffset</code> parameters specify an offset
	* from the region (or image) origin for the first subsampled pixel.
	* Adjusting the origin of the subsample grid is useful for avoiding
	* seams when subsampling a very large source image into destination
	* regions that will be assembled into a complete subsampled image.
	* Most users will want to simply leave these parameters at 0.
	*
	* <p> The number of pixels and scanlines to be used are calculated
	* as follows.
	* <p>
	* The number of subsampled pixels in a scanline is given by
	* <p>
	* <code>truncate[(width - subsamplingXOffset + sourceXSubsampling - 1)
	* / sourceXSubsampling]</code>.
	* <p>
	* If the region is such that this width is zero, an
	* <code>IllegalStateException</code> is thrown.
	* <p>
	* The number of scanlines to be used can be computed similarly.
	*
	* <p>The ability to set the subsampling grid to start somewhere
	* other than the source region origin is useful if the
	* region is being used to create subsampled tiles of a large image,
	* where the tile width and height are not multiples of the
	* subsampling periods.  If the subsampling grid does not remain
	* consistent from tile to tile, there will be artifacts at the tile
	* boundaries.  By adjusting the subsampling grid offset for each
	* tile to compensate, these artifacts can be avoided.  The tradeoff
	* is that in order to avoid these artifacts, the tiles are not all
	* the same size.  The grid offset to use in this case is given by:
	* <br>
	* grid offset = [period - (region offset modulo period)] modulo period)
	*
	* <p> If either <code>sourceXSubsampling</code> or
	* <code>sourceYSubsampling</code> is 0 or negative, an
	* <code>IllegalArgumentException</code> will be thrown.
	*
	* <p> If either <code>subsamplingXOffset</code> or
	* <code>subsamplingYOffset</code> is negative or greater than or
	* equal to the corresponding period, an
	* <code>IllegalArgumentException</code> will be thrown.
	*
	* <p> There is no <code>unsetSourceSubsampling</code> method;
	* simply call <code>setSourceSubsampling(1, 1, 0, 0)</code> to
	* restore default values.
	*
	* @param sourceXSubsampling the number of columns to advance
	* between pixels.
	* @param sourceYSubsampling the number of rows to advance between
	* pixels.
	* @param subsamplingXOffset the horizontal offset of the first subsample
	* within the region, or within the image if no region is set.
	* @param subsamplingYOffset the horizontal offset of the first subsample
	* within the region, or within the image if no region is set.
	* @exception IllegalArgumentException if either period is
	* negative or 0, or if either grid offset is negative or greater than
	* the corresponding period.
	* @exception IllegalStateException if the source region is such that
	* the subsampled output would contain no pixels.
	*/
	@:overload @:public public function setSourceSubsampling(sourceXSubsampling : Int, sourceYSubsampling : Int, subsamplingXOffset : Int, subsamplingYOffset : Int) : Void;
	
	/**
	* Returns the number of source columns to advance for each pixel.
	*
	* <p>If <code>setSourceSubsampling</code> has not been called, 1
	* is returned (which is the correct value).
	*
	* @return the source subsampling X period.
	*
	* @see #setSourceSubsampling
	* @see #getSourceYSubsampling
	*/
	@:overload @:public public function getSourceXSubsampling() : Int;
	
	/**
	* Returns the number of rows to advance for each pixel.
	*
	* <p>If <code>setSourceSubsampling</code> has not been called, 1
	* is returned (which is the correct value).
	*
	* @return the source subsampling Y period.
	*
	* @see #setSourceSubsampling
	* @see #getSourceXSubsampling
	*/
	@:overload @:public public function getSourceYSubsampling() : Int;
	
	/**
	* Returns the horizontal offset of the subsampling grid.
	*
	* <p>If <code>setSourceSubsampling</code> has not been called, 0
	* is returned (which is the correct value).
	*
	* @return the source subsampling grid X offset.
	*
	* @see #setSourceSubsampling
	* @see #getSubsamplingYOffset
	*/
	@:overload @:public public function getSubsamplingXOffset() : Int;
	
	/**
	* Returns the vertical offset of the subsampling grid.
	*
	* <p>If <code>setSourceSubsampling</code> has not been called, 0
	* is returned (which is the correct value).
	*
	* @return the source subsampling grid Y offset.
	*
	* @see #setSourceSubsampling
	* @see #getSubsamplingXOffset
	*/
	@:overload @:public public function getSubsamplingYOffset() : Int;
	
	/**
	* Sets the indices of the source bands to be used.  Duplicate
	* indices are not allowed.
	*
	* <p> A <code>null</code> value indicates that all source bands
	* will be used.
	*
	* <p> At the time of reading, an
	* <code>IllegalArgumentException</code> will be thrown by the
	* reader or writer if a value larger than the largest available
	* source band index has been specified or if the number of source
	* bands and destination bands to be used differ.  The
	* <code>ImageReader.checkReadParamBandSettings</code> method may
	* be used to automate this test.
	*
	* <p> Semantically, a copy is made of the array; changes to the
	* array contents subsequent to this call have no effect on
	* this <code>IIOParam</code>.
	*
	* @param sourceBands an array of integer band indices to be
	* used.
	*
	* @exception IllegalArgumentException if <code>sourceBands</code>
	* contains a negative or duplicate value.
	*
	* @see #getSourceBands
	* @see ImageReadParam#setDestinationBands
	* @see ImageReader#checkReadParamBandSettings
	*/
	@:overload @:public public function setSourceBands(sourceBands : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the set of of source bands to be used. The returned
	* value is that set by the most recent call to
	* <code>setSourceBands</code>, or <code>null</code> if there have
	* been no calls to <code>setSourceBands</code>.
	*
	* <p> Semantically, the array returned is a copy; changes to
	* array contents subsequent to this call have no effect on this
	* <code>IIOParam</code>.
	*
	* @return the set of source bands to be used, or
	* <code>null</code>.
	*
	* @see #setSourceBands
	*/
	@:overload @:public public function getSourceBands() : java.NativeArray<Int>;
	
	/**
	* Sets the desired image type for the destination image, using an
	* <code>ImageTypeSpecifier</code>.
	*
	* <p> When reading, if the layout of the destination has been set
	* using this method, each call to an <code>ImageReader</code>
	* <code>read</code> method will return a new
	* <code>BufferedImage</code> using the format specified by the
	* supplied type specifier.  As a side effect, any destination
	* <code>BufferedImage</code> set by
	* <code>ImageReadParam.setDestination(BufferedImage)</code> will
	* no longer be set as the destination.  In other words, this
	* method may be thought of as calling
	* <code>setDestination((BufferedImage)null)</code>.
	*
	* <p> When writing, the destination type maybe used to determine
	* the color type of the image.  The <code>SampleModel</code>
	* information will be ignored, and may be <code>null</code>.  For
	* example, a 4-banded image could represent either CMYK or RGBA
	* data.  If a destination type is set, its
	* <code>ColorModel</code> will override any
	* <code>ColorModel</code> on the image itself.  This is crucial
	* when <code>setSourceBands</code> is used since the image's
	* <code>ColorModel</code> will refer to the entire image rather
	* than to the subset of bands being written.
	*
	* @param destinationType the <code>ImageTypeSpecifier</code> to
	* be used to determine the destination layout and color type.
	*
	* @see #getDestinationType
	*/
	@:overload @:public public function setDestinationType(destinationType : javax.imageio.ImageTypeSpecifier) : Void;
	
	/**
	* Returns the type of image to be returned by the read, if one
	* was set by a call to
	* <code>setDestination(ImageTypeSpecifier)</code>, as an
	* <code>ImageTypeSpecifier</code>.  If none was set,
	* <code>null</code> is returned.
	*
	* @return an <code>ImageTypeSpecifier</code> describing the
	* destination type, or <code>null</code>.
	*
	* @see #setDestinationType
	*/
	@:overload @:public public function getDestinationType() : javax.imageio.ImageTypeSpecifier;
	
	/**
	* Specifies the offset in the destination image at which future
	* decoded pixels are to be placed, when reading, or where a
	* region will be written, when writing.
	*
	* <p> When reading, the region to be written within the
	* destination <code>BufferedImage</code> will start at this
	* offset and have a width and height determined by the source
	* region of interest, the subsampling parameters, and the
	* destination bounds.
	*
	* <p> Normal writes are not affected by this method, only writes
	* performed using <code>ImageWriter.replacePixels</code>.  For
	* such writes, the offset specified is within the output stream
	* image whose pixels are being modified.
	*
	* <p> There is no <code>unsetDestinationOffset</code> method;
	* simply call <code>setDestinationOffset(new Point(0, 0))</code> to
	* restore default values.
	*
	* @param destinationOffset the offset in the destination, as a
	* <code>Point</code>.
	*
	* @exception IllegalArgumentException if
	* <code>destinationOffset</code> is <code>null</code>.
	*
	* @see #getDestinationOffset
	* @see ImageWriter#replacePixels
	*/
	@:overload @:public public function setDestinationOffset(destinationOffset : java.awt.Point) : Void;
	
	/**
	* Returns the offset in the destination image at which pixels are
	* to be placed.
	*
	* <p> If <code>setDestinationOffsets</code> has not been called,
	* a <code>Point</code> with zero X and Y values is returned
	* (which is the correct value).
	*
	* @return the destination offset as a <code>Point</code>.
	*
	* @see #setDestinationOffset
	*/
	@:overload @:public public function getDestinationOffset() : java.awt.Point;
	
	/**
	* Sets the <code>IIOParamController</code> to be used
	* to provide settings for this <code>IIOParam</code>
	* object when the <code>activateController</code> method
	* is called, overriding any default controller.  If the
	* argument is <code>null</code>, no controller will be
	* used, including any default.  To restore the default, use
	* <code>setController(getDefaultController())</code>.
	*
	* @param controller An appropriate
	* <code>IIOParamController</code>, or <code>null</code>.
	*
	* @see IIOParamController
	* @see #getController
	* @see #getDefaultController
	* @see #hasController
	* @see #activateController()
	*/
	@:overload @:public public function setController(controller : javax.imageio.IIOParamController) : Void;
	
	/**
	* Returns whatever <code>IIOParamController</code> is currently
	* installed.  This could be the default if there is one,
	* <code>null</code>, or the argument of the most recent call
	* to <code>setController</code>.
	*
	* @return the currently installed
	* <code>IIOParamController</code>, or <code>null</code>.
	*
	* @see IIOParamController
	* @see #setController
	* @see #getDefaultController
	* @see #hasController
	* @see #activateController()
	*/
	@:overload @:public public function getController() : javax.imageio.IIOParamController;
	
	/**
	* Returns the default <code>IIOParamController</code>, if there
	* is one, regardless of the currently installed controller.  If
	* there is no default controller, returns <code>null</code>.
	*
	* @return the default <code>IIOParamController</code>, or
	* <code>null</code>.
	*
	* @see IIOParamController
	* @see #setController(IIOParamController)
	* @see #getController
	* @see #hasController
	* @see #activateController()
	*/
	@:overload @:public public function getDefaultController() : javax.imageio.IIOParamController;
	
	/**
	* Returns <code>true</code> if there is a controller installed
	* for this <code>IIOParam</code> object.  This will return
	* <code>true</code> if <code>getController</code> would not
	* return <code>null</code>.
	*
	* @return <code>true</code> if a controller is installed.
	*
	* @see IIOParamController
	* @see #setController(IIOParamController)
	* @see #getController
	* @see #getDefaultController
	* @see #activateController()
	*/
	@:overload @:public public function hasController() : Bool;
	
	/**
	* Activates the installed <code>IIOParamController</code> for
	* this <code>IIOParam</code> object and returns the resulting
	* value.  When this method returns <code>true</code>, all values
	* for this <code>IIOParam</code> object will be ready for the
	* next read or write operation.  If <code>false</code> is
	* returned, no settings in this object will have been disturbed
	* (<i>i.e.</i>, the user canceled the operation).
	*
	* <p> Ordinarily, the controller will be a GUI providing a user
	* interface for a subclass of <code>IIOParam</code> for a
	* particular plug-in.  Controllers need not be GUIs, however.
	*
	* @return <code>true</code> if the controller completed normally.
	*
	* @exception IllegalStateException if there is no controller
	* currently installed.
	*
	* @see IIOParamController
	* @see #setController(IIOParamController)
	* @see #getController
	* @see #getDefaultController
	* @see #hasController
	*/
	@:overload @:public public function activateController() : Bool;
	
	
}

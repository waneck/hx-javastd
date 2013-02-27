package javax.imageio;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageReadParam extends javax.imageio.IIOParam
{
	/**
	* The desired rendering width and height of the source, if
	* <code>canSetSourceRenderSize</code> is <code>true</code>, or
	* <code>null</code>.
	*
	* <p> <code>ImageReader</code>s that do not support setting of
	* the source render size may ignore this value.
	*/
	private var sourceRenderSize : java.awt.Dimension;
	
	/**
	* The current destination <code>BufferedImage</code>, or
	* <code>null</code> if none has been set.  By default, the value
	* is <code>null</code>.
	*/
	private var destination : java.awt.image.BufferedImage;
	
	/**
	* The set of destination bands to be used, as an array of
	* <code>int</code>s.  By default, the value is <code>null</code>,
	* indicating all destination bands should be written in order.
	*/
	private var destinationBands : java.NativeArray<Int>;
	
	/**
	* The minimum index of a progressive pass to read from the
	* source.  By default, the value is set to 0, which indicates
	* that passes starting with the first available pass should be
	* decoded.
	*
	* <p> Subclasses should ensure that this value is
	* non-negative.
	*/
	private var minProgressivePass : Int;
	
	/**
	* The maximum number of progressive passes to read from the
	* source.  By default, the value is set to
	* <code>Integer.MAX_VALUE</code>, which indicates that passes up
	* to and including the last available pass should be decoded.
	*
	* <p> Subclasses should ensure that this value is positive.
	* Additionally, if the value is not
	* <code>Integer.MAX_VALUE</code>, then <code>minProgressivePass +
	* numProgressivePasses - 1</code> should not exceed
	* <code>Integer.MAX_VALUE</code>.
	*/
	private var numProgressivePasses : Int;
	
	/**
	* Constructs an <code>ImageReadParam</code>.
	*/
	@:overload public function new() : Void;
	
	@:overload override public function setDestinationType(destinationType : javax.imageio.ImageTypeSpecifier) : Void;
	
	/**
	* Supplies a <code>BufferedImage</code> to be used as the
	* destination for decoded pixel data.  The currently set image
	* will be written to by the <code>read</code>,
	* <code>readAll</code>, and <code>readRaster</code> methods, and
	* a reference to it will be returned by those methods.
	*
	* <p> Pixel data from the aforementioned methods will be written
	* starting at the offset specified by
	* <code>getDestinationOffset</code>.
	*
	* <p> If <code>destination</code> is <code>null</code>, a
	* newly-created <code>BufferedImage</code> will be returned by
	* those methods.
	*
	* <p> At the time of reading, the image is checked to verify that
	* its <code>ColorModel</code> and <code>SampleModel</code>
	* correspond to one of the <code>ImageTypeSpecifier</code>s
	* returned from the <code>ImageReader</code>'s
	* <code>getImageTypes</code> method.  If it does not, the reader
	* will throw an <code>IIOException</code>.
	*
	* @param destination the BufferedImage to be written to, or
	* <code>null</code>.
	*
	* @see #getDestination
	*/
	@:overload public function setDestination(destination : java.awt.image.BufferedImage) : Void;
	
	/**
	* Returns the <code>BufferedImage</code> currently set by the
	* <code>setDestination</code> method, or <code>null</code>
	* if none is set.
	*
	* @return the BufferedImage to be written to.
	*
	* @see #setDestination
	*/
	@:overload public function getDestination() : java.awt.image.BufferedImage;
	
	/**
	* Sets the indices of the destination bands where data
	* will be placed.  Duplicate indices are not allowed.
	*
	* <p> A <code>null</code> value indicates that all destination
	* bands will be used.
	*
	* <p> Choosing a destination band subset will not affect the
	* number of bands in the output image of a read if no destination
	* image is specified; the created destination image will still
	* have the same number of bands as if this method had never been
	* called.  If a different number of bands in the destination
	* image is desired, an image must be supplied using the
	* <code>ImageReadParam.setDestination</code> method.
	*
	* <p> At the time of reading or writing, an
	* <code>IllegalArgumentException</code> will be thrown by the
	* reader or writer if a value larger than the largest destination
	* band index has been specified, or if the number of source bands
	* and destination bands to be used differ.  The
	* <code>ImageReader.checkReadParamBandSettings</code> method may
	* be used to automate this test.
	*
	* @param destinationBands an array of integer band indices to be
	* used.
	*
	* @exception IllegalArgumentException if <code>destinationBands</code>
	* contains a negative or duplicate value.
	*
	* @see #getDestinationBands
	* @see #getSourceBands
	* @see ImageReader#checkReadParamBandSettings
	*/
	@:overload public function setDestinationBands(destinationBands : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the set of band indices where data will be placed.
	* If no value has been set, <code>null</code> is returned to
	* indicate that all destination bands will be used.
	*
	* @return the indices of the destination bands to be used,
	* or <code>null</code>.
	*
	* @see #setDestinationBands
	*/
	@:overload public function getDestinationBands() : java.NativeArray<Int>;
	
	/**
	* Returns <code>true</code> if this reader allows the source
	* image to be rendered at an arbitrary size as part of the
	* decoding process, by means of the
	* <code>setSourceRenderSize</code> method.  If this method
	* returns <code>false</code>, calls to
	* <code>setSourceRenderSize</code> will throw an
	* <code>UnsupportedOperationException</code>.
	*
	* @return <code>true</code> if setting source rendering size is
	* supported.
	*
	* @see #setSourceRenderSize
	*/
	@:overload public function canSetSourceRenderSize() : Bool;
	
	/**
	* If the image is able to be rendered at an arbitrary size, sets
	* the source width and height to the supplied values.  Note that
	* the values returned from the <code>getWidth</code> and
	* <code>getHeight</code> methods on <code>ImageReader</code> are
	* not affected by this method; they will continue to return the
	* default size for the image.  Similarly, if the image is also
	* tiled the tile width and height are given in terms of the default
	* size.
	*
	* <p> Typically, the width and height should be chosen such that
	* the ratio of width to height closely approximates the aspect
	* ratio of the image, as returned from
	* <code>ImageReader.getAspectRatio</code>.
	*
	* <p> If this plug-in does not allow the rendering size to be
	* set, an <code>UnsupportedOperationException</code> will be
	* thrown.
	*
	* <p> To remove the render size setting, pass in a value of
	* <code>null</code> for <code>size</code>.
	*
	* @param size a <code>Dimension</code> indicating the desired
	* width and height.
	*
	* @exception IllegalArgumentException if either the width or the
	* height is negative or 0.
	* @exception UnsupportedOperationException if image resizing
	* is not supported by this plug-in.
	*
	* @see #getSourceRenderSize
	* @see ImageReader#getWidth
	* @see ImageReader#getHeight
	* @see ImageReader#getAspectRatio
	*/
	@:overload public function setSourceRenderSize(size : java.awt.Dimension) : Void;
	
	/**
	* Returns the width and height of the source image as it
	* will be rendered during decoding, if they have been set via the
	* <code>setSourceRenderSize</code> method.  A
	* <code>null</code>value indicates that no setting has been made.
	*
	* @return the rendered width and height of the source image
	* as a <code>Dimension</code>.
	*
	* @see #setSourceRenderSize
	*/
	@:overload public function getSourceRenderSize() : java.awt.Dimension;
	
	/**
	* Sets the range of progressive passes that will be decoded.
	* Passes outside of this range will be ignored.
	*
	* <p> A progressive pass is a re-encoding of the entire image,
	* generally at progressively higher effective resolutions, but
	* requiring greater transmission bandwidth.  The most common use
	* of progressive encoding is found in the JPEG format, where
	* successive passes include more detailed representations of the
	* high-frequency image content.
	*
	* <p> The actual number of passes to be decoded is determined
	* during decoding, based on the number of actual passes available
	* in the stream.  Thus if <code>minPass + numPasses - 1</code> is
	* larger than the index of the last available passes, decoding
	* will end with that pass.
	*
	* <p> A value of <code>numPasses</code> of
	* <code>Integer.MAX_VALUE</code> indicates that all passes from
	* <code>minPass</code> forward should be read.  Otherwise, the
	* index of the last pass (<i>i.e.</i>, <code>minPass + numPasses
	* - 1</code>) must not exceed <code>Integer.MAX_VALUE</code>.
	*
	* <p> There is no <code>unsetSourceProgressivePasses</code>
	* method; the same effect may be obtained by calling
	* <code>setSourceProgressivePasses(0, Integer.MAX_VALUE)</code>.
	*
	* @param minPass the index of the first pass to be decoded.
	* @param numPasses the maximum number of passes to be decoded.
	*
	* @exception IllegalArgumentException if <code>minPass</code> is
	* negative, <code>numPasses</code> is negative or 0, or
	* <code>numPasses</code> is smaller than
	* <code>Integer.MAX_VALUE</code> but <code>minPass +
	* numPasses - 1</code> is greater than
	* <code>INTEGER.MAX_VALUE</code>.
	*
	* @see #getSourceMinProgressivePass
	* @see #getSourceMaxProgressivePass
	*/
	@:overload public function setSourceProgressivePasses(minPass : Int, numPasses : Int) : Void;
	
	/**
	* Returns the index of the first progressive pass that will be
	* decoded. If no value has been set, 0 will be returned (which is
	* the correct value).
	*
	* @return the index of the first pass that will be decoded.
	*
	* @see #setSourceProgressivePasses
	* @see #getSourceNumProgressivePasses
	*/
	@:overload public function getSourceMinProgressivePass() : Int;
	
	/**
	* If <code>getSourceNumProgressivePasses</code> is equal to
	* <code>Integer.MAX_VALUE</code>, returns
	* <code>Integer.MAX_VALUE</code>.  Otherwise, returns
	* <code>getSourceMinProgressivePass() +
	* getSourceNumProgressivePasses() - 1</code>.
	*
	* @return the index of the last pass to be read, or
	* <code>Integer.MAX_VALUE</code>.
	*/
	@:overload public function getSourceMaxProgressivePass() : Int;
	
	/**
	* Returns the number of the progressive passes that will be
	* decoded. If no value has been set,
	* <code>Integer.MAX_VALUE</code> will be returned (which is the
	* correct value).
	*
	* @return the number of the passes that will be decoded.
	*
	* @see #setSourceProgressivePasses
	* @see #getSourceMinProgressivePass
	*/
	@:overload public function getSourceNumProgressivePasses() : Int;
	
	
}

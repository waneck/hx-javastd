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
/* ****************************************************************
******************************************************************
******************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997
*** As  an unpublished  work pursuant to Title 17 of the United
*** States Code.  All rights reserved.
******************************************************************
******************************************************************
******************************************************************/
extern class ComponentSampleModel extends java.awt.image.SampleModel
{
	/** Offsets for all bands in data array elements. */
	private var bandOffsets : java.NativeArray<Int>;
	
	/** Index for each bank storing a band of image data. */
	private var bankIndices : java.NativeArray<Int>;
	
	/**
	* The number of bands in this
	* <code>ComponentSampleModel</code>.
	*/
	private var numBands : Int;
	
	/**
	* The number of banks in this
	* <code>ComponentSampleModel</code>.
	*/
	private var numBanks : Int;
	
	/**
	*  Line stride (in data array elements) of the region of image
	*  data described by this ComponentSampleModel.
	*/
	private var scanlineStride : Int;
	
	/** Pixel stride (in data array elements) of the region of image
	*  data described by this ComponentSampleModel.
	*/
	private var pixelStride : Int;
	
	/**
	* Constructs a ComponentSampleModel with the specified parameters.
	* The number of bands will be given by the length of the bandOffsets array.
	* All bands will be stored in the first bank of the DataBuffer.
	* @param dataType  the data type for storing samples
	* @param w         the width (in pixels) of the region of
	*     image data described
	* @param h         the height (in pixels) of the region of
	*     image data described
	* @param pixelStride the pixel stride of the region of image
	*     data described
	* @param scanlineStride the line stride of the region of image
	*     data described
	* @param bandOffsets the offsets of all bands
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	* @throws IllegalArgumentException if <code>pixelStride</code>
	*         is less than 0
	* @throws IllegalArgumentException if <code>scanlineStride</code>
	*         is less than 0
	* @throws IllegalArgumentException if <code>numBands</code>
	*         is less than 1
	* @throws IllegalArgumentException if the product of <code>w</code>
	*         and <code>h</code> is greater than
	*         <code>Integer.MAX_VALUE</code>
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types
	*/
	@:overload public function new(dataType : Int, w : Int, h : Int, pixelStride : Int, scanlineStride : Int, bandOffsets : java.NativeArray<Int>) : Void;
	
	/**
	* Constructs a ComponentSampleModel with the specified parameters.
	* The number of bands will be given by the length of the bandOffsets array.
	* Different bands may be stored in different banks of the DataBuffer.
	*
	* @param dataType  the data type for storing samples
	* @param w         the width (in pixels) of the region of
	*     image data described
	* @param h         the height (in pixels) of the region of
	*     image data described
	* @param pixelStride the pixel stride of the region of image
	*     data described
	* @param scanlineStride The line stride of the region of image
	*     data described
	* @param bankIndices the bank indices of all bands
	* @param bandOffsets the band offsets of all bands
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	* @throws IllegalArgumentException if <code>pixelStride</code>
	*         is less than 0
	* @throws IllegalArgumentException if <code>scanlineStride</code>
	*         is less than 0
	* @throws IllegalArgumentException if the length of
	*         <code>bankIndices</code> does not equal the length of
	*         <code>bankOffsets</code>
	* @throws IllegalArgumentException if any of the bank indices
	*         of <code>bandIndices</code> is less than 0
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types
	*/
	@:overload public function new(dataType : Int, w : Int, h : Int, pixelStride : Int, scanlineStride : Int, bankIndices : java.NativeArray<Int>, bandOffsets : java.NativeArray<Int>) : Void;
	
	/**
	* Creates a new <code>ComponentSampleModel</code> with the specified
	* width and height.  The new <code>SampleModel</code> will have the same
	* number of bands, storage data type, interleaving scheme, and
	* pixel stride as this <code>SampleModel</code>.
	* @param w the width of the resulting <code>SampleModel</code>
	* @param h the height of the resulting <code>SampleModel</code>
	* @return a new <code>ComponentSampleModel</code> with the specified size
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	*/
	@:overload override public function createCompatibleSampleModel(w : Int, h : Int) : java.awt.image.SampleModel;
	
	/**
	* Creates a new ComponentSampleModel with a subset of the bands
	* of this ComponentSampleModel.  The new ComponentSampleModel can be
	* used with any DataBuffer that the existing ComponentSampleModel
	* can be used with.  The new ComponentSampleModel/DataBuffer
	* combination will represent an image with a subset of the bands
	* of the original ComponentSampleModel/DataBuffer combination.
	* @param bands a subset of bands from this
	*              <code>ComponentSampleModel</code>
	* @return a <code>ComponentSampleModel</code> created with a subset
	*          of bands from this <code>ComponentSampleModel</code>.
	*/
	@:overload override public function createSubsetSampleModel(bands : java.NativeArray<Int>) : java.awt.image.SampleModel;
	
	/**
	* Creates a <code>DataBuffer</code> that corresponds to this
	* <code>ComponentSampleModel</code>.
	* The <code>DataBuffer</code> object's data type, number of banks,
	* and size are be consistent with this <code>ComponentSampleModel</code>.
	* @return a <code>DataBuffer</code> whose data type, number of banks
	*         and size are consistent with this
	*         <code>ComponentSampleModel</code>.
	*/
	@:overload override public function createDataBuffer() : java.awt.image.DataBuffer;
	
	/** Gets the offset for the first band of pixel (x,y).
	*  A sample of the first band can be retrieved from a
	* <code>DataBuffer</code>
	*  <code>data</code> with a <code>ComponentSampleModel</code>
	* <code>csm</code> as
	* <pre>
	*        data.getElem(csm.getOffset(x, y));
	* </pre>
	* @param x the X location of the pixel
	* @param y the Y location of the pixel
	* @return the offset for the first band of the specified pixel.
	*/
	@:overload public function getOffset(x : Int, y : Int) : Int;
	
	/** Gets the offset for band b of pixel (x,y).
	*  A sample of band <code>b</code> can be retrieved from a
	*  <code>DataBuffer</code> <code>data</code>
	*  with a <code>ComponentSampleModel</code> <code>csm</code> as
	* <pre>
	*       data.getElem(csm.getOffset(x, y, b));
	* </pre>
	* @param x the X location of the specified pixel
	* @param y the Y location of the specified pixel
	* @param b the specified band
	* @return the offset for the specified band of the specified pixel.
	*/
	@:overload public function getOffset(x : Int, y : Int, b : Int) : Int;
	
	/** Returns the number of bits per sample for all bands.
	*  @return an array containing the number of bits per sample
	*          for all bands, where each element in the array
	*          represents a band.
	*/
	@:overload @:final override public function getSampleSize() : java.NativeArray<Int>;
	
	/** Returns the number of bits per sample for the specified band.
	*  @param band the specified band
	*  @return the number of bits per sample for the specified band.
	*/
	@:overload @:final override public function getSampleSize(band : Int) : Int;
	
	/** Returns the bank indices for all bands.
	*  @return the bank indices for all bands.
	*/
	@:overload @:final public function getBankIndices() : java.NativeArray<Int>;
	
	/** Returns the band offset for all bands.
	*  @return the band offsets for all bands.
	*/
	@:overload @:final public function getBandOffsets() : java.NativeArray<Int>;
	
	/** Returns the scanline stride of this ComponentSampleModel.
	*  @return the scanline stride of this <code>ComponentSampleModel</code>.
	*/
	@:overload @:final public function getScanlineStride() : Int;
	
	/** Returns the pixel stride of this ComponentSampleModel.
	*  @return the pixel stride of this <code>ComponentSampleModel</code>.
	*/
	@:overload @:final public function getPixelStride() : Int;
	
	/**
	* Returns the number of data elements needed to transfer a pixel
	* with the
	* {@link #getDataElements(int, int, Object, DataBuffer) } and
	* {@link #setDataElements(int, int, Object, DataBuffer) }
	* methods.
	* For a <code>ComponentSampleModel</code>, this is identical to the
	* number of bands.
	* @return the number of data elements needed to transfer a pixel with
	*         the <code>getDataElements</code> and
	*         <code>setDataElements</code> methods.
	* @see java.awt.image.SampleModel#getNumDataElements
	* @see #getNumBands
	*/
	@:overload @:final override public function getNumDataElements() : Int;
	
	/**
	* Returns data for a single pixel in a primitive array of type
	* <code>TransferType</code>.  For a <code>ComponentSampleModel</code>,
	* this is the same as the data type, and samples are returned
	* one per array element.  Generally, <code>obj</code> should
	* be passed in as <code>null</code>, so that the <code>Object</code>
	* is created automatically and is the right primitive data type.
	* <p>
	* The following code illustrates transferring data for one pixel from
	* <code>DataBuffer</code> <code>db1</code>, whose storage layout is
	* described by <code>ComponentSampleModel</code> <code>csm1</code>,
	* to <code>DataBuffer</code> <code>db2</code>, whose storage layout
	* is described by <code>ComponentSampleModel</code> <code>csm2</code>.
	* The transfer is usually more efficient than using
	* <code>getPixel</code> and <code>setPixel</code>.
	* <pre>
	*       ComponentSampleModel csm1, csm2;
	*       DataBufferInt db1, db2;
	*       csm2.setDataElements(x, y,
	*                            csm1.getDataElements(x, y, null, db1), db2);
	* </pre>
	*
	* Using <code>getDataElements</code> and <code>setDataElements</code>
	* to transfer between two <code>DataBuffer/SampleModel</code>
	* pairs is legitimate if the <code>SampleModel</code> objects have
	* the same number of bands, corresponding bands have the same number of
	* bits per sample, and the <code>TransferType</code>s are the same.
	* <p>
	* If <code>obj</code> is not <code>null</code>, it should be a
	* primitive array of type <code>TransferType</code>.
	* Otherwise, a <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> might be thrown if the
	* coordinates are not in bounds, or if <code>obj</code> is not
	* <code>null</code> and is not large enough to hold
	* the pixel data.
	*
	* @param x         the X coordinate of the pixel location
	* @param y         the Y coordinate of the pixel location
	* @param obj       if non-<code>null</code>, a primitive array
	*                  in which to return the pixel data
	* @param data      the <code>DataBuffer</code> containing the image data
	* @return the data of the specified pixel
	* @see #setDataElements(int, int, Object, DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if obj is too small to hold the ouput.
	*/
	@:overload override public function getDataElements(x : Int, y : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Dynamic;
	
	/**
	* Returns all samples for the specified pixel in an int array,
	* one sample per array element.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if
	* the coordinates are not in bounds.
	* @param x         the X coordinate of the pixel location
	* @param y         the Y coordinate of the pixel location
	* @param iArray    If non-null, returns the samples in this array
	* @param data      The DataBuffer containing the image data
	* @return the samples of the specified pixel.
	* @see #setPixel(int, int, int[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if iArray is too small to hold the output.
	*/
	@:overload override public function getPixel(x : Int, y : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Returns all samples for the specified rectangle of pixels in
	* an int array, one sample per array element.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if
	* the coordinates are not in bounds.
	* @param x         The X coordinate of the upper left pixel location
	* @param y         The Y coordinate of the upper left pixel location
	* @param w         The width of the pixel rectangle
	* @param h         The height of the pixel rectangle
	* @param iArray    If non-null, returns the samples in this array
	* @param data      The DataBuffer containing the image data
	* @return the samples of the pixels within the specified region.
	* @see #setPixels(int, int, int, int, int[], DataBuffer)
	*/
	@:overload override public function getPixels(x : Int, y : Int, w : Int, h : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Returns as int the sample in a specified band for the pixel
	* located at (x,y).
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if
	* the coordinates are not in bounds.
	* @param x         the X coordinate of the pixel location
	* @param y         the Y coordinate of the pixel location
	* @param b         the band to return
	* @param data      the <code>DataBuffer</code> containing the image data
	* @return the sample in a specified band for the specified pixel
	* @see #setSample(int, int, int, int, DataBuffer)
	*/
	@:overload override public function getSample(x : Int, y : Int, b : Int, data : java.awt.image.DataBuffer) : Int;
	
	/**
	* Returns the sample in a specified band
	* for the pixel located at (x,y) as a float.
	* An <code>ArrayIndexOutOfBoundsException</code> might be
	* thrown if the coordinates are not in bounds.
	* @param x         The X coordinate of the pixel location
	* @param y         The Y coordinate of the pixel location
	* @param b         The band to return
	* @param data      The DataBuffer containing the image data
	* @return a float value representing the sample in the specified
	* band for the specified pixel.
	*/
	@:overload override public function getSampleFloat(x : Int, y : Int, b : Int, data : java.awt.image.DataBuffer) : Single;
	
	/**
	* Returns the sample in a specified band
	* for a pixel located at (x,y) as a double.
	* An <code>ArrayIndexOutOfBoundsException</code> might be
	* thrown if the coordinates are not in bounds.
	* @param x         The X coordinate of the pixel location
	* @param y         The Y coordinate of the pixel location
	* @param b         The band to return
	* @param data      The DataBuffer containing the image data
	* @return a double value representing the sample in the specified
	* band for the specified pixel.
	*/
	@:overload override public function getSampleDouble(x : Int, y : Int, b : Int, data : java.awt.image.DataBuffer) : Float;
	
	/**
	* Returns the samples in a specified band for the specified rectangle
	* of pixels in an int array, one sample per data array element.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if
	* the coordinates are not in bounds.
	* @param x         The X coordinate of the upper left pixel location
	* @param y         The Y coordinate of the upper left pixel location
	* @param w         the width of the pixel rectangle
	* @param h         the height of the pixel rectangle
	* @param b         the band to return
	* @param iArray    if non-<code>null</code>, returns the samples
	*                  in this array
	* @param data      the <code>DataBuffer</code> containing the image data
	* @return the samples in the specified band of the specified pixel
	* @see #setSamples(int, int, int, int, int, int[], DataBuffer)
	*/
	@:overload override public function getSamples(x : Int, y : Int, w : Int, h : Int, b : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Sets the data for a single pixel in the specified
	* <code>DataBuffer</code> from a primitive array of type
	* <code>TransferType</code>.  For a <code>ComponentSampleModel</code>,
	* this is the same as the data type, and samples are transferred
	* one per array element.
	* <p>
	* The following code illustrates transferring data for one pixel from
	* <code>DataBuffer</code> <code>db1</code>, whose storage layout is
	* described by <code>ComponentSampleModel</code> <code>csm1</code>,
	* to <code>DataBuffer</code> <code>db2</code>, whose storage layout
	* is described by <code>ComponentSampleModel</code> <code>csm2</code>.
	* The transfer is usually more efficient than using
	* <code>getPixel</code> and <code>setPixel</code>.
	* <pre>
	*       ComponentSampleModel csm1, csm2;
	*       DataBufferInt db1, db2;
	*       csm2.setDataElements(x, y, csm1.getDataElements(x, y, null, db1),
	*                            db2);
	* </pre>
	* Using <code>getDataElements</code> and <code>setDataElements</code>
	* to transfer between two <code>DataBuffer/SampleModel</code> pairs
	* is legitimate if the <code>SampleModel</code> objects have
	* the same number of bands, corresponding bands have the same number of
	* bits per sample, and the <code>TransferType</code>s are the same.
	* <p>
	* A <code>ClassCastException</code> is thrown if <code>obj</code> is not
	* a primitive array of type <code>TransferType</code>.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if
	* the coordinates are not in bounds, or if <code>obj</code> is not large
	* enough to hold the pixel data.
	* @param x         the X coordinate of the pixel location
	* @param y         the Y coordinate of the pixel location
	* @param obj       a primitive array containing pixel data
	* @param data      the DataBuffer containing the image data
	* @see #getDataElements(int, int, Object, DataBuffer)
	*/
	@:overload override public function setDataElements(x : Int, y : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a pixel in the <code>DataBuffer</code> using an int array of
	* samples for input.  An <code>ArrayIndexOutOfBoundsException</code>
	* might be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location
	* @param y         The Y coordinate of the pixel location
	* @param iArray    The input samples in an int array
	* @param data      The DataBuffer containing the image data
	* @see #getPixel(int, int, int[], DataBuffer)
	*/
	@:overload override public function setPixel(x : Int, y : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets all samples for a rectangle of pixels from an int array containing
	* one sample per array element.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if the
	* coordinates are not in bounds.
	* @param x         The X coordinate of the upper left pixel location
	* @param y         The Y coordinate of the upper left pixel location
	* @param w         The width of the pixel rectangle
	* @param h         The height of the pixel rectangle
	* @param iArray    The input samples in an int array
	* @param data      The DataBuffer containing the image data
	* @see #getPixels(int, int, int, int, int[], DataBuffer)
	*/
	@:overload override public function setPixels(x : Int, y : Int, w : Int, h : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a sample in the specified band for the pixel located at (x,y)
	* in the <code>DataBuffer</code> using an int for input.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if the
	* coordinates are not in bounds.
	* @param x         The X coordinate of the pixel location
	* @param y         The Y coordinate of the pixel location
	* @param b         the band to set
	* @param s         the input sample as an int
	* @param data      the DataBuffer containing the image data
	* @see #getSample(int, int, int, DataBuffer)
	*/
	@:overload override public function setSample(x : Int, y : Int, b : Int, s : Int, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a sample in the specified band for the pixel located at (x,y)
	* in the <code>DataBuffer</code> using a float for input.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if
	* the coordinates are not in bounds.
	* @param x         The X coordinate of the pixel location
	* @param y         The Y coordinate of the pixel location
	* @param b         The band to set
	* @param s         The input sample as a float
	* @param data      The DataBuffer containing the image data
	* @see #getSample(int, int, int, DataBuffer)
	*/
	@:overload override public function setSample(x : Int, y : Int, b : Int, s : Single, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a sample in the specified band for the pixel located at (x,y)
	* in the <code>DataBuffer</code> using a double for input.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if
	* the coordinates are not in bounds.
	* @param x         The X coordinate of the pixel location
	* @param y         The Y coordinate of the pixel location
	* @param b         The band to set
	* @param s         The input sample as a double
	* @param data      The DataBuffer containing the image data
	* @see #getSample(int, int, int, DataBuffer)
	*/
	@:overload override public function setSample(x : Int, y : Int, b : Int, s : Float, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets the samples in the specified band for the specified rectangle
	* of pixels from an int array containing one sample per data array element.
	* An <code>ArrayIndexOutOfBoundsException</code> might be thrown if the
	* coordinates are not in bounds.
	* @param x         The X coordinate of the upper left pixel location
	* @param y         The Y coordinate of the upper left pixel location
	* @param w         The width of the pixel rectangle
	* @param h         The height of the pixel rectangle
	* @param b         The band to set
	* @param iArray    The input samples in an int array
	* @param data      The DataBuffer containing the image data
	* @see #getSamples(int, int, int, int, int, int[], DataBuffer)
	*/
	@:overload override public function setSamples(x : Int, y : Int, w : Int, h : Int, b : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}

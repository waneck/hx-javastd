package java.awt.image;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
*  This abstract class defines an interface for extracting samples of pixels
*  in an image.  All image data is expressed as a collection of pixels.
*  Each pixel consists of a number of samples. A sample is a datum
*  for one band of an image and a band consists of all samples of a
*  particular type in an image.  For example, a pixel might contain
*  three samples representing its red, green and blue components.
*  There are three bands in the image containing this pixel.  One band
*  consists of all the red samples from all pixels in the
*  image.  The second band consists of all the green samples and
*  the remaining band consists of all of the blue samples.  The pixel
*  can be stored in various formats.  For example, all samples from
*  a particular band can be stored contiguously or all samples from a
*  single pixel can be stored contiguously.
*  <p>
*  Subclasses of SampleModel specify the types of samples they can
*  represent (e.g. unsigned 8-bit byte, signed 16-bit short, etc.)
*  and may specify how the samples are organized in memory.
*  In the Java 2D(tm) API, built-in image processing operators may
*  not operate on all possible sample types, but generally will work
*  for unsigned integral samples of 16 bits or less.  Some operators
*  support a wider variety of sample types.
*  <p>
*  A collection of pixels is represented as a Raster, which consists of
*  a DataBuffer and a SampleModel.  The SampleModel allows access to
*  samples in the DataBuffer and may provide low-level information that
*  a programmer can use to directly manipulate samples and pixels in the
*  DataBuffer.
*  <p>
*  This class is generally a fall back method for dealing with
*  images.  More efficient code will cast the SampleModel to the
*  appropriate subclass and extract the information needed to directly
*  manipulate pixels in the DataBuffer.
*
*  @see java.awt.image.DataBuffer
*  @see java.awt.image.Raster
*  @see java.awt.image.ComponentSampleModel
*  @see java.awt.image.PixelInterleavedSampleModel
*  @see java.awt.image.BandedSampleModel
*  @see java.awt.image.MultiPixelPackedSampleModel
*  @see java.awt.image.SinglePixelPackedSampleModel
*/
extern class SampleModel
{
	/** Width in pixels of the region of image data that this SampleModel
	*  describes.
	*/
	private var width : Int;
	
	/** Height in pixels of the region of image data that this SampleModel
	*  describes.
	*/
	private var height : Int;
	
	/** Number of bands of the image data that this SampleModel describes. */
	private var numBands : Int;
	
	/** Data type of the DataBuffer storing the pixel data.
	*  @see java.awt.image.DataBuffer
	*/
	private var dataType : Int;
	
	/**
	* Constructs a SampleModel with the specified parameters.
	* @param dataType  The data type of the DataBuffer storing the pixel data.
	* @param w         The width (in pixels) of the region of image data.
	* @param h         The height (in pixels) of the region of image data.
	* @param numBands  The number of bands of the image data.
	* @throws IllegalArgumentException if <code>w</code> or <code>h</code>
	*         is not greater than 0
	* @throws IllegalArgumentException if the product of <code>w</code>
	*         and <code>h</code> is greater than
	*         <code>Integer.MAX_VALUE</code>
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types
	*/
	@:overload public function new(dataType : Int, w : Int, h : Int, numBands : Int) : Void;
	
	/** Returns the width in pixels.
	*  @return the width in pixels of the region of image data
	*          that this <code>SampleModel</code> describes.
	*/
	@:overload @:final public function getWidth() : Int;
	
	/** Returns the height in pixels.
	*  @return the height in pixels of the region of image data
	*          that this <code>SampleModel</code> describes.
	*/
	@:overload @:final public function getHeight() : Int;
	
	/** Returns the total number of bands of image data.
	*  @return the number of bands of image data that this
	*          <code>SampleModel</code> describes.
	*/
	@:overload @:final public function getNumBands() : Int;
	
	/** Returns the number of data elements needed to transfer a pixel
	*  via the getDataElements and setDataElements methods.  When pixels
	*  are transferred via these methods, they may be transferred in a
	*  packed or unpacked format, depending on the implementation of the
	*  SampleModel.  Using these methods, pixels are transferred as an
	*  array of getNumDataElements() elements of a primitive type given
	*  by getTransferType().  The TransferType may or may not be the same
	*  as the storage DataType.
	*  @return the number of data elements.
	*  @see #getDataElements(int, int, Object, DataBuffer)
	*  @see #getDataElements(int, int, int, int, Object, DataBuffer)
	*  @see #setDataElements(int, int, Object, DataBuffer)
	*  @see #setDataElements(int, int, int, int, Object, DataBuffer)
	*  @see #getTransferType
	*/
	@:overload @:abstract public function getNumDataElements() : Int;
	
	/** Returns the data type of the DataBuffer storing the pixel data.
	*  @return the data type.
	*/
	@:overload @:final public function getDataType() : Int;
	
	/** Returns the TransferType used to transfer pixels via the
	*  getDataElements and setDataElements methods.  When pixels
	*  are transferred via these methods, they may be transferred in a
	*  packed or unpacked format, depending on the implementation of the
	*  SampleModel.  Using these methods, pixels are transferred as an
	*  array of getNumDataElements() elements of a primitive type given
	*  by getTransferType().  The TransferType may or may not be the same
	*  as the storage DataType.  The TransferType will be one of the types
	*  defined in DataBuffer.
	*  @return the transfer type.
	*  @see #getDataElements(int, int, Object, DataBuffer)
	*  @see #getDataElements(int, int, int, int, Object, DataBuffer)
	*  @see #setDataElements(int, int, Object, DataBuffer)
	*  @see #setDataElements(int, int, int, int, Object, DataBuffer)
	*  @see #getNumDataElements
	*  @see java.awt.image.DataBuffer
	*/
	@:overload public function getTransferType() : Int;
	
	/**
	* Returns the samples for a specified pixel in an int array,
	* one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location
	* @param y         The Y coordinate of the pixel location
	* @param iArray    If non-null, returns the samples in this array
	* @param data      The DataBuffer containing the image data
	* @return the samples for the specified pixel.
	* @see #setPixel(int, int, int[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if iArray is too small to hold the output.
	*/
	@:overload public function getPixel(x : Int, y : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Returns data for a single pixel in a primitive array of type
	* TransferType.  For image data supported by the Java 2D API, this
	* will be one of DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT,
	* DataBuffer.TYPE_INT, DataBuffer.TYPE_SHORT, DataBuffer.TYPE_FLOAT,
	* or DataBuffer.TYPE_DOUBLE.  Data may be returned in a packed format,
	* thus increasing efficiency for data transfers. Generally, obj
	* should be passed in as null, so that the Object will be created
	* automatically and will be of the right primitive data type.
	* <p>
	* The following code illustrates transferring data for one pixel from
	* DataBuffer <code>db1</code>, whose storage layout is described by
	* SampleModel <code>sm1</code>, to DataBuffer <code>db2</code>, whose
	* storage layout is described by SampleModel <code>sm2</code>.
	* The transfer will generally be more efficient than using
	* getPixel/setPixel.
	* <pre>
	*       SampleModel sm1, sm2;
	*       DataBuffer db1, db2;
	*       sm2.setDataElements(x, y, sm1.getDataElements(x, y, null, db1), db2);
	* </pre>
	* Using getDataElements/setDataElements to transfer between two
	* DataBuffer/SampleModel pairs is legitimate if the SampleModels have
	* the same number of bands, corresponding bands have the same number of
	* bits per sample, and the TransferTypes are the same.
	* <p>
	* If obj is non-null, it should be a primitive array of type TransferType.
	* Otherwise, a ClassCastException is thrown.  An
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds, or if obj is non-null and is not large enough to hold
	* the pixel data.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param obj       If non-null, a primitive array in which to return
	*                  the pixel data.
	* @param data      The DataBuffer containing the image data.
	* @return the data elements for the specified pixel.
	* @see #getNumDataElements
	* @see #getTransferType
	* @see java.awt.image.DataBuffer
	* @see #setDataElements(int, int, Object, DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if obj is too small to hold the output.
	*/
	@:overload @:abstract public function getDataElements(x : Int, y : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Dynamic;
	
	/**
	* Returns the pixel data for the specified rectangle of pixels in a
	* primitive array of type TransferType.
	* For image data supported by the Java 2D API, this
	* will be one of DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT,
	* DataBuffer.TYPE_INT, DataBuffer.TYPE_SHORT, DataBuffer.TYPE_FLOAT,
	* or DataBuffer.TYPE_DOUBLE.  Data may be returned in a packed format,
	* thus increasing efficiency for data transfers. Generally, obj
	* should be passed in as null, so that the Object will be created
	* automatically and will be of the right primitive data type.
	* <p>
	* The following code illustrates transferring data for a rectangular
	* region of pixels from
	* DataBuffer <code>db1</code>, whose storage layout is described by
	* SampleModel <code>sm1</code>, to DataBuffer <code>db2</code>, whose
	* storage layout is described by SampleModel <code>sm2</code>.
	* The transfer will generally be more efficient than using
	* getPixels/setPixels.
	* <pre>
	*       SampleModel sm1, sm2;
	*       DataBuffer db1, db2;
	*       sm2.setDataElements(x, y, w, h, sm1.getDataElements(x, y, w,
	*                           h, null, db1), db2);
	* </pre>
	* Using getDataElements/setDataElements to transfer between two
	* DataBuffer/SampleModel pairs is legitimate if the SampleModels have
	* the same number of bands, corresponding bands have the same number of
	* bits per sample, and the TransferTypes are the same.
	* <p>
	* If obj is non-null, it should be a primitive array of type TransferType.
	* Otherwise, a ClassCastException is thrown.  An
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds, or if obj is non-null and is not large enough to hold
	* the pixel data.
	* @param x         The minimum X coordinate of the pixel rectangle.
	* @param y         The minimum Y coordinate of the pixel rectangle.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param obj       If non-null, a primitive array in which to return
	*                  the pixel data.
	* @param data      The DataBuffer containing the image data.
	* @return the data elements for the specified region of pixels.
	* @see #getNumDataElements
	* @see #getTransferType
	* @see #setDataElements(int, int, int, int, Object, DataBuffer)
	* @see java.awt.image.DataBuffer
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if obj is too small to hold the output.
	*/
	@:overload public function getDataElements(x : Int, y : Int, w : Int, h : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Dynamic;
	
	/**
	* Sets the data for a single pixel in the specified DataBuffer from a
	* primitive array of type TransferType.  For image data supported by
	* the Java 2D API, this will be one of DataBuffer.TYPE_BYTE,
	* DataBuffer.TYPE_USHORT, DataBuffer.TYPE_INT, DataBuffer.TYPE_SHORT,
	* DataBuffer.TYPE_FLOAT, or DataBuffer.TYPE_DOUBLE.  Data in the array
	* may be in a packed format, thus increasing efficiency for data
	* transfers.
	* <p>
	* The following code illustrates transferring data for one pixel from
	* DataBuffer <code>db1</code>, whose storage layout is described by
	* SampleModel <code>sm1</code>, to DataBuffer <code>db2</code>, whose
	* storage layout is described by SampleModel <code>sm2</code>.
	* The transfer will generally be more efficient than using
	* getPixel/setPixel.
	* <pre>
	*       SampleModel sm1, sm2;
	*       DataBuffer db1, db2;
	*       sm2.setDataElements(x, y, sm1.getDataElements(x, y, null, db1),
	*                           db2);
	* </pre>
	* Using getDataElements/setDataElements to transfer between two
	* DataBuffer/SampleModel pairs is legitimate if the SampleModels have
	* the same number of bands, corresponding bands have the same number of
	* bits per sample, and the TransferTypes are the same.
	* <p>
	* obj must be a primitive array of type TransferType.  Otherwise,
	* a ClassCastException is thrown.  An
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds, or if obj is not large enough to hold the pixel data.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param obj       A primitive array containing pixel data.
	* @param data      The DataBuffer containing the image data.
	* @see #getNumDataElements
	* @see #getTransferType
	* @see #getDataElements(int, int, Object, DataBuffer)
	* @see java.awt.image.DataBuffer
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if obj is too small to hold the input.
	*/
	@:overload @:abstract public function setDataElements(x : Int, y : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets the data for a rectangle of pixels in the specified DataBuffer
	* from a primitive array of type TransferType.  For image data supported
	* by the Java 2D API, this will be one of DataBuffer.TYPE_BYTE,
	* DataBuffer.TYPE_USHORT, DataBuffer.TYPE_INT, DataBuffer.TYPE_SHORT,
	* DataBuffer.TYPE_FLOAT, or DataBuffer.TYPE_DOUBLE.  Data in the array
	* may be in a packed format, thus increasing efficiency for data
	* transfers.
	* <p>
	* The following code illustrates transferring data for a rectangular
	* region of pixels from
	* DataBuffer <code>db1</code>, whose storage layout is described by
	* SampleModel <code>sm1</code>, to DataBuffer <code>db2</code>, whose
	* storage layout is described by SampleModel <code>sm2</code>.
	* The transfer will generally be more efficient than using
	* getPixels/setPixels.
	* <pre>
	*       SampleModel sm1, sm2;
	*       DataBuffer db1, db2;
	*       sm2.setDataElements(x, y, w, h, sm1.getDataElements(x, y, w, h,
	*                           null, db1), db2);
	* </pre>
	* Using getDataElements/setDataElements to transfer between two
	* DataBuffer/SampleModel pairs is legitimate if the SampleModels have
	* the same number of bands, corresponding bands have the same number of
	* bits per sample, and the TransferTypes are the same.
	* <p>
	* obj must be a primitive array of type TransferType.  Otherwise,
	* a ClassCastException is thrown.  An
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds, or if obj is not large enough to hold the pixel data.
	* @param x         The minimum X coordinate of the pixel rectangle.
	* @param y         The minimum Y coordinate of the pixel rectangle.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param obj       A primitive array containing pixel data.
	* @param data      The DataBuffer containing the image data.
	* @see #getNumDataElements
	* @see #getTransferType
	* @see #getDataElements(int, int, int, int, Object, DataBuffer)
	* @see java.awt.image.DataBuffer
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if obj is too small to hold the input.
	*/
	@:overload public function setDataElements(x : Int, y : Int, w : Int, h : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Returns the samples for the specified pixel in an array of float.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param fArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return the samples for the specified pixel.
	* @see #setPixel(int, int, float[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if fArray is too small to hold the output.
	*/
	@:overload public function getPixel(x : Int, y : Int, fArray : java.NativeArray<Single>, data : java.awt.image.DataBuffer) : java.NativeArray<Single>;
	
	/**
	* Returns the samples for the specified pixel in an array of double.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param dArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return the samples for the specified pixel.
	* @see #setPixel(int, int, double[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if dArray is too small to hold the output.
	*/
	@:overload public function getPixel(x : Int, y : Int, dArray : java.NativeArray<Float>, data : java.awt.image.DataBuffer) : java.NativeArray<Float>;
	
	/**
	* Returns all samples for a rectangle of pixels in an
	* int array, one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param iArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return the samples for the specified region of pixels.
	* @see #setPixels(int, int, int, int, int[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if iArray is too small to hold the output.
	*/
	@:overload public function getPixels(x : Int, y : Int, w : Int, h : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Returns all samples for a rectangle of pixels in a float
	* array, one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param fArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return the samples for the specified region of pixels.
	* @see #setPixels(int, int, int, int, float[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if fArray is too small to hold the output.
	*/
	@:overload public function getPixels(x : Int, y : Int, w : Int, h : Int, fArray : java.NativeArray<Single>, data : java.awt.image.DataBuffer) : java.NativeArray<Single>;
	
	/**
	* Returns all samples for a rectangle of pixels in a double
	* array, one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param dArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return the samples for the specified region of pixels.
	* @see #setPixels(int, int, int, int, double[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if dArray is too small to hold the output.
	*/
	@:overload public function getPixels(x : Int, y : Int, w : Int, h : Int, dArray : java.NativeArray<Float>, data : java.awt.image.DataBuffer) : java.NativeArray<Float>;
	
	/**
	* Returns the sample in a specified band for the pixel located
	* at (x,y) as an int.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param b         The band to return.
	* @param data      The DataBuffer containing the image data.
	* @return the sample in a specified band for the specified pixel.
	* @see #setSample(int, int, int, int, DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload @:abstract public function getSample(x : Int, y : Int, b : Int, data : java.awt.image.DataBuffer) : Int;
	
	/**
	* Returns the sample in a specified band
	* for the pixel located at (x,y) as a float.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param b         The band to return.
	* @param data      The DataBuffer containing the image data.
	* @return the sample in a specified band for the specified pixel.
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload public function getSampleFloat(x : Int, y : Int, b : Int, data : java.awt.image.DataBuffer) : Single;
	
	/**
	* Returns the sample in a specified band
	* for a pixel located at (x,y) as a double.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param b         The band to return.
	* @param data      The DataBuffer containing the image data.
	* @return the sample in a specified band for the specified pixel.
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload public function getSampleDouble(x : Int, y : Int, b : Int, data : java.awt.image.DataBuffer) : Float;
	
	/**
	* Returns the samples for a specified band for the specified rectangle
	* of pixels in an int array, one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param b         The band to return.
	* @param iArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return the samples for the specified band for the specified region
	*         of pixels.
	* @see #setSamples(int, int, int, int, int, int[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if iArray is too small to
	* hold the output.
	*/
	@:overload public function getSamples(x : Int, y : Int, w : Int, h : Int, b : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Returns the samples for a specified band for the specified rectangle
	* of pixels in a float array, one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param b         The band to return.
	* @param fArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return the samples for the specified band for the specified region
	*         of pixels.
	* @see #setSamples(int, int, int, int, int, float[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if fArray is too small to
	* hold the output.
	*/
	@:overload public function getSamples(x : Int, y : Int, w : Int, h : Int, b : Int, fArray : java.NativeArray<Single>, data : java.awt.image.DataBuffer) : java.NativeArray<Single>;
	
	/**
	* Returns the samples for a specified band for a specified rectangle
	* of pixels in a double array, one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param b         The band to return.
	* @param dArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return the samples for the specified band for the specified region
	*         of pixels.
	* @see #setSamples(int, int, int, int, int, double[], DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if dArray is too small to
	* hold the output.
	*/
	@:overload public function getSamples(x : Int, y : Int, w : Int, h : Int, b : Int, dArray : java.NativeArray<Float>, data : java.awt.image.DataBuffer) : java.NativeArray<Float>;
	
	/**
	* Sets a pixel in  the DataBuffer using an int array of samples for input.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param iArray    The input samples in an int array.
	* @param data      The DataBuffer containing the image data.
	* @see #getPixel(int, int, int[], DataBuffer)
	*
	* @throws NullPointerException if iArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if iArray is too small to hold the input.
	*/
	@:overload public function setPixel(x : Int, y : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a pixel in the DataBuffer using a float array of samples for input.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param fArray    The input samples in a float array.
	* @param data      The DataBuffer containing the image data.
	* @see #getPixel(int, int, float[], DataBuffer)
	*
	* @throws NullPointerException if fArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if fArray is too small to hold the input.
	*/
	@:overload public function setPixel(x : Int, y : Int, fArray : java.NativeArray<Single>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a pixel in the DataBuffer using a double array of samples
	* for input.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param dArray    The input samples in a double array.
	* @param data      The DataBuffer containing the image data.
	* @see #getPixel(int, int, double[], DataBuffer)
	*
	* @throws NullPointerException if dArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if fArray is too small to hold the input.
	*/
	@:overload public function setPixel(x : Int, y : Int, dArray : java.NativeArray<Float>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets all samples for a rectangle of pixels from an int array containing
	* one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param iArray    The input samples in an int array.
	* @param data      The DataBuffer containing the image data.
	* @see #getPixels(int, int, int, int, int[], DataBuffer)
	*
	* @throws NullPointerException if iArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if iArray is too small to hold the input.
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets all samples for a rectangle of pixels from a float array containing
	* one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param fArray    The input samples in a float array.
	* @param data      The DataBuffer containing the image data.
	* @see #getPixels(int, int, int, int, float[], DataBuffer)
	*
	* @throws NullPointerException if fArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if fArray is too small to hold the input.
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, fArray : java.NativeArray<Single>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets all samples for a rectangle of pixels from a double array
	* containing one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param dArray    The input samples in a double array.
	* @param data      The DataBuffer containing the image data.
	* @see #getPixels(int, int, int, int, double[], DataBuffer)
	*
	* @throws NullPointerException if dArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if dArray is too small to hold the input.
	*/
	@:overload public function setPixels(x : Int, y : Int, w : Int, h : Int, dArray : java.NativeArray<Float>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a sample in the specified band for the pixel located at (x,y)
	* in the DataBuffer using an int for input.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param b         The band to set.
	* @param s         The input sample as an int.
	* @param data      The DataBuffer containing the image data.
	* @see #getSample(int, int, int,  DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload @:abstract public function setSample(x : Int, y : Int, b : Int, s : Int, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a sample in the specified band for the pixel located at (x,y)
	* in the DataBuffer using a float for input.
	* The default implementation of this method casts the input
	* float sample to an int and then calls the
	* <code>setSample(int, int, int, DataBuffer)</code> method using
	* that int value.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param b         The band to set.
	* @param s         The input sample as a float.
	* @param data      The DataBuffer containing the image data.
	* @see #getSample(int, int, int, DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload public function setSample(x : Int, y : Int, b : Int, s : Single, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a sample in the specified band for the pixel located at (x,y)
	* in the DataBuffer using a double for input.
	* The default implementation of this method casts the input
	* double sample to an int and then calls the
	* <code>setSample(int, int, int, DataBuffer)</code> method using
	* that int value.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param b         The band to set.
	* @param s         The input sample as a double.
	* @param data      The DataBuffer containing the image data.
	* @see #getSample(int, int, int, DataBuffer)
	*
	* @throws NullPointerException if data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload public function setSample(x : Int, y : Int, b : Int, s : Float, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets the samples in the specified band for the specified rectangle
	* of pixels from an int array containing one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param b         The band to set.
	* @param iArray    The input samples in an int array.
	* @param data      The DataBuffer containing the image data.
	* @see #getSamples(int, int, int, int, int, int[], DataBuffer)
	*
	* @throws NullPointerException if iArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if iArray is too small to
	* hold the input.
	*/
	@:overload public function setSamples(x : Int, y : Int, w : Int, h : Int, b : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets the samples in the specified band for the specified rectangle
	* of pixels from a float array containing one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param b         The band to set.
	* @param fArray    The input samples in a float array.
	* @param data      The DataBuffer containing the image data.
	* @see #getSamples(int, int, int, int, int, float[], DataBuffer)
	*
	* @throws NullPointerException if fArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if fArray is too small to
	* hold the input.
	*/
	@:overload public function setSamples(x : Int, y : Int, w : Int, h : Int, b : Int, fArray : java.NativeArray<Single>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets the samples in the specified band for the specified rectangle
	* of pixels from a double array containing one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param b         The band to set.
	* @param dArray    The input samples in a double array.
	* @param data      The DataBuffer containing the image data.
	* @see #getSamples(int, int, int, int, int, double[], DataBuffer)
	*
	* @throws NullPointerException if dArray or data is null.
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if dArray is too small to
	* hold the input.
	*/
	@:overload public function setSamples(x : Int, y : Int, w : Int, h : Int, b : Int, dArray : java.NativeArray<Float>, data : java.awt.image.DataBuffer) : Void;
	
	/**
	*  Creates a SampleModel which describes data in this SampleModel's
	*  format, but with a different width and height.
	*  @param w the width of the image data
	*  @param h the height of the image data
	*  @return a <code>SampleModel</code> describing the same image
	*          data as this <code>SampleModel</code>, but with a
	*          different size.
	*/
	@:overload @:abstract public function createCompatibleSampleModel(w : Int, h : Int) : java.awt.image.SampleModel;
	
	/**
	* Creates a new SampleModel
	* with a subset of the bands of this
	* SampleModel.
	* @param bands the subset of bands of this <code>SampleModel</code>
	* @return a <code>SampleModel</code> with a subset of bands of this
	*         <code>SampleModel</code>.
	*/
	@:overload @:abstract public function createSubsetSampleModel(bands : java.NativeArray<Int>) : java.awt.image.SampleModel;
	
	/**
	* Creates a DataBuffer that corresponds to this SampleModel.
	* The DataBuffer's width and height will match this SampleModel's.
	* @return a <code>DataBuffer</code> corresponding to this
	*         <code>SampleModel</code>.
	*/
	@:overload @:abstract public function createDataBuffer() : java.awt.image.DataBuffer;
	
	/** Returns the size in bits of samples for all bands.
	*  @return the size of samples for all bands.
	*/
	@:overload @:abstract public function getSampleSize() : java.NativeArray<Int>;
	
	/** Returns the size in bits of samples for the specified band.
	*  @param band the specified band
	*  @return the size of the samples of the specified band.
	*/
	@:overload @:abstract public function getSampleSize(band : Int) : Int;
	
	
}

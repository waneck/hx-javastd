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
/**
* The <code>MultiPixelPackedSampleModel</code> class represents
* one-banded images and can pack multiple one-sample
* pixels into one data element.  Pixels are not allowed to span data elements.
* The data type can be DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT,
* or DataBuffer.TYPE_INT.  Each pixel must be a power of 2 number of bits
* and a power of 2 number of pixels must fit exactly in one data element.
* Pixel bit stride is equal to the number of bits per pixel.  Scanline
* stride is in data elements and the last several data elements might be
* padded with unused pixels.  Data bit offset is the offset in bits from
* the beginning of the {@link DataBuffer} to the first pixel and must be
* a multiple of pixel bit stride.
* <p>
* The following code illustrates extracting the bits for pixel
* <code>x,&nbsp;y</code> from <code>DataBuffer</code> <code>data</code>
* and storing the pixel data in data elements of type
* <code>dataType</code>:
* <pre>
*      int dataElementSize = DataBuffer.getDataTypeSize(dataType);
*      int bitnum = dataBitOffset + x*pixelBitStride;
*      int element = data.getElem(y*scanlineStride + bitnum/dataElementSize);
*      int shift = dataElementSize - (bitnum & (dataElementSize-1))
*                  - pixelBitStride;
*      int pixel = (element >> shift) & ((1 << pixelBitStride) - 1);
* </pre>
*/
extern class MultiPixelPackedSampleModel extends java.awt.image.SampleModel
{
	/**
	* Constructs a <code>MultiPixelPackedSampleModel</code> with the
	* specified data type, width, height and number of bits per pixel.
	* @param dataType  the data type for storing samples
	* @param w         the width, in pixels, of the region of
	*                  image data described
	* @param h         the height, in pixels, of the region of
	*                  image data described
	* @param numberOfBits the number of bits per pixel
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         either <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>, or
	*         <code>DataBuffer.TYPE_INT</code>
	*/
	@:overload @:public public function new(dataType : Int, w : Int, h : Int, numberOfBits : Int) : Void;
	
	/**
	* Constructs a <code>MultiPixelPackedSampleModel</code> with
	* specified data type, width, height, number of bits per pixel,
	* scanline stride and data bit offset.
	* @param dataType  the data type for storing samples
	* @param w         the width, in pixels, of the region of
	*                  image data described
	* @param h         the height, in pixels, of the region of
	*                  image data described
	* @param numberOfBits the number of bits per pixel
	* @param scanlineStride the line stride of the image data
	* @param dataBitOffset the data bit offset for the region of image
	*                  data described
	* @exception RasterFormatException if the number of bits per pixel
	*                  is not a power of 2 or if a power of 2 number of
	*                  pixels do not fit in one data element.
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         either <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>, or
	*         <code>DataBuffer.TYPE_INT</code>
	*/
	@:overload @:public public function new(dataType : Int, w : Int, h : Int, numberOfBits : Int, scanlineStride : Int, dataBitOffset : Int) : Void;
	
	/**
	* Creates a new <code>MultiPixelPackedSampleModel</code> with the
	* specified width and height.  The new
	* <code>MultiPixelPackedSampleModel</code> has the
	* same storage data type and number of bits per pixel as this
	* <code>MultiPixelPackedSampleModel</code>.
	* @param w the specified width
	* @param h the specified height
	* @return a {@link SampleModel} with the specified width and height
	* and with the same storage data type and number of bits per pixel
	* as this <code>MultiPixelPackedSampleModel</code>.
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	*/
	@:overload @:public override public function createCompatibleSampleModel(w : Int, h : Int) : java.awt.image.SampleModel;
	
	/**
	* Creates a <code>DataBuffer</code> that corresponds to this
	* <code>MultiPixelPackedSampleModel</code>.  The
	* <code>DataBuffer</code> object's data type and size
	* is consistent with this <code>MultiPixelPackedSampleModel</code>.
	* The <code>DataBuffer</code> has a single bank.
	* @return a <code>DataBuffer</code> with the same data type and
	* size as this <code>MultiPixelPackedSampleModel</code>.
	*/
	@:overload @:public override public function createDataBuffer() : java.awt.image.DataBuffer;
	
	/**
	* Returns the number of data elements needed to transfer one pixel
	* via the {@link #getDataElements} and {@link #setDataElements}
	* methods.  For a <code>MultiPixelPackedSampleModel</code>, this is
	* one.
	* @return the number of data elements.
	*/
	@:overload @:public override public function getNumDataElements() : Int;
	
	/**
	* Returns the number of bits per sample for all bands.
	* @return the number of bits per sample.
	*/
	@:overload @:public override public function getSampleSize() : java.NativeArray<Int>;
	
	/**
	* Returns the number of bits per sample for the specified band.
	* @param band the specified band
	* @return the number of bits per sample for the specified band.
	*/
	@:overload @:public override public function getSampleSize(band : Int) : Int;
	
	/**
	* Returns the offset of pixel (x,&nbsp;y) in data array elements.
	* @param x the X coordinate of the specified pixel
	* @param y the Y coordinate of the specified pixel
	* @return the offset of the specified pixel.
	*/
	@:overload @:public public function getOffset(x : Int, y : Int) : Int;
	
	/**
	*  Returns the offset, in bits, into the data element in which it is
	*  stored for the <code>x</code>th pixel of a scanline.
	*  This offset is the same for all scanlines.
	*  @param x the specified pixel
	*  @return the bit offset of the specified pixel.
	*/
	@:overload @:public public function getBitOffset(x : Int) : Int;
	
	/**
	* Returns the scanline stride.
	* @return the scanline stride of this
	* <code>MultiPixelPackedSampleModel</code>.
	*/
	@:overload @:public public function getScanlineStride() : Int;
	
	/**
	* Returns the pixel bit stride in bits.  This value is the same as
	* the number of bits per pixel.
	* @return the <code>pixelBitStride</code> of this
	* <code>MultiPixelPackedSampleModel</code>.
	*/
	@:overload @:public public function getPixelBitStride() : Int;
	
	/**
	* Returns the data bit offset in bits.
	* @return the <code>dataBitOffset</code> of this
	* <code>MultiPixelPackedSampleModel</code>.
	*/
	@:overload @:public public function getDataBitOffset() : Int;
	
	/**
	*  Returns the TransferType used to transfer pixels by way of the
	*  <code>getDataElements</code> and <code>setDataElements</code>
	*  methods. The TransferType might or might not be the same as the
	*  storage DataType.  The TransferType is one of
	*  DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT,
	*  or DataBuffer.TYPE_INT.
	*  @return the transfertype.
	*/
	@:overload @:public override public function getTransferType() : Int;
	
	/**
	* Creates a new <code>MultiPixelPackedSampleModel</code> with a
	* subset of the bands of this
	* <code>MultiPixelPackedSampleModel</code>.  Since a
	* <code>MultiPixelPackedSampleModel</code> only has one band, the
	* bands argument must have a length of one and indicate the zeroth
	* band.
	* @param bands the specified bands
	* @return a new <code>SampleModel</code> with a subset of bands of
	* this <code>MultiPixelPackedSampleModel</code>.
	* @exception RasterFormatException if the number of bands requested
	* is not one.
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	*/
	@:overload @:public override public function createSubsetSampleModel(bands : java.NativeArray<Int>) : java.awt.image.SampleModel;
	
	/**
	* Returns as <code>int</code> the sample in a specified band for the
	* pixel located at (x,&nbsp;y).  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if the
	* coordinates are not in bounds.
	* @param x         the X coordinate of the specified pixel
	* @param y         the Y coordinate of the specified pixel
	* @param b         the band to return, which is assumed to be 0
	* @param data      the <code>DataBuffer</code> containing the image
	*                  data
	* @return the specified band containing the sample of the specified
	* pixel.
	* @exception ArrayIndexOutOfBoundException if the specified
	*          coordinates are not in bounds.
	* @see #setSample(int, int, int, int, DataBuffer)
	*/
	@:overload @:public override public function getSample(x : Int, y : Int, b : Int, data : java.awt.image.DataBuffer) : Int;
	
	/**
	* Sets a sample in the specified band for the pixel located at
	* (x,&nbsp;y) in the <code>DataBuffer</code> using an
	* <code>int</code> for input.
	* An <code>ArrayIndexOutOfBoundsException</code> is thrown if the
	* coordinates are not in bounds.
	* @param x the X coordinate of the specified pixel
	* @param y the Y coordinate of the specified pixel
	* @param b the band to return, which is assumed to be 0
	* @param s the input sample as an <code>int</code>
	* @param data the <code>DataBuffer</code> where image data is stored
	* @exception ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds.
	* @see #getSample(int, int, int, DataBuffer)
	*/
	@:overload @:public override public function setSample(x : Int, y : Int, b : Int, s : Int, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Returns data for a single pixel in a primitive array of type
	* TransferType.  For a <code>MultiPixelPackedSampleModel</code>,
	* the array has one element, and the type is the smallest of
	* DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT, or DataBuffer.TYPE_INT
	* that can hold a single pixel.  Generally, <code>obj</code>
	* should be passed in as <code>null</code>, so that the
	* <code>Object</code> is created automatically and is the
	* correct primitive data type.
	* <p>
	* The following code illustrates transferring data for one pixel from
	* <code>DataBuffer</code> <code>db1</code>, whose storage layout is
	* described by <code>MultiPixelPackedSampleModel</code>
	* <code>mppsm1</code>, to <code>DataBuffer</code> <code>db2</code>,
	* whose storage layout is described by
	* <code>MultiPixelPackedSampleModel</code> <code>mppsm2</code>.
	* The transfer is generally more efficient than using
	* <code>getPixel</code> or <code>setPixel</code>.
	* <pre>
	*       MultiPixelPackedSampleModel mppsm1, mppsm2;
	*       DataBufferInt db1, db2;
	*       mppsm2.setDataElements(x, y, mppsm1.getDataElements(x, y, null,
	*                              db1), db2);
	* </pre>
	* Using <code>getDataElements</code> or <code>setDataElements</code>
	* to transfer between two <code>DataBuffer/SampleModel</code> pairs
	* is legitimate if the <code>SampleModels</code> have the same number
	* of bands, corresponding bands have the same number of
	* bits per sample, and the TransferTypes are the same.
	* <p>
	* If <code>obj</code> is not <code>null</code>, it should be a
	* primitive array of type TransferType.  Otherwise, a
	* <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if the
	* coordinates are not in bounds, or if <code>obj</code> is not
	* <code>null</code> and is not large enough to hold the pixel data.
	* @param x the X coordinate of the specified pixel
	* @param y the Y coordinate of the specified pixel
	* @param obj a primitive array in which to return the pixel data or
	*          <code>null</code>.
	* @param data the <code>DataBuffer</code> containing the image data.
	* @return an <code>Object</code> containing data for the specified
	*  pixel.
	* @exception ClassCastException if <code>obj</code> is not a
	*  primitive array of type TransferType or is not <code>null</code>
	* @exception ArrayIndexOutOfBoundsException if the coordinates are
	* not in bounds, or if <code>obj</code> is not <code>null</code> or
	* not large enough to hold the pixel data
	* @see #setDataElements(int, int, Object, DataBuffer)
	*/
	@:overload @:public override public function getDataElements(x : Int, y : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Dynamic;
	
	/**
	* Returns the specified single band pixel in the first element
	* of an <code>int</code> array.
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if the
	* coordinates are not in bounds.
	* @param x the X coordinate of the specified pixel
	* @param y the Y coordinate of the specified pixel
	* @param iArray the array containing the pixel to be returned or
	*  <code>null</code>
	* @param data the <code>DataBuffer</code> where image data is stored
	* @return an array containing the specified pixel.
	* @exception ArrayIndexOutOfBoundsException if the coordinates
	*  are not in bounds
	* @see #setPixel(int, int, int[], DataBuffer)
	*/
	@:overload @:public override public function getPixel(x : Int, y : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Sets the data for a single pixel in the specified
	* <code>DataBuffer</code> from a primitive array of type
	* TransferType.  For a <code>MultiPixelPackedSampleModel</code>,
	* only the first element of the array holds valid data,
	* and the type must be the smallest of
	* DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT, or DataBuffer.TYPE_INT
	* that can hold a single pixel.
	* <p>
	* The following code illustrates transferring data for one pixel from
	* <code>DataBuffer</code> <code>db1</code>, whose storage layout is
	* described by <code>MultiPixelPackedSampleModel</code>
	* <code>mppsm1</code>, to <code>DataBuffer</code> <code>db2</code>,
	* whose storage layout is described by
	* <code>MultiPixelPackedSampleModel</code> <code>mppsm2</code>.
	* The transfer is generally more efficient than using
	* <code>getPixel</code> or <code>setPixel</code>.
	* <pre>
	*       MultiPixelPackedSampleModel mppsm1, mppsm2;
	*       DataBufferInt db1, db2;
	*       mppsm2.setDataElements(x, y, mppsm1.getDataElements(x, y, null,
	*                              db1), db2);
	* </pre>
	* Using <code>getDataElements</code> or <code>setDataElements</code> to
	* transfer between two <code>DataBuffer/SampleModel</code> pairs is
	* legitimate if the <code>SampleModel</code> objects have
	* the same number of bands, corresponding bands have the same number of
	* bits per sample, and the TransferTypes are the same.
	* <p>
	* <code>obj</code> must be a primitive array of type TransferType.
	* Otherwise, a <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if the
	* coordinates are not in bounds, or if <code>obj</code> is not large
	* enough to hold the pixel data.
	* @param x the X coordinate of the pixel location
	* @param y the Y coordinate of the pixel location
	* @param obj a primitive array containing pixel data
	* @param data the <code>DataBuffer</code> containing the image data
	* @see #getDataElements(int, int, Object, DataBuffer)
	*/
	@:overload @:public override public function setDataElements(x : Int, y : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a pixel in the <code>DataBuffer</code> using an
	* <code>int</code> array for input.
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if
	* the coordinates are not in bounds.
	* @param x the X coordinate of the pixel location
	* @param y the Y coordinate of the pixel location
	* @param iArray the input pixel in an <code>int</code> array
	* @param data the <code>DataBuffer</code> containing the image data
	* @see #getPixel(int, int, int[], DataBuffer)
	*/
	@:overload @:public override public function setPixel(x : Int, y : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}

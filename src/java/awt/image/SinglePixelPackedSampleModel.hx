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
extern class SinglePixelPackedSampleModel extends java.awt.image.SampleModel
{
	/**
	* Constructs a SinglePixelPackedSampleModel with bitMasks.length bands.
	* Each sample is stored in a data array element in the position of
	* its corresponding bit mask.  Each bit mask must be contiguous and
	* masks must not overlap. Bit masks exceeding data type capacity are
	* truncated.
	* @param dataType  The data type for storing samples.
	* @param w         The width (in pixels) of the region of the
	*                  image data described.
	* @param h         The height (in pixels) of the region of the
	*                  image data described.
	* @param bitMasks  The bit masks for all bands.
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         either <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>, or
	*         <code>DataBuffer.TYPE_INT</code>
	*/
	@:overload @:public public function new(dataType : Int, w : Int, h : Int, bitMasks : java.NativeArray<Int>) : Void;
	
	/**
	* Constructs a SinglePixelPackedSampleModel with bitMasks.length bands
	* and a scanline stride equal to scanlineStride data array elements.
	* Each sample is stored in a data array element in the position of
	* its corresponding bit mask.  Each bit mask must be contiguous and
	* masks must not overlap. Bit masks exceeding data type capacity are
	* truncated.
	* @param dataType  The data type for storing samples.
	* @param w         The width (in pixels) of the region of
	*                  image data described.
	* @param h         The height (in pixels) of the region of
	*                  image data described.
	* @param scanlineStride The line stride of the image data.
	* @param bitMasks The bit masks for all bands.
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	* @throws IllegalArgumentException if any mask in
	*         <code>bitMask</code> is not contiguous
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         either <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>, or
	*         <code>DataBuffer.TYPE_INT</code>
	*/
	@:overload @:public public function new(dataType : Int, w : Int, h : Int, scanlineStride : Int, bitMasks : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the number of data elements needed to transfer one pixel
	* via the getDataElements and setDataElements methods.
	* For a SinglePixelPackedSampleModel, this is one.
	*/
	@:overload @:public override public function getNumDataElements() : Int;
	
	/**
	* Creates a new SinglePixelPackedSampleModel with the specified
	* width and height.  The new SinglePixelPackedSampleModel will have the
	* same storage data type and bit masks as this
	* SinglePixelPackedSampleModel.
	* @param w the width of the resulting <code>SampleModel</code>
	* @param h the height of the resulting <code>SampleModel</code>
	* @return a <code>SinglePixelPackedSampleModel</code> with the
	*         specified width and height.
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	*/
	@:overload @:public override public function createCompatibleSampleModel(w : Int, h : Int) : java.awt.image.SampleModel;
	
	/**
	* Creates a DataBuffer that corresponds to this
	* SinglePixelPackedSampleModel.  The DataBuffer's data type and size
	* will be consistent with this SinglePixelPackedSampleModel.  The
	* DataBuffer will have a single bank.
	*/
	@:overload @:public override public function createDataBuffer() : java.awt.image.DataBuffer;
	
	/** Returns the number of bits per sample for all bands. */
	@:overload @:public override public function getSampleSize() : java.NativeArray<Int>;
	
	/** Returns the number of bits per sample for the specified band. */
	@:overload @:public override public function getSampleSize(band : Int) : Int;
	
	/** Returns the offset (in data array elements) of pixel (x,y).
	*  The data element containing pixel <code>x,y</code>
	*  can be retrieved from a DataBuffer <code>data</code> with a
	*  SinglePixelPackedSampleModel <code>sppsm</code> as:
	* <pre>
	*        data.getElem(sppsm.getOffset(x, y));
	* </pre>
	* @param x the X coordinate of the specified pixel
	* @param y the Y coordinate of the specified pixel
	* @return the offset of the specified pixel.
	*/
	@:overload @:public public function getOffset(x : Int, y : Int) : Int;
	
	/** Returns the bit offsets into the data array element representing
	*  a pixel for all bands.
	*  @return the bit offsets representing a pixel for all bands.
	*/
	@:overload @:public public function getBitOffsets() : java.NativeArray<Int>;
	
	/** Returns the bit masks for all bands.
	*  @return the bit masks for all bands.
	*/
	@:overload @:public public function getBitMasks() : java.NativeArray<Int>;
	
	/** Returns the scanline stride of this SinglePixelPackedSampleModel.
	*  @return the scanline stride of this
	*          <code>SinglePixelPackedSampleModel</code>.
	*/
	@:overload @:public public function getScanlineStride() : Int;
	
	/**
	* This creates a new SinglePixelPackedSampleModel with a subset of the
	* bands of this SinglePixelPackedSampleModel.  The new
	* SinglePixelPackedSampleModel can be used with any DataBuffer that the
	* existing SinglePixelPackedSampleModel can be used with.  The new
	* SinglePixelPackedSampleModel/DataBuffer combination will represent
	* an image with a subset of the bands of the original
	* SinglePixelPackedSampleModel/DataBuffer combination.
	* @exception RasterFormatException if the length of the bands argument is
	*                                  greater than the number of bands in
	*                                  the sample model.
	*/
	@:overload @:public override public function createSubsetSampleModel(bands : java.NativeArray<Int>) : java.awt.image.SampleModel;
	
	/**
	* Returns data for a single pixel in a primitive array of type
	* TransferType.  For a SinglePixelPackedSampleModel, the array will
	* have one element, and the type will be the same as the storage
	* data type.  Generally, obj
	* should be passed in as null, so that the Object will be created
	* automatically and will be of the right primitive data type.
	* <p>
	* The following code illustrates transferring data for one pixel from
	* DataBuffer <code>db1</code>, whose storage layout is described by
	* SinglePixelPackedSampleModel <code>sppsm1</code>, to
	* DataBuffer <code>db2</code>, whose storage layout is described by
	* SinglePixelPackedSampleModel <code>sppsm2</code>.
	* The transfer will generally be more efficient than using
	* getPixel/setPixel.
	* <pre>
	*       SinglePixelPackedSampleModel sppsm1, sppsm2;
	*       DataBufferInt db1, db2;
	*       sppsm2.setDataElements(x, y, sppsm1.getDataElements(x, y, null,
	*                              db1), db2);
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
	* @return the data for the specified pixel.
	* @see #setDataElements(int, int, Object, DataBuffer)
	*/
	@:overload @:public override public function getDataElements(x : Int, y : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Dynamic;
	
	/**
	* Returns all samples in for the specified pixel in an int array.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param iArray    If non-null, returns the samples in this array
	* @param data      The DataBuffer containing the image data.
	* @return all samples for the specified pixel.
	* @see #setPixel(int, int, int[], DataBuffer)
	*/
	@:overload @:public override public function getPixel(x : Int, y : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Returns all samples for the specified rectangle of pixels in
	* an int array, one sample per array element.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the upper left pixel location.
	* @param y         The Y coordinate of the upper left pixel location.
	* @param w         The width of the pixel rectangle.
	* @param h         The height of the pixel rectangle.
	* @param iArray    If non-null, returns the samples in this array.
	* @param data      The DataBuffer containing the image data.
	* @return all samples for the specified region of pixels.
	* @see #setPixels(int, int, int, int, int[], DataBuffer)
	*/
	@:overload @:public override public function getPixels(x : Int, y : Int, w : Int, h : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Returns as int the sample in a specified band for the pixel
	* located at (x,y).
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param b         The band to return.
	* @param data      The DataBuffer containing the image data.
	* @return the sample in a specified band for the specified
	*         pixel.
	* @see #setSample(int, int, int, int, DataBuffer)
	*/
	@:overload @:public override public function getSample(x : Int, y : Int, b : Int, data : java.awt.image.DataBuffer) : Int;
	
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
	* @return the samples for the specified band for the specified
	*         region of pixels.
	* @see #setSamples(int, int, int, int, int, int[], DataBuffer)
	*/
	@:overload @:public override public function getSamples(x : Int, y : Int, w : Int, h : Int, b : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : java.NativeArray<Int>;
	
	/**
	* Sets the data for a single pixel in the specified DataBuffer from a
	* primitive array of type TransferType.  For a
	* SinglePixelPackedSampleModel, only the first element of the array
	* will hold valid data, and the type of the array must be the same as
	* the storage data type of the SinglePixelPackedSampleModel.
	* <p>
	* The following code illustrates transferring data for one pixel from
	* DataBuffer <code>db1</code>, whose storage layout is described by
	* SinglePixelPackedSampleModel <code>sppsm1</code>,
	* to DataBuffer <code>db2</code>, whose storage layout is described by
	* SinglePixelPackedSampleModel <code>sppsm2</code>.
	* The transfer will generally be more efficient than using
	* getPixel/setPixel.
	* <pre>
	*       SinglePixelPackedSampleModel sppsm1, sppsm2;
	*       DataBufferInt db1, db2;
	*       sppsm2.setDataElements(x, y, sppsm1.getDataElements(x, y, null,
	*                              db1), db2);
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
	* @see #getDataElements(int, int, Object, DataBuffer)
	*/
	@:overload @:public override public function setDataElements(x : Int, y : Int, obj : Dynamic, data : java.awt.image.DataBuffer) : Void;
	
	/**
	* Sets a pixel in the DataBuffer using an int array of samples for input.
	* ArrayIndexOutOfBoundsException may be thrown if the coordinates are
	* not in bounds.
	* @param x         The X coordinate of the pixel location.
	* @param y         The Y coordinate of the pixel location.
	* @param iArray    The input samples in an int array.
	* @param data      The DataBuffer containing the image data.
	* @see #getPixel(int, int, int[], DataBuffer)
	*/
	@:overload @:public override public function setPixel(x : Int, y : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
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
	*/
	@:overload @:public override public function setPixels(x : Int, y : Int, w : Int, h : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
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
	* @see #getSample(int, int, int, DataBuffer)
	*/
	@:overload @:public override public function setSample(x : Int, y : Int, b : Int, s : Int, data : java.awt.image.DataBuffer) : Void;
	
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
	*/
	@:overload @:public override public function setSamples(x : Int, y : Int, w : Int, h : Int, b : Int, iArray : java.NativeArray<Int>, data : java.awt.image.DataBuffer) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}

package sun.awt.image;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ShortInterleavedRaster extends sun.awt.image.ShortComponentRaster
{
	/**
	*  Constructs a ShortInterleavedRaster with the given SampleModel.
	*  The Raster's upper left corner is origin and it is the same
	*  size as the SampleModel.  A DataBuffer large enough to describe the
	*  Raster is automatically created.  SampleModel must be of type
	*  PixelInterleavedSampleModel or SinglePixelPackedSampleModel.
	*  @param sampleModel     The SampleModel that specifies the layout.
	*  @param origin          The Point that specified the origin.
	*/
	@:overload public function new(sampleModel : java.awt.image.SampleModel, origin : java.awt.Point) : Void;
	
	/**
	* Constructs a ShortInterleavedRaster with the given SampleModel
	* and DataBuffer.  The Raster's upper left corner is origin and
	* it is the same sizes the SampleModel.  The DataBuffer is not
	* initialized and must be a DataBufferUShort compatible with SampleModel.
	* SampleModel must be of type PixelInterleavedSampleModel or
	* SinglePixelPackedSampleModel.
	* @param sampleModel     The SampleModel that specifies the layout.
	* @param dataBuffer      The DataBufferUShort that contains the image data.
	* @param origin          The Point that specifies the origin.
	*/
	@:overload public function new(sampleModel : java.awt.image.SampleModel, dataBuffer : java.awt.image.DataBuffer, origin : java.awt.Point) : Void;
	
	/**
	* Constructs a ShortInterleavedRaster with the given SampleModel,
	* DataBuffer, and parent.  DataBuffer must be a DataBufferUShort and
	* SampleModel must be of type PixelInterleavedSampleModel or
	* SinglePixelPackedSampleModel.  When translated into the base Raster's
	* coordinate system, aRegion must be contained by the base Raster.
	* Origin is the coodinate in the new Raster's coordinate system of
	* the origin of the base Raster.  (The base Raster is the Raster's
	* ancestor which has no parent.)
	*
	* Note that this constructor should generally be called by other
	* constructors or create methods, it should not be used directly.
	* @param sampleModel     The SampleModel that specifies the layout.
	* @param dataBuffer      The DataBufferUShort that contains the image data.
	* @param aRegion         The Rectangle that specifies the image area.
	* @param origin          The Point that specifies the origin.
	* @param parent          The parent (if any) of this raster.
	*/
	@:overload public function new(sampleModel : java.awt.image.SampleModel, dataBuffer : java.awt.image.DataBuffer, aRegion : java.awt.Rectangle, origin : java.awt.Point, parent : ShortInterleavedRaster) : Void;
	
	/**
	* Returns a copy of the data offsets array. For each band the data offset
	* is the index into the band's data array, of the first sample of the
	* band.
	*/
	@:overload override public function getDataOffsets() : java.NativeArray<Int>;
	
	/**
	* Returns the data offset for the specified band.  The data offset
	* is the index into the data array in which the first sample
	* of the first scanline is stored.
	* @param band  The band whose offset is returned.
	*/
	@:overload override public function getDataOffset(band : Int) : Int;
	
	/**
	* Returns the scanline stride -- the number of data array elements between
	* a given sample and the same sample in the same column of the next row.
	*/
	@:overload override public function getScanlineStride() : Int;
	
	/**
	* Returns pixel stride -- the number of data array elements  between two
	* samples for the same band on the same scanline.
	*/
	@:overload override public function getPixelStride() : Int;
	
	/**
	* Returns a reference to the data array.
	*/
	@:overload override public function getDataStorage() : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Returns the data elements for all bands at the specified
	* location.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinate is out of bounds.
	* A ClassCastException will be thrown if the input object is non null
	* and references anything other than an array of transferType.
	* @param x        The X coordinate of the pixel location.
	* @param y        The Y coordinate of the pixel location.
	* @param outData  An object reference to an array of type defined by
	*                 getTransferType() and length getNumDataElements().
	*                 If null an array of appropriate type and size will be
	*                 allocated.
	* @return         An object reference to an array of type defined by
	*                 getTransferType() with the request pixel data.
	*/
	@:overload override public function getDataElements(x : Int, y : Int, obj : Dynamic) : Dynamic;
	
	/**
	* Returns an array  of data elements from the specified rectangular
	* region.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinates are out of bounds.
	* A ClassCastException will be thrown if the input object is non null
	* and references anything other than an array of transferType.
	* <pre>
	*       short[] bandData = (short[])Raster.getDataElements(x, y, w, h, null);
	*       int numDataElements = Raster.getBands();
	*       short[] pixel = new short[numDataElements];
	*       // To find the data element at location (x2, y2)
	*       System.arraycopy(bandData, ((y2-y)*w + (x2-x))*numDataElements,
	*                        pixel, 0, numDataElements);
	* </pre>
	* @param x        The X coordinate of the upper left pixel location.
	* @param y        The Y coordinate of the upper left pixel location.
	* @param width    Width of the pixel rectangle.
	* @param height   Height of the pixel rectangle.
	* @param outData  An object reference to an array of type defined by
	*                 getTransferType() and length w*h*getNumDataElements().
	*                 If null an array of appropriate type and size will be
	*                 allocated.
	* @return         An object reference to an array of type defined by
	*                 getTransferType() with the request pixel data.
	*/
	@:overload override public function getDataElements(x : Int, y : Int, w : Int, h : Int, obj : Dynamic) : Dynamic;
	
	/**
	* Returns a short integer array of data elements from the
	* specified rectangular region.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinates are out of bounds.
	* <pre>
	*       short[] bandData = Raster.getShortData(x, y, w, h, null);
	*       // To find the data element at location (x2, y2)
	*       short dataElenent = bandData[((y2-y)*w + (x2-x))];
	* </pre>
	* @param x        The X coordinate of the upper left pixel location.
	* @param y        The Y coordinate of the upper left pixel location.
	* @param width    Width of the sample rectangle.
	* @param height   Height of the sample rectangle.
	* @param band     The band to return.
	* @param outData  If non-null, data elements for all bands
	*                 at the specified location are returned in this array.
	* @return         Data array with data elements for all bands.
	*/
	@:overload override public function getShortData(x : Int, y : Int, w : Int, h : Int, band : Int, outData : java.NativeArray<java.StdTypes.Int16>) : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Returns a short integer array  of data elements from the
	* specified rectangular region.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinates are out of bounds.
	* <pre>
	*       short[] bandData = Raster.getShortData(x, y, w, h, null);
	*       int numDataElements = Raster.getNumBands();
	*       short[] pixel = new short[numDataElements];
	*       // To find the data element at location (x2, y2)
	*       System.arraycopy(bandData, ((y2-y)*w + (x2-x))*numDataElements,
	*                        pixel, 0, numDataElements);
	* </pre>
	* @param x        The X coordinate of the upper left pixel location.
	* @param y        The Y coordinate of the upper left pixel location.
	* @param width    Width of the pixel rectangle.
	* @param height   Height of the pixel rectangle.
	* @param outData  If non-null, data elements for all bands
	*                 at the specified location are returned in this array.
	* @return         Data array with data elements for all bands.
	*/
	@:overload override public function getShortData(x : Int, y : Int, w : Int, h : Int, outData : java.NativeArray<java.StdTypes.Int16>) : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Stores the data elements for all bands at the specified location.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinate is out of bounds.
	* A ClassCastException will be thrown if the input object is non null
	* and references anything other than an array of transferType.
	* @param x        The X coordinate of the pixel location.
	* @param y        The Y coordinate of the pixel location.
	* @param inData   An object reference to an array of type defined by
	*                 getTransferType() and length getNumDataElements()
	*                 containing the pixel data to place at x,y.
	*/
	@:overload override public function setDataElements(x : Int, y : Int, obj : Dynamic) : Void;
	
	/**
	* Stores the Raster data at the specified location.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinates are out of bounds.
	* @param x          The X coordinate of the pixel location.
	* @param y          The Y coordinate of the pixel location.
	* @param inRaster   Raster of data to place at x,y location.
	*/
	@:overload override public function setDataElements(x : Int, y : Int, inRaster : java.awt.image.Raster) : Void;
	
	/**
	* Stores an array of data elements into the specified rectangular
	* region.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinates are out of bounds.
	* A ClassCastException will be thrown if the input object is non null
	* and references anything other than an array of transferType.
	* The data elements in the
	* data array are assumed to be packed.  That is, a data element
	* for the nth band at location (x2, y2) would be found at:
	* <pre>
	*      inData[((y2-y)*w + (x2-x))*numDataElements + n]
	* </pre>
	* @param x        The X coordinate of the upper left pixel location.
	* @param y        The Y coordinate of the upper left pixel location.
	* @param w        Width of the pixel rectangle.
	* @param h        Height of the pixel rectangle.
	* @param inData   An object reference to an array of type defined by
	*                 getTransferType() and length w*h*getNumDataElements()
	*                 containing the pixel data to place between x,y and
	*                 x+h, y+h.
	*/
	@:overload override public function setDataElements(x : Int, y : Int, w : Int, h : Int, obj : Dynamic) : Void;
	
	/**
	* Stores a short integer array of data elements into the
	* specified rectangular region.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinates are out of bounds.
	* The data elements in the
	* data array are assumed to be packed.  That is, a data element
	* at location (x2, y2) would be found at:
	* <pre>
	*      inData[((y2-y)*w + (x2-x))]
	* </pre>
	* @param x        The X coordinate of the upper left pixel location.
	* @param y        The Y coordinate of the upper left pixel location.
	* @param w        Width of the pixel rectangle.
	* @param h        Height of the pixel rectangle.
	* @param band     The band to set.
	* @param inData   The data elements to be stored.
	*/
	@:overload override public function putShortData(x : Int, y : Int, w : Int, h : Int, band : Int, inData : java.NativeArray<java.StdTypes.Int16>) : Void;
	
	/**
	* Stores a short integer array of data elements into the
	* specified rectangular region.
	* An ArrayIndexOutOfBounds exception will be thrown at runtime
	* if the pixel coordinates are out of bounds.
	* The data elements in the
	* data array are assumed to be packed.  That is, a data element
	* for the nth band at location (x2, y2) would be found at:
	* <pre>
	*      inData[((y2-y)*w + (x2-x))*numDataElements + n]
	* </pre>
	* @param x        The X coordinate of the upper left pixel location.
	* @param y        The Y coordinate of the upper left pixel location.
	* @param w        Width of the pixel rectangle.
	* @param h        Height of the pixel rectangle.
	* @param inData   The data elements to be stored.
	*/
	@:overload override public function putShortData(x : Int, y : Int, w : Int, h : Int, inData : java.NativeArray<java.StdTypes.Int16>) : Void;
	
	/**
	* Creates a subraster given a region of the raster.  The x and y
	* coordinates specify the horizontal and vertical offsets
	* from the upper-left corner of this raster to the upper-left corner
	* of the subraster.  A subset of the bands of the parent Raster may
	* be specified.  If this is null, then all the bands are present in the
	* subRaster. A translation to the subRaster may also be specified.
	* Note that the subraster will reference the same
	* band objects as the parent raster, but using different offsets.
	* @param x               X offset.
	* @param y               Y offset.
	* @param width           Width (in pixels) of the subraster.
	* @param height          Height (in pixels) of the subraster.
	* @param x0              Translated X origin of the subraster.
	* @param y0              Translated Y origin of the subraster.
	* @param bandList        Array of band indices.
	* @exception RasterFormatException
	*            if the specified bounding box is outside of the parent raster.
	*/
	@:overload override public function createChild(x : Int, y : Int, width : Int, height : Int, x0 : Int, y0 : Int, bandList : java.NativeArray<Int>) : java.awt.image.Raster;
	
	/**
	* Creates a Writable subRaster given a region of the Raster. The x and y
	* coordinates specify the horizontal and vertical offsets
	* from the upper-left corner of this Raster to the upper-left corner
	* of the subRaster.  A subset of the bands of the parent Raster may
	* be specified.  If this is null, then all the bands are present in the
	* subRaster. A translation to the subRaster may also be specified.
	* Note that the subRaster will reference the same
	* DataBuffers as the parent Raster, but using different offsets.
	* @param x               X offset.
	* @param y               Y offset.
	* @param width           Width (in pixels) of the subraster.
	* @param height          Height (in pixels) of the subraster.
	* @param x0              Translated X origin of the subraster.
	* @param y0              Translated Y origin of the subraster.
	* @param bandList        Array of band indices.
	* @exception RasterFormatException
	*            if the specified bounding box is outside of the parent Raster.
	*/
	@:overload override public function createWritableChild(x : Int, y : Int, width : Int, height : Int, x0 : Int, y0 : Int, bandList : java.NativeArray<Int>) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster with the same layout but using a different
	* width and height, and with new zeroed data arrays.
	*/
	@:overload override public function createCompatibleWritableRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster with the same layout and the same
	* width and height, and with new zeroed data arrays.  If
	* the Raster is a subRaster, this will call
	* createCompatibleRaster(width, height).
	*/
	@:overload override public function createCompatibleWritableRaster() : java.awt.image.WritableRaster;
	
	@:overload override public function toString() : String;
	
	
}

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
extern class Raster
{
	/**
	* The SampleModel that describes how pixels from this Raster
	* are stored in the DataBuffer.
	*/
	private var sampleModel : java.awt.image.SampleModel;
	
	/** The DataBuffer that stores the image data. */
	private var dataBuffer : java.awt.image.DataBuffer;
	
	/** The X coordinate of the upper-left pixel of this Raster. */
	private var minX : Int;
	
	/** The Y coordinate of the upper-left pixel of this Raster. */
	private var minY : Int;
	
	/** The width of this Raster. */
	private var width : Int;
	
	/** The height of this Raster. */
	private var height : Int;
	
	/**
	* The X translation from the coordinate space of the
	* Raster's SampleModel to that of the Raster.
	*/
	private var sampleModelTranslateX : Int;
	
	/**
	* The Y translation from the coordinate space of the
	* Raster's SampleModel to that of the Raster.
	*/
	private var sampleModelTranslateY : Int;
	
	/** The number of bands in the Raster. */
	private var numBands : Int;
	
	/** The number of DataBuffer data elements per pixel. */
	private var numDataElements : Int;
	
	/** The parent of this Raster, or null. */
	private var parent : java.awt.image.Raster;
	
	/**
	* Creates a Raster based on a PixelInterleavedSampleModel with the
	* specified data type, width, height, and number of bands.
	*
	* <p> The upper left corner of the Raster is given by the
	* location argument.  If location is null, (0, 0) will be used.
	* The dataType parameter should be one of the enumerated values
	* defined in the DataBuffer class.
	*
	* <p> Note that interleaved <code>DataBuffer.TYPE_INT</code>
	* Rasters are not supported.  To create a 1-band Raster of type
	* <code>DataBuffer.TYPE_INT</code>, use
	* Raster.createPackedRaster().
	* <p> The only dataTypes supported currently are TYPE_BYTE
	* and TYPE_USHORT.
	* @param dataType  the data type for storing samples
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param bands     the number of bands
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified data type,
	*         width, height and number of bands.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	*/
	@:overload public static function createInterleavedRaster(dataType : Int, w : Int, h : Int, bands : Int, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a PixelInterleavedSampleModel with the
	* specified data type, width, height, scanline stride, pixel
	* stride, and band offsets.  The number of bands is inferred from
	* bandOffsets.length.
	*
	* <p> The upper left corner of the Raster is given by the
	* location argument.  If location is null, (0, 0) will be used.
	* The dataType parameter should be one of the enumerated values
	* defined in the DataBuffer class.
	*
	* <p> Note that interleaved <code>DataBuffer.TYPE_INT</code>
	* Rasters are not supported.  To create a 1-band Raster of type
	* <code>DataBuffer.TYPE_INT</code>, use
	* Raster.createPackedRaster().
	* <p> The only dataTypes supported currently are TYPE_BYTE
	* and TYPE_USHORT.
	* @param dataType  the data type for storing samples
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param scanlineStride the line stride of the image data
	* @param pixelStride the pixel stride of the image data
	* @param bandOffsets the offsets of all bands
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified data type,
	*         width, height, scanline stride, pixel stride and band
	*         offsets.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types, which are
	*         <code>DataBuffer.TYPE_BYTE</code>, or
	*         <code>DataBuffer.TYPE_USHORT</code>.
	*/
	@:overload public static function createInterleavedRaster(dataType : Int, w : Int, h : Int, scanlineStride : Int, pixelStride : Int, bandOffsets : java.NativeArray<Int>, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a BandedSampleModel with the
	* specified data type, width, height, and number of bands.
	*
	* <p> The upper left corner of the Raster is given by the
	* location argument.  If location is null, (0, 0) will be used.
	* The dataType parameter should be one of the enumerated values
	* defined in the DataBuffer class.
	*
	* <p> The only dataTypes supported currently are TYPE_BYTE, TYPE_USHORT,
	* and TYPE_INT.
	* @param dataType  the data type for storing samples
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param bands     the number of bands
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified data type,
	*         width, height and number of bands.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws ArrayIndexOutOfBoundsException if <code>bands</code>
	*         is less than 1
	*/
	@:overload public static function createBandedRaster(dataType : Int, w : Int, h : Int, bands : Int, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a BandedSampleModel with the
	* specified data type, width, height, scanline stride, bank
	* indices and band offsets.  The number of bands is inferred from
	* bankIndices.length and bandOffsets.length, which must be the
	* same.
	*
	* <p> The upper left corner of the Raster is given by the
	* location argument.  The dataType parameter should be one of the
	* enumerated values defined in the DataBuffer class.
	*
	* <p> The only dataTypes supported currently are TYPE_BYTE, TYPE_USHORT,
	* and TYPE_INT.
	* @param dataType  the data type for storing samples
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param scanlineStride the line stride of the image data
	* @param bankIndices the bank indices for each band
	* @param bandOffsets the offsets of all bands
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified data type,
	*         width, height, scanline stride, bank indices and band
	*         offsets.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types, which are
	*         <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>
	*         or <code>DataBuffer.TYPE_INT</code>
	* @throws ArrayIndexOutOfBoundsException if <code>bankIndices</code>
	*         or <code>bandOffsets</code> is <code>null</code>
	*/
	@:overload public static function createBandedRaster(dataType : Int, w : Int, h : Int, scanlineStride : Int, bankIndices : java.NativeArray<Int>, bandOffsets : java.NativeArray<Int>, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a SinglePixelPackedSampleModel with
	* the specified data type, width, height, and band masks.
	* The number of bands is inferred from bandMasks.length.
	*
	* <p> The upper left corner of the Raster is given by the
	* location argument.  If location is null, (0, 0) will be used.
	* The dataType parameter should be one of the enumerated values
	* defined in the DataBuffer class.
	*
	* <p> The only dataTypes supported currently are TYPE_BYTE, TYPE_USHORT,
	* and TYPE_INT.
	* @param dataType  the data type for storing samples
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param bandMasks an array containing an entry for each band
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified data type,
	*         width, height, and band masks.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types, which are
	*         <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>
	*         or <code>DataBuffer.TYPE_INT</code>
	*/
	@:overload public static function createPackedRaster(dataType : Int, w : Int, h : Int, bandMasks : java.NativeArray<Int>, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a packed SampleModel with the
	* specified data type, width, height, number of bands, and bits
	* per band.  If the number of bands is one, the SampleModel will
	* be a MultiPixelPackedSampleModel.
	*
	* <p> If the number of bands is more than one, the SampleModel
	* will be a SinglePixelPackedSampleModel, with each band having
	* bitsPerBand bits.  In either case, the requirements on dataType
	* and bitsPerBand imposed by the corresponding SampleModel must
	* be met.
	*
	* <p> The upper left corner of the Raster is given by the
	* location argument.  If location is null, (0, 0) will be used.
	* The dataType parameter should be one of the enumerated values
	* defined in the DataBuffer class.
	*
	* <p> The only dataTypes supported currently are TYPE_BYTE, TYPE_USHORT,
	* and TYPE_INT.
	* @param dataType  the data type for storing samples
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param bands     the number of bands
	* @param bitsPerBand the number of bits per band
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified data type,
	*         width, height, number of bands, and bits per band.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws IllegalArgumentException if the product of
	*         <code>bitsPerBand</code> and <code>bands</code> is
	*         greater than the number of bits held by
	*         <code>dataType</code>
	* @throws IllegalArgumentException if <code>bitsPerBand</code> or
	*         <code>bands</code> is not greater than zero
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types, which are
	*         <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>
	*         or <code>DataBuffer.TYPE_INT</code>
	*/
	@:overload public static function createPackedRaster(dataType : Int, w : Int, h : Int, bands : Int, bitsPerBand : Int, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a PixelInterleavedSampleModel with the
	* specified DataBuffer, width, height, scanline stride, pixel
	* stride, and band offsets.  The number of bands is inferred from
	* bandOffsets.length.  The upper left corner of the Raster
	* is given by the location argument.  If location is null, (0, 0)
	* will be used.
	* <p> Note that interleaved <code>DataBuffer.TYPE_INT</code>
	* Rasters are not supported.  To create a 1-band Raster of type
	* <code>DataBuffer.TYPE_INT</code>, use
	* Raster.createPackedRaster().
	* @param dataBuffer the <code>DataBuffer</code> that contains the
	*        image data
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param scanlineStride the line stride of the image data
	* @param pixelStride the pixel stride of the image data
	* @param bandOffsets the offsets of all bands
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified
	*         <code>DataBuffer</code>, width, height, scanline stride,
	*         pixel stride and band offsets.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types, which are
	*         <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>
	* @throws RasterFormatException if <code>dataBuffer</code> has more
	*         than one bank.
	* @throws NullPointerException if <code>dataBuffer</code> is null
	*/
	@:overload public static function createInterleavedRaster(dataBuffer : java.awt.image.DataBuffer, w : Int, h : Int, scanlineStride : Int, pixelStride : Int, bandOffsets : java.NativeArray<Int>, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a BandedSampleModel with the
	* specified DataBuffer, width, height, scanline stride, bank
	* indices, and band offsets.  The number of bands is inferred
	* from bankIndices.length and bandOffsets.length, which must be
	* the same.  The upper left corner of the Raster is given by the
	* location argument.  If location is null, (0, 0) will be used.
	* @param dataBuffer the <code>DataBuffer</code> that contains the
	*        image data
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param scanlineStride the line stride of the image data
	* @param bankIndices the bank indices for each band
	* @param bandOffsets the offsets of all bands
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified
	*         <code>DataBuffer</code>, width, height, scanline stride,
	*         bank indices and band offsets.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types, which are
	*         <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>
	*         or <code>DataBuffer.TYPE_INT</code>
	* @throws NullPointerException if <code>dataBuffer</code> is null
	*/
	@:overload public static function createBandedRaster(dataBuffer : java.awt.image.DataBuffer, w : Int, h : Int, scanlineStride : Int, bankIndices : java.NativeArray<Int>, bandOffsets : java.NativeArray<Int>, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a SinglePixelPackedSampleModel with
	* the specified DataBuffer, width, height, scanline stride, and
	* band masks.  The number of bands is inferred from bandMasks.length.
	* The upper left corner of the Raster is given by
	* the location argument.  If location is null, (0, 0) will be used.
	* @param dataBuffer the <code>DataBuffer</code> that contains the
	*        image data
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param scanlineStride the line stride of the image data
	* @param bandMasks an array containing an entry for each band
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified
	*         <code>DataBuffer</code>, width, height, scanline stride,
	*         and band masks.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types, which are
	*         <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>
	*         or <code>DataBuffer.TYPE_INT</code>
	* @throws RasterFormatException if <code>dataBuffer</code> has more
	*         than one bank.
	* @throws NullPointerException if <code>dataBuffer</code> is null
	*/
	@:overload public static function createPackedRaster(dataBuffer : java.awt.image.DataBuffer, w : Int, h : Int, scanlineStride : Int, bandMasks : java.NativeArray<Int>, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	* Creates a Raster based on a MultiPixelPackedSampleModel with the
	* specified DataBuffer, width, height, and bits per pixel.  The upper
	* left corner of the Raster is given by the location argument.  If
	* location is null, (0, 0) will be used.
	* @param dataBuffer the <code>DataBuffer</code> that contains the
	*        image data
	* @param w         the width in pixels of the image data
	* @param h         the height in pixels of the image data
	* @param bitsPerPixel the number of bits for each pixel
	* @param location  the upper-left corner of the <code>Raster</code>
	* @return a WritableRaster object with the specified
	*         <code>DataBuffer</code>, width, height, and
	*         bits per pixel.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>location.x + w</code> or
	*         <code>location.y + h</code> results in integer
	*         overflow
	* @throws IllegalArgumentException if <code>dataType</code> is not
	*         one of the supported data types, which are
	*         <code>DataBuffer.TYPE_BYTE</code>,
	*         <code>DataBuffer.TYPE_USHORT</code>
	*         or <code>DataBuffer.TYPE_INT</code>
	* @throws RasterFormatException if <code>dataBuffer</code> has more
	*         than one bank.
	* @throws NullPointerException if <code>dataBuffer</code> is null
	*/
	@:overload public static function createPackedRaster(dataBuffer : java.awt.image.DataBuffer, w : Int, h : Int, bitsPerPixel : Int, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	*  Creates a Raster with the specified SampleModel and DataBuffer.
	*  The upper left corner of the Raster is given by the location argument.
	*  If location is null, (0, 0) will be used.
	*  @param sm the specified <code>SampleModel</code>
	*  @param db the specified <code>DataBuffer</code>
	*  @param location the upper-left corner of the <code>Raster</code>
	*  @return a <code>Raster</code> with the specified
	*          <code>SampleModel</code>, <code>DataBuffer</code>, and
	*          location.
	* @throws RasterFormatException if computing either
	*         <code>location.x + sm.getWidth()</code> or
	*         <code>location.y + sm.getHeight()</code> results in integer
	*         overflow
	* @throws RasterFormatException if <code>db</code> has more
	*         than one bank and <code>sm</code> is a
	*         PixelInterleavedSampleModel, SinglePixelPackedSampleModel,
	*         or MultiPixelPackedSampleModel.
	*  @throws NullPointerException if either SampleModel or DataBuffer is
	*          null
	*/
	@:overload public static function createRaster(sm : java.awt.image.SampleModel, db : java.awt.image.DataBuffer, location : java.awt.Point) : java.awt.image.Raster;
	
	/**
	*  Creates a WritableRaster with the specified SampleModel.
	*  The upper left corner of the Raster is given by the location argument.
	*  If location is null, (0, 0) will be used.
	*  @param sm the specified <code>SampleModel</code>
	*  @param location the upper-left corner of the
	*         <code>WritableRaster</code>
	*  @return a <code>WritableRaster</code> with the specified
	*          <code>SampleModel</code> and location.
	*  @throws RasterFormatException if computing either
	*          <code>location.x + sm.getWidth()</code> or
	*          <code>location.y + sm.getHeight()</code> results in integer
	*          overflow
	*/
	@:overload public static function createWritableRaster(sm : java.awt.image.SampleModel, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	*  Creates a WritableRaster with the specified SampleModel and DataBuffer.
	*  The upper left corner of the Raster is given by the location argument.
	*  If location is null, (0, 0) will be used.
	*  @param sm the specified <code>SampleModel</code>
	*  @param db the specified <code>DataBuffer</code>
	*  @param location the upper-left corner of the
	*         <code>WritableRaster</code>
	*  @return a <code>WritableRaster</code> with the specified
	*          <code>SampleModel</code>, <code>DataBuffer</code>, and
	*          location.
	* @throws RasterFormatException if computing either
	*         <code>location.x + sm.getWidth()</code> or
	*         <code>location.y + sm.getHeight()</code> results in integer
	*         overflow
	* @throws RasterFormatException if <code>db</code> has more
	*         than one bank and <code>sm</code> is a
	*         PixelInterleavedSampleModel, SinglePixelPackedSampleModel,
	*         or MultiPixelPackedSampleModel.
	* @throws NullPointerException if either SampleModel or DataBuffer is null
	*/
	@:overload public static function createWritableRaster(sm : java.awt.image.SampleModel, db : java.awt.image.DataBuffer, location : java.awt.Point) : java.awt.image.WritableRaster;
	
	/**
	*  Constructs a Raster with the given SampleModel.  The Raster's
	*  upper left corner is origin and it is the same size as the
	*  SampleModel.  A DataBuffer large enough to describe the
	*  Raster is automatically created.
	*  @param sampleModel     The SampleModel that specifies the layout
	*  @param origin          The Point that specified the origin
	*  @throws RasterFormatException if computing either
	*          <code>origin.x + sampleModel.getWidth()</code> or
	*          <code>origin.y + sampleModel.getHeight()</code> results in
	*          integer overflow
	*  @throws NullPointerException either <code>sampleModel</code> or
	*          <code>origin</code> is null
	*/
	@:overload private function new(sampleModel : java.awt.image.SampleModel, origin : java.awt.Point) : Void;
	
	/**
	*  Constructs a Raster with the given SampleModel and DataBuffer.
	*  The Raster's upper left corner is origin and it is the same size
	*  as the SampleModel.  The DataBuffer is not initialized and must
	*  be compatible with SampleModel.
	*  @param sampleModel     The SampleModel that specifies the layout
	*  @param dataBuffer      The DataBuffer that contains the image data
	*  @param origin          The Point that specifies the origin
	*  @throws RasterFormatException if computing either
	*          <code>origin.x + sampleModel.getWidth()</code> or
	*          <code>origin.y + sampleModel.getHeight()</code> results in
	*          integer overflow
	*  @throws NullPointerException either <code>sampleModel</code> or
	*          <code>origin</code> is null
	*/
	@:overload private function new(sampleModel : java.awt.image.SampleModel, dataBuffer : java.awt.image.DataBuffer, origin : java.awt.Point) : Void;
	
	/**
	* Constructs a Raster with the given SampleModel, DataBuffer, and
	* parent.  aRegion specifies the bounding rectangle of the new
	* Raster.  When translated into the base Raster's coordinate
	* system, aRegion must be contained by the base Raster.
	* (The base Raster is the Raster's ancestor which has no parent.)
	* sampleModelTranslate specifies the sampleModelTranslateX and
	* sampleModelTranslateY values of the new Raster.
	*
	* Note that this constructor should generally be called by other
	* constructors or create methods, it should not be used directly.
	* @param sampleModel     The SampleModel that specifies the layout
	* @param dataBuffer      The DataBuffer that contains the image data
	* @param aRegion         The Rectangle that specifies the image area
	* @param sampleModelTranslate  The Point that specifies the translation
	*                        from SampleModel to Raster coordinates
	* @param parent          The parent (if any) of this raster
	* @throws NullPointerException if any of <code>sampleModel</code>,
	*         <code>dataBuffer</code>, <code>aRegion</code> or
	*         <code>sampleModelTranslate</code> is null
	* @throws RasterFormatException if <code>aRegion</code> has width
	*         or height less than or equal to zero, or computing either
	*         <code>aRegion.x + aRegion.width</code> or
	*         <code>aRegion.y + aRegion.height</code> results in integer
	*         overflow
	*/
	@:overload private function new(sampleModel : java.awt.image.SampleModel, dataBuffer : java.awt.image.DataBuffer, aRegion : java.awt.Rectangle, sampleModelTranslate : java.awt.Point, parent : java.awt.image.Raster) : Void;
	
	/**
	* Returns the parent Raster (if any) of this Raster or null.
	* @return the parent Raster or <code>null</code>.
	*/
	@:overload public function getParent() : java.awt.image.Raster;
	
	/**
	* Returns the X translation from the coordinate system of the
	* SampleModel to that of the Raster.  To convert a pixel's X
	* coordinate from the Raster coordinate system to the SampleModel
	* coordinate system, this value must be subtracted.
	* @return the X translation from the coordinate space of the
	*         Raster's SampleModel to that of the Raster.
	*/
	@:overload @:final public function getSampleModelTranslateX() : Int;
	
	/**
	* Returns the Y translation from the coordinate system of the
	* SampleModel to that of the Raster.  To convert a pixel's Y
	* coordinate from the Raster coordinate system to the SampleModel
	* coordinate system, this value must be subtracted.
	* @return the Y translation from the coordinate space of the
	*         Raster's SampleModel to that of the Raster.
	*/
	@:overload @:final public function getSampleModelTranslateY() : Int;
	
	/**
	* Create a compatible WritableRaster the same size as this Raster with
	* the same SampleModel and a new initialized DataBuffer.
	* @return a compatible <code>WritableRaster</code> with the same sample
	*         model and a new data buffer.
	*/
	@:overload public function createCompatibleWritableRaster() : java.awt.image.WritableRaster;
	
	/**
	* Create a compatible WritableRaster with the specified size, a new
	* SampleModel, and a new initialized DataBuffer.
	* @param w the specified width of the new <code>WritableRaster</code>
	* @param h the specified height of the new <code>WritableRaster</code>
	* @return a compatible <code>WritableRaster</code> with the specified
	*         size and a new sample model and data buffer.
	* @exception RasterFormatException if the width or height is less than
	*                               or equal to zero.
	*/
	@:overload public function createCompatibleWritableRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	/**
	* Create a compatible WritableRaster with location (minX, minY)
	* and size (width, height) specified by rect, a
	* new SampleModel, and a new initialized DataBuffer.
	* @param rect a <code>Rectangle</code> that specifies the size and
	*        location of the <code>WritableRaster</code>
	* @return a compatible <code>WritableRaster</code> with the specified
	*         size and location and a new sample model and data buffer.
	* @throws RasterFormatException if <code>rect</code> has width
	*         or height less than or equal to zero, or computing either
	*         <code>rect.x + rect.width</code> or
	*         <code>rect.y + rect.height</code> results in integer
	*         overflow
	* @throws NullPointerException if <code>rect</code> is null
	*/
	@:overload public function createCompatibleWritableRaster(rect : java.awt.Rectangle) : java.awt.image.WritableRaster;
	
	/**
	* Create a compatible WritableRaster with the specified
	* location (minX, minY) and size (width, height), a
	* new SampleModel, and a new initialized DataBuffer.
	* @param x the X coordinate of the upper-left corner of
	*        the <code>WritableRaster</code>
	* @param y the Y coordinate of the upper-left corner of
	*        the <code>WritableRaster</code>
	* @param w the specified width of the <code>WritableRaster</code>
	* @param h the specified height of the <code>WritableRaster</code>
	* @return a compatible <code>WritableRaster</code> with the specified
	*         size and location and a new sample model and data buffer.
	* @throws RasterFormatException if <code>w</code> or <code>h</code>
	*         is less than or equal to zero, or computing either
	*         <code>x + w</code> or
	*         <code>y + h</code> results in integer
	*         overflow
	*/
	@:overload public function createCompatibleWritableRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.WritableRaster;
	
	/**
	* Create a Raster with the same size, SampleModel and DataBuffer
	* as this one, but with a different location.  The new Raster
	* will possess a reference to the current Raster, accessible
	* through its getParent() method.
	*
	* @param childMinX the X coordinate of the upper-left
	*        corner of the new <code>Raster</code>
	* @param childMinY the Y coordinate of the upper-left
	*        corner of the new <code>Raster</code>
	* @return a new <code>Raster</code> with the same size, SampleModel,
	*         and DataBuffer as this <code>Raster</code>, but with the
	*         specified location.
	* @throws RasterFormatException if  computing either
	*         <code>childMinX + this.getWidth()</code> or
	*         <code>childMinY + this.getHeight()</code> results in integer
	*         overflow
	*/
	@:overload public function createTranslatedChild(childMinX : Int, childMinY : Int) : java.awt.image.Raster;
	
	/**
	* Returns a new Raster which shares all or part of this Raster's
	* DataBuffer.  The new Raster will possess a reference to the
	* current Raster, accessible through its getParent() method.
	*
	* <p> The parentX, parentY, width and height parameters
	* form a Rectangle in this Raster's coordinate space,
	* indicating the area of pixels to be shared.  An error will
	* be thrown if this Rectangle is not contained with the bounds
	* of the current Raster.
	*
	* <p> The new Raster may additionally be translated to a
	* different coordinate system for the plane than that used by the current
	* Raster.  The childMinX and childMinY parameters give the new
	* (x, y) coordinate of the upper-left pixel of the returned
	* Raster; the coordinate (childMinX, childMinY) in the new Raster
	* will map to the same pixel as the coordinate (parentX, parentY)
	* in the current Raster.
	*
	* <p> The new Raster may be defined to contain only a subset of
	* the bands of the current Raster, possibly reordered, by means
	* of the bandList parameter.  If bandList is null, it is taken to
	* include all of the bands of the current Raster in their current
	* order.
	*
	* <p> To create a new Raster that contains a subregion of the current
	* Raster, but shares its coordinate system and bands,
	* this method should be called with childMinX equal to parentX,
	* childMinY equal to parentY, and bandList equal to null.
	*
	* @param parentX The X coordinate of the upper-left corner
	*        in this Raster's coordinates
	* @param parentY The Y coordinate of the upper-left corner
	*        in this Raster's coordinates
	* @param width      Width of the region starting at (parentX, parentY)
	* @param height     Height of the region starting at (parentX, parentY).
	* @param childMinX The X coordinate of the upper-left corner
	*                   of the returned Raster
	* @param childMinY The Y coordinate of the upper-left corner
	*                   of the returned Raster
	* @param bandList   Array of band indices, or null to use all bands
	* @return a new <code>Raster</code>.
	* @exception RasterFormatException if the specified subregion is outside
	*                               of the raster bounds.
	* @throws RasterFormatException if <code>width</code> or
	*         <code>height</code>
	*         is less than or equal to zero, or computing any of
	*         <code>parentX + width</code>, <code>parentY + height</code>,
	*         <code>childMinX + width</code>, or
	*         <code>childMinY + height</code> results in integer
	*         overflow
	*/
	@:overload public function createChild(parentX : Int, parentY : Int, width : Int, height : Int, childMinX : Int, childMinY : Int, bandList : java.NativeArray<Int>) : java.awt.image.Raster;
	
	/**
	* Returns the bounding Rectangle of this Raster. This function returns
	* the same information as getMinX/MinY/Width/Height.
	* @return the bounding box of this <code>Raster</code>.
	*/
	@:overload public function getBounds() : java.awt.Rectangle;
	
	/** Returns the minimum valid X coordinate of the Raster.
	*  @return the minimum x coordinate of this <code>Raster</code>.
	*/
	@:overload @:final public function getMinX() : Int;
	
	/** Returns the minimum valid Y coordinate of the Raster.
	*  @return the minimum y coordinate of this <code>Raster</code>.
	*/
	@:overload @:final public function getMinY() : Int;
	
	/** Returns the width in pixels of the Raster.
	*  @return the width of this <code>Raster</code>.
	*/
	@:overload @:final public function getWidth() : Int;
	
	/** Returns the height in pixels of the Raster.
	*  @return the height of this <code>Raster</code>.
	*/
	@:overload @:final public function getHeight() : Int;
	
	/** Returns the number of bands (samples per pixel) in this Raster.
	*  @return the number of bands of this <code>Raster</code>.
	*/
	@:overload @:final public function getNumBands() : Int;
	
	/**
	*  Returns the number of data elements needed to transfer one pixel
	*  via the getDataElements and setDataElements methods.  When pixels
	*  are transferred via these methods, they may be transferred in a
	*  packed or unpacked format, depending on the implementation of the
	*  underlying SampleModel.  Using these methods, pixels are transferred
	*  as an array of getNumDataElements() elements of a primitive type given
	*  by getTransferType().  The TransferType may or may not be the same
	*  as the storage data type of the DataBuffer.
	*  @return the number of data elements.
	*/
	@:overload @:final public function getNumDataElements() : Int;
	
	/**
	*  Returns the TransferType used to transfer pixels via the
	*  getDataElements and setDataElements methods.  When pixels
	*  are transferred via these methods, they may be transferred in a
	*  packed or unpacked format, depending on the implementation of the
	*  underlying SampleModel.  Using these methods, pixels are transferred
	*  as an array of getNumDataElements() elements of a primitive type given
	*  by getTransferType().  The TransferType may or may not be the same
	*  as the storage data type of the DataBuffer.  The TransferType will
	*  be one of the types defined in DataBuffer.
	*  @return this transfer type.
	*/
	@:overload @:final public function getTransferType() : Int;
	
	/** Returns the DataBuffer associated with this Raster.
	*  @return the <code>DataBuffer</code> of this <code>Raster</code>.
	*/
	@:overload public function getDataBuffer() : java.awt.image.DataBuffer;
	
	/** Returns the SampleModel that describes the layout of the image data.
	*  @return the <code>SampleModel</code> of this <code>Raster</code>.
	*/
	@:overload public function getSampleModel() : java.awt.image.SampleModel;
	
	/**
	* Returns data for a single pixel in a primitive array of type
	* TransferType.  For image data supported by the Java 2D(tm) API,
	* this will be one of DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT,
	* DataBuffer.TYPE_INT, DataBuffer.TYPE_SHORT, DataBuffer.TYPE_FLOAT,
	* or DataBuffer.TYPE_DOUBLE.  Data may be returned in a packed format,
	* thus increasing efficiency for data transfers.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* A ClassCastException will be thrown if the input object is non null
	* and references anything other than an array of TransferType.
	* @see java.awt.image.SampleModel#getDataElements(int, int, Object, DataBuffer)
	* @param x        The X coordinate of the pixel location
	* @param y        The Y coordinate of the pixel location
	* @param outData  An object reference to an array of type defined by
	*                 getTransferType() and length getNumDataElements().
	*                 If null, an array of appropriate type and size will be
	*                 allocated
	* @return         An object reference to an array of type defined by
	*                 getTransferType() with the requested pixel data.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates are not
	* in bounds, or if outData is too small to hold the output.
	*/
	@:overload public function getDataElements(x : Int, y : Int, outData : Dynamic) : Dynamic;
	
	/**
	* Returns the pixel data for the specified rectangle of pixels in a
	* primitive array of type TransferType.
	* For image data supported by the Java 2D API, this
	* will be one of DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT,
	* DataBuffer.TYPE_INT, DataBuffer.TYPE_SHORT, DataBuffer.TYPE_FLOAT,
	* or DataBuffer.TYPE_DOUBLE.  Data may be returned in a packed format,
	* thus increasing efficiency for data transfers.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* A ClassCastException will be thrown if the input object is non null
	* and references anything other than an array of TransferType.
	* @see java.awt.image.SampleModel#getDataElements(int, int, int, int, Object, DataBuffer)
	* @param x    The X coordinate of the upper-left pixel location
	* @param y    The Y coordinate of the upper-left pixel location
	* @param w    Width of the pixel rectangle
	* @param h   Height of the pixel rectangle
	* @param outData  An object reference to an array of type defined by
	*                 getTransferType() and length w*h*getNumDataElements().
	*                 If null, an array of appropriate type and size will be
	*                 allocated.
	* @return         An object reference to an array of type defined by
	*                 getTransferType() with the requested pixel data.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates are not
	* in bounds, or if outData is too small to hold the output.
	*/
	@:overload public function getDataElements(x : Int, y : Int, w : Int, h : Int, outData : Dynamic) : Dynamic;
	
	/**
	* Returns the samples in an array of int for the specified pixel.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x The X coordinate of the pixel location
	* @param y The Y coordinate of the pixel location
	* @param iArray An optionally preallocated int array
	* @return the samples for the specified pixel.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates are not
	* in bounds, or if iArray is too small to hold the output.
	*/
	@:overload public function getPixel(x : Int, y : Int, iArray : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Returns the samples in an array of float for the
	* specified pixel.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x The X coordinate of the pixel location
	* @param y The Y coordinate of the pixel location
	* @param fArray An optionally preallocated float array
	* @return the samples for the specified pixel.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates are not
	* in bounds, or if fArray is too small to hold the output.
	*/
	@:overload public function getPixel(x : Int, y : Int, fArray : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Returns the samples in an array of double for the specified pixel.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x The X coordinate of the pixel location
	* @param y The Y coordinate of the pixel location
	* @param dArray An optionally preallocated double array
	* @return the samples for the specified pixel.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates are not
	* in bounds, or if dArray is too small to hold the output.
	*/
	@:overload public function getPixel(x : Int, y : Int, dArray : java.NativeArray<Float>) : java.NativeArray<Float>;
	
	/**
	* Returns an int array containing all samples for a rectangle of pixels,
	* one sample per array element.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x      The X coordinate of the upper-left pixel location
	* @param y      The Y coordinate of the upper-left pixel location
	* @param w      Width of the pixel rectangle
	* @param h      Height of the pixel rectangle
	* @param iArray An optionally pre-allocated int array
	* @return the samples for the specified rectangle of pixels.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates are not
	* in bounds, or if iArray is too small to hold the output.
	*/
	@:overload public function getPixels(x : Int, y : Int, w : Int, h : Int, iArray : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Returns a float array containing all samples for a rectangle of pixels,
	* one sample per array element.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x        The X coordinate of the pixel location
	* @param y        The Y coordinate of the pixel location
	* @param w        Width of the pixel rectangle
	* @param h        Height of the pixel rectangle
	* @param fArray   An optionally pre-allocated float array
	* @return the samples for the specified rectangle of pixels.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates are not
	* in bounds, or if fArray is too small to hold the output.
	*/
	@:overload public function getPixels(x : Int, y : Int, w : Int, h : Int, fArray : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Returns a double array containing all samples for a rectangle of pixels,
	* one sample per array element.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x        The X coordinate of the upper-left pixel location
	* @param y        The Y coordinate of the upper-left pixel location
	* @param w        Width of the pixel rectangle
	* @param h        Height of the pixel rectangle
	* @param dArray   An optionally pre-allocated double array
	* @return the samples for the specified rectangle of pixels.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates are not
	* in bounds, or if dArray is too small to hold the output.
	*/
	@:overload public function getPixels(x : Int, y : Int, w : Int, h : Int, dArray : java.NativeArray<Float>) : java.NativeArray<Float>;
	
	/**
	* Returns the sample in a specified band for the pixel located
	* at (x,y) as an int.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x        The X coordinate of the pixel location
	* @param y        The Y coordinate of the pixel location
	* @param b        The band to return
	* @return the sample in the specified band for the pixel at the
	*         specified coordinate.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload public function getSample(x : Int, y : Int, b : Int) : Int;
	
	/**
	* Returns the sample in a specified band
	* for the pixel located at (x,y) as a float.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x        The X coordinate of the pixel location
	* @param y        The Y coordinate of the pixel location
	* @param b        The band to return
	* @return the sample in the specified band for the pixel at the
	*         specified coordinate.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload public function getSampleFloat(x : Int, y : Int, b : Int) : Single;
	
	/**
	* Returns the sample in a specified band
	* for a pixel located at (x,y) as a double.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x        The X coordinate of the pixel location
	* @param y        The Y coordinate of the pixel location
	* @param b        The band to return
	* @return the sample in the specified band for the pixel at the
	*         specified coordinate.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds.
	*/
	@:overload public function getSampleDouble(x : Int, y : Int, b : Int) : Float;
	
	/**
	* Returns the samples for a specified band for the specified rectangle
	* of pixels in an int array, one sample per array element.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x        The X coordinate of the upper-left pixel location
	* @param y        The Y coordinate of the upper-left pixel location
	* @param w        Width of the pixel rectangle
	* @param h        Height of the pixel rectangle
	* @param b        The band to return
	* @param iArray   An optionally pre-allocated int array
	* @return the samples for the specified band for the specified
	*         rectangle of pixels.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if iArray is too small to
	* hold the output.
	*/
	@:overload public function getSamples(x : Int, y : Int, w : Int, h : Int, b : Int, iArray : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Returns the samples for a specified band for the specified rectangle
	* of pixels in a float array, one sample per array element.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x        The X coordinate of the upper-left pixel location
	* @param y        The Y coordinate of the upper-left pixel location
	* @param w        Width of the pixel rectangle
	* @param h        Height of the pixel rectangle
	* @param b        The band to return
	* @param fArray   An optionally pre-allocated float array
	* @return the samples for the specified band for the specified
	*         rectangle of pixels.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if fArray is too small to
	* hold the output.
	*/
	@:overload public function getSamples(x : Int, y : Int, w : Int, h : Int, b : Int, fArray : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Returns the samples for a specified band for a specified rectangle
	* of pixels in a double array, one sample per array element.
	* An ArrayIndexOutOfBoundsException may be thrown
	* if the coordinates are not in bounds.  However, explicit bounds
	* checking is not guaranteed.
	* @param x        The X coordinate of the upper-left pixel location
	* @param y        The Y coordinate of the upper-left pixel location
	* @param w        Width of the pixel rectangle
	* @param h        Height of the pixel rectangle
	* @param b        The band to return
	* @param dArray   An optionally pre-allocated double array
	* @return the samples for the specified band for the specified
	*         rectangle of pixels.
	*
	* @throws ArrayIndexOutOfBoundsException if the coordinates or
	* the band index are not in bounds, or if dArray is too small to
	* hold the output.
	*/
	@:overload public function getSamples(x : Int, y : Int, w : Int, h : Int, b : Int, dArray : java.NativeArray<Float>) : java.NativeArray<Float>;
	
	
}

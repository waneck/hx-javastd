package javax.imageio.spi;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageWriterSpi extends javax.imageio.spi.ImageReaderWriterSpi
{
	/**
	* A single-element array, initially containing
	* <code>ImageOutputStream.class</code>, to be returned from
	* <code>getOutputTypes</code>.
	* @deprecated Instead of using this field, directly create
	* the equivalent array <code>{ ImageOutputStream.class }<code>.
	*/
	public static var STANDARD_OUTPUT_TYPE(default, null) : java.NativeArray<Class<Dynamic>>;
	
	/**
	* An array of <code>Class</code> objects to be returned from
	* <code>getOutputTypes</code>, initially <code>null</code>.
	*/
	private var outputTypes : java.NativeArray<Class<Dynamic>>;
	
	/**
	* An array of strings to be returned from
	* <code>getImageReaderSpiNames</code>, initially
	* <code>null</code>.
	*/
	private var readerSpiNames : java.NativeArray<String>;
	
	/**
	* Constructs a blank <code>ImageWriterSpi</code>.  It is up to
	* the subclass to initialize instance variables and/or override
	* method implementations in order to provide working versions of
	* all methods.
	*/
	@:overload private function new() : Void;
	
	/**
	* Constructs an <code>ImageWriterSpi</code> with a given
	* set of values.
	*
	* @param vendorName the vendor name, as a non-<code>null</code>
	* <code>String</code>.
	* @param version a version identifier, as a non-<code>null</code>
	* <code>String</code>.
	* @param names a non-<code>null</code> array of
	* <code>String</code>s indicating the format names.  At least one
	* entry must be present.
	* @param suffixes an array of <code>String</code>s indicating the
	* common file suffixes.  If no suffixes are defined,
	* <code>null</code> should be supplied.  An array of length 0
	* will be normalized to <code>null</code>.
	* @param MIMETypes an array of <code>String</code>s indicating
	* the format's MIME types.  If no suffixes are defined,
	* <code>null</code> should be supplied.  An array of length 0
	* will be normalized to <code>null</code>.
	* @param writerClassName the fully-qualified name of the
	* associated <code>ImageWriterSpi</code> class, as a
	* non-<code>null</code> <code>String</code>.
	* @param outputTypes an array of <code>Class</code> objects of
	* length at least 1 indicating the legal output types.
	* @param readerSpiNames an array <code>String</code>s of length
	* at least 1 naming the classes of all associated
	* <code>ImageReader</code>s, or <code>null</code>.  An array of
	* length 0 is normalized to <code>null</code>.
	* @param supportsStandardStreamMetadataFormat a
	* <code>boolean</code> that indicates whether a stream metadata
	* object can use trees described by the standard metadata format.
	* @param nativeStreamMetadataFormatName a
	* <code>String</code>, or <code>null</code>, to be returned from
	* <code>getNativeStreamMetadataFormatName</code>.
	* @param nativeStreamMetadataFormatClassName a
	* <code>String</code>, or <code>null</code>, to be used to instantiate
	* a metadata format object to be returned from
	* <code>getNativeStreamMetadataFormat</code>.
	* @param extraStreamMetadataFormatNames an array of
	* <code>String</code>s, or <code>null</code>, to be returned from
	* <code>getExtraStreamMetadataFormatNames</code>.  An array of length
	* 0 is normalized to <code>null</code>.
	* @param extraStreamMetadataFormatClassNames an array of
	* <code>String</code>s, or <code>null</code>, to be used to instantiate
	* a metadata format object to be returned from
	* <code>getStreamMetadataFormat</code>.  An array of length
	* 0 is normalized to <code>null</code>.
	* @param supportsStandardImageMetadataFormat a
	* <code>boolean</code> that indicates whether an image metadata
	* object can use trees described by the standard metadata format.
	* @param nativeImageMetadataFormatName a
	* <code>String</code>, or <code>null</code>, to be returned from
	* <code>getNativeImageMetadataFormatName</code>.
	* @param nativeImageMetadataFormatClassName a
	* <code>String</code>, or <code>null</code>, to be used to instantiate
	* a metadata format object to be returned from
	* <code>getNativeImageMetadataFormat</code>.
	* @param extraImageMetadataFormatNames an array of
	* <code>String</code>s to be returned from
	* <code>getExtraImageMetadataFormatNames</code>.  An array of length 0
	* is normalized to <code>null</code>.
	* @param extraImageMetadataFormatClassNames an array of
	* <code>String</code>s, or <code>null</code>, to be used to instantiate
	* a metadata format object to be returned from
	* <code>getImageMetadataFormat</code>.  An array of length
	* 0 is normalized to <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>vendorName</code>
	* is <code>null</code>.
	* @exception IllegalArgumentException if <code>version</code>
	* is <code>null</code>.
	* @exception IllegalArgumentException if <code>names</code>
	* is <code>null</code> or has length 0.
	* @exception IllegalArgumentException if <code>writerClassName</code>
	* is <code>null</code>.
	* @exception IllegalArgumentException if <code>outputTypes</code>
	* is <code>null</code> or has length 0.
	*/
	@:overload public function new(vendorName : String, version : String, names : java.NativeArray<String>, suffixes : java.NativeArray<String>, MIMETypes : java.NativeArray<String>, writerClassName : String, outputTypes : java.NativeArray<Class<Dynamic>>, readerSpiNames : java.NativeArray<String>, supportsStandardStreamMetadataFormat : Bool, nativeStreamMetadataFormatName : String, nativeStreamMetadataFormatClassName : String, extraStreamMetadataFormatNames : java.NativeArray<String>, extraStreamMetadataFormatClassNames : java.NativeArray<String>, supportsStandardImageMetadataFormat : Bool, nativeImageMetadataFormatName : String, nativeImageMetadataFormatClassName : String, extraImageMetadataFormatNames : java.NativeArray<String>, extraImageMetadataFormatClassNames : java.NativeArray<String>) : Void;
	
	/**
	* Returns <code>true</code> if the format that this writer
	* outputs preserves pixel data bit-accurately.  The default
	* implementation returns <code>true</code>.
	*
	* @return <code>true</code> if the format preserves full pixel
	* accuracy.
	*/
	@:overload public function isFormatLossless() : Bool;
	
	/**
	* Returns an array of <code>Class</code> objects indicating what
	* types of objects may be used as arguments to the writer's
	* <code>setOutput</code> method.
	*
	* <p> For most writers, which only output to an
	* <code>ImageOutputStream</code>, a single-element array
	* containing <code>ImageOutputStream.class</code> should be
	* returned.
	*
	* @return a non-<code>null</code> array of
	* <code>Class</code>objects of length at least 1.
	*/
	@:overload public function getOutputTypes() : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Returns <code>true</code> if the <code>ImageWriter</code>
	* implementation associated with this service provider is able to
	* encode an image with the given layout.  The layout
	* (<i>i.e.</i>, the image's <code>SampleModel</code> and
	* <code>ColorModel</code>) is described by an
	* <code>ImageTypeSpecifier</code> object.
	*
	* <p> A return value of <code>true</code> is not an absolute
	* guarantee of successful encoding; the encoding process may still
	* produce errors due to factors such as I/O errors, inconsistent
	* or malformed data structures, etc.  The intent is that a
	* reasonable inspection of the basic structure of the image be
	* performed in order to determine if it is within the scope of
	* the encoding format.  For example, a service provider for a
	* format that can only encode greyscale would return
	* <code>false</code> if handed an RGB <code>BufferedImage</code>.
	* Similarly, a service provider for a format that can encode
	* 8-bit RGB imagery might refuse to encode an image with an
	* associated alpha channel.
	*
	* <p> Different <code>ImageWriter</code>s, and thus service
	* providers, may choose to be more or less strict.  For example,
	* they might accept an image with premultiplied alpha even though
	* it will have to be divided out of each pixel, at some loss of
	* precision, in order to be stored.
	*
	* @param type an <code>ImageTypeSpecifier</code> specifying the
	* layout of the image to be written.
	*
	* @return <code>true</code> if this writer is likely to be able
	* to encode images with the given layout.
	*
	* @exception IllegalArgumentException if <code>type</code>
	* is <code>null</code>.
	*/
	@:overload @:abstract public function canEncodeImage(type : javax.imageio.ImageTypeSpecifier) : Bool;
	
	/**
	* Returns <code>true</code> if the <code>ImageWriter</code>
	* implementation associated with this service provider is able to
	* encode the given <code>RenderedImage</code> instance.  Note
	* that this includes instances of
	* <code>java.awt.image.BufferedImage</code>.
	*
	* <p> See the discussion for
	* <code>canEncodeImage(ImageTypeSpecifier)</code> for information
	* on the semantics of this method.
	*
	* @param im an instance of <code>RenderedImage</code> to be encoded.
	*
	* @return <code>true</code> if this writer is likely to be able
	* to encode this image.
	*
	* @exception IllegalArgumentException if <code>im</code>
	* is <code>null</code>.
	*/
	@:overload public function canEncodeImage(im : java.awt.image.RenderedImage) : Bool;
	
	/**
	* Returns an instance of the <code>ImageWriter</code>
	* implementation associated with this service provider.
	* The returned object will initially be in an initial state as if
	* its <code>reset</code> method had been called.
	*
	* <p> The default implementation simply returns
	* <code>createWriterInstance(null)</code>.
	*
	* @return an <code>ImageWriter</code> instance.
	*
	* @exception IOException if an error occurs during loading,
	* or initialization of the writer class, or during instantiation
	* or initialization of the writer object.
	*/
	@:overload public function createWriterInstance() : javax.imageio.ImageWriter;
	
	/**
	* Returns an instance of the <code>ImageWriter</code>
	* implementation associated with this service provider.
	* The returned object will initially be in an initial state
	* as if its <code>reset</code> method had been called.
	*
	* <p> An <code>Object</code> may be supplied to the plug-in at
	* construction time.  The nature of the object is entirely
	* plug-in specific.
	*
	* <p> Typically, a plug-in will implement this method using code
	* such as <code>return new MyImageWriter(this)</code>.
	*
	* @param extension a plug-in specific extension object, which may
	* be <code>null</code>.
	*
	* @return an <code>ImageWriter</code> instance.
	*
	* @exception IOException if the attempt to instantiate
	* the writer fails.
	* @exception IllegalArgumentException if the
	* <code>ImageWriter</code>'s constructor throws an
	* <code>IllegalArgumentException</code> to indicate that the
	* extension object is unsuitable.
	*/
	@:overload @:abstract public function createWriterInstance(extension : Dynamic) : javax.imageio.ImageWriter;
	
	/**
	* Returns <code>true</code> if the <code>ImageWriter</code> object
	* passed in is an instance of the <code>ImageWriter</code>
	* associated with this service provider.
	*
	* @param writer an <code>ImageWriter</code> instance.
	*
	* @return <code>true</code> if <code>writer</code> is recognized
	*
	* @exception IllegalArgumentException if <code>writer</code> is
	* <code>null</code>.
	*/
	@:overload public function isOwnWriter(writer : javax.imageio.ImageWriter) : Bool;
	
	/**
	* Returns an array of <code>String</code>s containing all the
	* fully qualified names of all the <code>ImageReaderSpi</code>
	* classes that can understand the internal metadata
	* representation used by the <code>ImageWriter</code> associated
	* with this service provider, or <code>null</code> if there are
	* no such <code>ImageReaders</code> specified.  If a
	* non-<code>null</code> value is returned, it must have non-zero
	* length.
	*
	* <p> The first item in the array must be the name of the service
	* provider for the "preferred" reader, as it will be used to
	* instantiate the <code>ImageReader</code> returned by
	* <code>ImageIO.getImageReader(ImageWriter)</code>.
	*
	* <p> This mechanism may be used to obtain
	* <code>ImageReaders</code> that will generated non-pixel
	* meta-data (see <code>IIOExtraDataInfo</code>) in a structure
	* understood by an <code>ImageWriter</code>.  By reading the
	* image and obtaining this data from one of the
	* <code>ImageReaders</code> obtained with this method and passing
	* it on to the <code>ImageWriter</code>, a client program can
	* read an image, modify it in some way, and write it back out
	* preserving all meta-data, without having to understand anything
	* about the internal structure of the meta-data, or even about
	* the image format.
	*
	* @return an array of <code>String</code>s of length at least 1
	* containing names of <code>ImageReaderSpi</code>s, or
	* <code>null</code>.
	*
	* @see javax.imageio.ImageIO#getImageReader(ImageWriter)
	* @see ImageReaderSpi#getImageWriterSpiNames()
	*/
	@:overload public function getImageReaderSpiNames() : java.NativeArray<String>;
	
	
}

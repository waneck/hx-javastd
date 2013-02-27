package javax.imageio;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageIO
{
	/**
	* Scans for plug-ins on the application class path,
	* loads their service provider classes, and registers a service
	* provider instance for each one found with the
	* <code>IIORegistry</code>.
	*
	* <p>This method is needed because the application class path can
	* theoretically change, or additional plug-ins may become available.
	* Rather than re-scanning the classpath on every invocation of the
	* API, the class path is scanned automatically only on the first
	* invocation. Clients can call this method to prompt a re-scan.
	* Thus this method need only be invoked by sophisticated applications
	* which dynamically make new plug-ins available at runtime.
	*
	* <p> The <code>getResources</code> method of the context
	* <code>ClassLoader</code> is used locate JAR files containing
	* files named
	* <code>META-INF/services/javax.imageio.spi.</code><i>classname</i>,
	* where <i>classname</i> is one of <code>ImageReaderSpi</code>,
	* <code>ImageWriterSpi</code>, <code>ImageTranscoderSpi</code>,
	* <code>ImageInputStreamSpi</code>, or
	* <code>ImageOutputStreamSpi</code>, along the application class
	* path.
	*
	* <p> The contents of the located files indicate the names of
	* actual implementation classes which implement the
	* aforementioned service provider interfaces; the default class
	* loader is then used to load each of these classes and to
	* instantiate an instance of each class, which is then placed
	* into the registry for later retrieval.
	*
	* <p> The exact set of locations searched depends on the
	* implementation of the Java runtime enviroment.
	*
	* @see ClassLoader#getResources
	*/
	@:overload public static function scanForPlugins() : Void;
	
	/**
	* Sets a flag indicating whether a disk-based cache file should
	* be used when creating <code>ImageInputStream</code>s and
	* <code>ImageOutputStream</code>s.
	*
	* <p> When reading from a standard <code>InputStream</code>>, it
	* may be necessary to save previously read information in a cache
	* since the underlying stream does not allow data to be re-read.
	* Similarly, when writing to a standard
	* <code>OutputStream</code>, a cache may be used to allow a
	* previously written value to be changed before flushing it to
	* the final destination.
	*
	* <p> The cache may reside in main memory or on disk.  Setting
	* this flag to <code>false</code> disallows the use of disk for
	* future streams, which may be advantageous when working with
	* small images, as the overhead of creating and destroying files
	* is removed.
	*
	* <p> On startup, the value is set to <code>true</code>.
	*
	* @param useCache a <code>boolean</code> indicating whether a
	* cache file should be used, in cases where it is optional.
	*
	* @see #getUseCache
	*/
	@:overload public static function setUseCache(useCache : Bool) : Void;
	
	/**
	* Returns the current value set by <code>setUseCache</code>, or
	* <code>true</code> if no explicit setting has been made.
	*
	* @return true if a disk-based cache may be used for
	* <code>ImageInputStream</code>s and
	* <code>ImageOutputStream</code>s.
	*
	* @see #setUseCache
	*/
	@:overload public static function getUseCache() : Bool;
	
	/**
	* Sets the directory where cache files are to be created.  A
	* value of <code>null</code> indicates that the system-dependent
	* default temporary-file directory is to be used.  If
	* <code>getUseCache</code> returns false, this value is ignored.
	*
	* @param cacheDirectory a <code>File</code> specifying a directory.
	*
	* @see File#createTempFile(String, String, File)
	*
	* @exception SecurityException if the security manager denies
	* access to the directory.
	* @exception IllegalArgumentException if <code>cacheDir</code> is
	* non-<code>null</code> but is not a directory.
	*
	* @see #getCacheDirectory
	*/
	@:overload public static function setCacheDirectory(cacheDirectory : java.io.File) : Void;
	
	/**
	* Returns the current value set by
	* <code>setCacheDirectory</code>, or <code>null</code> if no
	* explicit setting has been made.
	*
	* @return a <code>File</code> indicating the directory where
	* cache files will be created, or <code>null</code> to indicate
	* the system-dependent default temporary-file directory.
	*
	* @see #setCacheDirectory
	*/
	@:overload public static function getCacheDirectory() : java.io.File;
	
	/**
	* Returns an <code>ImageInputStream</code> that will take its
	* input from the given <code>Object</code>.  The set of
	* <code>ImageInputStreamSpi</code>s registered with the
	* <code>IIORegistry</code> class is queried and the first one
	* that is able to take input from the supplied object is used to
	* create the returned <code>ImageInputStream</code>.  If no
	* suitable <code>ImageInputStreamSpi</code> exists,
	* <code>null</code> is returned.
	*
	* <p> The current cache settings from <code>getUseCache</code>and
	* <code>getCacheDirectory</code> will be used to control caching.
	*
	* @param input an <code>Object</code> to be used as an input
	* source, such as a <code>File</code>, readable
	* <code>RandomAccessFile</code>, or <code>InputStream</code>.
	*
	* @return an <code>ImageInputStream</code>, or <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>input</code>
	* is <code>null</code>.
	* @exception IOException if a cache file is needed but cannot be
	* created.
	*
	* @see javax.imageio.spi.ImageInputStreamSpi
	*/
	@:overload public static function createImageInputStream(input : Dynamic) : javax.imageio.stream.ImageInputStream;
	
	/**
	* Returns an <code>ImageOutputStream</code> that will send its
	* output to the given <code>Object</code>.  The set of
	* <code>ImageOutputStreamSpi</code>s registered with the
	* <code>IIORegistry</code> class is queried and the first one
	* that is able to send output from the supplied object is used to
	* create the returned <code>ImageOutputStream</code>.  If no
	* suitable <code>ImageOutputStreamSpi</code> exists,
	* <code>null</code> is returned.
	*
	* <p> The current cache settings from <code>getUseCache</code>and
	* <code>getCacheDirectory</code> will be used to control caching.
	*
	* @param output an <code>Object</code> to be used as an output
	* destination, such as a <code>File</code>, writable
	* <code>RandomAccessFile</code>, or <code>OutputStream</code>.
	*
	* @return an <code>ImageOutputStream</code>, or
	* <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>output</code> is
	* <code>null</code>.
	* @exception IOException if a cache file is needed but cannot be
	* created.
	*
	* @see javax.imageio.spi.ImageOutputStreamSpi
	*/
	@:overload public static function createImageOutputStream(output : Dynamic) : javax.imageio.stream.ImageOutputStream;
	
	/**
	* Returns an array of <code>String</code>s listing all of the
	* informal format names understood by the current set of registered
	* readers.
	*
	* @return an array of <code>String</code>s.
	*/
	@:overload public static function getReaderFormatNames() : java.NativeArray<String>;
	
	/**
	* Returns an array of <code>String</code>s listing all of the
	* MIME types understood by the current set of registered
	* readers.
	*
	* @return an array of <code>String</code>s.
	*/
	@:overload public static function getReaderMIMETypes() : java.NativeArray<String>;
	
	/**
	* Returns an array of <code>String</code>s listing all of the
	* file suffixes associated with the formats understood
	* by the current set of registered readers.
	*
	* @return an array of <code>String</code>s.
	* @since 1.6
	*/
	@:require(java6) @:overload public static function getReaderFileSuffixes() : java.NativeArray<String>;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageReader</code>s that claim to be able to
	* decode the supplied <code>Object</code>, typically an
	* <code>ImageInputStream</code>.
	*
	* <p> The stream position is left at its prior position upon
	* exit from this method.
	*
	* @param input an <code>ImageInputStream</code> or other
	* <code>Object</code> containing encoded image data.
	*
	* @return an <code>Iterator</code> containing <code>ImageReader</code>s.
	*
	* @exception IllegalArgumentException if <code>input</code> is
	* <code>null</code>.
	*
	* @see javax.imageio.spi.ImageReaderSpi#canDecodeInput
	*/
	@:overload public static function getImageReaders(input : Dynamic) : java.util.Iterator<javax.imageio.ImageReader>;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageReader</code>s that claim to be able to
	* decode the named format.
	*
	* @param formatName a <code>String</code> containing the informal
	* name of a format (<i>e.g.</i>, "jpeg" or "tiff".
	*
	* @return an <code>Iterator</code> containing
	* <code>ImageReader</code>s.
	*
	* @exception IllegalArgumentException if <code>formatName</code>
	* is <code>null</code>.
	*
	* @see javax.imageio.spi.ImageReaderSpi#getFormatNames
	*/
	@:overload public static function getImageReadersByFormatName(formatName : String) : java.util.Iterator<javax.imageio.ImageReader>;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageReader</code>s that claim to be able to
	* decode files with the given suffix.
	*
	* @param fileSuffix a <code>String</code> containing a file
	* suffix (<i>e.g.</i>, "jpg" or "tiff").
	*
	* @return an <code>Iterator</code> containing
	* <code>ImageReader</code>s.
	*
	* @exception IllegalArgumentException if <code>fileSuffix</code>
	* is <code>null</code>.
	*
	* @see javax.imageio.spi.ImageReaderSpi#getFileSuffixes
	*/
	@:overload public static function getImageReadersBySuffix(fileSuffix : String) : java.util.Iterator<javax.imageio.ImageReader>;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageReader</code>s that claim to be able to
	* decode files with the given MIME type.
	*
	* @param MIMEType a <code>String</code> containing a file
	* suffix (<i>e.g.</i>, "image/jpeg" or "image/x-bmp").
	*
	* @return an <code>Iterator</code> containing
	* <code>ImageReader</code>s.
	*
	* @exception IllegalArgumentException if <code>MIMEType</code> is
	* <code>null</code>.
	*
	* @see javax.imageio.spi.ImageReaderSpi#getMIMETypes
	*/
	@:overload public static function getImageReadersByMIMEType(MIMEType : String) : java.util.Iterator<javax.imageio.ImageReader>;
	
	/**
	* Returns an array of <code>String</code>s listing all of the
	* informal format names understood by the current set of registered
	* writers.
	*
	* @return an array of <code>String</code>s.
	*/
	@:overload public static function getWriterFormatNames() : java.NativeArray<String>;
	
	/**
	* Returns an array of <code>String</code>s listing all of the
	* MIME types understood by the current set of registered
	* writers.
	*
	* @return an array of <code>String</code>s.
	*/
	@:overload public static function getWriterMIMETypes() : java.NativeArray<String>;
	
	/**
	* Returns an array of <code>String</code>s listing all of the
	* file suffixes associated with the formats understood
	* by the current set of registered writers.
	*
	* @return an array of <code>String</code>s.
	* @since 1.6
	*/
	@:require(java6) @:overload public static function getWriterFileSuffixes() : java.NativeArray<String>;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageWriter</code>s that claim to be able to
	* encode the named format.
	*
	* @param formatName a <code>String</code> containing the informal
	* name of a format (<i>e.g.</i>, "jpeg" or "tiff".
	*
	* @return an <code>Iterator</code> containing
	* <code>ImageWriter</code>s.
	*
	* @exception IllegalArgumentException if <code>formatName</code> is
	* <code>null</code>.
	*
	* @see javax.imageio.spi.ImageWriterSpi#getFormatNames
	*/
	@:overload public static function getImageWritersByFormatName(formatName : String) : java.util.Iterator<javax.imageio.ImageWriter>;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageWriter</code>s that claim to be able to
	* encode files with the given suffix.
	*
	* @param fileSuffix a <code>String</code> containing a file
	* suffix (<i>e.g.</i>, "jpg" or "tiff").
	*
	* @return an <code>Iterator</code> containing <code>ImageWriter</code>s.
	*
	* @exception IllegalArgumentException if <code>fileSuffix</code> is
	* <code>null</code>.
	*
	* @see javax.imageio.spi.ImageWriterSpi#getFileSuffixes
	*/
	@:overload public static function getImageWritersBySuffix(fileSuffix : String) : java.util.Iterator<javax.imageio.ImageWriter>;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageWriter</code>s that claim to be able to
	* encode files with the given MIME type.
	*
	* @param MIMEType a <code>String</code> containing a file
	* suffix (<i>e.g.</i>, "image/jpeg" or "image/x-bmp").
	*
	* @return an <code>Iterator</code> containing <code>ImageWriter</code>s.
	*
	* @exception IllegalArgumentException if <code>MIMEType</code> is
	* <code>null</code>.
	*
	* @see javax.imageio.spi.ImageWriterSpi#getMIMETypes
	*/
	@:overload public static function getImageWritersByMIMEType(MIMEType : String) : java.util.Iterator<javax.imageio.ImageWriter>;
	
	/**
	* Returns an <code>ImageWriter</code>corresponding to the given
	* <code>ImageReader</code>, if there is one, or <code>null</code>
	* if the plug-in for this <code>ImageReader</code> does not
	* specify a corresponding <code>ImageWriter</code>, or if the
	* given <code>ImageReader</code> is not registered.  This
	* mechanism may be used to obtain an <code>ImageWriter</code>
	* that will understand the internal structure of non-pixel
	* metadata (as encoded by <code>IIOMetadata</code> objects)
	* generated by the <code>ImageReader</code>.  By obtaining this
	* data from the <code>ImageReader</code> and passing it on to the
	* <code>ImageWriter</code> obtained with this method, a client
	* program can read an image, modify it in some way, and write it
	* back out preserving all metadata, without having to understand
	* anything about the structure of the metadata, or even about
	* the image format.  Note that this method returns the
	* "preferred" writer, which is the first in the list returned by
	* <code>javax.imageio.spi.ImageReaderSpi.getImageWriterSpiNames()</code>.
	*
	* @param reader an instance of a registered <code>ImageReader</code>.
	*
	* @return an <code>ImageWriter</code>, or null.
	*
	* @exception IllegalArgumentException if <code>reader</code> is
	* <code>null</code>.
	*
	* @see #getImageReader(ImageWriter)
	* @see javax.imageio.spi.ImageReaderSpi#getImageWriterSpiNames()
	*/
	@:overload public static function getImageWriter(reader : javax.imageio.ImageReader) : javax.imageio.ImageWriter;
	
	/**
	* Returns an <code>ImageReader</code>corresponding to the given
	* <code>ImageWriter</code>, if there is one, or <code>null</code>
	* if the plug-in for this <code>ImageWriter</code> does not
	* specify a corresponding <code>ImageReader</code>, or if the
	* given <code>ImageWriter</code> is not registered.  This method
	* is provided principally for symmetry with
	* <code>getImageWriter(ImageReader)</code>.  Note that this
	* method returns the "preferred" reader, which is the first in
	* the list returned by
	* javax.imageio.spi.ImageWriterSpi.<code>getImageReaderSpiNames()</code>.
	*
	* @param writer an instance of a registered <code>ImageWriter</code>.
	*
	* @return an <code>ImageReader</code>, or null.
	*
	* @exception IllegalArgumentException if <code>writer</code> is
	* <code>null</code>.
	*
	* @see #getImageWriter(ImageReader)
	* @see javax.imageio.spi.ImageWriterSpi#getImageReaderSpiNames()
	*/
	@:overload public static function getImageReader(writer : javax.imageio.ImageWriter) : javax.imageio.ImageReader;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageWriter</code>s that claim to be able to
	* encode images of the given layout (specified using an
	* <code>ImageTypeSpecifier</code>) in the given format.
	*
	* @param type an <code>ImageTypeSpecifier</code> indicating the
	* layout of the image to be written.
	* @param formatName the informal name of the <code>format</code>.
	*
	* @return an <code>Iterator</code> containing <code>ImageWriter</code>s.
	*
	* @exception IllegalArgumentException if any parameter is
	* <code>null</code>.
	*
	* @see javax.imageio.spi.ImageWriterSpi#canEncodeImage(ImageTypeSpecifier)
	*/
	@:overload public static function getImageWriters(type : javax.imageio.ImageTypeSpecifier, formatName : String) : java.util.Iterator<javax.imageio.ImageWriter>;
	
	/**
	* Returns an <code>Iterator</code> containing all currently
	* registered <code>ImageTranscoder</code>s that claim to be
	* able to transcode between the metadata of the given
	* <code>ImageReader</code> and <code>ImageWriter</code>.
	*
	* @param reader an <code>ImageReader</code>.
	* @param writer an <code>ImageWriter</code>.
	*
	* @return an <code>Iterator</code> containing
	* <code>ImageTranscoder</code>s.
	*
	* @exception IllegalArgumentException if <code>reader</code> or
	* <code>writer</code> is <code>null</code>.
	*/
	@:overload public static function getImageTranscoders(reader : javax.imageio.ImageReader, writer : javax.imageio.ImageWriter) : java.util.Iterator<javax.imageio.ImageTranscoder>;
	
	/**
	* Returns a <code>BufferedImage</code> as the result of decoding
	* a supplied <code>File</code> with an <code>ImageReader</code>
	* chosen automatically from among those currently registered.
	* The <code>File</code> is wrapped in an
	* <code>ImageInputStream</code>.  If no registered
	* <code>ImageReader</code> claims to be able to read the
	* resulting stream, <code>null</code> is returned.
	*
	* <p> The current cache settings from <code>getUseCache</code>and
	* <code>getCacheDirectory</code> will be used to control caching in the
	* <code>ImageInputStream</code> that is created.
	*
	* <p> Note that there is no <code>read</code> method that takes a
	* filename as a <code>String</code>; use this method instead after
	* creating a <code>File</code> from the filename.
	*
	* <p> This method does not attempt to locate
	* <code>ImageReader</code>s that can read directly from a
	* <code>File</code>; that may be accomplished using
	* <code>IIORegistry</code> and <code>ImageReaderSpi</code>.
	*
	* @param input a <code>File</code> to read from.
	*
	* @return a <code>BufferedImage</code> containing the decoded
	* contents of the input, or <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>input</code> is
	* <code>null</code>.
	* @exception IOException if an error occurs during reading.
	*/
	@:overload public static function read(input : java.io.File) : java.awt.image.BufferedImage;
	
	/**
	* Returns a <code>BufferedImage</code> as the result of decoding
	* a supplied <code>InputStream</code> with an <code>ImageReader</code>
	* chosen automatically from among those currently registered.
	* The <code>InputStream</code> is wrapped in an
	* <code>ImageInputStream</code>.  If no registered
	* <code>ImageReader</code> claims to be able to read the
	* resulting stream, <code>null</code> is returned.
	*
	* <p> The current cache settings from <code>getUseCache</code>and
	* <code>getCacheDirectory</code> will be used to control caching in the
	* <code>ImageInputStream</code> that is created.
	*
	* <p> This method does not attempt to locate
	* <code>ImageReader</code>s that can read directly from an
	* <code>InputStream</code>; that may be accomplished using
	* <code>IIORegistry</code> and <code>ImageReaderSpi</code>.
	*
	* <p> This method <em>does not</em> close the provided
	* <code>InputStream</code> after the read operation has completed;
	* it is the responsibility of the caller to close the stream, if desired.
	*
	* @param input an <code>InputStream</code> to read from.
	*
	* @return a <code>BufferedImage</code> containing the decoded
	* contents of the input, or <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>input</code> is
	* <code>null</code>.
	* @exception IOException if an error occurs during reading.
	*/
	@:overload public static function read(input : java.io.InputStream) : java.awt.image.BufferedImage;
	
	/**
	* Returns a <code>BufferedImage</code> as the result of decoding
	* a supplied <code>URL</code> with an <code>ImageReader</code>
	* chosen automatically from among those currently registered.  An
	* <code>InputStream</code> is obtained from the <code>URL</code>,
	* which is wrapped in an <code>ImageInputStream</code>.  If no
	* registered <code>ImageReader</code> claims to be able to read
	* the resulting stream, <code>null</code> is returned.
	*
	* <p> The current cache settings from <code>getUseCache</code>and
	* <code>getCacheDirectory</code> will be used to control caching in the
	* <code>ImageInputStream</code> that is created.
	*
	* <p> This method does not attempt to locate
	* <code>ImageReader</code>s that can read directly from a
	* <code>URL</code>; that may be accomplished using
	* <code>IIORegistry</code> and <code>ImageReaderSpi</code>.
	*
	* @param input a <code>URL</code> to read from.
	*
	* @return a <code>BufferedImage</code> containing the decoded
	* contents of the input, or <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>input</code> is
	* <code>null</code>.
	* @exception IOException if an error occurs during reading.
	*/
	@:overload public static function read(input : java.net.URL) : java.awt.image.BufferedImage;
	
	/**
	* Returns a <code>BufferedImage</code> as the result of decoding
	* a supplied <code>ImageInputStream</code> with an
	* <code>ImageReader</code> chosen automatically from among those
	* currently registered.  If no registered
	* <code>ImageReader</code> claims to be able to read the stream,
	* <code>null</code> is returned.
	*
	* <p> Unlike most other methods in this class, this method <em>does</em>
	* close the provided <code>ImageInputStream</code> after the read
	* operation has completed, unless <code>null</code> is returned,
	* in which case this method <em>does not</em> close the stream.
	*
	* @param stream an <code>ImageInputStream</code> to read from.
	*
	* @return a <code>BufferedImage</code> containing the decoded
	* contents of the input, or <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>stream</code> is
	* <code>null</code>.
	* @exception IOException if an error occurs during reading.
	*/
	@:overload public static function read(stream : javax.imageio.stream.ImageInputStream) : java.awt.image.BufferedImage;
	
	/**
	* Writes an image using the an arbitrary <code>ImageWriter</code>
	* that supports the given format to an
	* <code>ImageOutputStream</code>.  The image is written to the
	* <code>ImageOutputStream</code> starting at the current stream
	* pointer, overwriting existing stream data from that point
	* forward, if present.
	*
	* <p> This method <em>does not</em> close the provided
	* <code>ImageOutputStream</code> after the write operation has completed;
	* it is the responsibility of the caller to close the stream, if desired.
	*
	* @param im a <code>RenderedImage</code> to be written.
	* @param formatName a <code>String</code> containg the informal
	* name of the format.
	* @param output an <code>ImageOutputStream</code> to be written to.
	*
	* @return <code>false</code> if no appropriate writer is found.
	*
	* @exception IllegalArgumentException if any parameter is
	* <code>null</code>.
	* @exception IOException if an error occurs during writing.
	*/
	@:overload public static function write(im : java.awt.image.RenderedImage, formatName : String, output : javax.imageio.stream.ImageOutputStream) : Bool;
	
	/**
	* Writes an image using an arbitrary <code>ImageWriter</code>
	* that supports the given format to a <code>File</code>.  If
	* there is already a <code>File</code> present, its contents are
	* discarded.
	*
	* @param im a <code>RenderedImage</code> to be written.
	* @param formatName a <code>String</code> containg the informal
	* name of the format.
	* @param output a <code>File</code> to be written to.
	*
	* @return <code>false</code> if no appropriate writer is found.
	*
	* @exception IllegalArgumentException if any parameter is
	* <code>null</code>.
	* @exception IOException if an error occurs during writing.
	*/
	@:overload public static function write(im : java.awt.image.RenderedImage, formatName : String, output : java.io.File) : Bool;
	
	/**
	* Writes an image using an arbitrary <code>ImageWriter</code>
	* that supports the given format to an <code>OutputStream</code>.
	*
	* <p> This method <em>does not</em> close the provided
	* <code>OutputStream</code> after the write operation has completed;
	* it is the responsibility of the caller to close the stream, if desired.
	*
	* <p> The current cache settings from <code>getUseCache</code>and
	* <code>getCacheDirectory</code> will be used to control caching.
	*
	* @param im a <code>RenderedImage</code> to be written.
	* @param formatName a <code>String</code> containg the informal
	* name of the format.
	* @param output an <code>OutputStream</code> to be written to.
	*
	* @return <code>false</code> if no appropriate writer is found.
	*
	* @exception IllegalArgumentException if any parameter is
	* <code>null</code>.
	* @exception IOException if an error occurs during writing.
	*/
	@:overload public static function write(im : java.awt.image.RenderedImage, formatName : String, output : java.io.OutputStream) : Bool;
	
	
}
/**
* A class to hold information about caching.  Each
* <code>ThreadGroup</code> will have its own copy
* via the <code>AppContext</code> mechanism.
*/
@:native('javax$imageio$ImageIO$CacheInfo') @:internal extern class ImageIO_CacheInfo
{
	@:overload public function new() : Void;
	
	@:overload public function getUseCache() : Bool;
	
	@:overload public function setUseCache(useCache : Bool) : Void;
	
	@:overload public function getCacheDirectory() : java.io.File;
	
	@:overload public function setCacheDirectory(cacheDirectory : java.io.File) : Void;
	
	@:overload public function getHasPermission() : Null<Bool>;
	
	@:overload public function setHasPermission(hasPermission : Null<Bool>) : Void;
	
	
}
@:native('javax$imageio$ImageIO$SpiInfo') privateextern enum ImageIO_SpiInfo
{
	FORMAT_NAMES;
	MIME_TYPES;
	FILE_SUFFIXES;
	
}

@:native('javax$imageio$ImageIO$ImageReaderIterator') @:internal extern class ImageIO_ImageReaderIterator implements java.util.Iterator<javax.imageio.ImageReader>
{
	public var iter : java.util.Iterator<Dynamic>;
	
	@:overload public function new(iter : java.util.Iterator<Dynamic>) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : javax.imageio.ImageReader;
	
	@:overload public function remove() : Void;
	
	
}
@:native('javax$imageio$ImageIO$CanDecodeInputFilter') @:internal extern class ImageIO_CanDecodeInputFilter implements javax.imageio.spi.ServiceRegistry.ServiceRegistry_Filter
{
	@:overload public function new(input : Dynamic) : Void;
	
	@:overload public function filter(elt : Dynamic) : Bool;
	
	
}
@:native('javax$imageio$ImageIO$CanEncodeImageAndFormatFilter') @:internal extern class ImageIO_CanEncodeImageAndFormatFilter implements javax.imageio.spi.ServiceRegistry.ServiceRegistry_Filter
{
	@:overload public function new(type : javax.imageio.ImageTypeSpecifier, formatName : String) : Void;
	
	@:overload public function filter(elt : Dynamic) : Bool;
	
	
}
@:native('javax$imageio$ImageIO$ContainsFilter') @:internal extern class ImageIO_ContainsFilter implements javax.imageio.spi.ServiceRegistry.ServiceRegistry_Filter
{
	@:overload public function new(method : java.lang.reflect.Method, name : String) : Void;
	
	@:overload public function filter(elt : Dynamic) : Bool;
	
	
}
@:native('javax$imageio$ImageIO$ImageWriterIterator') @:internal extern class ImageIO_ImageWriterIterator implements java.util.Iterator<javax.imageio.ImageWriter>
{
	public var iter : java.util.Iterator<Dynamic>;
	
	@:overload public function new(iter : java.util.Iterator<Dynamic>) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : javax.imageio.ImageWriter;
	
	@:overload public function remove() : Void;
	
	
}
@:native('javax$imageio$ImageIO$ImageTranscoderIterator') @:internal extern class ImageIO_ImageTranscoderIterator implements java.util.Iterator<javax.imageio.ImageTranscoder>
{
	public var iter : java.util.Iterator<Dynamic>;
	
	@:overload public function new(iter : java.util.Iterator<Dynamic>) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : javax.imageio.ImageTranscoder;
	
	@:overload public function remove() : Void;
	
	
}
@:native('javax$imageio$ImageIO$TranscoderFilter') @:internal extern class ImageIO_TranscoderFilter implements javax.imageio.spi.ServiceRegistry.ServiceRegistry_Filter
{
	@:overload public function new(readerSpi : javax.imageio.spi.ImageReaderSpi, writerSpi : javax.imageio.spi.ImageWriterSpi) : Void;
	
	@:overload public function filter(elt : Dynamic) : Bool;
	
	
}

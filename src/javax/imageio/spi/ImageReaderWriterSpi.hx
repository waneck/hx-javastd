package javax.imageio.spi;
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
extern class ImageReaderWriterSpi extends javax.imageio.spi.IIOServiceProvider
{
	/**
	* An array of strings to be returned from
	* <code>getFormatNames</code>, initially <code>null</code>.
	* Constructors should set this to a non-<code>null</code> value.
	*/
	@:protected private var names : java.NativeArray<String>;
	
	/**
	* An array of strings to be returned from
	* <code>getFileSuffixes</code>, initially <code>null</code>.
	*/
	@:protected private var suffixes : java.NativeArray<String>;
	
	/**
	* An array of strings to be returned from
	* <code>getMIMETypes</code>, initially <code>null</code>.
	*/
	@:protected private var MIMETypes : java.NativeArray<String>;
	
	/**
	* A <code>String</code> containing the name of the associated
	* plug-in class, initially <code>null</code>.
	*/
	@:protected private var pluginClassName : String;
	
	/**
	* A boolean indicating whether this plug-in supports the
	* standard metadata format for stream metadata, initially
	* <code>false</code>.
	*/
	@:protected private var supportsStandardStreamMetadataFormat : Bool;
	
	/**
	* A <code>String</code> containing the name of the native stream
	* metadata format supported by this plug-in, initially
	* <code>null</code>.
	*/
	@:protected private var nativeStreamMetadataFormatName : String;
	
	/**
	* A <code>String</code> containing the class name of the native
	* stream metadata format supported by this plug-in, initially
	* <code>null</code>.
	*/
	@:protected private var nativeStreamMetadataFormatClassName : String;
	
	/**
	* An array of <code>String</code>s containing the names of any
	* additional stream metadata formats supported by this plug-in,
	* initially <code>null</code>.
	*/
	@:protected private var extraStreamMetadataFormatNames : java.NativeArray<String>;
	
	/**
	* An array of <code>String</code>s containing the class names of
	* any additional stream metadata formats supported by this plug-in,
	* initially <code>null</code>.
	*/
	@:protected private var extraStreamMetadataFormatClassNames : java.NativeArray<String>;
	
	/**
	* A boolean indicating whether this plug-in supports the
	* standard metadata format for image metadata, initially
	* <code>false</code>.
	*/
	@:protected private var supportsStandardImageMetadataFormat : Bool;
	
	/**
	* A <code>String</code> containing the name of the
	* native stream metadata format supported by this plug-in,
	* initially <code>null</code>.
	*/
	@:protected private var nativeImageMetadataFormatName : String;
	
	/**
	* A <code>String</code> containing the class name of the
	* native stream metadata format supported by this plug-in,
	* initially <code>null</code>.
	*/
	@:protected private var nativeImageMetadataFormatClassName : String;
	
	/**
	* An array of <code>String</code>s containing the names of any
	* additional image metadata formats supported by this plug-in,
	* initially <code>null</code>.
	*/
	@:protected private var extraImageMetadataFormatNames : java.NativeArray<String>;
	
	/**
	* An array of <code>String</code>s containing the class names of
	* any additional image metadata formats supported by this
	* plug-in, initially <code>null</code>.
	*/
	@:protected private var extraImageMetadataFormatClassNames : java.NativeArray<String>;
	
	/**
	* Constructs an <code>ImageReaderWriterSpi</code> with a given
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
	* the format's MIME types.  If no MIME types are defined,
	* <code>null</code> should be supplied.  An array of length 0
	* will be normalized to <code>null</code>.
	* @param pluginClassName the fully-qualified name of the
	* associated <code>ImageReader</code> or <code>ImageWriter</code>
	* class, as a non-<code>null</code> <code>String</code>.
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
	* @exception IllegalArgumentException if <code>pluginClassName</code>
	* is <code>null</code>.
	*/
	@:overload @:public public function new(vendorName : String, version : String, names : java.NativeArray<String>, suffixes : java.NativeArray<String>, MIMETypes : java.NativeArray<String>, pluginClassName : String, supportsStandardStreamMetadataFormat : Bool, nativeStreamMetadataFormatName : String, nativeStreamMetadataFormatClassName : String, extraStreamMetadataFormatNames : java.NativeArray<String>, extraStreamMetadataFormatClassNames : java.NativeArray<String>, supportsStandardImageMetadataFormat : Bool, nativeImageMetadataFormatName : String, nativeImageMetadataFormatClassName : String, extraImageMetadataFormatNames : java.NativeArray<String>, extraImageMetadataFormatClassNames : java.NativeArray<String>) : Void;
	
	/**
	* Constructs a blank <code>ImageReaderWriterSpi</code>.  It is up
	* to the subclass to initialize instance variables and/or
	* override method implementations in order to provide working
	* versions of all methods.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns an array of <code>String</code>s containing
	* human-readable names for the formats that are generally usable
	* by the <code>ImageReader</code> or <code>ImageWriter</code>
	* implementation associated with this service provider.  For
	* example, a single <code>ImageReader</code> might be able to
	* process both PBM and PNM files.
	*
	* @return a non-<code>null</code> array of <code>String</code>s
	* or length at least 1 containing informal format names
	* associated with this reader or writer.
	*/
	@:overload @:public public function getFormatNames() : java.NativeArray<String>;
	
	/**
	* Returns an array of <code>String</code>s containing a list of
	* file suffixes associated with the formats that are generally
	* usable by the <code>ImageReader</code> or
	* <code>ImageWriter</code> implementation associated with this
	* service provider.  For example, a single
	* <code>ImageReader</code> might be able to process files with
	* '.pbm' and '.pnm' suffixes, or both '.jpg' and '.jpeg'
	* suffixes.  If there are no known file suffixes,
	* <code>null</code> will be returned.
	*
	* <p> Returning a particular suffix does not guarantee that files
	* with that suffix can be processed; it merely indicates that it
	* may be worthwhile attempting to decode or encode such files
	* using this service provider.
	*
	* @return an array of <code>String</code>s or length at least 1
	* containing common file suffixes associated with this reader or
	* writer, or <code>null</code>.
	*/
	@:overload @:public public function getFileSuffixes() : java.NativeArray<String>;
	
	/**
	* Returns an array of <code>String</code>s containing a list of
	* MIME types associated with the formats that are generally
	* usable by the <code>ImageReader</code> or
	* <code>ImageWriter</code> implementation associated with this
	* service provider.
	*
	* <p> Ideally, only a single MIME type would be required in order
	* to describe a particular format.  However, for several reasons
	* it is necessary to associate a list of types with each service
	* provider.  First, many common image file formats do not have
	* standard MIME types, so a list of commonly used unofficial
	* names will be required, such as <code>image/x-pbm</code> and
	* <code>image/x-portable-bitmap</code>.  Some file formats have
	* official MIME types but may sometimes be referred to using
	* their previous unofficial designations, such as
	* <code>image/x-png</code> instead of the official
	* <code>image/png</code>.  Finally, a single service provider may
	* be capable of parsing multiple distinct types from the MIME
	* point of view, for example <code>image/x-xbitmap</code> and
	* <code>image/x-xpixmap</code>.
	*
	* <p> Returning a particular MIME type does not guarantee that
	* files claiming to be of that type can be processed; it merely
	* indicates that it may be worthwhile attempting to decode or
	* encode such files using this service provider.
	*
	* @return an array of <code>String</code>s or length at least 1
	* containing MIME types associated with this reader or writer, or
	* <code>null</code>.
	*/
	@:overload @:public public function getMIMETypes() : java.NativeArray<String>;
	
	/**
	* Returns the fully-qualified class name of the
	* <code>ImageReader</code> or <code>ImageWriter</code> plug-in
	* associated with this service provider.
	*
	* @return the class name, as a non-<code>null</code>
	* <code>String</code>.
	*/
	@:overload @:public public function getPluginClassName() : String;
	
	/**
	* Returns <code>true</code> if the standard metadata format is
	* among the document formats recognized by the
	* <code>getAsTree</code> and <code>setFromTree</code> methods on
	* the stream metadata objects produced or consumed by this
	* plug-in.
	*
	* @return <code>true</code> if the standard format is supported
	* for stream metadata.
	*/
	@:overload @:public public function isStandardStreamMetadataFormatSupported() : Bool;
	
	/**
	* Returns the name of the "native" stream metadata format for
	* this plug-in, which typically allows for lossless encoding and
	* transmission of the stream metadata stored in the format handled by
	* this plug-in.  If no such format is supported,
	* <code>null</code>will be returned.
	*
	* <p> The default implementation returns the
	* <code>nativeStreamMetadataFormatName</code> instance variable,
	* which is typically set by the constructor.
	*
	* @return the name of the native stream metadata format, or
	* <code>null</code>.
	*
	*/
	@:overload @:public public function getNativeStreamMetadataFormatName() : String;
	
	/**
	* Returns an array of <code>String</code>s containing the names
	* of additional document formats, other than the native and
	* standard formats, recognized by the
	* <code>getAsTree</code> and <code>setFromTree</code> methods on
	* the stream metadata objects produced or consumed by this
	* plug-in.
	*
	* <p> If the plug-in does not handle metadata, null should be
	* returned.
	*
	* <p> The set of formats may differ according to the particular
	* images being read or written; this method should indicate all
	* the additional formats supported by the plug-in under any
	* circumstances.
	*
	* <p> The default implementation returns a clone of the
	* <code>extraStreamMetadataFormatNames</code> instance variable,
	* which is typically set by the constructor.
	*
	* @return an array of <code>String</code>s, or null.
	*
	* @see IIOMetadata#getMetadataFormatNames
	* @see #getExtraImageMetadataFormatNames
	* @see #getNativeStreamMetadataFormatName
	*/
	@:overload @:public public function getExtraStreamMetadataFormatNames() : java.NativeArray<String>;
	
	/**
	* Returns <code>true</code> if the standard metadata format is
	* among the document formats recognized by the
	* <code>getAsTree</code> and <code>setFromTree</code> methods on
	* the image metadata objects produced or consumed by this
	* plug-in.
	*
	* @return <code>true</code> if the standard format is supported
	* for image metadata.
	*/
	@:overload @:public public function isStandardImageMetadataFormatSupported() : Bool;
	
	/**
	* Returns the name of the "native" image metadata format for
	* this plug-in, which typically allows for lossless encoding and
	* transmission of the image metadata stored in the format handled by
	* this plug-in.  If no such format is supported,
	* <code>null</code>will be returned.
	*
	* <p> The default implementation returns the
	* <code>nativeImageMetadataFormatName</code> instance variable,
	* which is typically set by the constructor.
	*
	* @return the name of the native image metadata format, or
	* <code>null</code>.
	*
	* @see #getExtraImageMetadataFormatNames
	*/
	@:overload @:public public function getNativeImageMetadataFormatName() : String;
	
	/**
	* Returns an array of <code>String</code>s containing the names
	* of additional document formats, other than the native and
	* standard formats, recognized by the
	* <code>getAsTree</code> and <code>setFromTree</code> methods on
	* the image metadata objects produced or consumed by this
	* plug-in.
	*
	* <p> If the plug-in does not handle image metadata, null should
	* be returned.
	*
	* <p> The set of formats may differ according to the particular
	* images being read or written; this method should indicate all
	* the additional formats supported by the plug-in under any circumstances.
	*
	* <p> The default implementation returns a clone of the
	* <code>extraImageMetadataFormatNames</code> instance variable,
	* which is typically set by the constructor.
	*
	* @return an array of <code>String</code>s, or null.
	*
	* @see IIOMetadata#getMetadataFormatNames
	* @see #getExtraStreamMetadataFormatNames
	* @see #getNativeImageMetadataFormatName
	*/
	@:overload @:public public function getExtraImageMetadataFormatNames() : java.NativeArray<String>;
	
	/**
	* Returns an <code>IIOMetadataFormat</code> object describing the
	* given stream metadata format, or <code>null</code> if no
	* description is available.  The supplied name must be the native
	* stream metadata format name, the standard metadata format name,
	* or one of those returned by
	* <code>getExtraStreamMetadataFormatNames</code>.
	*
	* @param formatName the desired stream metadata format.
	*
	* @return an <code>IIOMetadataFormat</code> object.
	*
	* @exception IllegalArgumentException if <code>formatName</code>
	* is <code>null</code> or is not a supported name.
	*/
	@:overload @:public public function getStreamMetadataFormat(formatName : String) : javax.imageio.metadata.IIOMetadataFormat;
	
	/**
	* Returns an <code>IIOMetadataFormat</code> object describing the
	* given image metadata format, or <code>null</code> if no
	* description is available.  The supplied name must be the native
	* iamge metadata format name, the standard metadata format name,
	* or one of those returned by
	* <code>getExtraImageMetadataFormatNames</code>.
	*
	* @param formatName the desired image metadata format.
	*
	* @return an <code>IIOMetadataFormat</code> object.
	*
	* @exception IllegalArgumentException if <code>formatName</code>
	* is <code>null</code> or is not a supported name.
	*/
	@:overload @:public public function getImageMetadataFormat(formatName : String) : javax.imageio.metadata.IIOMetadataFormat;
	
	
}

package java.util.zip;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class implements an output stream filter for writing files in the
* ZIP file format. Includes support for both compressed and uncompressed
* entries.
*
* @author      David Connelly
*/
extern class ZipOutputStream extends java.util.zip.DeflaterOutputStream implements java.util.zip.ZipConstants
{
	/**
	* Compression method for uncompressed (STORED) entries.
	*/
	public static var STORED(default, null) : Int;
	
	/**
	* Compression method for compressed (DEFLATED) entries.
	*/
	public static var DEFLATED(default, null) : Int;
	
	/**
	* Creates a new ZIP output stream.
	*
	* <p>The UTF-8 {@link java.nio.charset.Charset charset} is used
	* to encode the entry names and comments.
	*
	* @param out the actual output stream
	*/
	@:overload public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Creates a new ZIP output stream.
	*
	* @param out the actual output stream
	*
	* @param charset the {@linkplain java.nio.charset.Charset charset}
	*                to be used to encode the entry names and comments
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(out : java.io.OutputStream, charset : java.nio.charset.Charset) : Void;
	
	/**
	* Sets the ZIP file comment.
	* @param comment the comment string
	* @exception IllegalArgumentException if the length of the specified
	*            ZIP file comment is greater than 0xFFFF bytes
	*/
	@:overload public function setComment(comment : String) : Void;
	
	/**
	* Sets the default compression method for subsequent entries. This
	* default will be used whenever the compression method is not specified
	* for an individual ZIP file entry, and is initially set to DEFLATED.
	* @param method the default compression method
	* @exception IllegalArgumentException if the specified compression method
	*            is invalid
	*/
	@:overload public function setMethod(method : Int) : Void;
	
	/**
	* Sets the compression level for subsequent entries which are DEFLATED.
	* The default setting is DEFAULT_COMPRESSION.
	* @param level the compression level (0-9)
	* @exception IllegalArgumentException if the compression level is invalid
	*/
	@:overload public function setLevel(level : Int) : Void;
	
	/**
	* Begins writing a new ZIP file entry and positions the stream to the
	* start of the entry data. Closes the current entry if still active.
	* The default compression method will be used if no compression method
	* was specified for the entry, and the current time will be used if
	* the entry has no set modification time.
	* @param e the ZIP entry to be written
	* @exception ZipException if a ZIP format error has occurred
	* @exception IOException if an I/O error has occurred
	*/
	@:overload public function putNextEntry(e : java.util.zip.ZipEntry) : Void;
	
	/**
	* Closes the current ZIP entry and positions the stream for writing
	* the next entry.
	* @exception ZipException if a ZIP format error has occurred
	* @exception IOException if an I/O error has occurred
	*/
	@:overload public function closeEntry() : Void;
	
	/**
	* Writes an array of bytes to the current ZIP entry data. This method
	* will block until all the bytes are written.
	* @param b the data to be written
	* @param off the start offset in the data
	* @param len the number of bytes that are written
	* @exception ZipException if a ZIP file error has occurred
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:synchronized override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Finishes writing the contents of the ZIP output stream without closing
	* the underlying stream. Use this method when applying multiple filters
	* in succession to the same output stream.
	* @exception ZipException if a ZIP file error has occurred
	* @exception IOException if an I/O exception has occurred
	*/
	@:overload override public function finish() : Void;
	
	/**
	* Closes the ZIP output stream as well as the stream being filtered.
	* @exception ZipException if a ZIP file error has occurred
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function close() : Void;
	
	
}
@:native('java$util$zip$ZipOutputStream$XEntry') @:internal extern class ZipOutputStream_XEntry
{
	public var entry(default, null) : java.util.zip.ZipEntry;
	
	public var offset(default, null) : haxe.Int64;
	
	@:overload public function new(entry : java.util.zip.ZipEntry, offset : haxe.Int64) : Void;
	
	
}
package java.util.zip;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class is used to read entries from a zip file.
*
* <p> Unless otherwise noted, passing a <tt>null</tt> argument to a constructor
* or method in this class will cause a {@link NullPointerException} to be
* thrown.
*
* @author      David Connelly
*/
extern class ZipFile implements java.util.zip.ZipConstants implements java.io.Closeable
{
	/**
	* Mode flag to open a zip file for reading.
	*/
	public static var OPEN_READ(default, null) : Int;
	
	/**
	* Mode flag to open a zip file and mark it for deletion.  The file will be
	* deleted some time between the moment that it is opened and the moment
	* that it is closed, but its contents will remain accessible via the
	* <tt>ZipFile</tt> object until either the close method is invoked or the
	* virtual machine exits.
	*/
	public static var OPEN_DELETE(default, null) : Int;
	
	/**
	* Opens a zip file for reading.
	*
	* <p>First, if there is a security manager, its <code>checkRead</code>
	* method is called with the <code>name</code> argument as its argument
	* to ensure the read is allowed.
	*
	* <p>The UTF-8 {@link java.nio.charset.Charset charset} is used to
	* decode the entry names and comments.
	*
	* @param name the name of the zip file
	* @throws ZipException if a ZIP format error has occurred
	* @throws IOException if an I/O error has occurred
	* @throws SecurityException if a security manager exists and its
	*         <code>checkRead</code> method doesn't allow read access to the file.
	*
	* @see SecurityManager#checkRead(java.lang.String)
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Opens a new <code>ZipFile</code> to read from the specified
	* <code>File</code> object in the specified mode.  The mode argument
	* must be either <tt>OPEN_READ</tt> or <tt>OPEN_READ | OPEN_DELETE</tt>.
	*
	* <p>First, if there is a security manager, its <code>checkRead</code>
	* method is called with the <code>name</code> argument as its argument to
	* ensure the read is allowed.
	*
	* <p>The UTF-8 {@link java.nio.charset.Charset charset} is used to
	* decode the entry names and comments
	*
	* @param file the ZIP file to be opened for reading
	* @param mode the mode in which the file is to be opened
	* @throws ZipException if a ZIP format error has occurred
	* @throws IOException if an I/O error has occurred
	* @throws SecurityException if a security manager exists and
	*         its <code>checkRead</code> method
	*         doesn't allow read access to the file,
	*         or its <code>checkDelete</code> method doesn't allow deleting
	*         the file when the <tt>OPEN_DELETE</tt> flag is set.
	* @throws IllegalArgumentException if the <tt>mode</tt> argument is invalid
	* @see SecurityManager#checkRead(java.lang.String)
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(file : java.io.File, mode : Int) : Void;
	
	/**
	* Opens a ZIP file for reading given the specified File object.
	*
	* <p>The UTF-8 {@link java.nio.charset.Charset charset} is used to
	* decode the entry names and comments.
	*
	* @param file the ZIP file to be opened for reading
	* @throws ZipException if a ZIP format error has occurred
	* @throws IOException if an I/O error has occurred
	*/
	@:overload public function new(file : java.io.File) : Void;
	
	/**
	* Opens a new <code>ZipFile</code> to read from the specified
	* <code>File</code> object in the specified mode.  The mode argument
	* must be either <tt>OPEN_READ</tt> or <tt>OPEN_READ | OPEN_DELETE</tt>.
	*
	* <p>First, if there is a security manager, its <code>checkRead</code>
	* method is called with the <code>name</code> argument as its argument to
	* ensure the read is allowed.
	*
	* @param file the ZIP file to be opened for reading
	* @param mode the mode in which the file is to be opened
	* @param charset
	*        the {@linkplain java.nio.charset.Charset charset} to
	*        be used to decode the ZIP entry name and comment that are not
	*        encoded by using UTF-8 encoding (indicated by entry's general
	*        purpose flag).
	*
	* @throws ZipException if a ZIP format error has occurred
	* @throws IOException if an I/O error has occurred
	*
	* @throws SecurityException
	*         if a security manager exists and its <code>checkRead</code>
	*         method doesn't allow read access to the file,or its
	*         <code>checkDelete</code> method doesn't allow deleting the
	*         file when the <tt>OPEN_DELETE</tt> flag is set
	*
	* @throws IllegalArgumentException if the <tt>mode</tt> argument is invalid
	*
	* @see SecurityManager#checkRead(java.lang.String)
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(file : java.io.File, mode : Int, charset : java.nio.charset.Charset) : Void;
	
	/**
	* Opens a zip file for reading.
	*
	* <p>First, if there is a security manager, its <code>checkRead</code>
	* method is called with the <code>name</code> argument as its argument
	* to ensure the read is allowed.
	*
	* @param name the name of the zip file
	* @param charset
	*        the {@linkplain java.nio.charset.Charset charset} to
	*        be used to decode the ZIP entry name and comment that are not
	*        encoded by using UTF-8 encoding (indicated by entry's general
	*        purpose flag).
	*
	* @throws ZipException if a ZIP format error has occurred
	* @throws IOException if an I/O error has occurred
	* @throws SecurityException
	*         if a security manager exists and its <code>checkRead</code>
	*         method doesn't allow read access to the file
	*
	* @see SecurityManager#checkRead(java.lang.String)
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(name : String, charset : java.nio.charset.Charset) : Void;
	
	/**
	* Opens a ZIP file for reading given the specified File object.
	* @param file the ZIP file to be opened for reading
	* @param charset
	*        The {@linkplain java.nio.charset.Charset charset} to be
	*        used to decode the ZIP entry name and comment (ignored if
	*        the <a href="package-summary.html#lang_encoding"> language
	*        encoding bit</a> of the ZIP entry's general purpose bit
	*        flag is set).
	*
	* @throws ZipException if a ZIP format error has occurred
	* @throws IOException if an I/O error has occurred
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(file : java.io.File, charset : java.nio.charset.Charset) : Void;
	
	/**
	* Returns the zip file comment, or null if none.
	*
	* @return the comment string for the zip file, or null if none
	*
	* @throws IllegalStateException if the zip file has been closed
	*
	* Since 1.7
	*/
	@:overload public function getComment() : String;
	
	/**
	* Returns the zip file entry for the specified name, or null
	* if not found.
	*
	* @param name the name of the entry
	* @return the zip file entry, or null if not found
	* @throws IllegalStateException if the zip file has been closed
	*/
	@:overload public function getEntry(name : String) : java.util.zip.ZipEntry;
	
	/**
	* Returns an input stream for reading the contents of the specified
	* zip file entry.
	*
	* <p> Closing this ZIP file will, in turn, close all input
	* streams that have been returned by invocations of this method.
	*
	* @param entry the zip file entry
	* @return the input stream for reading the contents of the specified
	* zip file entry.
	* @throws ZipException if a ZIP format error has occurred
	* @throws IOException if an I/O error has occurred
	* @throws IllegalStateException if the zip file has been closed
	*/
	@:overload public function getInputStream(entry : java.util.zip.ZipEntry) : java.io.InputStream;
	
	/**
	* Returns the path name of the ZIP file.
	* @return the path name of the ZIP file
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns an enumeration of the ZIP file entries.
	* @return an enumeration of the ZIP file entries
	* @throws IllegalStateException if the zip file has been closed
	*/
	@:overload public function entries() : java.util.Enumeration<java.util.zip.ZipEntry>;
	
	/**
	* Returns the number of entries in the ZIP file.
	* @return the number of entries in the ZIP file
	* @throws IllegalStateException if the zip file has been closed
	*/
	@:overload public function size() : Int;
	
	/**
	* Closes the ZIP file.
	* <p> Closing this ZIP file will close all of the input streams
	* previously returned by invocations of the {@link #getInputStream
	* getInputStream} method.
	*
	* @throws IOException if an I/O error has occurred
	*/
	@:overload public function close() : Void;
	
	/**
	* Ensures that the system resources held by this ZipFile object are
	* released when there are no more references to it.
	*
	* <p>
	* Since the time when GC would invoke this method is undetermined,
	* it is strongly recommended that applications invoke the <code>close</code>
	* method as soon they have finished accessing this <code>ZipFile</code>.
	* This will prevent holding up system resources for an undetermined
	* length of time.
	*
	* @throws IOException if an I/O error has occurred
	* @see    java.util.zip.ZipFile#close()
	*/
	@:overload private function finalize() : Void;
	
	
}
@:native('java$util$zip$ZipFile$ZipFileInflaterInputStream') @:internal extern class ZipFile_ZipFileInflaterInputStream extends java.util.zip.InflaterInputStream
{
	@:overload override public function close() : Void;
	
	@:overload override private function fill() : Void;
	
	@:overload override public function available() : Int;
	
	@:overload private function finalize() : Void;
	
	
}
/*
* Inner class implementing the input stream used to read a
* (possibly compressed) zip file entry.
*/
@:native('java$util$zip$ZipFile$ZipFileInputStream') @:internal extern class ZipFile_ZipFileInputStream extends java.io.InputStream
{
	private var jzentry : haxe.Int64;
	
	private var rem : haxe.Int64;
	
	@:overload public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload public function read() : Int;
	
	@:overload public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload public function available() : Int;
	
	@:overload public function size() : haxe.Int64;
	
	@:overload public function close() : Void;
	
	@:overload private function finalize() : Void;
	
	
}

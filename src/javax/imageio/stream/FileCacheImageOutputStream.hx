package javax.imageio.stream;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class FileCacheImageOutputStream extends javax.imageio.stream.ImageOutputStreamImpl
{
	/**
	* Constructs a <code>FileCacheImageOutputStream</code> that will write
	* to a given <code>outputStream</code>.
	*
	* <p> A temporary file is used as a cache.  If
	* <code>cacheDir</code>is non-<code>null</code> and is a
	* directory, the file will be created there.  If it is
	* <code>null</code>, the system-dependent default temporary-file
	* directory will be used (see the documentation for
	* <code>File.createTempFile</code> for details).
	*
	* @param stream an <code>OutputStream</code> to write to.
	* @param cacheDir a <code>File</code> indicating where the
	* cache file should be created, or <code>null</code> to use the
	* system directory.
	*
	* @exception IllegalArgumentException if <code>stream</code>
	* is <code>null</code>.
	* @exception IllegalArgumentException if <code>cacheDir</code> is
	* non-<code>null</code> but is not a directory.
	* @exception IOException if a cache file cannot be created.
	*/
	@:overload public function new(stream : java.io.OutputStream, cacheDir : java.io.File) : Void;
	
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function length() : haxe.Int64;
	
	/**
	* Sets the current stream position and resets the bit offset to
	* 0.  It is legal to seek past the end of the file; an
	* <code>EOFException</code> will be thrown only if a read is
	* performed.  The file length will not be increased until a write
	* is performed.
	*
	* @exception IndexOutOfBoundsException if <code>pos</code> is smaller
	* than the flushed position.
	* @exception IOException if any other I/O error occurs.
	*/
	@:overload override public function seek(pos : haxe.Int64) : Void;
	
	/**
	* Returns <code>true</code> since this
	* <code>ImageOutputStream</code> caches data in order to allow
	* seeking backwards.
	*
	* @return <code>true</code>.
	*
	* @see #isCachedMemory
	* @see #isCachedFile
	*/
	@:overload override public function isCached() : Bool;
	
	/**
	* Returns <code>true</code> since this
	* <code>ImageOutputStream</code> maintains a file cache.
	*
	* @return <code>true</code>.
	*
	* @see #isCached
	* @see #isCachedMemory
	*/
	@:overload override public function isCachedFile() : Bool;
	
	/**
	* Returns <code>false</code> since this
	* <code>ImageOutputStream</code> does not maintain a main memory
	* cache.
	*
	* @return <code>false</code>.
	*
	* @see #isCached
	* @see #isCachedFile
	*/
	@:overload override public function isCachedMemory() : Bool;
	
	/**
	* Closes this <code>FileCacheImageOutputStream</code>.  All
	* pending data is flushed to the output, and the cache file
	* is closed and removed.  The destination <code>OutputStream</code>
	* is not closed.
	*
	* @exception IOException if an error occurs.
	*/
	@:overload override public function close() : Void;
	
	@:overload override public function flushBefore(pos : haxe.Int64) : Void;
	
	
}

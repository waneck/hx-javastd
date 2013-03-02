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
extern class FileCacheImageInputStream extends javax.imageio.stream.ImageInputStreamImpl
{
	/**
	* Constructs a <code>FileCacheImageInputStream</code> that will read
	* from a given <code>InputStream</code>.
	*
	* <p> A temporary file is used as a cache.  If
	* <code>cacheDir</code>is non-<code>null</code> and is a
	* directory, the file will be created there.  If it is
	* <code>null</code>, the system-dependent default temporary-file
	* directory will be used (see the documentation for
	* <code>File.createTempFile</code> for details).
	*
	* @param stream an <code>InputStream</code> to read from.
	* @param cacheDir a <code>File</code> indicating where the
	* cache file should be created, or <code>null</code> to use the
	* system directory.
	*
	* @exception IllegalArgumentException if <code>stream</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if <code>cacheDir</code> is
	* non-<code>null</code> but is not a directory.
	* @exception IOException if a cache file cannot be created.
	*/
	@:overload public function new(stream : java.io.InputStream, cacheDir : java.io.File) : Void;
	
	@:overload public function read() : Int;
	
	@:overload public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Returns <code>true</code> since this
	* <code>ImageInputStream</code> caches data in order to allow
	* seeking backwards.
	*
	* @return <code>true</code>.
	*
	* @see #isCachedMemory
	* @see #isCachedFile
	*/
	@:overload public function isCached() : Bool;
	
	/**
	* Returns <code>true</code> since this
	* <code>ImageInputStream</code> maintains a file cache.
	*
	* @return <code>true</code>.
	*
	* @see #isCached
	* @see #isCachedMemory
	*/
	@:overload public function isCachedFile() : Bool;
	
	/**
	* Returns <code>false</code> since this
	* <code>ImageInputStream</code> does not maintain a main memory
	* cache.
	*
	* @return <code>false</code>.
	*
	* @see #isCached
	* @see #isCachedFile
	*/
	@:overload public function isCachedMemory() : Bool;
	
	/**
	* Closes this <code>FileCacheImageInputStream</code>, closing
	* and removing the cache file.  The source <code>InputStream</code>
	* is not closed.
	*
	* @exception IOException if an error occurs.
	*/
	@:overload public function close() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function finalize() : Void;
	
	
}
@:native('javax$imageio$stream$FileCacheImageInputStream$StreamDisposerRecord') @:internal extern class FileCacheImageInputStream_StreamDisposerRecord implements sun.java2d.DisposerRecord
{
	@:overload public function new(cacheFile : java.io.File, cache : java.io.RandomAccessFile) : Void;
	
	@:overload @:synchronized public function dispose() : Void;
	
	
}

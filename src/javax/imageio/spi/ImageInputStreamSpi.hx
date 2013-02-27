package javax.imageio.spi;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageInputStreamSpi extends javax.imageio.spi.IIOServiceProvider
{
	/**
	* A <code>Class</code> object indicating the legal object type
	* for use by the <code>createInputStreamInstance</code> method.
	*/
	private var inputClass : Class<Dynamic>;
	
	/**
	* Constructs a blank <code>ImageInputStreamSpi</code>.  It is up
	* to the subclass to initialize instance variables and/or
	* override method implementations in order to provide working
	* versions of all methods.
	*/
	@:overload private function new() : Void;
	
	/**
	* Constructs an <code>ImageInputStreamSpi</code> with a given set
	* of values.
	*
	* @param vendorName the vendor name.
	* @param version a version identifier.
	* @param inputClass a <code>Class</code> object indicating the
	* legal object type for use by the
	* <code>createInputStreamInstance</code> method.
	*
	* @exception IllegalArgumentException if <code>vendorName</code>
	* is <code>null</code>.
	* @exception IllegalArgumentException if <code>version</code>
	* is <code>null</code>.
	*/
	@:overload public function new(vendorName : String, version : String, inputClass : Class<Dynamic>) : Void;
	
	/**
	* Returns a <code>Class</code> object representing the class or
	* interface type that must be implemented by an input source in
	* order to be "wrapped" in an <code>ImageInputStream</code> via
	* the <code>createInputStreamInstance</code> method.
	*
	* <p> Typical return values might include
	* <code>InputStream.class</code> or <code>URL.class</code>, but
	* any class may be used.
	*
	* @return a <code>Class</code> variable.
	*
	* @see #createInputStreamInstance(Object, boolean, File)
	*/
	@:overload public function getInputClass() : Class<Dynamic>;
	
	/**
	* Returns <code>true</code> if the <code>ImageInputStream</code>
	* implementation associated with this service provider can
	* optionally make use of a cache file for improved performance
	* and/or memory footrprint.  If <code>false</code>, the value of
	* the <code>useCache</code> argument to
	* <code>createInputStreamInstance</code> will be ignored.
	*
	* <p> The default implementation returns <code>false</code>.
	*
	* @return <code>true</code> if a cache file can be used by the
	* input streams created by this service provider.
	*/
	@:overload public function canUseCacheFile() : Bool;
	
	/**
	* Returns <code>true</code> if the <code>ImageInputStream</code>
	* implementation associated with this service provider requires
	* the use of a cache <code>File</code>.  If <code>true</code>,
	* the value of the <code>useCache</code> argument to
	* <code>createInputStreamInstance</code> will be ignored.
	*
	* <p> The default implementation returns <code>false</code>.
	*
	* @return <code>true</code> if a cache file is needed by the
	* input streams created by this service provider.
	*/
	@:overload public function needsCacheFile() : Bool;
	
	/**
	* Returns an instance of the <code>ImageInputStream</code>
	* implementation associated with this service provider.  If the
	* use of a cache file is optional, the <code>useCache</code>
	* parameter will be consulted.  Where a cache is required, or
	* not applicable, the value of <code>useCache</code> will be ignored.
	*
	* @param input an object of the class type returned by
	* <code>getInputClass</code>.
	* @param useCache a <code>boolean</code> indicating whether a
	* cache file should be used, in cases where it is optional.
	* @param cacheDir a <code>File</code> indicating where the
	* cache file should be created, or <code>null</code> to use the
	* system directory.
	*
	* @return an <code>ImageInputStream</code> instance.
	*
	* @exception IllegalArgumentException if <code>input</code> is
	* not an instance of the correct class or is <code>null</code>.
	* @exception IllegalArgumentException if a cache file is needed
	* but <code>cacheDir</code> is non-<code>null</code> and is not a
	* directory.
	* @exception IOException if a cache file is needed but cannot be
	* created.
	*
	* @see #getInputClass
	* @see #canUseCacheFile
	* @see #needsCacheFile
	*/
	@:overload @:abstract public function createInputStreamInstance(input : Dynamic, useCache : Bool, cacheDir : java.io.File) : javax.imageio.stream.ImageInputStream;
	
	/**
	* Returns an instance of the <code>ImageInputStream</code>
	* implementation associated with this service provider.  A cache
	* file will be created in the system-dependent default
	* temporary-file directory, if needed.
	*
	* @param input an object of the class type returned by
	* <code>getInputClass</code>.
	*
	* @return an <code>ImageInputStream</code> instance.
	*
	* @exception IllegalArgumentException if <code>input</code> is
	* not an instance of the correct class or is <code>null</code>.
	* @exception IOException if a cache file is needed but cannot be
	* created.
	*
	* @see #getInputClass()
	*/
	@:overload public function createInputStreamInstance(input : Dynamic) : javax.imageio.stream.ImageInputStream;
	
	
}

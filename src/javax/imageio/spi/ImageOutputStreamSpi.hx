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
extern class ImageOutputStreamSpi extends javax.imageio.spi.IIOServiceProvider
{
	/**
	* A <code>Class</code> object indicating the legal object type
	* for use by the <code>createInputStreamInstance</code> method.
	*/
	@:protected private var outputClass : Class<Dynamic>;
	
	/**
	* Constructs a blank <code>ImageOutputStreamSpi</code>.  It is up
	* to the subclass to initialize instance variables and/or
	* override method implementations in order to provide working
	* versions of all methods.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Constructs an <code>ImageOutputStreamSpi</code> with a given
	* set of values.
	*
	* @param vendorName the vendor name.
	* @param version a version identifier.
	* @param outputClass a <code>Class</code> object indicating the
	* legal object type for use by the
	* <code>createOutputStreamInstance</code> method.
	*
	* @exception IllegalArgumentException if <code>vendorName</code>
	* is <code>null</code>.
	* @exception IllegalArgumentException if <code>version</code>
	* is <code>null</code>.
	*/
	@:overload @:public public function new(vendorName : String, version : String, outputClass : Class<Dynamic>) : Void;
	
	/**
	* Returns a <code>Class</code> object representing the class or
	* interface type that must be implemented by an output
	* destination in order to be "wrapped" in an
	* <code>ImageOutputStream</code> via the
	* <code>createOutputStreamInstance</code> method.
	*
	* <p> Typical return values might include
	* <code>OutputStream.class</code> or <code>File.class</code>, but
	* any class may be used.
	*
	* @return a <code>Class</code> variable.
	*
	* @see #createOutputStreamInstance(Object, boolean, File)
	*/
	@:overload @:public public function getOutputClass() : Class<Dynamic>;
	
	/**
	* Returns <code>true</code> if the <code>ImageOutputStream</code>
	* implementation associated with this service provider can
	* optionally make use of a cache <code>File</code> for improved
	* performance and/or memory footrprint.  If <code>false</code>,
	* the value of the <code>cacheFile</code> argument to
	* <code>createOutputStreamInstance</code> will be ignored.
	*
	* <p> The default implementation returns <code>false</code>.
	*
	* @return <code>true</code> if a cache file can be used by the
	* output streams created by this service provider.
	*/
	@:overload @:public public function canUseCacheFile() : Bool;
	
	/**
	* Returns <code>true</code> if the <code>ImageOutputStream</code>
	* implementation associated with this service provider requires
	* the use of a cache <code>File</code>.
	*
	* <p> The default implementation returns <code>false</code>.
	*
	* @return <code>true</code> if a cache file is needed by the
	* output streams created by this service provider.
	*/
	@:overload @:public public function needsCacheFile() : Bool;
	
	/**
	* Returns an instance of the <code>ImageOutputStream</code>
	* implementation associated with this service provider.  If the
	* use of a cache file is optional, the <code>useCache</code>
	* parameter will be consulted.  Where a cache is required, or
	* not applicable, the value of <code>useCache</code> will be ignored.
	*
	* @param output an object of the class type returned by
	* <code>getOutputClass</code>.
	* @param useCache a <code>boolean</code> indicating whether a
	* cache file should be used, in cases where it is optional.
	* @param cacheDir a <code>File</code> indicating where the
	* cache file should be created, or <code>null</code> to use the
	* system directory.
	*
	* @return an <code>ImageOutputStream</code> instance.
	*
	* @exception IllegalArgumentException if <code>output</code> is
	* not an instance of the correct class or is <code>null</code>.
	* @exception IllegalArgumentException if a cache file is needed,
	* but <code>cacheDir</code> is non-<code>null</code> and is not a
	* directory.
	* @exception IOException if a cache file is needed but cannot be
	* created.
	*
	* @see #getOutputClass
	*/
	@:overload @:public @:abstract public function createOutputStreamInstance(output : Dynamic, useCache : Bool, cacheDir : java.io.File) : javax.imageio.stream.ImageOutputStream;
	
	/**
	* Returns an instance of the <code>ImageOutputStream</code>
	* implementation associated with this service provider.  A cache
	* file will be created in the system-dependent default
	* temporary-file directory, if needed.
	*
	* @param output an object of the class type returned by
	* <code>getOutputClass</code>.
	*
	* @return an <code>ImageOutputStream</code> instance.
	*
	* @exception IllegalArgumentException if <code>output</code> is
	* not an instance of the correct class or is <code>null</code>.
	* @exception IOException if a cache file is needed but cannot be
	* created.
	*
	* @see #getOutputClass()
	*/
	@:overload @:public public function createOutputStreamInstance(output : Dynamic) : javax.imageio.stream.ImageOutputStream;
	
	
}

package com.sun.tools.javac.nio;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern interface PathFileManager extends javax.tools.JavaFileManager
{
	/**
	* Get the default file system used to create paths. If no value has been
	* set, the default file system is {@link FileSystems#getDefault}.
	*/
	@:overload public function getDefaultFileSystem() : java.nio.file.FileSystem;
	
	/**
	* Set the default file system used to create paths.
	* @param fs the default file system used to create any new paths.
	*/
	@:overload public function setDefaultFileSystem(fs : java.nio.file.FileSystem) : Void;
	
	/**
	* Get file objects representing the given files.
	*
	* @param paths a list of paths
	* @return a list of file objects
	* @throws IllegalArgumentException if the list of paths includes
	* a directory
	*/
	@:overload public function getJavaFileObjectsFromPaths(paths : java.lang.Iterable<java.nio.file.Path>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	/**
	* Get file objects representing the given paths.
	* Convenience method equivalent to:
	*
	* <pre>
	*     getJavaFileObjectsFromPaths({@linkplain java.util.Arrays#asList Arrays.asList}(paths))
	* </pre>
	*
	* @param paths an array of paths
	* @return a list of file objects
	* @throws IllegalArgumentException if the array of files includes
	* a directory
	* @throws NullPointerException if the given array contains null
	* elements
	*/
	@:overload public function getJavaFileObjects(paths : java.NativeArray<java.nio.file.Path>) : java.lang.Iterable<javax.tools.JavaFileObject>;
	
	/**
	* Return the Path for a file object that has been obtained from this
	* file manager.
	*
	* @param fo A file object that has been obtained from this file manager.
	* @return The underlying Path object.
	* @throws IllegalArgumentException is the file object was not obtained from
	* from this file manager.
	*/
	@:overload public function getPath(fo : javax.tools.FileObject) : java.nio.file.Path;
	
	/**
	* Get the search path associated with the given location.
	*
	* @param location a location
	* @return a list of paths or {@code null} if this location has no
	* associated search path
	* @see #setLocation
	*/
	@:overload public function getLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location) : java.lang.Iterable<java.nio.file.Path>;
	
	/**
	* Associate the given search path with the given location.  Any
	* previous value will be discarded.
	*
	* @param location a location
	* @param searchPath a list of files, if {@code null} use the default
	* search path for this location
	* @see #getLocation
	* @throws IllegalArgumentException if location is an output
	* location and searchpath does not contain exactly one element
	* @throws IOException if location is an output location and searchpath
	* does not represent an existing directory
	*/
	@:overload public function setLocation(location : javax.tools.JavaFileManager.JavaFileManager_Location, searchPath : java.lang.Iterable<java.nio.file.Path>) : Void;
	
	
}

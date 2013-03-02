package sun.misc;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class is used to maintain mappings from packages, classes
* and resources to their enclosing JAR files. Mappings are kept
* at the package level except for class or resource files that
* are located at the root directory. URLClassLoader uses the mapping
* information to determine where to fetch an extension class or
* resource from.
*
* @author  Zhenghua Li
* @since   1.3
*/
@:require(java3) extern class JarIndex
{
	/**
	* The index file name.
	*/
	public static var INDEX_NAME(default, null) : String;
	
	/**
	* Constructs a new, empty jar index.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new index from the specified input stream.
	*
	* @param is the input stream containing the index data
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Constructs a new index for the specified list of jar files.
	*
	* @param files the list of jar files to construct the index from.
	*/
	@:overload public function new(files : java.NativeArray<String>) : Void;
	
	/**
	* Returns the jar index, or <code>null</code> if none.
	*
	* This single parameter version of the method is retained
	* for binary compatibility with earlier releases.
	*
	* @param jar the JAR file to get the index from.
	* @exception IOException if an I/O error has occurred.
	*/
	@:overload public static function getJarIndex(jar : java.util.jar.JarFile) : sun.misc.JarIndex;
	
	/**
	* Returns the jar index, or <code>null</code> if none.
	*
	* @param jar the JAR file to get the index from.
	* @exception IOException if an I/O error has occurred.
	*/
	@:overload public static function getJarIndex(jar : java.util.jar.JarFile, metaIndex : sun.misc.MetaIndex) : sun.misc.JarIndex;
	
	/**
	* Returns the jar files that are defined in this index.
	*/
	@:overload public function getJarFiles() : java.NativeArray<String>;
	
	/**
	* Returns the list of jar files that are mapped to the file.
	*
	* @param fileName the key of the mapping
	*/
	@:overload public function get(fileName : String) : java.util.LinkedList<Dynamic>;
	
	/**
	* Add the mapping from the specified file to the specified
	* jar file. If there were no mapping for the package of the
	* specified file before, a new linked list will be created,
	* the jar file is added to the list and a new mapping from
	* the package to the jar file list is added to the hashmap.
	* Otherwise, the jar file will be added to the end of the
	* existing list.
	*
	* @param fileName the file name
	* @param jarName the jar file that the file is mapped to
	*
	*/
	@:overload public function add(fileName : String, jarName : String) : Void;
	
	/**
	* Writes the index to the specified OutputStream
	*
	* @param out the output stream
	* @exception IOException if an I/O error has occurred
	*/
	@:overload public function write(out : java.io.OutputStream) : Void;
	
	/**
	* Reads the index from the specified InputStream.
	*
	* @param is the input stream
	* @exception IOException if an I/O error has occurred
	*/
	@:overload public function read(is : java.io.InputStream) : Void;
	
	/**
	* Merges the current index into another index, taking into account
	* the relative path of the current index.
	*
	* @param toIndex The destination index which the current index will
	*                merge into.
	* @param path    The relative path of the this index to the destination
	*                index.
	*
	*/
	@:overload public function merge(toIndex : sun.misc.JarIndex, path : String) : Void;
	
	
}

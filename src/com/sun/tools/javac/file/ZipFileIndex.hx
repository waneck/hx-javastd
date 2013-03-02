package com.sun.tools.javac.file;
/*
* Copyright (c) 2007, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ZipFileIndex
{
	public static var NOT_MODIFIED(default, null) : haxe.Int64;
	
	@:overload @:synchronized public function isOpen() : Bool;
	
	@:overload public function toString() : String;
	
	@:overload private function finalize() : Void;
	
	@:overload @:synchronized public function close() : Void;
	
	/**
	* Returns a javac List of filenames within a directory in the ZipFileIndex.
	*/
	@:overload @:synchronized public function getFiles(path : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory) : com.sun.tools.javac.util.List<String>;
	
	@:overload @:synchronized public function getDirectories(path : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory) : java.util.List<String>;
	
	@:overload @:synchronized public function getAllDirectories() : java.util.Set<com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory>;
	
	/**
	* Tests if a specific path exists in the zip.  This method will return true
	* for file entries and directories.
	*
	* @param path A path within the zip.
	* @return True if the path is a file or dir, false otherwise.
	*/
	@:overload @:synchronized public function contains(path : com.sun.tools.javac.file.RelativePath) : Bool;
	
	@:overload @:synchronized public function isDirectory(path : com.sun.tools.javac.file.RelativePath) : Bool;
	
	@:overload @:synchronized public function getLastModified(path : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeFile) : haxe.Int64;
	
	@:overload @:synchronized public function length(path : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeFile) : Int;
	
	@:overload @:synchronized public function read(path : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeFile) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:synchronized public function read(path : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeFile, buffer : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Returns the last modified timestamp of a zip file.
	* @return long
	*/
	@:overload public function getZipFileLastModified() : haxe.Int64;
	
	@:overload public function writeZipIndex() : Bool;
	
	@:overload public function getZipFile() : java.io.File;
	
	
}
/* ----------------------------------------------------------------------------
* ZipDirectory
* ----------------------------------------------------------------------------*/
@:native('com$sun$tools$javac$file$ZipFileIndex$ZipDirectory') @:internal extern class ZipFileIndex_ZipDirectory
{
	@:overload public function new(zipRandomFile : java.io.RandomAccessFile, start : haxe.Int64, end : haxe.Int64, index : com.sun.tools.javac.file.ZipFileIndex) : Void;
	
	
}
/** ------------------------------------------------------------------------
*  DirectoryEntry class
* -------------------------------------------------------------------------*/
@:native('com$sun$tools$javac$file$ZipFileIndex$DirectoryEntry') @:internal extern class ZipFileIndex_DirectoryEntry
{
	
}
@:native('com$sun$tools$javac$file$ZipFileIndex$Entry') @:internal extern class ZipFileIndex_Entry implements java.lang.Comparable<com.sun.tools.javac.file.ZipFileIndex.ZipFileIndex_Entry>
{
	public static var EMPTY_ARRAY(default, null) : java.NativeArray<com.sun.tools.javac.file.ZipFileIndex.ZipFileIndex_Entry>;
	
	@:overload public function new(path : com.sun.tools.javac.file.RelativePath) : Void;
	
	@:overload public function new(directory : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, name : String) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getFileName() : String;
	
	@:overload public function getLastModified() : haxe.Int64;
	
	@:overload public function isDirectory() : Bool;
	
	@:overload public function compareTo(other : com.sun.tools.javac.file.ZipFileIndex.ZipFileIndex_Entry) : Int;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
/*
* Exception primarily used to implement a failover, used exclusively here.
*/
@:native('com$sun$tools$javac$file$ZipFileIndex$ZipFormatException') @:internal extern class ZipFileIndex_ZipFormatException extends java.io.IOException
{
	@:overload private function new(message : String) : Void;
	
	@:overload private function new(message : String, cause : java.lang.Throwable) : Void;
	
	
}

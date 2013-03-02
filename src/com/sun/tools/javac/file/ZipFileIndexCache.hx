package com.sun.tools.javac.file;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ZipFileIndexCache
{
	@:overload @:synchronized public static function getSharedInstance() : com.sun.tools.javac.file.ZipFileIndexCache;
	
	/** Get a context-specific instance of a cache. */
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.file.ZipFileIndexCache;
	
	/**
	* Returns a list of all ZipFileIndex entries
	*
	* @return A list of ZipFileIndex entries, or an empty list
	*/
	@:overload public function getZipFileIndexes() : java.util.List<com.sun.tools.javac.file.ZipFileIndex>;
	
	/**
	* Returns a list of all ZipFileIndex entries
	*
	* @param openedOnly If true it returns a list of only opened ZipFileIndex entries, otherwise
	*                   all ZipFileEntry(s) are included into the list.
	* @return A list of ZipFileIndex entries, or an empty list
	*/
	@:overload @:synchronized public function getZipFileIndexes(openedOnly : Bool) : java.util.List<com.sun.tools.javac.file.ZipFileIndex>;
	
	@:overload @:synchronized public function getZipFileIndex(zipFile : java.io.File, symbolFilePrefix : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, useCache : Bool, cacheLocation : String, writeIndex : Bool) : com.sun.tools.javac.file.ZipFileIndex;
	
	@:overload @:synchronized public function getExistingZipIndex(zipFile : java.io.File) : com.sun.tools.javac.file.ZipFileIndex;
	
	@:overload @:synchronized public function clearCache() : Void;
	
	@:overload @:synchronized public function clearCache(timeNotUsed : haxe.Int64) : Void;
	
	@:overload @:synchronized public function removeFromCache(file : java.io.File) : Void;
	
	/** Sets already opened list of ZipFileIndexes from an outside client
	* of the compiler. This functionality should be used in a non-batch clients of the compiler.
	*/
	@:overload @:synchronized public function setOpenedIndexes(indexes : java.util.List<com.sun.tools.javac.file.ZipFileIndex>) : Void;
	
	
}

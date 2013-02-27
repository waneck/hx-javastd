package sun.nio.fs;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UnixFileSystem extends java.nio.file.FileSystem
{
	@:overload @:final override public function provider() : java.nio.file.spi.FileSystemProvider;
	
	@:overload @:final override public function getSeparator() : String;
	
	@:overload @:final override public function isOpen() : Bool;
	
	@:overload @:final override public function isReadOnly() : Bool;
	
	@:overload @:final override public function close() : Void;
	
	/**
	* Unix systems only have a single root directory (/)
	*/
	@:overload @:final override public function getRootDirectories() : java.lang.Iterable<java.nio.file.Path>;
	
	@:overload @:final override public function getFileStores() : java.lang.Iterable<java.nio.file.FileStore>;
	
	@:overload @:final override public function getPath(first : String, more : java.NativeArray<String>) : java.nio.file.Path;
	
	@:overload override public function getPathMatcher(syntaxAndInput : String) : java.nio.file.PathMatcher;
	
	@:overload @:final override public function getUserPrincipalLookupService() : java.nio.file.attribute.UserPrincipalLookupService;
	
	
}
/**
* Iterator returned by getFileStores method.
*/
@:native('sun$nio$fs$UnixFileSystem$FileStoreIterator') @:internal extern class UnixFileSystem_FileStoreIterator implements java.util.Iterator<java.nio.file.FileStore>
{
	@:overload @:synchronized public function hasNext() : Bool;
	
	@:overload @:synchronized public function next() : java.nio.file.FileStore;
	
	@:overload public function remove() : Void;
	
	
}
@:native('sun$nio$fs$UnixFileSystem$LookupService') @:internal extern class UnixFileSystem_LookupService
{
	
}

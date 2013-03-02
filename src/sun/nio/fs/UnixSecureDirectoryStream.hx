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
/**
* Unix implementation of SecureDirectoryStream.
*/
@:internal extern class UnixSecureDirectoryStream implements java.nio.file.SecureDirectoryStream<java.nio.file.Path>
{
	@:overload public function close() : Void;
	
	@:overload public function iterator() : java.util.Iterator<java.nio.file.Path>;
	
	/**
	* Opens sub-directory in this directory
	*/
	@:overload public function newDirectoryStream(obj : java.nio.file.Path, options : java.NativeArray<java.nio.file.LinkOption>) : java.nio.file.SecureDirectoryStream<java.nio.file.Path>;
	
	/**
	* Opens file in this directory
	*/
	@:overload public function newByteChannel(obj : java.nio.file.Path, options : java.util.Set<java.nio.file.OpenOption>, attrs : java.NativeArray<java.nio.file.attribute.FileAttribute<Dynamic>>) : java.nio.channels.SeekableByteChannel;
	
	@:overload public function deleteFile(file : java.nio.file.Path) : Void;
	
	@:overload public function deleteDirectory(dir : java.nio.file.Path) : Void;
	
	/**
	* Rename/move file in this directory to another (open) directory
	*/
	@:overload public function move(fromObj : java.nio.file.Path, dir : java.nio.file.SecureDirectoryStream<java.nio.file.Path>, toObj : java.nio.file.Path) : Void;
	
	/**
	* Returns file attribute view bound to this directory
	*/
	@:overload public function getFileAttributeView<V : java.nio.file.attribute.FileAttributeView>(type : Class<V>) : V;
	
	/**
	* Returns file attribute view bound to dfd/filename.
	*/
	@:overload public function getFileAttributeView<V : java.nio.file.attribute.FileAttributeView>(obj : java.nio.file.Path, type : Class<V>, options : java.NativeArray<java.nio.file.LinkOption>) : V;
	
	
}
/**
* A BasicFileAttributeView implementation that using a dfd/name pair.
*/
@:native('sun$nio$fs$UnixSecureDirectoryStream$BasicFileAttributeViewImpl') @:internal extern class UnixSecureDirectoryStream_BasicFileAttributeViewImpl implements java.nio.file.attribute.BasicFileAttributeView
{
	@:overload public function name() : String;
	
	@:overload public function readAttributes() : java.nio.file.attribute.BasicFileAttributes;
	
	@:overload public function setTimes(lastModifiedTime : java.nio.file.attribute.FileTime, lastAccessTime : java.nio.file.attribute.FileTime, createTime : java.nio.file.attribute.FileTime) : Void;
	
	
}
/**
* A PosixFileAttributeView implementation that using a dfd/name pair.
*/
@:native('sun$nio$fs$UnixSecureDirectoryStream$PosixFileAttributeViewImpl') @:internal extern class UnixSecureDirectoryStream_PosixFileAttributeViewImpl extends sun.nio.fs.UnixSecureDirectoryStream.UnixSecureDirectoryStream_BasicFileAttributeViewImpl implements java.nio.file.attribute.PosixFileAttributeView
{
	@:overload override public function name() : String;
	
	@:overload override public function readAttributes() : java.nio.file.attribute.PosixFileAttributes;
	
	@:overload public function setPermissions(perms : java.util.Set<java.nio.file.attribute.PosixFilePermission>) : Void;
	
	@:overload public function getOwner() : java.nio.file.attribute.UserPrincipal;
	
	@:overload public function setOwner(owner : java.nio.file.attribute.UserPrincipal) : Void;
	
	@:overload public function setGroup(group : java.nio.file.attribute.GroupPrincipal) : Void;
	
	
}

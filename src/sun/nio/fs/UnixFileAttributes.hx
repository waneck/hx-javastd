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
@:internal extern class UnixFileAttributes implements java.nio.file.attribute.PosixFileAttributes
{
	@:overload public function lastModifiedTime() : java.nio.file.attribute.FileTime;
	
	@:overload public function lastAccessTime() : java.nio.file.attribute.FileTime;
	
	@:overload public function creationTime() : java.nio.file.attribute.FileTime;
	
	@:overload public function isRegularFile() : Bool;
	
	@:overload public function isDirectory() : Bool;
	
	@:overload public function isSymbolicLink() : Bool;
	
	@:overload public function isOther() : Bool;
	
	@:overload public function size() : haxe.Int64;
	
	@:overload public function fileKey() : sun.nio.fs.UnixFileKey;
	
	@:overload public function owner() : java.nio.file.attribute.UserPrincipal;
	
	@:overload public function group() : java.nio.file.attribute.GroupPrincipal;
	
	@:overload public function permissions() : java.util.Set<java.nio.file.attribute.PosixFilePermission>;
	
	
}
@:native('sun$nio$fs$UnixFileAttributes$UnixAsBasicFileAttributes') @:internal extern class UnixFileAttributes_UnixAsBasicFileAttributes implements java.nio.file.attribute.BasicFileAttributes
{
	@:overload public function lastModifiedTime() : java.nio.file.attribute.FileTime;
	
	@:overload public function lastAccessTime() : java.nio.file.attribute.FileTime;
	
	@:overload public function creationTime() : java.nio.file.attribute.FileTime;
	
	@:overload public function isRegularFile() : Bool;
	
	@:overload public function isDirectory() : Bool;
	
	@:overload public function isSymbolicLink() : Bool;
	
	@:overload public function isOther() : Bool;
	
	@:overload public function size() : haxe.Int64;
	
	@:overload public function fileKey() : Dynamic;
	
	
}
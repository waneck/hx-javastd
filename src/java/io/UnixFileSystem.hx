package java.io;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UnixFileSystem extends java.io.FileSystem
{
	@:overload public function new() : Void;
	
	/* -- Normalization and construction -- */
	@:overload override public function getSeparator() : java.StdTypes.Char16;
	
	@:overload override public function getPathSeparator() : java.StdTypes.Char16;
	
	/* Check that the given pathname is normal.  If not, invoke the real
	normalizer on the part of the pathname that requires normalization.
	This way we iterate through the whole pathname string only once. */
	@:overload override public function normalize(pathname : String) : String;
	
	@:overload override public function prefixLength(pathname : String) : Int;
	
	@:overload override public function resolve(parent : String, child : String) : String;
	
	@:overload override public function getDefaultParent() : String;
	
	@:overload override public function fromURIPath(path : String) : String;
	
	/* -- Path operations -- */
	@:overload override public function isAbsolute(f : java.io.File) : Bool;
	
	@:overload override public function resolve(f : java.io.File) : String;
	
	@:overload override public function canonicalize(path : String) : String;
	
	/* -- Attribute accessors -- */
	@:overload @:native public function getBooleanAttributes0(f : java.io.File) : Int;
	
	@:overload override public function getBooleanAttributes(f : java.io.File) : Int;
	
	@:overload @:native override public function checkAccess(f : java.io.File, access : Int) : Bool;
	
	@:overload @:native override public function getLastModifiedTime(f : java.io.File) : haxe.Int64;
	
	@:overload @:native override public function getLength(f : java.io.File) : haxe.Int64;
	
	@:overload @:native override public function setPermission(f : java.io.File, access : Int, enable : Bool, owneronly : Bool) : Bool;
	
	/* -- File operations -- */
	@:overload @:native override public function createFileExclusively(path : String) : Bool;
	
	@:overload override public function delete(f : java.io.File) : Bool;
	
	@:overload @:native override public function list(f : java.io.File) : java.NativeArray<String>;
	
	@:overload @:native override public function createDirectory(f : java.io.File) : Bool;
	
	@:overload override public function rename(f1 : java.io.File, f2 : java.io.File) : Bool;
	
	@:overload @:native override public function setLastModifiedTime(f : java.io.File, time : haxe.Int64) : Bool;
	
	@:overload @:native override public function setReadOnly(f : java.io.File) : Bool;
	
	/* -- Filesystem interface -- */
	@:overload override public function listRoots() : java.NativeArray<java.io.File>;
	
	/* -- Disk usage -- */
	@:overload @:native override public function getSpace(f : java.io.File, t : Int) : haxe.Int64;
	
	/* -- Basic infrastructure -- */
	@:overload override public function compare(f1 : java.io.File, f2 : java.io.File) : Int;
	
	@:overload override public function hashCode(f : java.io.File) : Int;
	
	
}

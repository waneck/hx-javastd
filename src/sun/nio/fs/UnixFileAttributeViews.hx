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
@:internal extern class UnixFileAttributeViews
{
	
}
@:native('sun$nio$fs$UnixFileAttributeViews$Basic') @:internal extern class UnixFileAttributeViews_Basic extends sun.nio.fs.AbstractBasicFileAttributeView
{
	private var file(default, null) : sun.nio.fs.UnixPath;
	
	private var followLinks(default, null) : Bool;
	
	@:overload override public function readAttributes() : java.nio.file.attribute.BasicFileAttributes;
	
	@:overload override public function setTimes(lastModifiedTime : java.nio.file.attribute.FileTime, lastAccessTime : java.nio.file.attribute.FileTime, createTime : java.nio.file.attribute.FileTime) : Void;
	
	
}
@:native('sun$nio$fs$UnixFileAttributeViews$Posix') @:internal extern class UnixFileAttributeViews_Posix extends sun.nio.fs.UnixFileAttributeViews.UnixFileAttributeViews_Basic implements java.nio.file.attribute.PosixFileAttributeView
{
	@:overload override public function name() : String;
	
	@:overload override public function setAttribute(attribute : String, value : Dynamic) : Void;
	
	@:overload override public function readAttributes(requested : java.NativeArray<String>) : java.util.Map<String, Dynamic>;
	
	@:overload override public function readAttributes() : sun.nio.fs.UnixFileAttributes;
	
	@:overload public function setPermissions(perms : java.util.Set<java.nio.file.attribute.PosixFilePermission>) : Void;
	
	@:overload public function setOwner(owner : java.nio.file.attribute.UserPrincipal) : Void;
	
	@:overload public function getOwner() : java.nio.file.attribute.UserPrincipal;
	
	@:overload public function setGroup(group : java.nio.file.attribute.GroupPrincipal) : Void;
	
	
}
@:native('sun$nio$fs$UnixFileAttributeViews$Unix') @:internal extern class UnixFileAttributeViews_Unix extends sun.nio.fs.UnixFileAttributeViews.UnixFileAttributeViews_Posix
{
	@:overload override public function name() : String;
	
	@:overload override public function setAttribute(attribute : String, value : Dynamic) : Void;
	
	@:overload override public function readAttributes(requested : java.NativeArray<String>) : java.util.Map<String, Dynamic>;
	
	
}

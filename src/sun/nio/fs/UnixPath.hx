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
* Solaris/Linux implementation of java.nio.file.Path
*/
@:internal extern class UnixPath extends sun.nio.fs.AbstractPath
{
	@:overload public function getFileSystem() : java.io.UnixFileSystem;
	
	@:overload public function getRoot() : sun.nio.fs.UnixPath;
	
	@:overload public function getFileName() : sun.nio.fs.UnixPath;
	
	@:overload public function getParent() : sun.nio.fs.UnixPath;
	
	@:overload public function getNameCount() : Int;
	
	@:overload public function getName(index : Int) : sun.nio.fs.UnixPath;
	
	@:overload public function subpath(beginIndex : Int, endIndex : Int) : sun.nio.fs.UnixPath;
	
	@:overload public function isAbsolute() : Bool;
	
	@:overload public function resolve(obj : java.nio.file.Path) : sun.nio.fs.UnixPath;
	
	@:overload public function relativize(obj : java.nio.file.Path) : sun.nio.fs.UnixPath;
	
	@:overload public function normalize() : java.nio.file.Path;
	
	@:overload public function startsWith(other : java.nio.file.Path) : Bool;
	
	@:overload public function endsWith(other : java.nio.file.Path) : Bool;
	
	@:overload public function compareTo(other : java.nio.file.Path) : Int;
	
	@:overload public function equals(ob : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	@:overload public function toAbsolutePath() : sun.nio.fs.UnixPath;
	
	@:overload public function toRealPath(options : java.NativeArray<java.nio.file.LinkOption>) : java.nio.file.Path;
	
	@:overload public function toUri() : java.net.URI;
	
	@:overload public function register(watcher : java.nio.file.WatchService, events : java.NativeArray<java.nio.file.WatchEvent.WatchEvent_Kind<Dynamic>>, modifiers : java.NativeArray<java.nio.file.WatchEvent.WatchEvent_Modifier>) : java.nio.file.WatchKey;
	
	
}

package sun.nio.fs;
/*
* Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Unix implementation of java.nio.file.DirectoryStream
*/
@:internal extern class UnixDirectoryStream implements java.nio.file.DirectoryStream<java.nio.file.Path>
{
	@:overload @:protected @:final private function directory() : sun.nio.fs.UnixPath;
	
	@:overload @:protected @:final private function readLock() : java.util.concurrent.locks.Lock;
	
	@:overload @:protected @:final private function writeLock() : java.util.concurrent.locks.Lock;
	
	@:overload @:protected @:final private function isOpen() : Bool;
	
	@:overload @:protected @:final private function closeImpl() : Bool;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:protected @:final private function iterator(ds : java.nio.file.DirectoryStream<java.nio.file.Path>) : java.util.Iterator<java.nio.file.Path>;
	
	@:overload @:public public function iterator() : java.util.Iterator<java.nio.file.Path>;
	
	
}
/**
* Iterator implementation
*/
@:native('sun$nio$fs$UnixDirectoryStream$UnixDirectoryIterator') @:internal extern class UnixDirectoryStream_UnixDirectoryIterator implements java.util.Iterator<java.nio.file.Path>
{
	@:overload @:public @:synchronized public function hasNext() : Bool;
	
	@:overload @:public @:synchronized public function next() : java.nio.file.Path;
	
	@:overload @:public public function remove() : Void;
	
	
}

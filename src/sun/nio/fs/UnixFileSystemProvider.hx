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
* Base implementation of FileSystemProvider
*/
extern class UnixFileSystemProvider extends sun.nio.fs.AbstractFileSystemProvider
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public @:final override public function getScheme() : String;
	
	@:overload @:public @:final override public function newFileSystem(uri : java.net.URI, env : java.util.Map<String, Dynamic>) : java.nio.file.FileSystem;
	
	@:overload @:public @:final override public function getFileSystem(uri : java.net.URI) : java.nio.file.FileSystem;
	
	@:overload @:public override public function getPath(uri : java.net.URI) : java.nio.file.Path;
	
	@:overload @:public override public function getFileAttributeView<V : java.nio.file.attribute.FileAttributeView>(obj : java.nio.file.Path, type : Class<V>, options : java.NativeArray<java.nio.file.LinkOption>) : V;
	
	@:overload @:public override public function readAttributes<A : java.nio.file.attribute.BasicFileAttributes>(file : java.nio.file.Path, type : Class<A>, options : java.NativeArray<java.nio.file.LinkOption>) : A;
	
	@:overload @:protected private function getFileAttributeView(obj : java.nio.file.Path, name : String, options : java.NativeArray<java.nio.file.LinkOption>) : sun.nio.fs.DynamicFileAttributeView;
	
	@:overload @:public override public function newFileChannel(obj : java.nio.file.Path, options : java.util.Set<java.nio.file.OpenOption>, attrs : java.NativeArray<java.nio.file.attribute.FileAttribute<Dynamic>>) : java.nio.channels.FileChannel;
	
	@:overload @:public override public function newAsynchronousFileChannel(obj : java.nio.file.Path, options : java.util.Set<java.nio.file.OpenOption>, executor : java.util.concurrent.ExecutorService, attrs : java.NativeArray<java.nio.file.attribute.FileAttribute<Dynamic>>) : java.nio.channels.AsynchronousFileChannel;
	
	@:overload @:public override public function newByteChannel(obj : java.nio.file.Path, options : java.util.Set<java.nio.file.OpenOption>, attrs : java.NativeArray<java.nio.file.attribute.FileAttribute<Dynamic>>) : java.nio.channels.SeekableByteChannel;
	
	@:overload @:public override public function copy(source : java.nio.file.Path, target : java.nio.file.Path, options : java.NativeArray<java.nio.file.CopyOption>) : Void;
	
	@:overload @:public override public function move(source : java.nio.file.Path, target : java.nio.file.Path, options : java.NativeArray<java.nio.file.CopyOption>) : Void;
	
	@:overload @:public override public function checkAccess(obj : java.nio.file.Path, modes : java.NativeArray<java.nio.file.AccessMode>) : Void;
	
	@:overload @:public override public function isSameFile(obj1 : java.nio.file.Path, obj2 : java.nio.file.Path) : Bool;
	
	@:overload @:public override public function isHidden(obj : java.nio.file.Path) : Bool;
	
	@:overload @:public override public function getFileStore(obj : java.nio.file.Path) : java.nio.file.FileStore;
	
	@:overload @:public override public function createDirectory(obj : java.nio.file.Path, attrs : java.NativeArray<java.nio.file.attribute.FileAttribute<Dynamic>>) : Void;
	
	@:overload @:public override public function newDirectoryStream(obj : java.nio.file.Path, filter : java.nio.file.DirectoryStream.DirectoryStream_Filter<java.nio.file.Path>) : java.nio.file.DirectoryStream<java.nio.file.Path>;
	
	@:overload @:public override public function createSymbolicLink(obj1 : java.nio.file.Path, obj2 : java.nio.file.Path, attrs : java.NativeArray<java.nio.file.attribute.FileAttribute<Dynamic>>) : Void;
	
	@:overload @:public override public function createLink(obj1 : java.nio.file.Path, obj2 : java.nio.file.Path) : Void;
	
	@:overload @:public override public function readSymbolicLink(obj1 : java.nio.file.Path) : java.nio.file.Path;
	
	
}

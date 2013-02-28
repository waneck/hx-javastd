package sun.nio.ch;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class FileChannelImpl extends java.nio.channels.FileChannel
{
	@:native('open') @:overload public static function _open(fd : java.io.FileDescriptor, readable : Bool, writable : Bool, parent : Dynamic) : java.nio.channels.FileChannel;
	
	@:native('open') @:overload public static function _open(fd : java.io.FileDescriptor, readable : Bool, writable : Bool, append : Bool, parent : Dynamic) : java.nio.channels.FileChannel;
	
	@:overload override private function implCloseChannel() : Void;
	
	@:overload override public function read(dst : java.nio.ByteBuffer) : Int;
	
	@:overload override public function read(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	@:overload override public function write(src : java.nio.ByteBuffer) : Int;
	
	@:overload override public function write(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	@:overload override public function position() : haxe.Int64;
	
	@:overload override public function position(newPosition : haxe.Int64) : java.nio.channels.FileChannel;
	
	@:overload override public function size() : haxe.Int64;
	
	@:overload override public function truncate(size : haxe.Int64) : java.nio.channels.FileChannel;
	
	@:overload override public function force(metaData : Bool) : Void;
	
	@:overload override public function transferTo(position : haxe.Int64, count : haxe.Int64, target : java.nio.channels.WritableByteChannel) : haxe.Int64;
	
	@:overload override public function transferFrom(src : java.nio.channels.ReadableByteChannel, position : haxe.Int64, count : haxe.Int64) : haxe.Int64;
	
	@:overload override public function read(dst : java.nio.ByteBuffer, position : haxe.Int64) : Int;
	
	@:overload override public function write(src : java.nio.ByteBuffer, position : haxe.Int64) : Int;
	
	@:overload public function map(mode : java.nio.channels.FileChannel.FileChannel_MapMode, position : haxe.Int64, size : haxe.Int64) : java.nio.MappedByteBuffer;
	
	/**
	* Invoked by sun.management.ManagementFactoryHelper to create the management
	* interface for mapped buffers.
	*/
	@:overload public static function getMappedBufferPool() : sun.misc.JavaNioAccess.JavaNioAccess_BufferPool;
	
	@:overload override public function lock(position : haxe.Int64, size : haxe.Int64, shared : Bool) : java.nio.channels.FileLock;
	
	@:overload override public function tryLock(position : haxe.Int64, size : haxe.Int64, shared : Bool) : java.nio.channels.FileLock;
	
	
}
@:native('sun$nio$ch$FileChannelImpl$Unmapper') @:internal extern class FileChannelImpl_Unmapper implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
/**
* A simple file lock table that maintains a list of FileLocks obtained by a
* FileChannel. Use to get 1.4/5.0 behaviour.
*/
@:native('sun$nio$ch$FileChannelImpl$SimpleFileLockTable') @:internal extern class FileChannelImpl_SimpleFileLockTable extends sun.nio.ch.FileLockTable
{
	@:overload public function new() : Void;
	
	@:overload override public function add(fl : java.nio.channels.FileLock) : Void;
	
	@:overload override public function remove(fl : java.nio.channels.FileLock) : Void;
	
	@:overload override public function removeAll() : java.util.List<java.nio.channels.FileLock>;
	
	@:overload override public function replace(fl1 : java.nio.channels.FileLock, fl2 : java.nio.channels.FileLock) : Void;
	
	
}

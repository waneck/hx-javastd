package sun.nio.ch;
/*
* Copyright (c) 2008, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AsynchronousFileChannelImpl extends java.nio.channels.AsynchronousFileChannel
{
	/**
	* Base implementation of AsynchronousFileChannel.
	*/
	private var closeLock(default, null) : java.util.concurrent.locks.ReadWriteLock;
	
	@:volatile private var closed : Bool;
	
	private var fdObj(default, null) : java.io.FileDescriptor;
	
	private var reading(default, null) : Bool;
	
	private var writing(default, null) : Bool;
	
	@:overload private function new(fdObj : java.io.FileDescriptor, reading : Bool, writing : Bool, executor : java.util.concurrent.ExecutorService) : Void;
	
	@:overload @:final override public function isOpen() : Bool;
	
	/**
	* Marks the beginning of an I/O operation.
	*
	* @throws  ClosedChannelException  If channel is closed
	*/
	@:overload @:final private function begin() : Void;
	
	/**
	* Marks the end of an I/O operation.
	*/
	@:overload @:final private function end() : Void;
	
	/**
	* Marks end of I/O operation
	*/
	@:overload @:final private function end(completed : Bool) : Void;
	
	@:overload @:final public function lock(position : haxe.Int64, size : haxe.Int64, shared : Bool) : java.util.concurrent.Future<java.nio.channels.FileLock>;
	
	@:overload @:final public function lock<A>(position : haxe.Int64, size : haxe.Int64, shared : Bool, attachment : A, handler : java.nio.channels.CompletionHandler<java.nio.channels.FileLock, A>) : Void;
	
	/**
	* Adds region to lock table
	*/
	@:overload @:final private function addToFileLockTable(position : haxe.Int64, size : haxe.Int64, shared : Bool) : sun.nio.ch.FileLockImpl;
	
	@:overload @:final private function removeFromFileLockTable(fli : sun.nio.ch.FileLockImpl) : Void;
	
	/**
	* Releases the given file lock.
	*/
	@:overload @:abstract private function implRelease(fli : sun.nio.ch.FileLockImpl) : Void;
	
	@:overload @:final public function read(dst : java.nio.ByteBuffer, position : haxe.Int64) : java.util.concurrent.Future<Null<Int>>;
	
	@:overload @:final public function read<A>(dst : java.nio.ByteBuffer, position : haxe.Int64, attachment : A, handler : java.nio.channels.CompletionHandler<Null<Int>, A>) : Void;
	
	@:overload @:final public function write(src : java.nio.ByteBuffer, position : haxe.Int64) : java.util.concurrent.Future<Null<Int>>;
	
	@:overload @:final public function write<A>(src : java.nio.ByteBuffer, position : haxe.Int64, attachment : A, handler : java.nio.channels.CompletionHandler<Null<Int>, A>) : Void;
	
	
}

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
extern class SimpleAsynchronousFileChannelImpl extends sun.nio.ch.AsynchronousFileChannelImpl
{
	@:overload public static function open(fdo : java.io.FileDescriptor, reading : Bool, writing : Bool, pool : sun.nio.ch.ThreadPool) : java.nio.channels.AsynchronousFileChannel;
	
	@:overload public function close() : Void;
	
	@:overload public function size() : haxe.Int64;
	
	@:overload public function truncate(size : haxe.Int64) : java.nio.channels.AsynchronousFileChannel;
	
	@:overload public function force(metaData : Bool) : Void;
	
	@:overload public function tryLock(position : haxe.Int64, size : haxe.Int64, shared : Bool) : java.nio.channels.FileLock;
	
	@:overload override private function implRelease(fli : sun.nio.ch.FileLockImpl) : Void;
	
	
}
/**
* "Portable" implementation of AsynchronousFileChannel for use on operating
* systems that don't support asynchronous file I/O.
*/
@:native('sun$nio$ch$SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder') @:internal extern class SimpleAsynchronousFileChannelImpl_DefaultExecutorHolder
{
	
}

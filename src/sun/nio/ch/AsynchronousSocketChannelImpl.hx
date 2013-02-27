package sun.nio.ch;
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
@:internal extern class AsynchronousSocketChannelImpl extends java.nio.channels.AsynchronousSocketChannel implements sun.nio.ch.Cancellable implements sun.nio.ch.Groupable
{
	/**
	* Base implementation of AsynchronousSocketChannel
	*/
	private var fd(default, null) : java.io.FileDescriptor;
	
	private var stateLock(default, null) : Dynamic;
	
	@:volatile private var localAddress : java.net.SocketAddress;
	
	@:volatile private var remoteAddress : java.net.SocketAddress;
	
	@:volatile private var state : Int;
	
	@:overload @:final override public function isOpen() : Bool;
	
	@:overload @:final override public function close() : Void;
	
	@:overload @:final override public function connect(remote : java.net.SocketAddress) : java.util.concurrent.Future<java.lang.Void>;
	
	@:overload @:final override public function connect<A>(remote : java.net.SocketAddress, attachment : A, handler : java.nio.channels.CompletionHandler<java.lang.Void, A>) : Void;
	
	@:overload @:final override public function read(dst : java.nio.ByteBuffer) : java.util.concurrent.Future<Null<Int>>;
	
	@:overload @:final override public function read<A>(dst : java.nio.ByteBuffer, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit, attachment : A, handler : java.nio.channels.CompletionHandler<Null<Int>, A>) : Void;
	
	@:overload @:final override public function read<A>(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit, attachment : A, handler : java.nio.channels.CompletionHandler<Null<haxe.Int64>, A>) : Void;
	
	@:overload @:final override public function write(src : java.nio.ByteBuffer) : java.util.concurrent.Future<Null<Int>>;
	
	@:overload @:final override public function write<A>(src : java.nio.ByteBuffer, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit, attachment : A, handler : java.nio.channels.CompletionHandler<Null<Int>, A>) : Void;
	
	@:overload @:final override public function write<A>(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit, attachment : A, handler : java.nio.channels.CompletionHandler<Null<haxe.Int64>, A>) : Void;
	
	@:overload @:final override public function bind(local : java.net.SocketAddress) : java.nio.channels.AsynchronousSocketChannel;
	
	@:overload @:final override public function getLocalAddress() : java.net.SocketAddress;
	
	@:overload @:final override public function setOption<T>(name : java.net.SocketOption<T>, value : T) : java.nio.channels.AsynchronousSocketChannel;
	
	@:overload @:final override public function getOption<T>(name : java.net.SocketOption<T>) : T;
	
	@:overload @:final override public function supportedOptions() : java.util.Set<java.net.SocketOption<Dynamic>>;
	
	@:overload @:final override public function getRemoteAddress() : java.net.SocketAddress;
	
	@:overload @:final override public function shutdownInput() : java.nio.channels.AsynchronousSocketChannel;
	
	@:overload @:final override public function shutdownOutput() : java.nio.channels.AsynchronousSocketChannel;
	
	@:overload @:final public function toString() : String;
	
	@:overload public function group() : sun.nio.ch.AsynchronousChannelGroupImpl;
	
	
}
@:native('sun$nio$ch$AsynchronousSocketChannelImpl$DefaultOptionsHolder') @:internal extern class AsynchronousSocketChannelImpl_DefaultOptionsHolder
{
	
}

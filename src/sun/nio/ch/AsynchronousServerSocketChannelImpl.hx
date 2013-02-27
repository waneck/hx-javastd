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
@:internal extern class AsynchronousServerSocketChannelImpl extends java.nio.channels.AsynchronousServerSocketChannel implements sun.nio.ch.Cancellable implements sun.nio.ch.Groupable
{
	/**
	* Base implementation of AsynchronousServerSocketChannel.
	*/
	private var fd(default, null) : java.io.FileDescriptor;
	
	@:volatile private var localAddress : java.net.SocketAddress;
	
	@:overload @:final override public function isOpen() : Bool;
	
	@:overload @:final override public function close() : Void;
	
	@:overload @:final override public function accept() : java.util.concurrent.Future<java.nio.channels.AsynchronousSocketChannel>;
	
	@:overload @:final override public function accept<A>(attachment : A, handler : java.nio.channels.CompletionHandler<java.nio.channels.AsynchronousSocketChannel, A>) : Void;
	
	@:overload @:final public function onCancel(task : sun.nio.ch.PendingFuture<Dynamic, Dynamic>) : Void;
	
	@:overload @:final override public function bind(local : java.net.SocketAddress, backlog : Int) : java.nio.channels.AsynchronousServerSocketChannel;
	
	@:overload @:final override public function getLocalAddress() : java.net.SocketAddress;
	
	@:overload @:final override public function setOption<T>(name : java.net.SocketOption<T>, value : T) : java.nio.channels.AsynchronousServerSocketChannel;
	
	@:overload @:final override public function getOption<T>(name : java.net.SocketOption<T>) : T;
	
	@:overload @:final override public function supportedOptions() : java.util.Set<java.net.SocketOption<Dynamic>>;
	
	@:overload @:final public function toString() : String;
	
	@:overload public function group() : sun.nio.ch.AsynchronousChannelGroupImpl;
	
	
}
@:native('sun$nio$ch$AsynchronousServerSocketChannelImpl$DefaultOptionsHolder') @:internal extern class AsynchronousServerSocketChannelImpl_DefaultOptionsHolder
{
	
}

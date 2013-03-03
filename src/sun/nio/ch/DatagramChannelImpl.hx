package sun.nio.ch;
/*
* Copyright (c) 2001, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DatagramChannelImpl extends java.nio.channels.DatagramChannel implements sun.nio.ch.SelChImpl
{
	@:overload @:public public function new(sp : java.nio.channels.spi.SelectorProvider) : Void;
	
	@:overload @:public public function new(sp : java.nio.channels.spi.SelectorProvider, family : java.net.ProtocolFamily) : Void;
	
	@:overload @:public public function new(sp : java.nio.channels.spi.SelectorProvider, fd : java.io.FileDescriptor) : Void;
	
	@:overload @:public override public function socket() : java.net.DatagramSocket;
	
	@:overload @:public override public function getLocalAddress() : java.net.SocketAddress;
	
	@:overload @:public override public function getRemoteAddress() : java.net.SocketAddress;
	
	@:overload @:public override public function setOption<T>(name : java.net.SocketOption<T>, value : T) : java.nio.channels.DatagramChannel;
	
	@:overload @:public override public function getOption<T>(name : java.net.SocketOption<T>) : T;
	
	@:overload @:public @:final override public function supportedOptions() : java.util.Set<java.net.SocketOption<Dynamic>>;
	
	@:overload @:public override public function receive(dst : java.nio.ByteBuffer) : java.net.SocketAddress;
	
	@:overload @:public override public function send(src : java.nio.ByteBuffer, target : java.net.SocketAddress) : Int;
	
	@:overload @:public override public function read(buf : java.nio.ByteBuffer) : Int;
	
	@:overload @:public override public function read(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	@:overload @:public override public function write(buf : java.nio.ByteBuffer) : Int;
	
	@:overload @:public override public function write(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	@:overload @:protected override private function implConfigureBlocking(block : Bool) : Void;
	
	@:overload @:public public function localAddress() : java.net.SocketAddress;
	
	@:overload @:public public function remoteAddress() : java.net.SocketAddress;
	
	@:overload @:public override public function bind(local : java.net.SocketAddress) : java.nio.channels.DatagramChannel;
	
	@:overload @:public override public function isConnected() : Bool;
	
	@:overload @:public override public function connect(sa : java.net.SocketAddress) : java.nio.channels.DatagramChannel;
	
	@:overload @:public override public function disconnect() : java.nio.channels.DatagramChannel;
	
	@:overload @:public override public function join(group : java.net.InetAddress, interf : java.net.NetworkInterface) : java.nio.channels.MembershipKey;
	
	@:overload @:public override public function join(group : java.net.InetAddress, interf : java.net.NetworkInterface, source : java.net.InetAddress) : java.nio.channels.MembershipKey;
	
	@:overload @:protected override private function implCloseSelectableChannel() : Void;
	
	@:overload @:public public function kill() : Void;
	
	@:overload @:protected private function finalize() : Void;
	
	/**
	* Translates native poll revent set into a ready operation set
	*/
	@:overload @:public public function translateReadyOps(ops : Int, initialOps : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	@:overload @:public public function translateAndUpdateReadyOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	@:overload @:public public function translateAndSetReadyOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	/**
	* Translates an interest operation set into a native poll event set
	*/
	@:overload @:public public function translateAndSetInterestOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Void;
	
	@:overload @:public public function getFD() : java.io.FileDescriptor;
	
	@:overload @:public public function getFDVal() : Int;
	
	
}
@:native('sun$nio$ch$DatagramChannelImpl$DefaultOptionsHolder') @:internal extern class DatagramChannelImpl_DefaultOptionsHolder
{
	
}

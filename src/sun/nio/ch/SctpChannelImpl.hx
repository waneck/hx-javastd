package sun.nio.ch;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SctpChannelImpl extends com.sun.nio.sctp.SctpChannel implements sun.nio.ch.SelChImpl
{
	/**
	* Constructor for normal connecting sockets
	*/
	@:overload @:public public function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Constructor for sockets obtained from server sockets
	*/
	@:overload @:public public function new(provider : java.nio.channels.spi.SelectorProvider, fd : java.io.FileDescriptor) : Void;
	
	/**
	* Constructor for sockets obtained from branching
	*/
	@:overload @:public public function new(provider : java.nio.channels.spi.SelectorProvider, fd : java.io.FileDescriptor, association : com.sun.nio.sctp.Association) : Void;
	
	/**
	* Binds the channel's socket to a local address.
	*/
	@:overload @:public override public function bind(local : java.net.SocketAddress) : com.sun.nio.sctp.SctpChannel;
	
	@:overload @:public override public function bindAddress(address : java.net.InetAddress) : com.sun.nio.sctp.SctpChannel;
	
	@:overload @:public override public function unbindAddress(address : java.net.InetAddress) : com.sun.nio.sctp.SctpChannel;
	
	@:overload @:public override public function association() : com.sun.nio.sctp.Association;
	
	@:overload @:public override public function connect(endpoint : java.net.SocketAddress) : Bool;
	
	@:overload @:public override public function connect(endpoint : java.net.SocketAddress, maxOutStreams : Int, maxInStreams : Int) : Bool;
	
	@:overload @:public override public function isConnectionPending() : Bool;
	
	@:overload @:public override public function finishConnect() : Bool;
	
	@:overload @:protected override private function implConfigureBlocking(block : Bool) : Void;
	
	@:overload @:public override public function implCloseSelectableChannel() : Void;
	
	@:overload @:public public function getFD() : java.io.FileDescriptor;
	
	@:overload @:public public function getFDVal() : Int;
	
	@:overload @:public public function translateAndUpdateReadyOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	@:overload @:public public function translateAndSetReadyOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	@:overload @:public public function translateAndSetInterestOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Void;
	
	@:overload @:public public function kill() : Void;
	
	@:overload @:public override public function setOption<T>(name : com.sun.nio.sctp.SctpSocketOption<T>, value : T) : com.sun.nio.sctp.SctpChannel;
	
	@:overload @:public override public function getOption<T>(name : com.sun.nio.sctp.SctpSocketOption<T>) : T;
	
	@:overload @:public @:final override public function supportedOptions() : java.util.Set<com.sun.nio.sctp.SctpSocketOption<Dynamic>>;
	
	@:overload @:public override public function receive<T>(buffer : java.nio.ByteBuffer, attachment : T, handler : com.sun.nio.sctp.NotificationHandler<T>) : com.sun.nio.sctp.MessageInfo;
	
	/* TODO: Add support for ttl and isComplete to both 121 12M
	*       SCTP_EOR not yet supported on reference platforms
	*       TTL support limited...
	*/
	@:overload @:public override public function send(buffer : java.nio.ByteBuffer, messageInfo : com.sun.nio.sctp.MessageInfo) : Int;
	
	@:overload @:public override public function shutdown() : com.sun.nio.sctp.SctpChannel;
	
	@:overload @:public override public function getAllLocalAddresses() : java.util.Set<java.net.SocketAddress>;
	
	@:overload @:public override public function getRemoteAddresses() : java.util.Set<java.net.SocketAddress>;
	
	
}
@:native('sun$nio$ch$SctpChannelImpl$ChannelState') privateextern enum SctpChannelImpl_ChannelState
{
	UNINITIALIZED;
	UNCONNECTED;
	PENDING;
	CONNECTED;
	KILLPENDING;
	KILLED;
	
}

@:native('sun$nio$ch$SctpChannelImpl$DefaultOptionsHolder') @:internal extern class SctpChannelImpl_DefaultOptionsHolder
{
	
}
@:native('sun$nio$ch$SctpChannelImpl$InternalNotificationHandler') @:internal extern class SctpChannelImpl_InternalNotificationHandler<T> extends com.sun.nio.sctp.AbstractNotificationHandler<T>
{
	@:overload @:public override public function handleNotification(not : com.sun.nio.sctp.AssociationChangeNotification, unused : T) : com.sun.nio.sctp.HandlerResult;
	
	
}

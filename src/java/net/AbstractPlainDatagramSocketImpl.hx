package java.net;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractPlainDatagramSocketImpl extends java.net.DatagramSocketImpl
{
	/**
	* Creates a datagram socket
	*/
	@:overload @:protected @:synchronized override private function create() : Void;
	
	/**
	* Binds a datagram socket to a local port.
	*/
	@:overload @:protected @:synchronized override private function bind(lport : Int, laddr : java.net.InetAddress) : Void;
	
	@:overload @:protected @:abstract private function bind0(lport : Int, laddr : java.net.InetAddress) : Void;
	
	/**
	* Sends a datagram packet. The packet contains the data and the
	* destination address to send the packet to.
	* @param packet to be sent.
	*/
	@:overload @:protected @:abstract override private function send(p : java.net.DatagramPacket) : Void;
	
	/**
	* Connects a datagram socket to a remote destination. This associates the remote
	* address with the local socket so that datagrams may only be sent to this destination
	* and received from this destination.
	* @param address the remote InetAddress to connect to
	* @param port the remote port number
	*/
	@:overload @:protected override private function connect(address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Disconnects a previously connected socket. Does nothing if the socket was
	* not connected already.
	*/
	@:overload @:protected override private function disconnect() : Void;
	
	/**
	* Peek at the packet to see who it is from.
	* @param return the address which the packet came from.
	*/
	@:overload @:protected @:abstract override private function peek(i : java.net.InetAddress) : Int;
	
	@:overload @:protected @:abstract override private function peekData(p : java.net.DatagramPacket) : Int;
	
	/**
	* Receive the datagram packet.
	* @param Packet Received.
	*/
	@:overload @:protected @:synchronized override private function receive(p : java.net.DatagramPacket) : Void;
	
	@:overload @:protected @:abstract private function receive0(p : java.net.DatagramPacket) : Void;
	
	/**
	* Set the TTL (time-to-live) option.
	* @param TTL to be set.
	*/
	@:overload @:protected @:abstract override private function setTimeToLive(ttl : Int) : Void;
	
	/**
	* Get the TTL (time-to-live) option.
	*/
	@:overload @:protected @:abstract override private function getTimeToLive() : Int;
	
	/**
	* Set the TTL (time-to-live) option.
	* @param TTL to be set.
	*/
	@:overload @:protected @:abstract override private function setTTL(ttl : java.StdTypes.Int8) : Void;
	
	/**
	* Get the TTL (time-to-live) option.
	*/
	@:overload @:protected @:abstract override private function getTTL() : java.StdTypes.Int8;
	
	/**
	* Join the multicast group.
	* @param multicast address to join.
	*/
	@:overload @:protected override private function join(inetaddr : java.net.InetAddress) : Void;
	
	/**
	* Leave the multicast group.
	* @param multicast address to leave.
	*/
	@:overload @:protected override private function leave(inetaddr : java.net.InetAddress) : Void;
	
	/**
	* Join the multicast group.
	* @param multicast address to join.
	* @param netIf specifies the local interface to receive multicast
	*        datagram packets
	* @throws  IllegalArgumentException if mcastaddr is null or is a
	*          SocketAddress subclass not supported by this socket
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected override private function joinGroup(mcastaddr : java.net.SocketAddress, netIf : java.net.NetworkInterface) : Void;
	
	@:overload @:protected @:abstract private function join(inetaddr : java.net.InetAddress, netIf : java.net.NetworkInterface) : Void;
	
	/**
	* Leave the multicast group.
	* @param multicast address to leave.
	* @param netIf specified the local interface to leave the group at
	* @throws  IllegalArgumentException if mcastaddr is null or is a
	*          SocketAddress subclass not supported by this socket
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected override private function leaveGroup(mcastaddr : java.net.SocketAddress, netIf : java.net.NetworkInterface) : Void;
	
	@:overload @:protected @:abstract private function leave(inetaddr : java.net.InetAddress, netIf : java.net.NetworkInterface) : Void;
	
	/**
	* Close the socket.
	*/
	@:overload @:protected override private function close() : Void;
	
	@:overload @:protected private function isClosed() : Bool;
	
	@:overload @:protected private function finalize() : Void;
	
	/**
	* set a value - since we only support (setting) binary options
	* here, o must be a Boolean
	*/
	@:overload @:public override public function setOption(optID : Int, o : Dynamic) : Void;
	
	/*
	* get option's state - set or not
	*/
	@:overload @:public override public function getOption(optID : Int) : Dynamic;
	
	@:overload @:protected @:abstract private function datagramSocketCreate() : Void;
	
	@:overload @:protected @:abstract private function datagramSocketClose() : Void;
	
	@:overload @:protected @:abstract private function socketSetOption(opt : Int, val : Dynamic) : Void;
	
	@:overload @:protected @:abstract private function socketGetOption(opt : Int) : Dynamic;
	
	@:overload @:protected @:abstract private function connect0(address : java.net.InetAddress, port : Int) : Void;
	
	@:overload @:protected @:abstract private function disconnect0(family : Int) : Void;
	
	@:overload @:protected private function nativeConnectDisabled() : Bool;
	
	
}

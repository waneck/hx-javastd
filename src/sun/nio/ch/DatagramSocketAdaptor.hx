package sun.nio.ch;
/*
* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.
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
//// Make a datagram-socket channel look like a datagram socket.
////
//// The methods in this class are defined in exactly the same order as in
//// java.net.DatagramSocket so as to simplify tracking future changes to that
//// class.
////
extern class DatagramSocketAdaptor extends java.net.DatagramSocket
{
	@:overload @:public @:static public static function create(dc : sun.nio.ch.DatagramChannelImpl) : java.net.DatagramSocket;
	
	@:overload @:public override public function bind(local : java.net.SocketAddress) : Void;
	
	@:overload @:public override public function connect(address : java.net.InetAddress, port : Int) : Void;
	
	@:overload @:public override public function connect(remote : java.net.SocketAddress) : Void;
	
	@:overload @:public override public function disconnect() : Void;
	
	@:overload @:public override public function isBound() : Bool;
	
	@:overload @:public override public function isConnected() : Bool;
	
	@:overload @:public override public function getInetAddress() : java.net.InetAddress;
	
	@:overload @:public override public function getPort() : Int;
	
	@:overload @:public override public function send(p : java.net.DatagramPacket) : Void;
	
	@:overload @:public override public function receive(p : java.net.DatagramPacket) : Void;
	
	@:overload @:public override public function getLocalAddress() : java.net.InetAddress;
	
	@:overload @:public override public function getLocalPort() : Int;
	
	@:overload @:public override public function setSoTimeout(timeout : Int) : Void;
	
	@:overload @:public override public function getSoTimeout() : Int;
	
	@:overload @:public override public function setSendBufferSize(size : Int) : Void;
	
	@:overload @:public override public function getSendBufferSize() : Int;
	
	@:overload @:public override public function setReceiveBufferSize(size : Int) : Void;
	
	@:overload @:public override public function getReceiveBufferSize() : Int;
	
	@:overload @:public override public function setReuseAddress(on : Bool) : Void;
	
	@:overload @:public override public function getReuseAddress() : Bool;
	
	@:overload @:public override public function setBroadcast(on : Bool) : Void;
	
	@:overload @:public override public function getBroadcast() : Bool;
	
	@:overload @:public override public function setTrafficClass(tc : Int) : Void;
	
	@:overload @:public override public function getTrafficClass() : Int;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public override public function isClosed() : Bool;
	
	@:overload @:public override public function getChannel() : java.nio.channels.DatagramChannel;
	
	
}

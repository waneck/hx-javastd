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
//// Make a socket channel look like a socket.
////
//// The only aspects of java.net.Socket-hood that we don't attempt to emulate
//// here are the interrupted-I/O exceptions (which our Solaris implementations
//// attempt to support) and the sending of urgent data.  Otherwise an adapted
//// socket should look enough like a real java.net.Socket to fool most of the
//// developers most of the time, right down to the exception message strings.
////
//// The methods in this class are defined in exactly the same order as in
//// java.net.Socket so as to simplify tracking future changes to that class.
////
extern class SocketAdaptor extends java.net.Socket
{
	@:overload public static function create(sc : sun.nio.ch.SocketChannelImpl) : java.net.Socket;
	
	@:overload override public function getChannel() : java.nio.channels.SocketChannel;
	
	@:overload override public function connect(remote : java.net.SocketAddress) : Void;
	
	@:overload override public function connect(remote : java.net.SocketAddress, timeout : Int) : Void;
	
	@:overload override public function bind(local : java.net.SocketAddress) : Void;
	
	@:overload override public function getInetAddress() : java.net.InetAddress;
	
	@:overload override public function getLocalAddress() : java.net.InetAddress;
	
	@:overload override public function getPort() : Int;
	
	@:overload override public function getLocalPort() : Int;
	
	@:overload override public function getInputStream() : java.io.InputStream;
	
	@:overload override public function getOutputStream() : java.io.OutputStream;
	
	@:overload override public function setTcpNoDelay(on : Bool) : Void;
	
	@:overload override public function getTcpNoDelay() : Bool;
	
	@:overload override public function setSoLinger(on : Bool, linger : Int) : Void;
	
	@:overload override public function getSoLinger() : Int;
	
	@:overload override public function sendUrgentData(data : Int) : Void;
	
	@:overload override public function setOOBInline(on : Bool) : Void;
	
	@:overload override public function getOOBInline() : Bool;
	
	@:overload override public function setSoTimeout(timeout : Int) : Void;
	
	@:overload override public function getSoTimeout() : Int;
	
	@:overload override public function setSendBufferSize(size : Int) : Void;
	
	@:overload override public function getSendBufferSize() : Int;
	
	@:overload override public function setReceiveBufferSize(size : Int) : Void;
	
	@:overload override public function getReceiveBufferSize() : Int;
	
	@:overload override public function setKeepAlive(on : Bool) : Void;
	
	@:overload override public function getKeepAlive() : Bool;
	
	@:overload override public function setTrafficClass(tc : Int) : Void;
	
	@:overload override public function getTrafficClass() : Int;
	
	@:overload override public function setReuseAddress(on : Bool) : Void;
	
	@:overload override public function getReuseAddress() : Bool;
	
	@:overload override public function close() : Void;
	
	@:overload override public function shutdownInput() : Void;
	
	@:overload override public function shutdownOutput() : Void;
	
	@:overload override public function toString() : String;
	
	@:overload override public function isConnected() : Bool;
	
	@:overload override public function isBound() : Bool;
	
	@:overload override public function isClosed() : Bool;
	
	@:overload override public function isInputShutdown() : Bool;
	
	@:overload override public function isOutputShutdown() : Bool;
	
	
}
@:native('sun$nio$ch$SocketAdaptor$SocketInputStream') @:internal extern class SocketAdaptor_SocketInputStream extends sun.nio.ch.ChannelInputStream
{
	@:overload override private function read(bb : java.nio.ByteBuffer) : Int;
	
	
}

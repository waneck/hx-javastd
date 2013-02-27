package java.net;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractPlainSocketImpl extends java.net.SocketImpl
{
	/* number of threads using the FileDescriptor */
	private var fdUseCount : Int;
	
	/* lock when increment/decrementing fdUseCount */
	private var fdLock(default, null) : Dynamic;
	
	/* indicates a close is pending on the file descriptor */
	private var closePending : Bool;
	
	/* whether this Socket is a stream (TCP) socket or not (UDP)
	*/
	private var stream : Bool;
	
	/**
	* Creates a socket with a boolean that specifies whether this
	* is a stream socket (true) or an unconnected UDP socket (false).
	*/
	@:overload @:synchronized override private function create(stream : Bool) : Void;
	
	/**
	* Creates a socket and connects it to the specified port on
	* the specified host.
	* @param host the specified host
	* @param port the specified port
	*/
	@:overload override private function connect(host : String, port : Int) : Void;
	
	/**
	* Creates a socket and connects it to the specified address on
	* the specified port.
	* @param address the address
	* @param port the specified port
	*/
	@:overload override private function connect(address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Creates a socket and connects it to the specified address on
	* the specified port.
	* @param address the address
	* @param timeout the timeout value in milliseconds, or zero for no timeout.
	* @throws IOException if connection fails
	* @throws  IllegalArgumentException if address is null or is a
	*          SocketAddress subclass not supported by this socket
	* @since 1.4
	*/
	@:require(java4) @:overload override private function connect(address : java.net.SocketAddress, timeout : Int) : Void;
	
	@:overload override public function setOption(opt : Int, val : Dynamic) : Void;
	
	@:overload override public function getOption(opt : Int) : Dynamic;
	
	/**
	* Binds the socket to the specified address of the specified local port.
	* @param address the address
	* @param port the port
	*/
	@:overload @:synchronized override private function bind(address : java.net.InetAddress, lport : Int) : Void;
	
	/**
	* Listens, for a specified amount of time, for connections.
	* @param count the amount of time to listen for connections
	*/
	@:overload @:synchronized override private function listen(count : Int) : Void;
	
	/**
	* Accepts connections.
	* @param s the connection
	*/
	@:overload override private function accept(s : java.net.SocketImpl) : Void;
	
	/**
	* Gets an InputStream for this socket.
	*/
	@:overload @:synchronized override private function getInputStream() : java.io.InputStream;
	
	/**
	* Gets an OutputStream for this socket.
	*/
	@:overload @:synchronized override private function getOutputStream() : java.io.OutputStream;
	
	/**
	* Returns the number of bytes that can be read without blocking.
	*/
	@:overload @:synchronized override private function available() : Int;
	
	/**
	* Closes the socket.
	*/
	@:overload override private function close() : Void;
	
	/**
	* Shutdown read-half of the socket connection;
	*/
	@:overload override private function shutdownInput() : Void;
	
	/**
	* Shutdown write-half of the socket connection;
	*/
	@:overload override private function shutdownOutput() : Void;
	
	@:overload override private function supportsUrgentData() : Bool;
	
	@:overload override private function sendUrgentData(data : Int) : Void;
	
	/**
	* Cleans up if the user forgets to close it.
	*/
	@:overload private function finalize() : Void;
	
	@:overload public function isConnectionReset() : Bool;
	
	@:overload public function isConnectionResetPending() : Bool;
	
	@:overload public function setConnectionReset() : Void;
	
	@:overload public function setConnectionResetPending() : Void;
	
	/*
	* Return true if already closed or close is pending
	*/
	@:overload public function isClosedOrPending() : Bool;
	
	/*
	* Return the current value of SO_TIMEOUT
	*/
	@:overload public function getTimeout() : Int;
	
	/*
	* Close the socket (and release the file descriptor).
	*/
	@:overload private function socketClose() : Void;
	
	public static var SHUT_RD(default, null) : Int;
	
	public static var SHUT_WR(default, null) : Int;
	
	
}
@:internal extern class InetAddressContainer
{
	
}

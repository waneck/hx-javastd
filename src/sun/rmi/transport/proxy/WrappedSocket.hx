package sun.rmi.transport.proxy;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class WrappedSocket extends java.net.Socket
{
	/** the underlying concrete socket */
	private var socket : java.net.Socket;
	
	/** the input stream to return for socket */
	//private var _in : java.io.InputStream;
	
	/** the output stream to return for socket */
	private var out : java.io.OutputStream;
	
	/**
	* Layer on top of a pre-existing Socket object, and use specified
	* input and output streams.  This allows the creator of the
	* underlying socket to peek at the beginning of the input with a
	* BufferedInputStream and determine which kind of socket
	* to create, without consuming the input.
	* @param socket the pre-existing socket to use
	* @param in the InputStream to return to users (can be null)
	* @param out the OutputStream to return to users (can be null)
	*/
	@:overload public function new(socket : java.net.Socket, _in : java.io.InputStream, out : java.io.OutputStream) : Void;
	
	/**
	* Get the address to which the socket is connected.
	*/
	@:overload override public function getInetAddress() : java.net.InetAddress;
	
	/**
	* Get the local address to which the socket is bound.
	*/
	@:overload override public function getLocalAddress() : java.net.InetAddress;
	
	/**
	* Get the remote port to which the socket is connected.
	*/
	@:overload override public function getPort() : Int;
	
	/**
	* Get the local port to which the socket is connected.
	*/
	@:overload override public function getLocalPort() : Int;
	
	/**
	* Get an InputStream for this socket.
	*/
	@:overload override public function getInputStream() : java.io.InputStream;
	
	/**
	* Get an OutputStream for this socket.
	*/
	@:overload override public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Enable/disable TCP_NODELAY.
	*/
	@:overload override public function setTcpNoDelay(on : Bool) : Void;
	
	/**
	* Retrieve whether TCP_NODELAY is enabled.
	*/
	@:overload override public function getTcpNoDelay() : Bool;
	
	/**
	* Enable/disable SO_LINGER with the specified linger time.
	*/
	@:overload override public function setSoLinger(on : Bool, val : Int) : Void;
	
	/**
	* Retrive setting for SO_LINGER.
	*/
	@:overload override public function getSoLinger() : Int;
	
	/**
	* Enable/disable SO_TIMEOUT with the specified timeout
	*/
	@:overload @:synchronized override public function setSoTimeout(timeout : Int) : Void;
	
	/**
	* Retrive setting for SO_TIMEOUT.
	*/
	@:overload @:synchronized override public function getSoTimeout() : Int;
	
	/**
	* Close the socket.
	*/
	@:overload @:synchronized override public function close() : Void;
	
	/**
	* Return string representation of the socket.
	*/
	@:overload override public function toString() : String;
	
	
}

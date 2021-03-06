package sun.rmi.transport.proxy;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class HttpSendSocket extends java.net.Socket implements sun.rmi.transport.proxy.RMISocketInfo
{
	/** the host to connect to */
	@:protected private var host : String;
	
	/** the port to connect to */
	@:protected private var port : Int;
	
	/** the URL to forward through */
	@:protected private var url : java.net.URL;
	
	/** the object managing this connection through the URL */
	@:protected private var conn : java.net.URLConnection;
	
	/** internal input stream for this socket */
	//@:protected private var _in : java.io.InputStream;
	
	/** internal output stream for this socket */
	@:protected private var out : java.io.OutputStream;
	
	/** the notifying input stream returned to users */
	@:protected private var inNotifier : sun.rmi.transport.proxy.HttpSendInputStream;
	
	/** the notifying output stream returned to users */
	@:protected private var outNotifier : sun.rmi.transport.proxy.HttpSendOutputStream;
	
	/**
	* Create a stream socket and connect it to the specified port on
	* the specified host.
	* @param host the host
	* @param port the port
	*/
	@:overload @:public public function new(host : String, port : Int, url : java.net.URL) : Void;
	
	/**
	* Create a stream socket and connect it to the specified port on
	* the specified host.
	* @param host the host
	* @param port the port
	*/
	@:overload @:public public function new(host : String, port : Int) : Void;
	
	/**
	* Create a stream socket and connect it to the specified address on
	* the specified port.
	* @param address the address
	* @param port the port
	*/
	@:overload @:public public function new(address : java.net.InetAddress, port : Int) : Void;
	
	/**
	* Indicate that this socket is not reusable.
	*/
	@:overload @:public public function isReusable() : Bool;
	
	/**
	* Create a new socket connection to host (or proxy), and prepare to
	* send HTTP transmission.
	*/
	@:overload @:public @:synchronized public function writeNotify() : java.io.OutputStream;
	
	/**
	* Send HTTP output transmission and prepare to receive response.
	*/
	@:overload @:public @:synchronized public function readNotify() : java.io.InputStream;
	
	/**
	* Get the address to which the socket is connected.
	*/
	@:overload @:public override public function getInetAddress() : java.net.InetAddress;
	
	/**
	* Get the local address to which the socket is bound.
	*/
	@:overload @:public override public function getLocalAddress() : java.net.InetAddress;
	
	/**
	* Get the remote port to which the socket is connected.
	*/
	@:overload @:public override public function getPort() : Int;
	
	/**
	* Get the local port to which the socket is connected.
	*/
	@:overload @:public override public function getLocalPort() : Int;
	
	/**
	* Get an InputStream for this socket.
	*/
	@:overload @:public override public function getInputStream() : java.io.InputStream;
	
	/**
	* Get an OutputStream for this socket.
	*/
	@:overload @:public override public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Enable/disable TCP_NODELAY.
	* This operation has no effect for an HttpSendSocket.
	*/
	@:overload @:public override public function setTcpNoDelay(on : Bool) : Void;
	
	/**
	* Retrieve whether TCP_NODELAY is enabled.
	*/
	@:overload @:public override public function getTcpNoDelay() : Bool;
	
	/**
	* Enable/disable SO_LINGER with the specified linger time.
	* This operation has no effect for an HttpSendSocket.
	*/
	@:overload @:public override public function setSoLinger(on : Bool, val : Int) : Void;
	
	/**
	* Retrive setting for SO_LINGER.
	*/
	@:overload @:public override public function getSoLinger() : Int;
	
	/**
	* Enable/disable SO_TIMEOUT with the specified timeout
	* This operation has no effect for an HttpSendSocket.
	*/
	@:overload @:public @:synchronized override public function setSoTimeout(timeout : Int) : Void;
	
	/**
	* Retrive setting for SO_TIMEOUT.
	*/
	@:overload @:public @:synchronized override public function getSoTimeout() : Int;
	
	/**
	* Close the socket.
	*/
	@:overload @:public @:synchronized override public function close() : Void;
	
	/**
	* Return string representation of this pseudo-socket.
	*/
	@:overload @:public override public function toString() : String;
	
	
}

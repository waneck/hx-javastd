package sun.net;
/*
* Copyright (c) 1994, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class NetworkClient
{
	/* Default value of read timeout, if not specified (infinity) */
	public static var DEFAULT_READ_TIMEOUT(default, null) : Int;
	
	/* Default value of connect timeout, if not specified (infinity) */
	public static var DEFAULT_CONNECT_TIMEOUT(default, null) : Int;
	
	private var proxy : java.net.Proxy;
	
	/** Socket for communicating with server. */
	private var serverSocket : java.net.Socket;
	
	/** Stream for printing to the server. */
	public var serverOutput : java.io.PrintStream;
	
	/** Buffered stream for reading replies from server. */
	public var serverInput : java.io.InputStream;
	
	private static var defaultSoTimeout : Int;
	
	private static var defaultConnectTimeout : Int;
	
	private var readTimeout : Int;
	
	private var connectTimeout : Int;
	
	/* Name of encoding to use for output */
	private static var encoding : String;
	
	/** Open a connection to the server. */
	@:overload public function openServer(server : String, port : Int) : Void;
	
	/**
	* Return a socket connected to the server, with any
	* appropriate options pre-established
	*/
	@:overload private function doConnect(server : String, port : Int) : java.net.Socket;
	
	/**
	* The following method, createSocket, is provided to allow the
	* https client to override it so that it may use its socket factory
	* to create the socket.
	*/
	@:overload private function createSocket() : java.net.Socket;
	
	@:overload private function getLocalAddress() : java.net.InetAddress;
	
	/** Close an open connection to the server. */
	@:overload public function closeServer() : Void;
	
	/** Return server connection status */
	@:overload public function serverIsOpen() : Bool;
	
	/** Create connection with host <i>host</i> on port <i>port</i> */
	@:overload public function new(host : String, port : Int) : Void;
	
	@:overload public function new() : Void;
	
	@:overload public function setConnectTimeout(timeout : Int) : Void;
	
	@:overload public function getConnectTimeout() : Int;
	
	/**
	* Sets the read timeout.
	*
	* Note: Public URLConnection (and protocol specific implementations)
	* protect against negative timeout values being set. This implemenation,
	* and protocol specific implementations, use -1 to represent the default
	* read timeout.
	*
	* This method may be invoked with the default timeout value when the
	* protocol handler is trying to reset the timeout after doing a
	* potentially blocking internal operation, e.g. cleaning up unread
	* response data, buffering error stream response data, etc
	*/
	@:overload public function setReadTimeout(timeout : Int) : Void;
	
	@:overload public function getReadTimeout() : Int;
	
	
}

package sun.security.ssl;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SSLSocketFactoryImpl extends javax.net.ssl.SSLSocketFactory
{
	/**
	* Constructor used to instantiate the default factory. This method is
	* only called if the old "ssl.SocketFactory.provider" property in the
	* java.security file is set.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates an unconnected socket.
	*
	* @return the unconnected socket
	* @see java.net.Socket#connect(java.net.SocketAddress, int)
	*/
	@:overload @:public override public function createSocket() : java.net.Socket;
	
	/**
	* Constructs an SSL connection to a named host at a specified port.
	* This acts as the SSL client, and may authenticate itself or rejoin
	* existing SSL sessions allowed by the authentication context which
	* has been configured.
	*
	* @param host name of the host with which to connect
	* @param port number of the server's port
	*/
	@:overload @:public override public function createSocket(host : String, port : Int) : java.net.Socket;
	
	/**
	* Returns a socket layered over an existing socket to a
	* ServerSocket on the named host, at the given port.  This
	* constructor can be used when tunneling SSL through a proxy. The
	* host and port refer to the logical destination server.  This
	* socket is configured using the socket options established for
	* this factory.
	*
	* @param s the existing socket
	* @param host the server host
	* @param port the server port
	* @param autoClose close the underlying socket when this socket is closed
	*
	* @exception IOException if the connection can't be established
	* @exception UnknownHostException if the host is not known
	*/
	@:overload @:public override public function createSocket(s : java.net.Socket, host : String, port : Int, autoClose : Bool) : java.net.Socket;
	
	/**
	* Constructs an SSL connection to a server at a specified address
	* and TCP port.  This acts as the SSL client, and may authenticate
	* itself or rejoin existing SSL sessions allowed by the authentication
	* context which has been configured.
	*
	* @param address the server's host
	* @param port its port
	*/
	@:overload @:public override public function createSocket(address : java.net.InetAddress, port : Int) : java.net.Socket;
	
	/**
	* Constructs an SSL connection to a named host at a specified port.
	* This acts as the SSL client, and may authenticate itself or rejoin
	* existing SSL sessions allowed by the authentication context which
	* has been configured. The socket will also bind() to the local
	* address and port supplied.
	*/
	@:overload @:public override public function createSocket(host : String, port : Int, clientAddress : java.net.InetAddress, clientPort : Int) : java.net.Socket;
	
	/**
	* Constructs an SSL connection to a server at a specified address
	* and TCP port.  This acts as the SSL client, and may authenticate
	* itself or rejoin existing SSL sessions allowed by the authentication
	* context which has been configured. The socket will also bind() to
	* the local address and port supplied.
	*/
	@:overload @:public override public function createSocket(address : java.net.InetAddress, port : Int, clientAddress : java.net.InetAddress, clientPort : Int) : java.net.Socket;
	
	/**
	* Returns the subset of the supported cipher suites which are
	* enabled by default.  These cipher suites all provide a minimum
	* quality of service whereby the server authenticates itself
	* (preventing person-in-the-middle attacks) and where traffic
	* is encrypted to provide confidentiality.
	*/
	@:overload @:public override public function getDefaultCipherSuites() : java.NativeArray<String>;
	
	/**
	* Returns the names of the cipher suites which could be enabled for use
	* on an SSL connection.  Normally, only a subset of these will actually
	* be enabled by default, since this list may include cipher suites which
	* do not support the mutual authentication of servers and clients, or
	* which do not protect data confidentiality.  Servers may also need
	* certain kinds of certificates to use certain cipher suites.
	*/
	@:overload @:public override public function getSupportedCipherSuites() : java.NativeArray<String>;
	
	
}

package java.net;
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
@:internal extern class SocksSocketImpl extends java.net.PlainSocketImpl implements java.net.SocksConsts
{
	/**
	* Connects the Socks Socket to the specified endpoint. It will first
	* connect to the SOCKS proxy and negotiate the access. If the proxy
	* grants the connections, then the connect is successful and all
	* further traffic will go to the "real" endpoint.
	*
	* @param   endpoint        the <code>SocketAddress</code> to connect to.
	* @param   timeout         the timeout value in milliseconds
	* @throws  IOException     if the connection can't be established.
	* @throws  SecurityException if there is a security manager and it
	*                          doesn't allow the connection
	* @throws  IllegalArgumentException if endpoint is null or a
	*          SocketAddress subclass not supported by this socket
	*/
	@:overload @:protected override private function connect(endpoint : java.net.SocketAddress, timeout : Int) : Void;
	
	/**
	* Sends the Bind request to the SOCKS proxy. In the SOCKS protocol, bind
	* means "accept incoming connection from", so the SocketAddress is the
	* the one of the host we do accept connection from.
	*
	* @param      addr   the Socket address of the remote host.
	* @exception  IOException  if an I/O error occurs when binding this socket.
	*/
	@:overload @:protected @:synchronized private function socksBind(saddr : java.net.InetSocketAddress) : Void;
	
	/**
	* Accepts a connection from a specific host.
	*
	* @param      s   the accepted connection.
	* @param      saddr the socket address of the host we do accept
	*               connection from
	* @exception  IOException  if an I/O error occurs when accepting the
	*               connection.
	*/
	@:overload @:protected private function acceptFrom(s : java.net.SocketImpl, saddr : java.net.InetSocketAddress) : Void;
	
	/**
	* Returns the value of this socket's <code>address</code> field.
	*
	* @return  the value of this socket's <code>address</code> field.
	* @see     java.net.SocketImpl#address
	*/
	@:overload @:protected override private function getInetAddress() : java.net.InetAddress;
	
	/**
	* Returns the value of this socket's <code>port</code> field.
	*
	* @return  the value of this socket's <code>port</code> field.
	* @see     java.net.SocketImpl#port
	*/
	@:overload @:protected override private function getPort() : Int;
	
	@:overload @:protected override private function getLocalPort() : Int;
	
	@:overload @:protected override private function close() : Void;
	
	
}

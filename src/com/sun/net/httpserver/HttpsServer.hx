package com.sun.net.httpserver;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class is an extension of {@link HttpServer} which provides
* support for HTTPS. <p>
* A HttpsServer must have an associated {@link HttpsConfigurator} object
* which is used to establish the SSL configuration for the SSL connections.
* <p>
* All other configuration is the same as for HttpServer.
* @since 1.6
*/
@:require(java6) extern class HttpsServer extends com.sun.net.httpserver.HttpServer
{
	/**
	*/
	@:overload private function new() : Void;
	
	/**
	* creates a HttpsServer instance which is initially not bound to any local address/port.
	* The HttpsServer is acquired from the currently installed {@link HttpServerProvider}
	* The server must be bound using {@link #bind(InetSocketAddress,int)} before it can be used.
	* The server must also have a HttpsConfigurator established with {@link #setHttpsConfigurator(HttpsConfigurator)}
	* @throws IOException
	*/
	@:native('create') @:overload public static function _create() : HttpsServer;
	
	/**
	* Create a <code>HttpsServer</code> instance which will bind to the
	* specified {@link java.net.InetSocketAddress} (IP address and port number)
	*
	* A maximum backlog can also be specified. This is the maximum number of
	* queued incoming connections to allow on the listening socket.
	* Queued TCP connections exceeding this limit may be rejected by the TCP implementation.
	* The HttpsServer is acquired from the currently installed {@link HttpServerProvider}
	* The server must have a HttpsConfigurator established with {@link #setHttpsConfigurator(HttpsConfigurator)}
	*
	* @param addr the address to listen on, if <code>null</code> then bind() must be called
	*  to set the address
	* @param backlog the socket backlog. If this value is less than or equal to zero,
	*          then a system default value is used.
	* @throws BindException if the server cannot bind to the requested address,
	*          or if the server is already bound.
	* @throws IOException
	*/
	@:native('create') @:overload public static function _create(addr : java.net.InetSocketAddress, backlog : Int) : HttpsServer;
	
	/**
	* Sets this server's {@link HttpsConfigurator} object.
	* @param config the HttpsConfigurator to set
	* @throws NullPointerException if config is null.
	*/
	@:overload @:abstract public function setHttpsConfigurator(config : com.sun.net.httpserver.HttpsConfigurator) : Void;
	
	/**
	* Gets this server's {@link HttpsConfigurator} object, if it has been set.
	* @return the HttpsConfigurator for this server, or <code>null</code> if not set.
	*/
	@:overload @:abstract public function getHttpsConfigurator() : com.sun.net.httpserver.HttpsConfigurator;
	
	
}

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
extern class HttpServer
{
	/**
	*/
	@:overload private function new() : Void;
	
	/**
	* creates a HttpServer instance which is initially not bound to any local address/port.
	* The HttpServer is acquired from the currently installed {@link HttpServerProvider}
	* The server must be bound using {@link #bind(InetSocketAddress,int)} before it can be used.
	* @throws IOException
	*/
	@:overload public static function create() : HttpServer;
	
	/**
	* Create a <code>HttpServer</code> instance which will bind to the
	* specified {@link java.net.InetSocketAddress} (IP address and port number)
	*
	* A maximum backlog can also be specified. This is the maximum number of
	* queued incoming connections to allow on the listening socket.
	* Queued TCP connections exceeding this limit may be rejected by the TCP implementation.
	* The HttpServer is acquired from the currently installed {@link HttpServerProvider}
	*
	* @param addr the address to listen on, if <code>null</code> then bind() must be called
	*  to set the address
	* @param backlog the socket backlog. If this value is less than or equal to zero,
	*          then a system default value is used.
	* @throws BindException if the server cannot bind to the requested address,
	*          or if the server is already bound.
	* @throws IOException
	*/
	@:overload public static function create(addr : java.net.InetSocketAddress, backlog : Int) : HttpServer;
	
	/**
	* Binds a currently unbound HttpServer to the given address and port number.
	* A maximum backlog can also be specified. This is the maximum number of
	* queued incoming connections to allow on the listening socket.
	* Queued TCP connections exceeding this limit may be rejected by the TCP implementation.
	* @param addr the address to listen on
	* @param backlog the socket backlog. If this value is less than or equal to zero,
	*          then a system default value is used.
	* @throws BindException if the server cannot bind to the requested address or if the server
	*          is already bound.
	* @throws NullPointerException if addr is <code>null</code>
	*/
	@:overload @:abstract public function bind(addr : java.net.InetSocketAddress, backlog : Int) : Void;
	
	/**
	* Starts this server in a new background thread. The background thread
	* inherits the priority, thread group and context class loader
	* of the caller.
	*/
	@:overload @:abstract public function start() : Void;
	
	/**
	* sets this server's {@link java.util.concurrent.Executor} object. An
	* Executor must be established before {@link #start()} is called.
	* All HTTP requests are handled in tasks given to the executor.
	* If this method is not called (before start()) or if it is
	* called with a <code>null</code> Executor, then
	* a default implementation is used, which uses the thread
	* which was created by the {@link #start()} method.
	* @param executor the Executor to set, or <code>null</code> for  default
	*          implementation
	* @throws IllegalStateException if the server is already started
	*/
	@:overload @:abstract public function setExecutor(executor : java.util.concurrent.Executor) : Void;
	
	/**
	* returns this server's Executor object if one was specified with
	* {@link #setExecutor(Executor)}, or <code>null</code> if none was
	* specified.
	* @return the Executor established for this server or <code>null</code> if not set.
	*/
	@:overload @:abstract public function getExecutor() : java.util.concurrent.Executor;
	
	/**
	* stops this server by closing the listening socket and disallowing
	* any new exchanges from being processed. The method will then block
	* until all current exchange handlers have completed or else when
	* approximately <i>delay</i> seconds have elapsed (whichever happens
	* sooner). Then, all open TCP connections are closed, the background
	* thread created by start() exits, and the method returns.
	* Once stopped, a HttpServer cannot be re-used. <p>
	*
	* @param delay the maximum time in seconds to wait until exchanges have finished.
	* @throws IllegalArgumentException if delay is less than zero.
	*/
	@:overload @:abstract public function stop(delay : Int) : Void;
	
	/**
	* Creates a HttpContext. A HttpContext represents a mapping from a
	* URI path to a exchange handler on this HttpServer. Once created, all requests
	* received by the server for the path will be handled by calling
	* the given handler object. The context is identified by the path, and
	* can later be removed from the server using this with the {@link #removeContext(String)} method.
	* <p>
	* The path specifies the root URI path for this context. The first character of path must be
	* '/'. <p>
	* The class overview describes how incoming request URIs are <a href="#mapping_description">mapped</a>
	* to HttpContext instances.
	* @param path the root URI path to associate the context with
	* @param handler the handler to invoke for incoming requests.
	* @throws IllegalArgumentException if path is invalid, or if a context
	*          already exists for this path
	* @throws NullPointerException if either path, or handler are <code>null</code>
	*/
	@:overload @:abstract public function createContext(path : String, handler : com.sun.net.httpserver.HttpHandler) : com.sun.net.httpserver.HttpContext;
	
	/**
	* Creates a HttpContext without initially specifying a handler. The handler must later be specified using
	* {@link HttpContext#setHandler(HttpHandler)}.  A HttpContext represents a mapping from a
	* URI path to an exchange handler on this HttpServer. Once created, and when
	* the handler has been set, all requests
	* received by the server for the path will be handled by calling
	* the handler object. The context is identified by the path, and
	* can later be removed from the server using this with the {@link #removeContext(String)} method.
	* <p>
	* The path specifies the root URI path for this context. The first character of path must be
	* '/'. <p>
	* The class overview describes how incoming request URIs are <a href="#mapping_description">mapped</a>
	* to HttpContext instances.
	* @param path the root URI path to associate the context with
	* @throws IllegalArgumentException if path is invalid, or if a context
	*          already exists for this path
	* @throws NullPointerException if path is <code>null</code>
	*/
	@:overload @:abstract public function createContext(path : String) : com.sun.net.httpserver.HttpContext;
	
	/**
	* Removes the context identified by the given path from the server.
	* Removing a context does not affect exchanges currently being processed
	* but prevents new ones from being accepted.
	* @param path the path of the handler to remove
	* @throws IllegalArgumentException if no handler corresponding to this
	*          path exists.
	* @throws NullPointerException if path is <code>null</code>
	*/
	@:overload @:abstract public function removeContext(path : String) : Void;
	
	/**
	* Removes the given context from the server.
	* Removing a context does not affect exchanges currently being processed
	* but prevents new ones from being accepted.
	* @param context the context to remove
	* @throws NullPointerException if context is <code>null</code>
	*/
	@:overload @:abstract public function removeContext(context : com.sun.net.httpserver.HttpContext) : Void;
	
	/**
	* returns the address this server is listening on
	* @return the address/port number the server is listening on
	*/
	@:overload @:abstract public function getAddress() : java.net.InetSocketAddress;
	
	
}

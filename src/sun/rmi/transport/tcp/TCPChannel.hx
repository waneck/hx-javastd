package sun.rmi.transport.tcp;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class TCPChannel implements sun.rmi.transport.Channel
{
	/**
	* Return the endpoint for this channel.
	*/
	@:overload @:public public function getEndpoint() : sun.rmi.transport.Endpoint;
	
	/**
	* Supplies a connection to the endpoint of the address space
	* for which this is a channel.  The returned connection may
	* be one retrieved from a cache of idle connections.
	*/
	@:overload @:public public function newConnection() : sun.rmi.transport.Connection;
	
	/**
	* Free the connection generated by this channel.
	* @param conn The connection
	* @param reuse If true, the connection is in a state in which it
	*        can be reused for another method call.
	*/
	@:overload @:public public function free(conn : sun.rmi.transport.Connection, reuse : Bool) : Void;
	
	/**
	* Closes all the connections in the cache, whether timed out or not.
	*/
	@:overload @:public public function shedCache() : Void;
	
	
}
@:internal extern class ConnectionAcceptor implements java.lang.Runnable
{
	/**
	* Create a new ConnectionAcceptor that will give connections
	* to the specified transport on a new thread.
	*/
	@:overload @:public public function new(transport : sun.rmi.transport.tcp.TCPTransport) : Void;
	
	/**
	* Start a new thread to accept connections.
	*/
	@:overload @:public public function startNewAcceptor() : Void;
	
	/**
	* Add connection to queue of connections to be accepted.
	*/
	@:overload @:public public function accept(conn : sun.rmi.transport.Connection) : Void;
	
	/**
	* Give transport next accepted conection, when available.
	*/
	@:overload @:public public function run() : Void;
	
	
}

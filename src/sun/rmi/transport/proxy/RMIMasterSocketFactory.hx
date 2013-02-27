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
extern class RMIMasterSocketFactory extends java.rmi.server.RMISocketFactory
{
	/** default factory to initally use for direct socket connection */
	private var initialFactory : java.rmi.server.RMISocketFactory;
	
	/** ordered list of factories to try as alternate connection
	* mechanisms if a direct socket connections fails */
	private var altFactoryList : java.util.Vector<Dynamic>;
	
	/**
	* Create a RMIMasterSocketFactory object.  Establish order of
	* connection mechanisms to attempt on createSocket, if a direct
	* socket connection fails.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new client socket.  If we remember connecting to this host
	* successfully before, then use the same factory again.  Otherwise,
	* try using a direct socket connection and then the alternate factories
	* in the order specified in altFactoryList.
	*/
	@:overload override public function createSocket(host : String, port : Int) : java.net.Socket;
	
	/**
	* Create a new server socket.
	*/
	@:overload override public function createServerSocket(port : Int) : java.net.ServerSocket;
	
	
}
/**
* AsyncConnector is used by RMIMasterSocketFactory to attempt socket
* connections on a separate thread.  This allows RMIMasterSocketFactory
* to control how long it will wait for the connection to succeed.
*/
@:native('sun$rmi$transport$proxy$RMIMasterSocketFactory$AsyncConnector') @:internal extern class RMIMasterSocketFactory_AsyncConnector implements java.lang.Runnable
{
	/**
	* Attempt socket connection in separate thread.  If successful,
	* notify master waiting,
	*/
	@:overload public function run() : Void;
	
	
}

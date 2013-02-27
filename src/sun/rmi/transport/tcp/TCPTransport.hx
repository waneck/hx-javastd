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
extern class TCPTransport extends sun.rmi.transport.Transport
{
	/**
	* Closes all cached connections in every channel subordinated to this
	* transport.  Currently, this only closes outgoing connections.
	*/
	@:overload public function shedConnectionCaches() : Void;
	
	/**
	* Returns a <I>Channel</I> that generates connections to the
	* endpoint <I>ep</I>. A Channel is an object that creates and
	* manages connections of a particular type to some particular
	* address space.
	* @param ep the endpoint to which connections will be generated.
	* @return the channel or null if the transport cannot
	* generate connections to this endpoint
	*/
	@:overload override public function getChannel(ep : sun.rmi.transport.Endpoint) : sun.rmi.transport.tcp.TCPChannel;
	
	/**
	* Removes the <I>Channel</I> that generates connections to the
	* endpoint <I>ep</I>.
	*/
	@:overload override public function free(ep : sun.rmi.transport.Endpoint) : Void;
	
	/**
	* Export the object so that it can accept incoming calls.
	*/
	@:overload override public function exportObject(target : sun.rmi.transport.Target) : Void;
	
	@:overload @:synchronized override private function targetUnexported() : Void;
	
	/**
	* Verify that the current access control context has permission to
	* accept the connection being dispatched by the current thread.
	*/
	@:overload override private function checkAcceptPermission(acc : java.security.AccessControlContext) : Void;
	
	/**
	* Returns the client host for the current thread's connection.  Throws
	* ServerNotActiveException if no connection is active for this thread.
	*/
	@:overload public static function getClientHost() : String;
	
	
}
/**
* Worker for accepting connections from a server socket.
**/
@:native('sun$rmi$transport$tcp$TCPTransport$AcceptLoop') @:internal extern class TCPTransport_AcceptLoop implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
/**
* Services messages on accepted connection
*/
@:native('sun$rmi$transport$tcp$TCPTransport$ConnectionHandler') @:internal extern class TCPTransport_ConnectionHandler implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}

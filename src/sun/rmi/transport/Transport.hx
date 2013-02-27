package sun.rmi.transport;
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
extern class Transport
{
	/**
	* Returns a <I>Channel</I> that generates connections to the
	* endpoint <I>ep</I>. A Channel is an object that creates and
	* manages connections of a particular type to some particular
	* address space.
	* @param ep the endpoint to which connections will be generated.
	* @return the channel or null if the transport cannot
	* generate connections to this endpoint
	*/
	@:overload @:abstract public function getChannel(ep : sun.rmi.transport.Endpoint) : sun.rmi.transport.Channel;
	
	/**
	* Removes the <I>Channel</I> that generates connections to the
	* endpoint <I>ep</I>.
	*/
	@:overload @:abstract public function free(ep : sun.rmi.transport.Endpoint) : Void;
	
	/**
	* Export the object so that it can accept incoming calls.
	*/
	@:overload public function exportObject(target : sun.rmi.transport.Target) : Void;
	
	/**
	* Invoked when an object that was exported on this transport has
	* become unexported, either by being garbage collected or by
	* being explicitly unexported.
	**/
	@:overload private function targetUnexported() : Void;
	
	/**
	* Verify that the current access control context has permission to accept
	* the connection being dispatched by the current thread.  The current
	* access control context is passed as a parameter to avoid the overhead of
	* an additional call to AccessController.getContext.
	*/
	@:overload @:abstract private function checkAcceptPermission(acc : java.security.AccessControlContext) : Void;
	
	/**
	* Service an incoming remote call. When a message arrives on the
	* connection indicating the beginning of a remote call, the
	* threads are required to call the <I>serviceCall</I> method of
	* their transport.  The default implementation of this method
	* locates and calls the dispatcher object.  Ordinarily a
	* transport implementation will not need to override this method.
	* At the entry to <I>tr.serviceCall(conn)</I>, the connection's
	* input stream is positioned at the start of the incoming
	* message.  The <I>serviceCall</I> method processes the incoming
	* remote invocation and sends the result on the connection's
	* output stream.  If it returns "true", then the remote
	* invocation was processed without error and the transport can
	* cache the connection.  If it returns "false", a protocol error
	* occurred during the call, and the transport should destroy the
	* connection.
	*/
	@:overload public function serviceCall(call : java.rmi.server.RemoteCall) : Bool;
	
	
}

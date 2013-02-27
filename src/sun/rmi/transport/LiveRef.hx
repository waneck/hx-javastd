package sun.rmi.transport;
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
extern class LiveRef implements java.lang.Cloneable
{
	/**
	* Construct a "well-known" live reference to a remote object
	* @param isLocalServer If true, indicates this ref specifies a local
	* server in this address space; if false, the ref is for a remote
	* object (hence a surrogate or proxy) in another address space.
	*/
	@:overload public function new(objID : java.rmi.server.ObjID, endpoint : sun.rmi.transport.Endpoint, isLocal : Bool) : Void;
	
	/**
	* Construct a new live reference for a server object in the local
	* address space.
	*/
	@:overload public function new(port : Int) : Void;
	
	/**
	* Construct a new live reference for a server object in the local
	* address space, to use sockets of the specified type.
	*/
	@:overload public function new(port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : Void;
	
	/**
	* Construct a new live reference for a "well-known" server object
	* in the local address space.
	*/
	@:overload public function new(objID : java.rmi.server.ObjID, port : Int) : Void;
	
	/**
	* Construct a new live reference for a "well-known" server object
	* in the local address space, to use sockets of the specified type.
	*/
	@:overload public function new(objID : java.rmi.server.ObjID, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : Void;
	
	/**
	* Return a shallow copy of this ref.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Return the port number associated with this ref.
	*/
	@:overload public function getPort() : Int;
	
	/**
	* Return the client socket factory associated with this ref.
	*
	* NOTE: There is a JDK-internal dependency on the existence of
	* this method in the implementation of
	* javax.management.remote.rmi.RMIConnector.
	**/
	@:overload public function getClientSocketFactory() : java.rmi.server.RMIClientSocketFactory;
	
	/**
	* Return the server socket factory associated with this ref.
	*/
	@:overload public function getServerSocketFactory() : java.rmi.server.RMIServerSocketFactory;
	
	/**
	* Export the object to accept incoming calls.
	*/
	@:overload public function exportObject(target : sun.rmi.transport.Target) : Void;
	
	@:overload public function getChannel() : sun.rmi.transport.Channel;
	
	@:overload public function getObjID() : java.rmi.server.ObjID;
	
	@:overload public function toString() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function remoteEquals(obj : Dynamic) : Bool;
	
	@:overload public function write(out : java.io.ObjectOutput, useNewFormat : Bool) : Void;
	
	@:overload public static function read(_in : java.io.ObjectInput, useNewFormat : Bool) : LiveRef;
	
	
}

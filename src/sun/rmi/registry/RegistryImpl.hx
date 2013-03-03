package sun.rmi.registry;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class RegistryImpl extends java.rmi.server.RemoteServer implements java.rmi.registry.Registry
{
	/**
	* Construct a new RegistryImpl on the specified port with the
	* given custom socket factory pair.
	*/
	@:overload @:public public function new(port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : Void;
	
	/**
	* Construct a new RegistryImpl on the specified port.
	*/
	@:overload @:public public function new(port : Int) : Void;
	
	/**
	* Returns the remote object for specified name in the registry.
	* @exception RemoteException If remote operation failed.
	* @exception NotBound If name is not currently bound.
	*/
	@:overload @:public public function lookup(name : String) : java.rmi.Remote;
	
	/**
	* Binds the name to the specified remote object.
	* @exception RemoteException If remote operation failed.
	* @exception AlreadyBoundException If name is already bound.
	*/
	@:overload @:public public function bind(name : String, obj : java.rmi.Remote) : Void;
	
	/**
	* Unbind the name.
	* @exception RemoteException If remote operation failed.
	* @exception NotBound If name is not currently bound.
	*/
	@:overload @:public public function unbind(name : String) : Void;
	
	/**
	* Rebind the name to a new object, replaces any existing binding.
	* @exception RemoteException If remote operation failed.
	*/
	@:overload @:public public function rebind(name : String, obj : java.rmi.Remote) : Void;
	
	/**
	* Returns an enumeration of the names in the registry.
	* @exception RemoteException If remote operation failed.
	*/
	@:overload @:public public function list() : java.NativeArray<String>;
	
	/**
	* Check that the caller has access to perform indicated operation.
	* The client must be on same the same host as this server.
	*/
	@:overload @:public @:static public static function checkAccess(op : String) : Void;
	
	@:overload @:public @:static public static function getID() : java.rmi.server.ObjID;
	
	/**
	* Main program to start a registry. <br>
	* The port number can be specified on the command line.
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}

package java.rmi.registry;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class LocateRegistry
{
	/**
	* Returns a reference to the the remote object <code>Registry</code> for
	* the local host on the default registry port of 1099.
	*
	* @return reference (a stub) to the remote object registry
	* @exception RemoteException if the reference could not be created
	* @since JDK1.1
	*/
	@:require(java1) @:overload public static function getRegistry() : java.rmi.registry.Registry;
	
	/**
	* Returns a reference to the the remote object <code>Registry</code> for
	* the local host on the specified <code>port</code>.
	*
	* @param port port on which the registry accepts requests
	* @return reference (a stub) to the remote object registry
	* @exception RemoteException if the reference could not be created
	* @since JDK1.1
	*/
	@:require(java1) @:overload public static function getRegistry(port : Int) : java.rmi.registry.Registry;
	
	/**
	* Returns a reference to the remote object <code>Registry</code> on the
	* specified <code>host</code> on the default registry port of 1099.  If
	* <code>host</code> is <code>null</code>, the local host is used.
	*
	* @param host host for the remote registry
	* @return reference (a stub) to the remote object registry
	* @exception RemoteException if the reference could not be created
	* @since JDK1.1
	*/
	@:require(java1) @:overload public static function getRegistry(host : String) : java.rmi.registry.Registry;
	
	/**
	* Returns a reference to the remote object <code>Registry</code> on the
	* specified <code>host</code> and <code>port</code>. If <code>host</code>
	* is <code>null</code>, the local host is used.
	*
	* @param host host for the remote registry
	* @param port port on which the registry accepts requests
	* @return reference (a stub) to the remote object registry
	* @exception RemoteException if the reference could not be created
	* @since JDK1.1
	*/
	@:require(java1) @:overload public static function getRegistry(host : String, port : Int) : java.rmi.registry.Registry;
	
	/**
	* Returns a locally created remote reference to the remote object
	* <code>Registry</code> on the specified <code>host</code> and
	* <code>port</code>.  Communication with this remote registry will
	* use the supplied <code>RMIClientSocketFactory</code> <code>csf</code>
	* to create <code>Socket</code> connections to the registry on the
	* remote <code>host</code> and <code>port</code>.
	*
	* @param host host for the remote registry
	* @param port port on which the registry accepts requests
	* @param csf  client-side <code>Socket</code> factory used to
	*      make connections to the registry.  If <code>csf</code>
	*      is null, then the default client-side <code>Socket</code>
	*      factory will be used in the registry stub.
	* @return reference (a stub) to the remote registry
	* @exception RemoteException if the reference could not be created
	* @since 1.2
	*/
	@:require(java2) @:overload public static function getRegistry(host : String, port : Int, csf : java.rmi.server.RMIClientSocketFactory) : java.rmi.registry.Registry;
	
	/**
	* Creates and exports a <code>Registry</code> instance on the local
	* host that accepts requests on the specified <code>port</code>.
	*
	* <p>The <code>Registry</code> instance is exported as if the static
	* {@link UnicastRemoteObject#exportObject(Remote,int)
	* UnicastRemoteObject.exportObject} method is invoked, passing the
	* <code>Registry</code> instance and the specified <code>port</code> as
	* arguments, except that the <code>Registry</code> instance is
	* exported with a well-known object identifier, an {@link ObjID}
	* instance constructed with the value {@link ObjID#REGISTRY_ID}.
	*
	* @param port the port on which the registry accepts requests
	* @return the registry
	* @exception RemoteException if the registry could not be exported
	* @since JDK1.1
	**/
	@:require(java1) @:overload public static function createRegistry(port : Int) : java.rmi.registry.Registry;
	
	/**
	* Creates and exports a <code>Registry</code> instance on the local
	* host that uses custom socket factories for communication with that
	* instance.  The registry that is created listens for incoming
	* requests on the given <code>port</code> using a
	* <code>ServerSocket</code> created from the supplied
	* <code>RMIServerSocketFactory</code>.
	*
	* <p>The <code>Registry</code> instance is exported as if
	* the static {@link
	* UnicastRemoteObject#exportObject(Remote,int,RMIClientSocketFactory,RMIServerSocketFactory)
	* UnicastRemoteObject.exportObject} method is invoked, passing the
	* <code>Registry</code> instance, the specified <code>port</code>, the
	* specified <code>RMIClientSocketFactory</code>, and the specified
	* <code>RMIServerSocketFactory</code> as arguments, except that the
	* <code>Registry</code> instance is exported with a well-known object
	* identifier, an {@link ObjID} instance constructed with the value
	* {@link ObjID#REGISTRY_ID}.
	*
	* @param port port on which the registry accepts requests
	* @param csf  client-side <code>Socket</code> factory used to
	*      make connections to the registry
	* @param ssf  server-side <code>ServerSocket</code> factory
	*      used to accept connections to the registry
	* @return the registry
	* @exception RemoteException if the registry could not be exported
	* @since 1.2
	**/
	@:require(java2) @:overload public static function createRegistry(port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : java.rmi.registry.Registry;
	
	
}

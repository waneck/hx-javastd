package java.rmi.server;
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
extern class UnicastRemoteObject extends java.rmi.server.RemoteServer
{
	/**
	* Creates and exports a new UnicastRemoteObject object using an
	* anonymous port.
	* @throws RemoteException if failed to export object
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:protected private function new() : Void;
	
	/**
	* Creates and exports a new UnicastRemoteObject object using the
	* particular supplied port.
	* @param port the port number on which the remote object receives calls
	* (if <code>port</code> is zero, an anonymous port is chosen)
	* @throws RemoteException if failed to export object
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function new(port : Int) : Void;
	
	/**
	* Creates and exports a new UnicastRemoteObject object using the
	* particular supplied port and socket factories.
	* @param port the port number on which the remote object receives calls
	* (if <code>port</code> is zero, an anonymous port is chosen)
	* @param csf the client-side socket factory for making calls to the
	* remote object
	* @param ssf the server-side socket factory for receiving remote calls
	* @throws RemoteException if failed to export object
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function new(port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : Void;
	
	/**
	* Returns a clone of the remote object that is distinct from
	* the original.
	*
	* @exception CloneNotSupportedException if clone failed due to
	* a RemoteException.
	* @return the new remote object
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public public function clone() : Dynamic;
	
	/**
	* Exports the remote object to make it available to receive incoming
	* calls using an anonymous port.
	* @param obj the remote object to be exported
	* @return remote object stub
	* @exception RemoteException if export fails
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public @:static public static function exportObject(obj : java.rmi.Remote) : java.rmi.server.RemoteStub;
	
	/**
	* Exports the remote object to make it available to receive incoming
	* calls, using the particular supplied port.
	* @param obj the remote object to be exported
	* @param port the port to export the object on
	* @return remote object stub
	* @exception RemoteException if export fails
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function exportObject(obj : java.rmi.Remote, port : Int) : java.rmi.Remote;
	
	/**
	* Exports the remote object to make it available to receive incoming
	* calls, using a transport specified by the given socket factory.
	* @param obj the remote object to be exported
	* @param port the port to export the object on
	* @param csf the client-side socket factory for making calls to the
	* remote object
	* @param ssf the server-side socket factory for receiving remote calls
	* @return remote object stub
	* @exception RemoteException if export fails
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function exportObject(obj : java.rmi.Remote, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : java.rmi.Remote;
	
	/**
	* Removes the remote object, obj, from the RMI runtime. If
	* successful, the object can no longer accept incoming RMI calls.
	* If the force parameter is true, the object is forcibly unexported
	* even if there are pending calls to the remote object or the
	* remote object still has calls in progress.  If the force
	* parameter is false, the object is only unexported if there are
	* no pending or in progress calls to the object.
	*
	* @param obj the remote object to be unexported
	* @param force if true, unexports the object even if there are
	* pending or in-progress calls; if false, only unexports the object
	* if there are no pending or in-progress calls
	* @return true if operation is successful, false otherwise
	* @exception NoSuchObjectException if the remote object is not
	* currently exported
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function unexportObject(obj : java.rmi.Remote, force : Bool) : Bool;
	
	
}

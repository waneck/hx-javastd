package javax.rmi;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class PortableRemoteObject
{
	/**
	* Initializes the object by calling <code>exportObject(this)</code>.
	* @exception RemoteException if export fails.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Makes a server object ready to receive remote calls. Note
	* that subclasses of PortableRemoteObject do not need to call this
	* method, as it is called by the constructor.
	* @param obj the server object to export.
	* @exception RemoteException if export fails.
	*/
	@:overload @:public @:static public static function exportObject(obj : java.rmi.Remote) : Void;
	
	/**
	* Returns a stub for the given server object.
	* @param obj the server object for which a stub is required. Must either be a subclass
	* of PortableRemoteObject or have been previously the target of a call to
	* {@link #exportObject}.
	* @return the most derived stub for the object.
	* @exception NoSuchObjectException if a stub cannot be located for the given server object.
	*/
	@:overload @:public @:static public static function toStub(obj : java.rmi.Remote) : java.rmi.Remote;
	
	/**
	* Deregisters a server object from the runtime, allowing the object to become
	* available for garbage collection.
	* @param obj the object to unexport.
	* @exception NoSuchObjectException if the remote object is not
	* currently exported.
	*/
	@:overload @:public @:static public static function unexportObject(obj : java.rmi.Remote) : Void;
	
	/**
	* Checks to ensure that an object of a remote or abstract interface type
	* can be cast to a desired type.
	* @param narrowFrom the object to check.
	* @param narrowTo the desired type.
	* @return an object which can be cast to the desired type.
	* @throws ClassCastException if narrowFrom cannot be cast to narrowTo.
	*/
	@:overload @:public @:static public static function narrow(narrowFrom : Dynamic, narrowTo : Class<Dynamic>) : Dynamic;
	
	/**
	* Makes a Remote object ready for remote communication. This normally
	* happens implicitly when the object is sent or received as an argument
	* on a remote method call, but in some circumstances it is useful to
	* perform this action by making an explicit call.  See the
	* {@link javax.rmi.CORBA.Stub#connect} method for more information.
	* @param target the object to connect.
	* @param source a previously connected object.
	* @throws RemoteException if <code>source</code> is not connected
	* or if <code>target</code> is already connected to a different ORB than
	* <code>source</code>.
	*/
	@:overload @:public @:static public static function connect(target : java.rmi.Remote, source : java.rmi.Remote) : Void;
	
	
}
@:internal extern class GetORBPropertiesFileAction implements java.security.PrivilegedAction<Dynamic>
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function run() : Dynamic;
	
	
}

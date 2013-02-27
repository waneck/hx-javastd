package sun.rmi.server;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ActivationGroupImpl extends java.rmi.activation.ActivationGroup
{
	/**
	* Creates a default activation group implementation.
	*
	* @param id the group's identifier
	* @param data ignored
	*/
	@:overload public function new(id : java.rmi.activation.ActivationGroupID, data : java.rmi.MarshalledObject<Dynamic>) : Void;
	
	/**
	* Creates a new instance of an activatable remote object. The
	* <code>Activator</code> calls this method to create an activatable
	* object in this group. This method should be idempotent; a call to
	* activate an already active object should return the previously
	* activated object.
	*
	* Note: this method assumes that the Activator will only invoke
	* newInstance for the same object in a serial fashion (i.e.,
	* the activator will not allow the group to see concurrent requests
	* to activate the same object.
	*
	* @param id the object's activation identifier
	* @param desc the object's activation descriptor
	* @return a marshalled object containing the activated object's stub
	*/
	@:overload override public function newInstance(id : java.rmi.activation.ActivationID, desc : java.rmi.activation.ActivationDesc) : java.rmi.MarshalledObject<java.rmi.Remote>;
	
	/**
	* The group's <code>inactiveObject</code> method is called
	* indirectly via a call to the <code>Activatable.inactive</code>
	* method. A remote object implementation must call
	* <code>Activatable</code>'s <code>inactive</code> method when
	* that object deactivates (the object deems that it is no longer
	* active). If the object does not call
	* <code>Activatable.inactive</code> when it deactivates, the
	* object will never be garbage collected since the group keeps
	* strong references to the objects it creates. <p>
	*
	* The group's <code>inactiveObject</code> method
	* unexports the remote object from the RMI runtime so that the
	* object can no longer receive incoming RMI calls. This call will
	* only succeed if the object has no pending/executing calls. If
	* the object does have pending/executing RMI calls, then false
	* will be returned.
	*
	* If the object has no pending/executing calls, the object is
	* removed from the RMI runtime and the group informs its
	* <code>ActivationMonitor</code> (via the monitor's
	* <code>inactiveObject</code> method) that the remote object is
	* not currently active so that the remote object will be
	* re-activated by the activator upon a subsequent activation
	* request.
	*
	* @param id the object's activation identifier
	* @returns true if the operation succeeds (the operation will
	* succeed if the object in currently known to be active and is
	* either already unexported or is currently exported and has no
	* pending/executing calls); false is returned if the object has
	* pending/executing calls in which case it cannot be deactivated
	* @exception UnknownObjectException if object is unknown (may already
	* be inactive)
	* @exception RemoteException if call informing monitor fails
	*/
	@:overload override public function inactiveObject(id : java.rmi.activation.ActivationID) : Bool;
	
	/**
	* The group's <code>activeObject</code> method is called when an
	* object is exported (either by <code>Activatable</code> object
	* construction or an explicit call to
	* <code>Activatable.exportObject</code>. The group must inform its
	* <code>ActivationMonitor</code> that the object is active (via
	* the monitor's <code>activeObject</code> method) if the group
	* hasn't already done so.
	*
	* @param id the object's identifier
	* @param obj the remote object implementation
	* @exception UnknownObjectException if object is not registered
	* @exception RemoteException if call informing monitor fails
	*/
	@:overload override public function activeObject(id : java.rmi.activation.ActivationID, impl : java.rmi.Remote) : Void;
	
	
}
/**
* Trivial server socket factory used to export the activation group
* impl on an unshared port.
*/
@:native('sun$rmi$server$ActivationGroupImpl$ServerSocketFactoryImpl') @:internal extern class ActivationGroupImpl_ServerSocketFactoryImpl implements java.rmi.server.RMIServerSocketFactory
{
	@:overload public function createServerSocket(port : Int) : java.net.ServerSocket;
	
	
}
/**
* Entry in table for active object.
*/
@:native('sun$rmi$server$ActivationGroupImpl$ActiveEntry') @:internal extern class ActivationGroupImpl_ActiveEntry
{
	
}

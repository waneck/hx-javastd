package java.rmi.activation;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ActivationGroup extends java.rmi.server.UnicastRemoteObject implements java.rmi.activation.ActivationInstantiator
{
	/**
	* Constructs an activation group with the given activation group
	* identifier.  The group is exported as a
	* <code>java.rmi.server.UnicastRemoteObject</code>.
	*
	* @param   groupID the group's identifier
	* @throws  RemoteException if this group could not be exported
	* @since   1.2
	*/
	@:require(java2) @:overload @:protected private function new(groupID : java.rmi.activation.ActivationGroupID) : Void;
	
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
	* <p>The group's <code>inactiveObject</code> method unexports the
	* remote object from the RMI runtime so that the object can no
	* longer receive incoming RMI calls. An object will only be unexported
	* if the object has no pending or executing calls.
	* The subclass of <code>ActivationGroup</code> must override this
	* method and unexport the object. <p>
	*
	* <p>After removing the object from the RMI runtime, the group
	* must inform its <code>ActivationMonitor</code> (via the monitor's
	* <code>inactiveObject</code> method) that the remote object is
	* not currently active so that the remote object will be
	* re-activated by the activator upon a subsequent activation
	* request.<p>
	*
	* <p>This method simply informs the group's monitor that the object
	* is inactive.  It is up to the concrete subclass of ActivationGroup
	* to fulfill the additional requirement of unexporting the object. <p>
	*
	* @param id the object's activation identifier
	* @return true if the object was successfully deactivated; otherwise
	*         returns false.
	* @exception UnknownObjectException if object is unknown (may already
	* be inactive)
	* @exception RemoteException if call informing monitor fails
	* @exception ActivationException if group is inactive
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function inactiveObject(id : java.rmi.activation.ActivationID) : Bool;
	
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
	* @exception ActivationException if group is inactive
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:abstract public function activeObject(id : java.rmi.activation.ActivationID, obj : java.rmi.Remote) : Void;
	
	/**
	* Create and set the activation group for the current VM.  The
	* activation group can only be set if it is not currently set.
	* An activation group is set using the <code>createGroup</code>
	* method when the <code>Activator</code> initiates the
	* re-creation of an activation group in order to carry out
	* incoming <code>activate</code> requests. A group must first be
	* registered with the <code>ActivationSystem</code> before it can
	* be created via this method.
	*
	* <p>The group class specified by the
	* <code>ActivationGroupDesc</code> must be a concrete subclass of
	* <code>ActivationGroup</code> and have a public constructor that
	* takes two arguments: the <code>ActivationGroupID</code> for the
	* group and the <code>MarshalledObject</code> containing the
	* group's initialization data (obtained from the
	* <code>ActivationGroupDesc</code>.
	*
	* <p>If the group class name specified in the
	* <code>ActivationGroupDesc</code> is <code>null</code>, then
	* this method will behave as if the group descriptor contained
	* the name of the default activation group implementation class.
	*
	* <p>Note that if your application creates its own custom
	* activation group, a security manager must be set for that
	* group.  Otherwise objects cannot be activated in the group.
	* <code>java.rmi.RMISecurityManager</code> is set by default.
	*
	* <p>If a security manager is already set in the group VM, this
	* method first calls the security manager's
	* <code>checkSetFactory</code> method.  This could result in a
	* <code>SecurityException</code>. If your application needs to
	* set a different security manager, you must ensure that the
	* policy file specified by the group's
	* <code>ActivationGroupDesc</code> grants the group the necessary
	* permissions to set a new security manager.  (Note: This will be
	* necessary if your group downloads and sets a security manager).
	*
	* <p>After the group is created, the
	* <code>ActivationSystem</code> is informed that the group is
	* active by calling the <code>activeGroup</code> method which
	* returns the <code>ActivationMonitor</code> for the group. The
	* application need not call <code>activeGroup</code>
	* independently since it is taken care of by this method.
	*
	* <p>Once a group is created, subsequent calls to the
	* <code>currentGroupID</code> method will return the identifier
	* for this group until the group becomes inactive.
	*
	* @param id the activation group's identifier
	* @param desc the activation group's descriptor
	* @param incarnation the group's incarnation number (zero on group's
	* initial creation)
	* @return the activation group for the VM
	* @exception ActivationException if group already exists or if error
	* occurs during group creation
	* @exception SecurityException if permission to create group is denied.
	* (Note: The default implementation of the security manager
	* <code>checkSetFactory</code>
	* method requires the RuntimePermission "setFactory")
	* @see SecurityManager#checkSetFactory
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static @:synchronized public static function createGroup(id : java.rmi.activation.ActivationGroupID, desc : java.rmi.activation.ActivationGroupDesc, incarnation : haxe.Int64) : java.rmi.activation.ActivationGroup;
	
	/**
	* Returns the current activation group's identifier.  Returns null
	* if no group is currently active for this VM.
	* @return the activation group's identifier
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static @:synchronized public static function currentGroupID() : java.rmi.activation.ActivationGroupID;
	
	/**
	* Set the activation system for the VM.  The activation system can
	* only be set it if no group is currently active. If the activation
	* system is not set via this call, then the <code>getSystem</code>
	* method attempts to obtain a reference to the
	* <code>ActivationSystem</code> by looking up the name
	* "java.rmi.activation.ActivationSystem" in the Activator's
	* registry. By default, the port number used to look up the
	* activation system is defined by
	* <code>ActivationSystem.SYSTEM_PORT</code>. This port can be overridden
	* by setting the property <code>java.rmi.activation.port</code>.
	*
	* <p>If there is a security manager, this method first
	* calls the security manager's <code>checkSetFactory</code> method.
	* This could result in a SecurityException.
	*
	* @param system remote reference to the <code>ActivationSystem</code>
	* @exception ActivationException if activation system is already set
	* @exception SecurityException if permission to set the activation system is denied.
	* (Note: The default implementation of the security manager
	* <code>checkSetFactory</code>
	* method requires the RuntimePermission "setFactory")
	* @see #getSystem
	* @see SecurityManager#checkSetFactory
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static @:synchronized public static function setSystem(system : java.rmi.activation.ActivationSystem) : Void;
	
	/**
	* Returns the activation system for the VM. The activation system
	* may be set by the <code>setSystem</code> method. If the
	* activation system is not set via the <code>setSystem</code>
	* method, then the <code>getSystem</code> method attempts to
	* obtain a reference to the <code>ActivationSystem</code> by
	* looking up the name "java.rmi.activation.ActivationSystem" in
	* the Activator's registry. By default, the port number used to
	* look up the activation system is defined by
	* <code>ActivationSystem.SYSTEM_PORT</code>. This port can be
	* overridden by setting the property
	* <code>java.rmi.activation.port</code>.
	*
	* @return the activation system for the VM/group
	* @exception ActivationException if activation system cannot be
	*  obtained or is not bound
	* (means that it is not running)
	* @see #setSystem
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static @:synchronized public static function getSystem() : java.rmi.activation.ActivationSystem;
	
	/**
	* This protected method is necessary for subclasses to
	* make the <code>activeObject</code> callback to the group's
	* monitor. The call is simply forwarded to the group's
	* <code>ActivationMonitor</code>.
	*
	* @param id the object's identifier
	* @param mobj a marshalled object containing the remote object's stub
	* @exception UnknownObjectException if object is not registered
	* @exception RemoteException if call informing monitor fails
	* @exception ActivationException if an activation error occurs
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function activeObject(id : java.rmi.activation.ActivationID, mobj : java.rmi.MarshalledObject<java.rmi.Remote>) : Void;
	
	/**
	* This protected method is necessary for subclasses to
	* make the <code>inactiveGroup</code> callback to the group's
	* monitor. The call is simply forwarded to the group's
	* <code>ActivationMonitor</code>. Also, the current group
	* for the VM is set to null.
	*
	* @exception UnknownGroupException if group is not registered
	* @exception RemoteException if call informing monitor fails
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function inactiveGroup() : Void;
	
	/**
	* The activator calls an instantiator's <code>newInstance</code>
	* method in order to recreate in that group an object with the
	* activation identifier, <code>id</code>, and descriptor,
	* <code>desc</code>. The instantiator is responsible for: <ul>
	*
	* <li> determining the class for the object using the descriptor's
	* <code>getClassName</code> method,
	*
	* <li> loading the class from the code location obtained from the
	* descriptor (using the <code>getLocation</code> method),
	*
	* <li> creating an instance of the class by invoking the special
	* "activation" constructor of the object's class that takes two
	* arguments: the object's <code>ActivationID</code>, and the
	* <code>MarshalledObject</code> containing object specific
	* initialization data, and
	*
	* <li> returning a MarshalledObject containing the stub for the
	* remote object it created </ul>
	*
	* @param id the object's activation identifier
	* @param desc the object's descriptor
	* @return a marshalled object containing the serialized
	* representation of remote object's stub
	* @exception ActivationException if object activation fails
	* @exception RemoteException if remote call fails
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:public public function newInstance(id : java.rmi.activation.ActivationID, desc : java.rmi.activation.ActivationDesc) : java.rmi.MarshalledObject<java.rmi.Remote>;
	
	
}

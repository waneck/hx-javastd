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
extern class Activatable extends java.rmi.server.RemoteServer
{
	/**
	* Constructs an activatable remote object by registering
	* an activation descriptor (with the specified location, data, and
	* restart mode) for this object, and exporting the object with the
	* specified port.
	*
	* <p><strong>Note:</strong> Using the <code>Activatable</code>
	* constructors that both register and export an activatable remote
	* object is strongly discouraged because the actions of registering
	* and exporting the remote object are <i>not</i> guaranteed to be
	* atomic.  Instead, an application should register an activation
	* descriptor and export a remote object separately, so that exceptions
	* can be handled properly.
	*
	* <p>This method invokes the {@link
	* #exportObject(Remote,String,MarshalledObject,boolean,int)
	* exportObject} method with this object, and the specified location,
	* data, restart mode, and port.  Subsequent calls to {@link #getID}
	* will return the activation identifier returned from the call to
	* <code>exportObject</code>.
	*
	* @param location the location for classes for this object
	* @param data the object's initialization data
	* @param port the port on which the object is exported (an anonymous
	* port is used if port=0)
	* @param restart if true, the object is restarted (reactivated) when
	* either the activator is restarted or the object's activation group
	* is restarted after an unexpected crash; if false, the object is only
	* activated on demand.  Specifying <code>restart</code> to be
	* <code>true</code> does not force an initial immediate activation of
	* a newly registered object;  initial activation is lazy.
	* @exception ActivationException if object registration fails.
	* @exception RemoteException if either of the following fails:
	* a) registering the object with the activation system or b) exporting
	* the object to the RMI runtime.
	* @since 1.2
	**/
	@:require(java2) @:overload private function new(location : String, data : java.rmi.MarshalledObject<Dynamic>, restart : Bool, port : Int) : Void;
	
	/**
	* Constructs an activatable remote object by registering
	* an activation descriptor (with the specified location, data, and
	* restart mode) for this object, and exporting the object with the
	* specified port, and specified client and server socket factories.
	*
	* <p><strong>Note:</strong> Using the <code>Activatable</code>
	* constructors that both register and export an activatable remote
	* object is strongly discouraged because the actions of registering
	* and exporting the remote object are <i>not</i> guaranteed to be
	* atomic.  Instead, an application should register an activation
	* descriptor and export a remote object separately, so that exceptions
	* can be handled properly.
	*
	* <p>This method invokes the {@link
	* #exportObject(Remote,String,MarshalledObject,boolean,int,RMIClientSocketFactory,RMIServerSocketFactory)
	* exportObject} method with this object, and the specified location,
	* data, restart mode, port, and client and server socket factories.
	* Subsequent calls to {@link #getID} will return the activation
	* identifier returned from the call to <code>exportObject</code>.
	*
	* @param location the location for classes for this object
	* @param data the object's initialization data
	* @param restart if true, the object is restarted (reactivated) when
	* either the activator is restarted or the object's activation group
	* is restarted after an unexpected crash; if false, the object is only
	* activated on demand.  Specifying <code>restart</code> to be
	* <code>true</code> does not force an initial immediate activation of
	* a newly registered object;  initial activation is lazy.
	* @param port the port on which the object is exported (an anonymous
	* port is used if port=0)
	* @param csf the client-side socket factory for making calls to the
	* remote object
	* @param ssf the server-side socket factory for receiving remote calls
	* @exception ActivationException if object registration fails.
	* @exception RemoteException if either of the following fails:
	* a) registering the object with the activation system or b) exporting
	* the object to the RMI runtime.
	* @since 1.2
	**/
	@:require(java2) @:overload private function new(location : String, data : java.rmi.MarshalledObject<Dynamic>, restart : Bool, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : Void;
	
	/**
	* Constructor used to activate/export the object on a specified
	* port. An "activatable" remote object must have a constructor that
	* takes two arguments: <ul>
	* <li>the object's activation identifier (<code>ActivationID</code>), and
	* <li>the object's initialization data (a <code>MarshalledObject</code>).
	* </ul><p>
	*
	* A concrete subclass of this class must call this constructor when it is
	* <i>activated</i> via the two parameter constructor described above. As
	* a side-effect of construction, the remote object is "exported"
	* to the RMI runtime (on the specified <code>port</code>) and is
	* available to accept incoming calls from clients.
	*
	* @param id activation identifier for the object
	* @param port the port number on which the object is exported
	* @exception RemoteException if exporting the object to the RMI
	* runtime fails
	* @since 1.2
	*/
	@:require(java2) @:overload private function new(id : java.rmi.activation.ActivationID, port : Int) : Void;
	
	/**
	* Constructor used to activate/export the object on a specified
	* port. An "activatable" remote object must have a constructor that
	* takes two arguments: <ul>
	* <li>the object's activation identifier (<code>ActivationID</code>), and
	* <li>the object's initialization data (a <code>MarshalledObject</code>).
	* </ul><p>
	*
	* A concrete subclass of this class must call this constructor when it is
	* <i>activated</i> via the two parameter constructor described above. As
	* a side-effect of construction, the remote object is "exported"
	* to the RMI runtime (on the specified <code>port</code>) and is
	* available to accept incoming calls from clients.
	*
	* @param id activation identifier for the object
	* @param port the port number on which the object is exported
	* @param csf the client-side socket factory for making calls to the
	* remote object
	* @param ssf the server-side socket factory for receiving remote calls
	* @exception RemoteException if exporting the object to the RMI
	* runtime fails
	* @since 1.2
	*/
	@:require(java2) @:overload private function new(id : java.rmi.activation.ActivationID, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : Void;
	
	/**
	* Returns the object's activation identifier.  The method is
	* protected so that only subclasses can obtain an object's
	* identifier.
	* @return the object's activation identifier
	* @since 1.2
	*/
	@:require(java2) @:overload private function getID() : java.rmi.activation.ActivationID;
	
	/**
	* Register an object descriptor for an activatable remote
	* object so that is can be activated on demand.
	*
	* @param desc  the object's descriptor
	* @return the stub for the activatable remote object
	* @exception UnknownGroupException if group id in <code>desc</code>
	* is not registered with the activation system
	* @exception ActivationException if activation system is not running
	* @exception RemoteException if remote call fails
	* @since 1.2
	*/
	@:require(java2) @:overload public static function register(desc : java.rmi.activation.ActivationDesc) : java.rmi.Remote;
	
	/**
	* Informs the system that the object with the corresponding activation
	* <code>id</code> is currently inactive. If the object is currently
	* active, the object is "unexported" from the RMI runtime (only if
	* there are no pending or in-progress calls)
	* so the that it can no longer receive incoming calls. This call
	* informs this VM's ActivationGroup that the object is inactive,
	* that, in turn, informs its ActivationMonitor. If this call
	* completes successfully, a subsequent activate request to the activator
	* will cause the object to reactivate. The operation may still
	* succeed if the object is considered active but has already
	* unexported itself.
	*
	* @param id the object's activation identifier
	* @return true if the operation succeeds (the operation will
	* succeed if the object in currently known to be active and is
	* either already unexported or is currently exported and has no
	* pending/executing calls); false is returned if the object has
	* pending/executing calls in which case it cannot be deactivated
	* @exception UnknownObjectException if object is not known (it may
	* already be inactive)
	* @exception ActivationException if group is not active
	* @exception RemoteException if call informing monitor fails
	* @since 1.2
	*/
	@:require(java2) @:overload public static function inactive(id : java.rmi.activation.ActivationID) : Bool;
	
	/**
	* Revokes previous registration for the activation descriptor
	* associated with <code>id</code>. An object can no longer be
	* activated via that <code>id</code>.
	*
	* @param id the object's activation identifier
	* @exception UnknownObjectException if object (<code>id</code>) is unknown
	* @exception ActivationException if activation system is not running
	* @exception RemoteException if remote call to activation system fails
	* @since 1.2
	*/
	@:require(java2) @:overload public static function unregister(id : java.rmi.activation.ActivationID) : Void;
	
	/**
	* Registers an activation descriptor (with the specified location,
	* data, and restart mode) for the specified object, and exports that
	* object with the specified port.
	*
	* <p><strong>Note:</strong> Using this method (as well as the
	* <code>Activatable</code> constructors that both register and export
	* an activatable remote object) is strongly discouraged because the
	* actions of registering and exporting the remote object are
	* <i>not</i> guaranteed to be atomic.  Instead, an application should
	* register an activation descriptor and export a remote object
	* separately, so that exceptions can be handled properly.
	*
	* <p>This method invokes the {@link
	* #exportObject(Remote,String,MarshalledObject,boolean,int,RMIClientSocketFactory,RMIServerSocketFactory)
	* exportObject} method with the specified object, location, data,
	* restart mode, and port, and <code>null</code> for both client and
	* server socket factories, and then returns the resulting activation
	* identifier.
	*
	* @param obj the object being exported
	* @param location the object's code location
	* @param data the object's bootstrapping data
	* @param restart if true, the object is restarted (reactivated) when
	* either the activator is restarted or the object's activation group
	* is restarted after an unexpected crash; if false, the object is only
	* activated on demand.  Specifying <code>restart</code> to be
	* <code>true</code> does not force an initial immediate activation of
	* a newly registered object;  initial activation is lazy.
	* @param port the port on which the object is exported (an anonymous
	* port is used if port=0)
	* @return the activation identifier obtained from registering the
	* descriptor, <code>desc</code>, with the activation system
	* the wrong group
	* @exception ActivationException if activation group is not active
	* @exception RemoteException if object registration or export fails
	* @since 1.2
	**/
	@:require(java2) @:overload public static function exportObject(obj : java.rmi.Remote, location : String, data : java.rmi.MarshalledObject<Dynamic>, restart : Bool, port : Int) : java.rmi.activation.ActivationID;
	
	/**
	* Registers an activation descriptor (with the specified location,
	* data, and restart mode) for the specified object, and exports that
	* object with the specified port, and the specified client and server
	* socket factories.
	*
	* <p><strong>Note:</strong> Using this method (as well as the
	* <code>Activatable</code> constructors that both register and export
	* an activatable remote object) is strongly discouraged because the
	* actions of registering and exporting the remote object are
	* <i>not</i> guaranteed to be atomic.  Instead, an application should
	* register an activation descriptor and export a remote object
	* separately, so that exceptions can be handled properly.
	*
	* <p>This method first registers an activation descriptor for the
	* specified object as follows. It obtains the activation system by
	* invoking the method {@link ActivationGroup#getSystem
	* ActivationGroup.getSystem}.  This method then obtains an {@link
	* ActivationID} for the object by invoking the activation system's
	* {@link ActivationSystem#registerObject registerObject} method with
	* an {@link ActivationDesc} constructed with the specified object's
	* class name, and the specified location, data, and restart mode.  If
	* an exception occurs obtaining the activation system or registering
	* the activation descriptor, that exception is thrown to the caller.
	*
	* <p>Next, this method exports the object by invoking the {@link
	* #exportObject(Remote,ActivationID,int,RMIClientSocketFactory,RMIServerSocketFactory)
	* exportObject} method with the specified remote object, the
	* activation identifier obtained from registration, the specified
	* port, and the specified client and server socket factories.  If an
	* exception occurs exporting the object, this method attempts to
	* unregister the activation identifier (obtained from registration) by
	* invoking the activation system's {@link
	* ActivationSystem#unregisterObject unregisterObject} method with the
	* activation identifier.  If an exception occurs unregistering the
	* identifier, that exception is ignored, and the original exception
	* that occurred exporting the object is thrown to the caller.
	*
	* <p>Finally, this method invokes the {@link
	* ActivationGroup#activeObject activeObject} method on the activation
	* group in this VM with the activation identifier and the specified
	* remote object, and returns the activation identifier to the caller.
	*
	* @param obj the object being exported
	* @param location the object's code location
	* @param data the object's bootstrapping data
	* @param restart if true, the object is restarted (reactivated) when
	* either the activator is restarted or the object's activation group
	* is restarted after an unexpected crash; if false, the object is only
	* activated on demand.  Specifying <code>restart</code> to be
	* <code>true</code> does not force an initial immediate activation of
	* a newly registered object;  initial activation is lazy.
	* @param port the port on which the object is exported (an anonymous
	* port is used if port=0)
	* @param csf the client-side socket factory for making calls to the
	* remote object
	* @param ssf the server-side socket factory for receiving remote calls
	* @return the activation identifier obtained from registering the
	* descriptor with the activation system
	* @exception ActivationException if activation group is not active
	* @exception RemoteException if object registration or export fails
	* @since 1.2
	**/
	@:require(java2) @:overload public static function exportObject(obj : java.rmi.Remote, location : String, data : java.rmi.MarshalledObject<Dynamic>, restart : Bool, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : java.rmi.activation.ActivationID;
	
	/**
	* Export the activatable remote object to the RMI runtime to make
	* the object available to receive incoming calls. The object is
	* exported on an anonymous port, if <code>port</code> is zero. <p>
	*
	* During activation, this <code>exportObject</code> method should
	* be invoked explicitly by an "activatable" object, that does not
	* extend the <code>Activatable</code> class. There is no need for objects
	* that do extend the <code>Activatable</code> class to invoke this
	* method directly because the object is exported during construction.
	*
	* @return the stub for the activatable remote object
	* @param obj the remote object implementation
	* @param id the object's  activation identifier
	* @param port the port on which the object is exported (an anonymous
	* port is used if port=0)
	* @exception RemoteException if object export fails
	* @since 1.2
	*/
	@:require(java2) @:overload public static function exportObject(obj : java.rmi.Remote, id : java.rmi.activation.ActivationID, port : Int) : java.rmi.Remote;
	
	/**
	* Export the activatable remote object to the RMI runtime to make
	* the object available to receive incoming calls. The object is
	* exported on an anonymous port, if <code>port</code> is zero. <p>
	*
	* During activation, this <code>exportObject</code> method should
	* be invoked explicitly by an "activatable" object, that does not
	* extend the <code>Activatable</code> class. There is no need for objects
	* that do extend the <code>Activatable</code> class to invoke this
	* method directly because the object is exported during construction.
	*
	* @return the stub for the activatable remote object
	* @param obj the remote object implementation
	* @param id the object's  activation identifier
	* @param port the port on which the object is exported (an anonymous
	* port is used if port=0)
	* @param csf the client-side socket factory for making calls to the
	* remote object
	* @param ssf the server-side socket factory for receiving remote calls
	* @exception RemoteException if object export fails
	* @since 1.2
	*/
	@:require(java2) @:overload public static function exportObject(obj : java.rmi.Remote, id : java.rmi.activation.ActivationID, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : java.rmi.Remote;
	
	/**
	* Remove the remote object, obj, from the RMI runtime. If
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
	@:require(java2) @:overload public static function unexportObject(obj : java.rmi.Remote, force : Bool) : Bool;
	
	
}

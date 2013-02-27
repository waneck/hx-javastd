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
extern interface Activator extends java.rmi.Remote
{
	/**
	* Activate the object associated with the activation identifier,
	* <code>id</code>. If the activator knows the object to be active
	* already, and <code>force</code> is false , the stub with a
	* "live" reference is returned immediately to the caller;
	* otherwise, if the activator does not know that corresponding
	* the remote object is active, the activator uses the activation
	* descriptor information (previously registered) to determine the
	* group (VM) in which the object should be activated. If an
	* <code>ActivationInstantiator</code> corresponding to the
	* object's group descriptor already exists, the activator invokes
	* the activation group's <code>newInstance</code> method passing
	* it the object's id and descriptor. <p>
	*
	* If the activation group for the object's group descriptor does
	* not yet exist, the activator starts an
	* <code>ActivationInstantiator</code> executing (by spawning a
	* child process, for example). When the activator receives the
	* activation group's call back (via the
	* <code>ActivationSystem</code>'s <code>activeGroup</code>
	* method) specifying the activation group's reference, the
	* activator can then invoke that activation instantiator's
	* <code>newInstance</code> method to forward each pending
	* activation request to the activation group and return the
	* result (a marshalled remote object reference, a stub) to the
	* caller.<p>
	*
	* Note that the activator receives a "marshalled" object instead of a
	* Remote object so that the activator does not need to load the
	* code for that object, or participate in distributed garbage
	* collection for that object. If the activator kept a strong
	* reference to the remote object, the activator would then
	* prevent the object from being garbage collected under the
	* normal distributed garbage collection mechanism. <p>
	*
	* @param id the activation identifier for the object being activated
	* @param force if true, the activator contacts the group to obtain
	* the remote object's reference; if false, returning the cached value
	* is allowed.
	* @return the remote object (a stub) in a marshalled form
	* @exception ActivationException if object activation fails
	* @exception UnknownObjectException if object is unknown (not registered)
	* @exception RemoteException if remote call fails
	* @since 1.2
	*/
	@:require(java2) @:overload public function activate(id : java.rmi.activation.ActivationID, force : Bool) : java.rmi.MarshalledObject<java.rmi.Remote>;
	
	
}

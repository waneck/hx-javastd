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
extern class ActivationDesc implements java.io.Serializable
{
	/**
	* Constructs an object descriptor for an object whose class name
	* is <code>className</code>, that can be loaded from the
	* code <code>location</code> and whose initialization
	* information is <code>data</code>. If this form of the constructor
	* is used, the <code>groupID</code> defaults to the current id for
	* <code>ActivationGroup</code> for this VM. All objects with the
	* same <code>ActivationGroupID</code> are activated in the same VM.
	*
	* <p>Note that objects specified by a descriptor created with this
	* constructor will only be activated on demand (by default, the restart
	* mode is <code>false</code>).  If an activatable object requires restart
	* services, use one of the <code>ActivationDesc</code> constructors that
	* takes a boolean parameter, <code>restart</code>.
	*
	* <p> This constructor will throw <code>ActivationException</code> if
	* there is no current activation group for this VM.  To create an
	* <code>ActivationGroup</code> use the
	* <code>ActivationGroup.createGroup</code> method.
	*
	* @param className the object's fully package qualified class name
	* @param location the object's code location (from where the class is
	* loaded)
	* @param data the object's initialization (activation) data contained
	* in marshalled form.
	* @exception ActivationException if the current group is nonexistent
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(className : String, location : String, data : java.rmi.MarshalledObject<Dynamic>) : Void;
	
	/**
	* Constructs an object descriptor for an object whose class name
	* is <code>className</code>, that can be loaded from the
	* code <code>location</code> and whose initialization
	* information is <code>data</code>. If this form of the constructor
	* is used, the <code>groupID</code> defaults to the current id for
	* <code>ActivationGroup</code> for this VM. All objects with the
	* same <code>ActivationGroupID</code> are activated in the same VM.
	*
	* <p>This constructor will throw <code>ActivationException</code> if
	* there is no current activation group for this VM.  To create an
	* <code>ActivationGroup</code> use the
	* <code>ActivationGroup.createGroup</code> method.
	*
	* @param className the object's fully package qualified class name
	* @param location the object's code location (from where the class is
	* loaded)
	* @param data the object's initialization (activation) data contained
	* in marshalled form.
	* @param restart if true, the object is restarted (reactivated) when
	* either the activator is restarted or the object's activation group
	* is restarted after an unexpected crash; if false, the object is only
	* activated on demand.  Specifying <code>restart</code> to be
	* <code>true</code> does not force an initial immediate activation of
	* a newly registered object;  initial activation is lazy.
	* @exception ActivationException if the current group is nonexistent
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(className : String, location : String, data : java.rmi.MarshalledObject<Dynamic>, restart : Bool) : Void;
	
	/**
	* Constructs an object descriptor for an object whose class name
	* is <code>className</code> that can be loaded from the
	* code <code>location</code> and whose initialization
	* information is <code>data</code>. All objects with the same
	* <code>groupID</code> are activated in the same Java VM.
	*
	* <p>Note that objects specified by a descriptor created with this
	* constructor will only be activated on demand (by default, the restart
	* mode is <code>false</code>).  If an activatable object requires restart
	* services, use one of the <code>ActivationDesc</code> constructors that
	* takes a boolean parameter, <code>restart</code>.
	*
	* @param groupID the group's identifier (obtained from registering
	* <code>ActivationSystem.registerGroup</code> method). The group
	* indicates the VM in which the object should be activated.
	* @param className the object's fully package-qualified class name
	* @param location the object's code location (from where the class is
	* loaded)
	* @param data  the object's initialization (activation) data contained
	* in marshalled form.
	* @exception IllegalArgumentException if <code>groupID</code> is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(groupID : java.rmi.activation.ActivationGroupID, className : String, location : String, data : java.rmi.MarshalledObject<Dynamic>) : Void;
	
	/**
	* Constructs an object descriptor for an object whose class name
	* is <code>className</code> that can be loaded from the
	* code <code>location</code> and whose initialization
	* information is <code>data</code>. All objects with the same
	* <code>groupID</code> are activated in the same Java VM.
	*
	* @param groupID the group's identifier (obtained from registering
	* <code>ActivationSystem.registerGroup</code> method). The group
	* indicates the VM in which the object should be activated.
	* @param className the object's fully package-qualified class name
	* @param location the object's code location (from where the class is
	* loaded)
	* @param data  the object's initialization (activation) data contained
	* in marshalled form.
	* @param restart if true, the object is restarted (reactivated) when
	* either the activator is restarted or the object's activation group
	* is restarted after an unexpected crash; if false, the object is only
	* activated on demand.  Specifying <code>restart</code> to be
	* <code>true</code> does not force an initial immediate activation of
	* a newly registered object;  initial activation is lazy.
	* @exception IllegalArgumentException if <code>groupID</code> is null
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(groupID : java.rmi.activation.ActivationGroupID, className : String, location : String, data : java.rmi.MarshalledObject<Dynamic>, restart : Bool) : Void;
	
	/**
	* Returns the group identifier for the object specified by this
	* descriptor. A group provides a way to aggregate objects into a
	* single Java virtual machine. RMI creates/activates objects with
	* the same <code>groupID</code> in the same virtual machine.
	*
	* @return the group identifier
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getGroupID() : java.rmi.activation.ActivationGroupID;
	
	/**
	* Returns the class name for the object specified by this
	* descriptor.
	* @return the class name
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getClassName() : String;
	
	/**
	* Returns the code location for the object specified by
	* this descriptor.
	* @return the code location
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getLocation() : String;
	
	/**
	* Returns a "marshalled object" containing intialization/activation
	* data for the object specified by this descriptor.
	* @return the object specific "initialization" data
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getData() : java.rmi.MarshalledObject<Dynamic>;
	
	/**
	* Returns the "restart" mode of the object associated with
	* this activation descriptor.
	*
	* @return true if the activatable object associated with this
	* activation descriptor is restarted via the activation
	* daemon when either the daemon comes up or the object's group
	* is restarted after an unexpected crash; otherwise it returns false,
	* meaning that the object is only activated on demand via a
	* method call.  Note that if the restart mode is <code>true</code>, the
	* activator does not force an initial immediate activation of
	* a newly registered object;  initial activation is lazy.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getRestartMode() : Bool;
	
	/**
	* Compares two activation descriptors for content equality.
	*
	* @param   obj     the Object to compare with
	* @return  true if these Objects are equal; false otherwise.
	* @see             java.util.Hashtable
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return the same hashCode for similar <code>ActivationDesc</code>s.
	* @return an integer
	* @see java.util.Hashtable
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}

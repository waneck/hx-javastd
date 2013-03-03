package org.omg.PortableServer;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Servant
{
	/**
	* Gets the ORB vendor-specific implementation of
	* <code>PortableServer::Servant</code>.
	* @return <code>_delegate</code> the ORB vendor-specific
	* implementation of <code>PortableServer::Servant</code>.
	*/
	@:overload @:final @:public public function _get_delegate() : org.omg.PortableServer.portable.Delegate;
	
	/**
	* Supports the Java ORB portability
	* interfaces by providing a method for classes that support
	* ORB portability through delegation to set their delegate.
	* @param delegate ORB vendor-specific implementation of
	*                 the <code>PortableServer::Servant</code>.
	*/
	@:overload @:final @:public public function _set_delegate(delegate : org.omg.PortableServer.portable.Delegate) : Void;
	
	/**
	* Allows the servant to obtain the object reference for
	* the target CORBA object it is incarnating for that request.
	* @return <code>this_object</code> <code>Object</code> reference
	* associated with the request.
	*/
	@:overload @:final @:public public function _this_object() : org.omg.CORBA.Object;
	
	/**
	* Allows the servant to obtain the object reference for
	* the target CORBA Object it is incarnating for that request.
	* @param orb ORB with which the servant is associated.
	* @return <code>_this_object</code> reference associated with the request.
	*/
	@:overload @:final @:public public function _this_object(orb : org.omg.CORBA.ORB) : org.omg.CORBA.Object;
	
	/**
	* Returns the instance of the ORB
	* currently associated with the <code>Servant</code> (convenience method).
	* @return <code>orb</code> the instance of the ORB currently
	* associated with the <code>Servant</code>.
	*/
	@:overload @:final @:public public function _orb() : org.omg.CORBA.ORB;
	
	/**
	* Allows easy execution of common methods, equivalent to
	* <code>PortableServer::Current:get_POA</code>.
	* @return <code>poa</code> POA associated with the servant.
	*/
	@:overload @:final @:public public function _poa() : org.omg.PortableServer.POA;
	
	/**
	* Allows easy execution of
	* common methods, equivalent
	* to calling <code>PortableServer::Current::get_object_id</code>.
	* @return <code>object_id</code> the <code>Object</code> ID associated
	* with this servant.
	*/
	@:overload @:final @:public public function _object_id() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the
	* root POA from the ORB instance associated with the servant.
	* Subclasses may override this method to return a different POA.
	* @return <code>default_POA</code> the POA associated with the
	* <code>Servant</code>.
	*/
	@:overload @:public public function _default_POA() : org.omg.PortableServer.POA;
	
	/**
	* Checks to see if the specified <code>repository_id</code> is present
	* on the list returned by <code>_all_interfaces()</code> or is the
	* <code>repository_id</code> for the generic CORBA Object.
	* @param repository_id the <code>repository_id</code>
	*          to be checked in the repository list or against the id
	*          of generic CORBA objects.
	* @return <code>is_a</code> boolean indicating whether the specified
	*          <code>repository_id</code> is
	*         in the repository list or is same as a generic CORBA
	*         object.
	*/
	@:overload @:public public function _is_a(repository_id : String) : Bool;
	
	/**
	* Checks for the existence of an
	* <code>Object</code>.
	* The <code>Servant</code> provides a default implementation of
	* <code>_non_existent()</code> that can be overridden by derived servants.
	* @return <code>non_existent</code> <code>true</code> if that object does
	*           not exist,  <code>false</code> otherwise.
	*/
	@:overload @:public public function _non_existent() : Bool;
	
	/**
	* Returns an <code>InterfaceDef</code> object as a
	* <code>CORBA::Object</code> that defines the runtime type of the
	* <code>CORBA::Object</code> implemented by the <code>Servant</code>.
	* The invoker of <code>_get_interface_def</code>
	* must narrow the result to an <code>InterfaceDef</code> in order
	* to use it.
	* <P>This default implementation of <code>_get_interface_def()</code>
	* can be overridden
	* by derived servants if the default behavior is not adequate.
	* As defined in the CORBA 2.3.1 specification, section 11.3.1, the
	* default behavior of <code>_get_interface_def()</code> is to use
	* the most derived
	* interface of a static servant or the most derived interface retrieved
	* from a dynamic servant to obtain the <code>InterfaceDef</code>.
	* This behavior must
	* be supported by the <code>Delegate</code> that implements the
	* <code>Servant</code>.
	* @return <code>get_interface_def</code> an <code>InterfaceDef</code>
	* object as a
	* <code>CORBA::Object</code> that defines the runtime type of the
	* <code>CORBA::Object</code> implemented by the <code>Servant</code>.
	*/
	@:overload @:public public function _get_interface_def() : org.omg.CORBA.Object;
	
	/**
	* Used by the ORB to obtain complete type
	* information from the servant.
	* @param poa POA with which the servant is associated.
	* @param objectId is the id corresponding to the object
	*         associated with this servant.
	* @return list of type information for the object.
	*/
	@:overload @:abstract @:public public function _all_interfaces(poa : org.omg.PortableServer.POA, objectId : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	
}

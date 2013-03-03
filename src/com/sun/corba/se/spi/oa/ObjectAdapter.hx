package com.sun.corba.se.spi.oa;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface ObjectAdapter
{
	/** Returns the ORB associated with this adapter.
	*/
	@:overload public function getORB() : com.sun.corba.se.spi.orb.ORB;
	
	@:overload public function getEffectivePolicy(type : Int) : org.omg.CORBA.Policy;
	
	/** Returns the IOR template of this adapter.  The profiles
	* in this template may be updated only during the AdapterCreated call.
	* After that call completes, the IOR template must be made immutable.
	* Note that the server ID, ORB ID, and adapter name are all available
	* from the IOR template.
	*/
	@:overload public function getIORTemplate() : com.sun.corba.se.spi.ior.IORTemplate;
	
	/** Return the ID of the AdapterManager for this object adapter.
	*/
	@:overload public function getManagerId() : Int;
	
	/** Return the current state of this object adapter (see
	* org.omg.PortableInterceptors for states.
	*/
	@:overload public function getState() : java.StdTypes.Int16;
	
	@:overload public function getAdapterTemplate() : org.omg.PortableInterceptor.ObjectReferenceTemplate;
	
	@:overload public function getCurrentFactory() : org.omg.PortableInterceptor.ObjectReferenceFactory;
	
	/** Change the current factory.  This may only be called during the
	* AdapterCreated call.
	*/
	@:overload public function setCurrentFactory(factory : org.omg.PortableInterceptor.ObjectReferenceFactory) : Void;
	
	/** Get the servant corresponding to the given objectId, if this is supported.
	* This method is only used for models where the servant is an ObjectImpl,
	* which allows the servant to be used directly as the stub.  This allows an object
	* reference to be replaced by its servant when it is unmarshalled locally.
	* Such objects are not ORB mediated.
	*/
	@:overload public function getLocalServant(objectId : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Object;
	
	/** Get the servant for the request given by the parameters.
	* info must contain a valid objectId in this call.
	* The servant is set in the InvocationInfo argument that is passed into
	* this call.
	* @param info is the InvocationInfo object for the object reference
	* @exception ForwardException (a runtime exception) is thrown if the request
	* is to be handled by a different object reference.
	*/
	@:overload public function getInvocationServant(info : com.sun.corba.se.spi.oa.OAInvocationInfo) : Void;
	
	/** enter must be called before each request is invoked on a servant.
	* @exception OADestroyed is thrown when an OA has been destroyed, which
	* requires a retry in the case where an AdapterActivator is present.
	*/
	@:overload public function enter() : Void;
	
	/** exit must be called after each request has been completed.  If enter
	* is called, there must always be a corresponding exit.
	*/
	@:overload public function exit() : Void;
	
	/** Must be called every time getInvocationServant is called after
	* the request has completed.
	*/
	@:overload @:public public function returnServant() : Void;
	
	/** Create an instance of InvocationInfo that is appropriate for this
	* Object adapter.
	*/
	@:overload public function makeInvocationInfo(objectId : java.NativeArray<java.StdTypes.Int8>) : com.sun.corba.se.spi.oa.OAInvocationInfo;
	
	/** Return the most derived interface for the given servant and objectId.
	*/
	@:overload public function getInterfaces(servant : org.omg.CORBA.Object, objectId : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	
}

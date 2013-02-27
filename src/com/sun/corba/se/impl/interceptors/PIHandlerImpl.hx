package com.sun.corba.se.impl.interceptors;
/*
* Copyright (c) 2002, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class PIHandlerImpl implements com.sun.corba.se.spi.protocol.PIHandler
{
	@:overload public function close() : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, args : java.NativeArray<String>) : Void;
	
	@:overload public function initialize() : Void;
	
	/**
	*  ptc/00-08-06 p 205: "When an application calls ORB::destroy, the ORB
	*  1) waits for all requests in progress to complete
	*  2) calls the Interceptor::destroy operation for each interceptor
	*  3) completes destruction of the ORB"
	*
	* This must be called at the end of ORB.destroy.  Note that this is not
	* part of the PIHandler interface, since ORBImpl implements the ORB interface.
	*/
	@:overload public function destroyInterceptors() : Void;
	
	@:overload public function objectAdapterCreated(oa : com.sun.corba.se.spi.oa.ObjectAdapter) : Void;
	
	@:overload public function adapterManagerStateChanged(managerId : Int, newState : java.StdTypes.Int16) : Void;
	
	@:overload public function adapterStateChanged(templates : java.NativeArray<org.omg.PortableInterceptor.ObjectReferenceTemplate>, newState : java.StdTypes.Int16) : Void;
	
	/*
	*****************
	* Client PI hooks
	*****************/
	@:overload public function disableInterceptorsThisThread() : Void;
	
	@:overload public function enableInterceptorsThisThread() : Void;
	
	@:overload public function invokeClientPIStartingPoint() : Void;
	
	@:overload public function makeCompletedClientRequest(replyStatus : Int, exception : java.lang.Exception) : java.lang.Exception;
	
	@:overload public function invokeClientPIEndingPoint(replyStatus : Int, exception : java.lang.Exception) : java.lang.Exception;
	
	@:overload public function handleClientPIEndingPoint(replyStatus : Int, exception : java.lang.Exception, invokeEndingPoint : Bool) : java.lang.Exception;
	
	@:overload public function initiateClientPIRequest(diiRequest : Bool) : Void;
	
	@:overload public function cleanupClientPIRequest() : Void;
	
	@:overload public function setClientPIInfo(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload public function setClientPIInfo(requestImpl : com.sun.corba.se.impl.corba.RequestImpl) : Void;
	
	/*
	*****************
	* Server PI hooks
	*****************/
	@:overload public function invokeServerPIStartingPoint() : Void;
	
	@:overload public function invokeServerPIIntermediatePoint() : Void;
	
	@:overload public function invokeServerPIEndingPoint(replyMessage : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage) : Void;
	
	@:overload public function setServerPIInfo(exception : java.lang.Exception) : Void;
	
	@:overload public function setServerPIInfo(arguments : org.omg.CORBA.NVList) : Void;
	
	@:overload public function setServerPIExceptionInfo(exception : org.omg.CORBA.Any) : Void;
	
	@:overload public function setServerPIInfo(result : org.omg.CORBA.Any) : Void;
	
	@:overload public function initializeServerPIInfo(request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, oa : com.sun.corba.se.spi.oa.ObjectAdapter, objectId : java.NativeArray<java.StdTypes.Int8>, oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate) : Void;
	
	@:overload public function setServerPIInfo(servant : Dynamic, targetMostDerivedInterface : String) : Void;
	
	@:overload public function cleanupServerPIRequest() : Void;
	
	/**
	* Called by ORBInitInfo when an interceptor needs to be registered.
	* The type is one of:
	* <ul>
	*   <li>INTERCEPTOR_TYPE_CLIENT - ClientRequestInterceptor
	*   <li>INTERCEPTOR_TYPE_SERVER - ServerRequestInterceptor
	*   <li>INTERCEPTOR_TYPE_IOR - IORInterceptor
	* </ul>
	*
	* @exception DuplicateName Thrown if an interceptor of the given
	*     name already exists for the given type.
	*/
	@:overload public function register_interceptor(interceptor : org.omg.PortableInterceptor.Interceptor, type : Int) : Void;
	
	@:overload public function getPICurrent() : org.omg.PortableInterceptor.Current;
	
	/** This is the implementation of standard API defined in org.omg.CORBA.ORB
	*  class. This method finds the Policy Factory for the given Policy Type
	*  and instantiates the Policy object from the Factory. It will throw
	*  PolicyError exception, If the PolicyFactory for the given type is
	*  not registered.
	*  _REVISIT_, Once Policy Framework work is completed, Reorganize
	*  this method to com.sun.corba.se.spi.orb.ORB.
	*/
	@:overload public function create_policy(type : Int, val : org.omg.CORBA.Any) : org.omg.CORBA.Policy;
	
	/** This method registers the Policy Factory in the policyFactoryTable,
	*  which is a HashMap. This method is made package private, because
	*  it is used internally by the  Interceptors.
	*/
	@:overload public function registerPolicyFactory(type : Int, factory : org.omg.PortableInterceptor.PolicyFactory) : Void;
	
	@:overload @:synchronized public function allocateServerRequestId() : Int;
	
	
}
@:native('com$sun$corba$se$impl$interceptors$PIHandlerImpl$RequestInfoStack') @:internal extern class PIHandlerImpl_RequestInfoStack extends java.util.Stack<Dynamic>
{
	public var disableCount : Int;
	
	
}

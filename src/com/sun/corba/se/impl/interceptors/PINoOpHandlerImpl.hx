package com.sun.corba.se.impl.interceptors;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class PINoOpHandlerImpl implements com.sun.corba.se.spi.protocol.PIHandler
{
	/**
	* This is No-Op implementation of PIHandler. It is used in ORBConfigurator
	* to initialize a piHandler before the Persistent Server Activation. This
	* PIHandler implementation will be replaced by the real PIHandler in
	* ORB.postInit( ) call.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function initialize() : Void;
	
	@:overload @:public public function destroyInterceptors() : Void;
	
	@:overload @:public public function objectAdapterCreated(oa : com.sun.corba.se.spi.oa.ObjectAdapter) : Void;
	
	@:overload @:public public function adapterManagerStateChanged(managerId : Int, newState : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function adapterStateChanged(templates : java.NativeArray<org.omg.PortableInterceptor.ObjectReferenceTemplate>, newState : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function disableInterceptorsThisThread() : Void;
	
	@:overload @:public public function enableInterceptorsThisThread() : Void;
	
	@:overload @:public public function invokeClientPIStartingPoint() : Void;
	
	@:overload @:public public function invokeClientPIEndingPoint(replyStatus : Int, exception : java.lang.Exception) : java.lang.Exception;
	
	@:overload @:public public function makeCompletedClientRequest(replyStatus : Int, exception : java.lang.Exception) : java.lang.Exception;
	
	@:overload @:public public function initiateClientPIRequest(diiRequest : Bool) : Void;
	
	@:overload @:public public function cleanupClientPIRequest() : Void;
	
	@:overload @:public public function setClientPIInfo(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:public public function setClientPIInfo(requestImpl : com.sun.corba.se.impl.corba.RequestImpl) : Void;
	
	@:overload @:final @:public public function sendCancelRequestIfFinalFragmentNotSent() : Void;
	
	@:overload @:public public function invokeServerPIStartingPoint() : Void;
	
	@:overload @:public public function invokeServerPIIntermediatePoint() : Void;
	
	@:overload @:public public function invokeServerPIEndingPoint(replyMessage : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage) : Void;
	
	@:overload @:public public function setServerPIInfo(exception : java.lang.Exception) : Void;
	
	@:overload @:public public function setServerPIInfo(arguments : org.omg.CORBA.NVList) : Void;
	
	@:overload @:public public function setServerPIExceptionInfo(exception : org.omg.CORBA.Any) : Void;
	
	@:overload @:public public function setServerPIInfo(result : org.omg.CORBA.Any) : Void;
	
	@:overload @:public public function initializeServerPIInfo(request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, oa : com.sun.corba.se.spi.oa.ObjectAdapter, objectId : java.NativeArray<java.StdTypes.Int8>, oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate) : Void;
	
	@:overload @:public public function setServerPIInfo(servant : Dynamic, targetMostDerivedInterface : String) : Void;
	
	@:overload @:public public function cleanupServerPIRequest() : Void;
	
	@:overload @:public public function register_interceptor(interceptor : org.omg.PortableInterceptor.Interceptor, type : Int) : Void;
	
	@:overload @:public public function getPICurrent() : org.omg.PortableInterceptor.Current;
	
	@:overload @:public public function create_policy(type : Int, val : org.omg.CORBA.Any) : org.omg.CORBA.Policy;
	
	@:overload @:public public function registerPolicyFactory(type : Int, factory : org.omg.PortableInterceptor.PolicyFactory) : Void;
	
	@:overload @:public public function allocateServerRequestId() : Int;
	
	
}

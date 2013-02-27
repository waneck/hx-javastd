package com.sun.corba.se.impl.interceptors;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
/**
* Implementation of the ServerRequestInfo interface as specified in
* orbos/99-12-02 section 5.4.3.
*/
extern class ServerRequestInfoImpl extends com.sun.corba.se.impl.interceptors.RequestInfoImpl implements org.omg.PortableInterceptor.ServerRequestInfo
{
	/*
	**********************************************************************
	* Access protection
	**********************************************************************/
	private static var MID_SENDING_EXCEPTION(default, null) : Int;
	
	private static var MID_OBJECT_ID(default, null) : Int;
	
	private static var MID_ADAPTER_ID(default, null) : Int;
	
	private static var MID_TARGET_MOST_DERIVED_INTERFACE(default, null) : Int;
	
	private static var MID_GET_SERVER_POLICY(default, null) : Int;
	
	private static var MID_SET_SLOT(default, null) : Int;
	
	private static var MID_TARGET_IS_A(default, null) : Int;
	
	private static var MID_ADD_REPLY_SERVICE_CONTEXT(default, null) : Int;
	
	private static var MID_SERVER_ID(default, null) : Int;
	
	private static var MID_ORB_ID(default, null) : Int;
	
	private static var MID_ADAPTER_NAME(default, null) : Int;
	
	/**
	* Any containing the exception to be returned to the client.
	*/
	@:overload public function sending_exception() : org.omg.CORBA.Any;
	
	/**
	* The opaque object_id describing the target of the operation invocation.
	*/
	@:overload public function object_id() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function server_id() : String;
	
	@:overload public function orb_id() : String;
	
	@:overload @:synchronized public function adapter_name() : java.NativeArray<String>;
	
	/**
	* The opaque identifier for the object adapter.
	*/
	@:overload @:synchronized public function adapter_id() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The RepositoryID for the most derived interface of the servant.
	*/
	@:overload public function target_most_derived_interface() : String;
	
	/**
	* Returns the policy in effect for this operation for the given policy
	* type.
	*/
	@:overload public function get_server_policy(type : Int) : org.omg.CORBA.Policy;
	
	/**
	* Allows an Interceptor to set a slot in the Current that is in the scope
	* of the request.  If data already exists in that slot, it will be
	* overwritten.  If the ID does not define an allocated slot, InvalidSlot
	* is raised.
	*/
	@:overload public function set_slot(id : Int, data : org.omg.CORBA.Any) : Void;
	
	/**
	* Returns true if the servant is the given RepositoryId, false if it is
	* not.
	*/
	@:overload public function target_is_a(id : String) : Bool;
	
	/**
	* Allows Interceptors to add service contexts to the request.
	*/
	@:overload public function add_reply_service_context(service_context : org.omg.IOP.ServiceContext, replace : Bool) : Void;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function request_id() : Int;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function operation() : String;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function arguments() : java.NativeArray<org.omg.Dynamic.Parameter>;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function exceptions() : java.NativeArray<org.omg.CORBA.TypeCode>;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function contexts() : java.NativeArray<String>;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function operation_context() : java.NativeArray<String>;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function result() : org.omg.CORBA.Any;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function response_expected() : Bool;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function forward_reference() : org.omg.CORBA.Object;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function get_request_service_context(id : Int) : org.omg.IOP.ServiceContext;
	
	/**
	* See ServerRequestInfo for javadocs.
	*/
	@:overload override public function get_reply_service_context(id : Int) : org.omg.IOP.ServiceContext;
	
	/**
	* Overridden from RequestInfoImpl.  This version calls the super
	* and then, if we are changing to ending points, executes all
	* enqueued AddReplyServiceContextCommands.
	*/
	@:overload override private function setCurrentExecutionPoint(executionPoint : Int) : Void;
	
	/**
	* Stores the various sources of information used for this info object.
	*/
	@:overload private function setInfo(request : com.sun.corba.se.spi.protocol.CorbaMessageMediator, oa : com.sun.corba.se.spi.oa.ObjectAdapter, objectId : java.NativeArray<java.StdTypes.Int8>, oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate) : Void;
	
	/**
	* Stores the various sources of information used for this info object.
	*/
	@:overload private function setDSIArguments(arguments : org.omg.CORBA.NVList) : Void;
	
	/**
	* Stores the various sources of information used for this info object.
	*/
	@:overload private function setDSIException(exception : org.omg.CORBA.Any) : Void;
	
	/**
	* Stores the various sources of information used for this info object.
	*/
	@:overload private function setDSIResult(result : org.omg.CORBA.Any) : Void;
	
	/**
	* Sets the exception to be returned by received_exception and
	* received_exception_id.
	*/
	@:overload override private function setException(exception : java.lang.Exception) : Void;
	
	/**
	* Stores the various sources of information used for this info object.
	*/
	@:overload private function setInfo(servant : Dynamic, targetMostDerivedInterface : String) : Void;
	
	/**
	* Overridden from RequestInfoImpl.  Calls the super class, then
	* sets the ending point call depending on the reply status.
	*/
	@:overload override private function setReplyStatus(replyStatus : java.StdTypes.Int16) : Void;
	
	/**
	* See description for RequestInfoImpl.checkAccess
	*/
	@:overload override private function checkAccess(methodID : Int) : Void;
	
	
}
/*
**********************************************************************
* Private-scope classes and methods
**********************************************************************/
@:native('com$sun$corba$se$impl$interceptors$ServerRequestInfoImpl$AddReplyServiceContextCommand') @:internal extern class ServerRequestInfoImpl_AddReplyServiceContextCommand
{
	
}

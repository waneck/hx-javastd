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
extern class ClientRequestInfoImpl extends com.sun.corba.se.impl.interceptors.RequestInfoImpl implements org.omg.PortableInterceptor.ClientRequestInfo
{
	@:protected private var piCurrentPushed : Bool;
	
	/*
	**********************************************************************
	* Access protection
	**********************************************************************/
	@:protected @:static @:final private static var MID_TARGET(default, null) : Int;
	
	@:protected @:static @:final private static var MID_EFFECTIVE_TARGET(default, null) : Int;
	
	@:protected @:static @:final private static var MID_EFFECTIVE_PROFILE(default, null) : Int;
	
	@:protected @:static @:final private static var MID_RECEIVED_EXCEPTION(default, null) : Int;
	
	@:protected @:static @:final private static var MID_RECEIVED_EXCEPTION_ID(default, null) : Int;
	
	@:protected @:static @:final private static var MID_GET_EFFECTIVE_COMPONENT(default, null) : Int;
	
	@:protected @:static @:final private static var MID_GET_EFFECTIVE_COMPONENTS(default, null) : Int;
	
	@:protected @:static @:final private static var MID_GET_REQUEST_POLICY(default, null) : Int;
	
	@:protected @:static @:final private static var MID_ADD_REQUEST_SERVICE_CONTEXT(default, null) : Int;
	
	/**
	* Creates a new ClientRequestInfo implementation.
	* The constructor is package scope since no other package need create
	* an instance of this class.
	*/
	@:overload @:protected private function new(myORB : com.sun.corba.se.spi.orb.ORB) : Void;
	
	/**
	* The object which the client called to perform the operation.
	*/
	@:overload @:public public function target() : org.omg.CORBA.Object;
	
	/**
	* The actual object on which the operation will be invoked.  If the
	* reply_status is LOCATION_FORWARD, then on subsequent requests,
	* effective_target will contain the forwarded IOR while target will
	* remain unchanged.
	*/
	@:overload @:public public function effective_target() : org.omg.CORBA.Object;
	
	/**
	* The profile that will be used to send the request.  If a location
	* forward has occurred for this operation's object and that object's
	* profile change accordingly, then this profile will be that located
	* profile.
	*/
	@:overload @:public public function effective_profile() : org.omg.IOP.TaggedProfile;
	
	/**
	* Contains the exception to be returned to the client.
	*/
	@:overload @:public public function received_exception() : org.omg.CORBA.Any;
	
	/**
	* The CORBA::RepositoryId of the exception to be returned to the client.
	*/
	@:overload @:public public function received_exception_id() : String;
	
	/**
	* Returns the IOP::TaggedComponent with the given ID from the profile
	* selected for this request.  IF there is more than one component for a
	* given component ID, it is undefined which component this operation
	* returns (get_effective_component should be called instead).
	*/
	@:overload @:public public function get_effective_component(id : Int) : org.omg.IOP.TaggedComponent;
	
	/**
	* Returns all the tagged components with the given ID from the profile
	* selected for this request.
	*/
	@:overload @:public public function get_effective_components(id : Int) : java.NativeArray<org.omg.IOP.TaggedComponent>;
	
	/**
	* Returns the given policy in effect for this operation.
	*/
	@:overload @:public public function get_request_policy(type : Int) : org.omg.CORBA.Policy;
	
	/**
	* Allows interceptors to add service contexts to the request.
	* <p>
	* There is no declaration of the order of the service contexts.  They
	* may or may not appear in the order they are added.
	*/
	@:overload @:public public function add_request_service_context(service_context : org.omg.IOP.ServiceContext, replace : Bool) : Void;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function request_id() : Int;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function operation() : String;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function arguments() : java.NativeArray<org.omg.Dynamic.Parameter>;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function exceptions() : java.NativeArray<org.omg.CORBA.TypeCode>;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function contexts() : java.NativeArray<String>;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function operation_context() : java.NativeArray<String>;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function result() : org.omg.CORBA.Any;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function response_expected() : Bool;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function forward_reference() : org.omg.CORBA.Object;
	
	@:overload @:protected private function setLocatedIOR(ior : com.sun.corba.se.spi.ior.IOR) : Void;
	
	/**
	* See RequestInfoImpl for javadoc.
	*/
	@:overload @:public override public function get_request_service_context(id : Int) : org.omg.IOP.ServiceContext;
	
	/**
	* does not contain an etry for that ID, BAD_PARAM with a minor code of
	* TBD_BP is raised.
	*/
	@:overload @:public override public function get_reply_service_context(id : Int) : org.omg.IOP.ServiceContext;
	
	@:overload @:public override public function connection() : com.sun.corba.se.spi.legacy.connection.Connection;
	
	/*
	**********************************************************************
	* Package-scope interfaces
	**********************************************************************/
	@:overload @:protected private function setInfo(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	/**
	* Overridden from RequestInfoImpl.  Calls the super class, then
	* sets the ending point call depending on the reply status.
	*/
	@:overload @:protected override private function setReplyStatus(replyStatus : java.StdTypes.Int16) : Void;
	
	/**
	* Sets DII request object in the RequestInfoObject.
	*/
	@:overload @:protected private function setDIIRequest(req : org.omg.CORBA.Request) : Void;
	
	/**
	* Keeps track of whether initiate was called for a DII request.  The ORB
	* needs to know this so it knows whether to ignore a second call to
	* initiateClientPIRequest or not.
	*/
	@:overload @:protected private function setDIIInitiate(diiInitiate : Bool) : Void;
	
	/**
	* See comment for setDIIInitiate
	*/
	@:overload @:protected private function isDIIInitiate() : Bool;
	
	/**
	* The PICurrent stack should only be popped if it was pushed.
	* This is generally the case.  But exceptions which occur
	* after the stub's entry to _request but before the push
	* end up in _releaseReply which will try to pop unless told not to.
	*/
	@:overload @:protected private function setPICurrentPushed(piCurrentPushed : Bool) : Void;
	
	@:overload @:protected private function isPICurrentPushed() : Bool;
	
	/**
	* Overridden from RequestInfoImpl.
	*/
	@:overload @:protected override private function setException(exception : java.lang.Exception) : Void;
	
	@:overload @:protected private function getIsOneWay() : Bool;
	
	/**
	* See description for RequestInfoImpl.checkAccess
	*/
	@:overload @:protected override private function checkAccess(methodID : Int) : Void;
	
	
}

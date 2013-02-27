package com.sun.corba.se.impl.interceptors;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ORBInitInfoImpl extends org.omg.CORBA.LocalObject implements org.omg.PortableInterceptor.ORBInitInfo implements com.sun.corba.se.spi.legacy.interceptor.ORBInitInfoExt
{
	public static var STAGE_PRE_INIT(default, null) : Int;
	
	public static var STAGE_POST_INIT(default, null) : Int;
	
	public static var STAGE_CLOSED(default, null) : Int;
	
	/** Return the ORB behind this ORBInitInfo.  This is defined in the
	* ORBInitInfoExt interface.
	*/
	@:overload public function getORB() : com.sun.corba.se.spi.orb.ORB;
	
	/**
	* This attribute contains the arguments passed to ORB_init.  They may
	* or may not contain the ORB's arguments
	*/
	@:overload public function arguments() : java.NativeArray<String>;
	
	/**
	* This attribute is the ID of the ORB being initialized
	*/
	@:overload public function orb_id() : String;
	
	/**
	* This attribute is the IOP::CodecFactory.  The CodecFactory is normally
	* obtained via a call to ORB::resolve_initial_references( "CodecFactory" )
	* but since the ORB is not yet available and Interceptors, particularly
	* when processing service contexts, will require a Codec, a means of
	* obtaining a Codec is necessary during ORB intialization.
	*/
	@:overload public function codec_factory() : org.omg.IOP.CodecFactory;
	
	/**
	* See orbos/99-12-02, Chapter 11, Dynamic Initial References on page
	* 11-81.  This operation is identical to ORB::register_initial_reference
	* described there.  This same functionality exists here because the ORB,
	* not yet fully initialized, is not yet available but initial references
	* may need to be registered as part of Interceptor registration.
	* <p>
	* This method may not be called during post_init.
	*/
	@:overload public function register_initial_reference(id : String, obj : org.omg.CORBA.Object) : Void;
	
	/**
	* This operation is only valid during post_init.  It is identical to
	* ORB::resolve_initial_references.  This same functionality exists here
	* because the ORB, not yet fully initialized, is not yet available,
	* but initial references may be required from the ORB as part
	* of Interceptor registration.
	* <p>
	* (incorporates changes from errata in orbos/00-01-01)
	* <p>
	* This method may not be called during pre_init.
	*/
	@:overload public function resolve_initial_references(id : String) : org.omg.CORBA.Object;
	
	@:overload public function add_client_request_interceptor_with_policy(interceptor : org.omg.PortableInterceptor.ClientRequestInterceptor, policies : java.NativeArray<org.omg.CORBA.Policy>) : Void;
	
	/**
	* This operation is used to add a client-side request Interceptor to
	* the list of client-side request Interceptors.
	* <p>
	* If a client-side request Interceptor has already been registered
	* with this Interceptor's name, DuplicateName is raised.
	*/
	@:overload public function add_client_request_interceptor(interceptor : org.omg.PortableInterceptor.ClientRequestInterceptor) : Void;
	
	@:overload public function add_server_request_interceptor_with_policy(interceptor : org.omg.PortableInterceptor.ServerRequestInterceptor, policies : java.NativeArray<org.omg.CORBA.Policy>) : Void;
	
	/**
	* This operation is used to add a server-side request Interceptor to
	* the list of server-side request Interceptors.
	* <p>
	* If a server-side request Interceptor has already been registered
	* with this Interceptor's name, DuplicateName is raised.
	*/
	@:overload public function add_server_request_interceptor(interceptor : org.omg.PortableInterceptor.ServerRequestInterceptor) : Void;
	
	@:overload public function add_ior_interceptor_with_policy(interceptor : org.omg.PortableInterceptor.IORInterceptor, policies : java.NativeArray<org.omg.CORBA.Policy>) : Void;
	
	/**
	* This operation is used to add an IOR Interceptor to
	* the list of IOR Interceptors.
	* <p>
	* If an IOR Interceptor has already been registered
	* with this Interceptor's name, DuplicateName is raised.
	*/
	@:overload public function add_ior_interceptor(interceptor : org.omg.PortableInterceptor.IORInterceptor) : Void;
	
	/**
	* A service calls allocate_slot_id to allocate a slot on
	* PortableInterceptor::Current.
	*
	* @return The index to the slot which has been allocated.
	*/
	@:overload public function allocate_slot_id() : Int;
	
	/**
	* Register a PolicyFactory for the given PolicyType.
	* <p>
	* If a PolicyFactory already exists for the given PolicyType,
	* BAD_INV_ORDER is raised with a minor code of TBD_BIO+2.
	*/
	@:overload public function register_policy_factory(type : Int, policy_factory : org.omg.PortableInterceptor.PolicyFactory) : Void;
	
	
}

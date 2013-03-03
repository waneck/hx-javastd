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
extern class IORInfoImpl extends org.omg.CORBA.LocalObject implements org.omg.PortableInterceptor.IORInfo implements com.sun.corba.se.spi.legacy.interceptor.IORInfoExt
{
	/**
	* An ORB service implementation may determine what server side policy
	* of a particular type is in effect for an IOR being constructed by
	* calling the get_effective_policy operation.  When the IOR being
	* constructed is for an object implemented using a POA, all Policy
	* objects passed to the PortableServer::POA::create_POA call that
	* created that POA are accessible via get_effective_policy.
	* <p>
	* If a policy for the given type is not known to the ORB, then this
	* operation will raise INV_POLICY with a standard minor code of 2.
	*
	* @param type The CORBA::PolicyType specifying the type of policy to
	*   return.
	* @return The effective CORBA::Policy object of the requested type.
	*   If the given policy type is known, but no policy of that tpye is
	*   in effect, then this operation will return a nil object reference.
	*/
	@:overload @:public public function get_effective_policy(type : Int) : org.omg.CORBA.Policy;
	
	/**
	* A portable ORB service implementation calls this method from its
	* implementation of establish_components to add a tagged component to
	* the set which will be included when constructing IORs.  The
	* components in this set will be included in all profiles.
	* <p>
	* Any number of components may exist with the same component ID.
	*
	* @param tagged_component The IOP::TaggedComponent to add
	*/
	@:overload @:public public function add_ior_component(tagged_component : org.omg.IOP.TaggedComponent) : Void;
	
	/**
	* A portable ORB service implementation calls this method from its
	* implementation of establish_components to add a tagged component to
	* the set which will be included when constructing IORs.  The
	* components in this set will be included in the specified profile.
	* <p>
	* Any number of components may exist with the same component ID.
	* <p>
	* If the given profile ID does not define a known profile or it is
	* impossible to add components to thgat profile, BAD_PARAM is raised
	* with a minor code of TBD_BP + 3.
	*
	* @param tagged_component The IOP::TaggedComponent to add.
	* @param profile_id The IOP::ProfileId tof the profile to which this
	*     component will be added.
	*/
	@:overload @:public public function add_ior_component_to_profile(tagged_component : org.omg.IOP.TaggedComponent, profile_id : Int) : Void;
	
	/**
	* @param type The type of the server port
	*     (see connection.ORBSocketFactory for discussion).
	* @return The listen port number for that type.
	* @throws UnknownType if no port of the given type is found.
	*/
	@:overload @:public public function getServerPort(type : String) : Int;
	
	@:overload @:public public function getObjectAdapter() : com.sun.corba.se.spi.oa.ObjectAdapter;
	
	@:overload @:public public function manager_id() : Int;
	
	@:overload @:public public function state() : java.StdTypes.Int16;
	
	@:overload @:public public function adapter_template() : org.omg.PortableInterceptor.ObjectReferenceTemplate;
	
	@:overload @:public public function current_factory() : org.omg.PortableInterceptor.ObjectReferenceFactory;
	
	@:overload @:public public function current_factory(factory : org.omg.PortableInterceptor.ObjectReferenceFactory) : Void;
	
	
}

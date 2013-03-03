package com.sun.xml.internal.ws.api.policy;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface PolicyResolver
{
	/**
	* Creates a PolicyResolver
	*
	* @param context
	*      ServerContext that captures information useful for resolving Policy on server-side
	*
	* @return
	*      A PolicyMap with single policy alternative that gets created after consulting various configuration models.
	*
	* @throws WebServiceException
	*      If resolution failed
	*/
	@:overload public function resolve(context : com.sun.xml.internal.ws.api.policy.PolicyResolver.PolicyResolver_ServerContext) : com.sun.xml.internal.ws.policy.PolicyMap;
	
	/**
	* Creates a PolicyResolver
	*
	* @param context
	*      ServerContext that captures information useful for resolving Policy on client-side
	*
	* @return
	*      A PolicyMap with single policy alternative that gets created after consulting various configuration models.
	*
	* @throws WebServiceException
	*      If resolution failed
	*/
	@:overload public function resolve(context : com.sun.xml.internal.ws.api.policy.PolicyResolver.PolicyResolver_ClientContext) : com.sun.xml.internal.ws.policy.PolicyMap;
	
	
}
@:native('com$sun$xml$internal$ws$api$policy$PolicyResolver$ServerContext') extern class PolicyResolver_ServerContext
{
	/**
	* The abstraction of PolicyMap is not finalized, and will change in few months. It is highly discouraged to use
	* PolicyMap until it is finalized.
	*
	* In presence of WSDL, JAX-WS by default creates PolicyMap from Policy Attachemnts in WSDL.
	* In absense of WSDL, JAX-WS creates PolicyMap from WebServiceFeatures configured on the endpoint implementation
	*
	* @param policyMap
	*      PolicyMap created from PolicyAttachments in WSDL or Feature annotations on endpoint implementation class.
	* @param container
	* @param endpointClass
	* @param mutators
	*      List of PolicyMapMutators that are run eventually when a PolicyMap is created
	*/
	@:overload @:public public function new(policyMap : com.sun.xml.internal.ws.policy.PolicyMap, container : com.sun.xml.internal.ws.api.server.Container, endpointClass : Class<Dynamic>, mutators : java.NativeArray<com.sun.xml.internal.ws.policy.PolicyMapMutator>) : Void;
	
	/**
	* The abstraction of PolicyMap is not finalized, and will change in few months. It is highly discouraged to use
	* PolicyMap until it is finalized.
	*
	* In presence of WSDL, JAX-WS by default creates PolicyMap from Policy Attachemnts in WSDL.
	* In absense of WSDL, JAX-WS creates PolicyMap from WebServiceFeatures configured on the endpoint implementation
	*
	* @param policyMap
	*      PolicyMap created from PolicyAttachments in WSDL or Feature annotations on endpoint implementation class.
	* @param container
	* @param endpointClass
	* @param hasWsdl Set to true, if this service is bundled with WSDL, false otherwise
	* @param mutators
	*      List of PolicyMapMutators that are run eventually when a PolicyMap is created
	*/
	@:overload @:public public function new(policyMap : com.sun.xml.internal.ws.policy.PolicyMap, container : com.sun.xml.internal.ws.api.server.Container, endpointClass : Class<Dynamic>, hasWsdl : Bool, mutators : java.NativeArray<com.sun.xml.internal.ws.policy.PolicyMapMutator>) : Void;
	
	@:overload @:public public function getPolicyMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	@:overload @:public public function getEndpointClass() : Class<Dynamic>;
	
	@:overload @:public public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	/**
	* Return true, if this service is bundled with WSDL, false otherwise
	* @return
	*/
	@:overload @:public public function hasWsdl() : Bool;
	
	@:overload @:public public function getMutators() : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyMapMutator>;
	
	
}
@:native('com$sun$xml$internal$ws$api$policy$PolicyResolver$ClientContext') extern class PolicyResolver_ClientContext
{
	/**
	* The abstraction of PolicyMap is not finalized, and will change in few months. It is highly discouraged to use
	* PolicyMap until it is finalized.
	*
	* In presence of WSDL, JAX-WS by default creates PolicyMap from Policy Attachemnts in WSDL.
	*
	* @param policyMap PolicyMap created from PolicyAttachemnts in WSDL
	* @param container
	*/
	@:overload @:public public function new(policyMap : com.sun.xml.internal.ws.policy.PolicyMap, container : com.sun.xml.internal.ws.api.server.Container) : Void;
	
	@:overload @:public public function getPolicyMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	@:overload @:public public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	
}

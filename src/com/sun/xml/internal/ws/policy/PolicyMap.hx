package com.sun.xml.internal.ws.policy;
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
extern class PolicyMap implements java.lang.Iterable<com.sun.xml.internal.ws.policy.Policy>
{
	/**
	* Creates new policy map instance and connects provided collection of policy map mutators to the created policy map.
	*
	* @param mutators collection of mutators that should be connected to the newly created map.
	* @return new policy map instance (mutable via provided collection of mutators).
	*/
	@:overload public static function createPolicyMap(mutators : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyMapMutator>) : PolicyMap;
	
	@:overload public function getServiceEffectivePolicy(key : com.sun.xml.internal.ws.policy.PolicyMapKey) : com.sun.xml.internal.ws.policy.Policy;
	
	@:overload public function getEndpointEffectivePolicy(key : com.sun.xml.internal.ws.policy.PolicyMapKey) : com.sun.xml.internal.ws.policy.Policy;
	
	@:overload public function getOperationEffectivePolicy(key : com.sun.xml.internal.ws.policy.PolicyMapKey) : com.sun.xml.internal.ws.policy.Policy;
	
	@:overload public function getInputMessageEffectivePolicy(key : com.sun.xml.internal.ws.policy.PolicyMapKey) : com.sun.xml.internal.ws.policy.Policy;
	
	@:overload public function getOutputMessageEffectivePolicy(key : com.sun.xml.internal.ws.policy.PolicyMapKey) : com.sun.xml.internal.ws.policy.Policy;
	
	@:overload public function getFaultMessageEffectivePolicy(key : com.sun.xml.internal.ws.policy.PolicyMapKey) : com.sun.xml.internal.ws.policy.Policy;
	
	/**
	* Returns all service scope keys stored in this policy map
	*
	* @return collection of service scope policy map keys stored in the map.
	*/
	@:overload public function getAllServiceScopeKeys() : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyMapKey>;
	
	/**
	* Returns all endpoint scope keys stored in this policy map
	*
	* @return collection of endpoint scope policy map keys stored in the map.
	*/
	@:overload public function getAllEndpointScopeKeys() : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyMapKey>;
	
	/**
	* Returns all operation scope keys stored in this policy map
	*
	* @return collection of operation scope policy map keys stored in the map.
	*/
	@:overload public function getAllOperationScopeKeys() : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyMapKey>;
	
	/**
	* Returns all input message scope keys stored in this policy map
	*
	* @return collection of input message scope policy map keys stored in the map.
	*/
	@:overload public function getAllInputMessageScopeKeys() : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyMapKey>;
	
	/**
	* Returns all output message scope keys stored in this policy map
	*
	* @return collection of output message scope policy map keys stored in the map.
	*/
	@:overload public function getAllOutputMessageScopeKeys() : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyMapKey>;
	
	/**
	* Returns all fault message scope keys stored in this policy map
	*
	* @return collection of input message scope policy map keys stored in the map.
	*/
	@:overload public function getAllFaultMessageScopeKeys() : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyMapKey>;
	
	/**
	* Returns all policy subjects contained by this map.
	*
	* @return All policy subjects contained by this map
	*/
	@:overload public function getPolicySubjects() : java.util.Collection<com.sun.xml.internal.ws.policy.PolicySubject>;
	
	/*
	* TODO: reconsider this QUICK HACK
	*/
	@:overload public function isInputMessageSubject(subject : com.sun.xml.internal.ws.policy.PolicySubject) : Bool;
	
	/*
	* TODO: reconsider this QUICK HACK
	*/
	@:overload public function isOutputMessageSubject(subject : com.sun.xml.internal.ws.policy.PolicySubject) : Bool;
	
	/*
	* TODO: reconsider this QUICK HACK
	*/
	@:overload public function isFaultMessageSubject(subject : com.sun.xml.internal.ws.policy.PolicySubject) : Bool;
	
	/**
	* Returns true if this map contains no key - policy pairs
	*
	* A null object key or policy constitutes a non-empty map.
	*
	* @return true if this map contains no key - policy pairs
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Creates a service policy scope <emph>locator</emph> object, that serves as a access key into
	* a {@code PolicyMap} where actual service policy scope for given service can be retrieved.
	*
	* @param service qualified name of the service. Must not be {@code null}.
	* @throws IllegalArgumentException in case service, port or operation parameter is {@code null}.
	*/
	@:overload public static function createWsdlServiceScopeKey(service : javax.xml.namespace.QName) : com.sun.xml.internal.ws.policy.PolicyMapKey;
	
	/**
	* Creates an endpoint policy scope <emph>locator</emph> object, that serves as a access key into
	* a {@code PolicyMap} where actual endpoint policy scope for given endpoint can be retrieved.
	*
	* @param service qualified name of the service. Must not be {@code null}.
	* @param port qualified name of the endpoint. Must not be {@code null}.
	* @throws IllegalArgumentException in case service, port or operation parameter is {@code null}.
	*/
	@:overload public static function createWsdlEndpointScopeKey(service : javax.xml.namespace.QName, port : javax.xml.namespace.QName) : com.sun.xml.internal.ws.policy.PolicyMapKey;
	
	/**
	* Creates an operation policy scope <emph>locator</emph> object, that serves as a access key into
	* a {@code PolicyMap} where actual operation policy scope for given bound operation can be retrieved.
	*
	* @param service qualified name of the service. Must not be {@code null}.
	* @param port qualified name of the endpoint. Must not be {@code null}.
	* @param operation qualified name of the operation. Must not be {@code null}.
	* @throws IllegalArgumentException in case service, port or operation parameter is {@code null}.
	*/
	@:overload public static function createWsdlOperationScopeKey(service : javax.xml.namespace.QName, port : javax.xml.namespace.QName, operation : javax.xml.namespace.QName) : com.sun.xml.internal.ws.policy.PolicyMapKey;
	
	/**
	* Creates an input/output message policy scope <emph>locator</emph> object identified by a bound operation, that serves as a
	* access key into {@code PolicyMap} where actual input/output message policy scope for given input message of a bound operation
	* can be retrieved.
	* <p/>
	* The method returns a key that is compliant with <emph>WSDL 1.1 Basic Profile Specification</emph>, according to which there
	* should be no two operations with the same name in a single port type definition.
	*
	* @param service qualified name of the service. Must not be {@code null}.
	* @param port qualified name of the endpoint. Must not be {@code null}.
	* @param operation qualified name of the operation. Must not be {@code null}.
	* @throws IllegalArgumentException in case service, port or operation parameter is {@code null}.
	*
	*/
	@:overload public static function createWsdlMessageScopeKey(service : javax.xml.namespace.QName, port : javax.xml.namespace.QName, operation : javax.xml.namespace.QName) : com.sun.xml.internal.ws.policy.PolicyMapKey;
	
	/**
	* Creates a fault message policy scope <emph>locator</emph> object identified by a bound operation, that serves as a
	* access key into {@code PolicyMap} where the actual fault message policy scope for one of the faults of a bound operation
	* can be retrieved.
	* <p/>
	* The method returns a key that is compliant with the <emph>WSDL 1.1 Basic Profile Specification</emph>, according to which there
	* should be no two operations with the same name in a single port type definition.
	*
	* @param service qualified name of the service. Must not be {@code null}.
	* @param port qualified name of the endpoint. Must not be {@code null}.
	* @param operation qualified name of the operation. Must not be {@code null}.
	* @param fault qualified name of the fault. Do not confuse this with the name of the actual message. This parameter
	* takes the wsdl:binding/wsdl:operation/wsdl:fault name and not the wsdl:message name. Must not be {@code null}.
	* @throws IllegalArgumentException in case service, port or operation parameter is {@code null}.
	*
	*/
	@:overload public static function createWsdlFaultMessageScopeKey(service : javax.xml.namespace.QName, port : javax.xml.namespace.QName, operation : javax.xml.namespace.QName, fault : javax.xml.namespace.QName) : com.sun.xml.internal.ws.policy.PolicyMapKey;
	
	@:overload public function toString() : String;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.ws.policy.Policy>;
	
	
}
@:native('com$sun$xml$internal$ws$policy$PolicyMap$ScopeType') extern enum PolicyMap_ScopeType
{
	SERVICE;
	ENDPOINT;
	OPERATION;
	INPUT_MESSAGE;
	OUTPUT_MESSAGE;
	FAULT_MESSAGE;
	
}

@:native('com$sun$xml$internal$ws$policy$PolicyMap$ScopeMap') @:internal extern class PolicyMap_ScopeMap implements java.lang.Iterable<com.sun.xml.internal.ws.policy.Policy>
{
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.ws.policy.Policy>;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function toString() : String;
	
	
}

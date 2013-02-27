package com.sun.xml.internal.ws.api.config.management.policy;
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
extern class ManagedServiceAssertion extends com.sun.xml.internal.ws.api.config.management.policy.ManagementAssertion
{
	/**
	* The server-side ManagedService policy assertion.
	*
	* @author Fabian Ritzmann
	*/
	public static var MANAGED_SERVICE_QNAME(default, null) : javax.xml.namespace.QName;
	
	/**
	* Return ManagedService assertion if there is one associated with the endpoint.
	*
	* @param endpoint The endpoint. Must not be null.
	* @return The policy assertion if found. Null otherwise.
	* @throws WebServiceException If computing the effective policy of the endpoint failed.
	*/
	@:native('getAssertion') @:overload public static function _getAssertion(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : ManagedServiceAssertion;
	
	@:overload public function new(data : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData, assertionParameters : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyAssertion>) : Void;
	
	/**
	* Returns the value of the management attribute. True if unset or set to "true"
	* or "on". False otherwise.
	*
	* @return The value of the management attribute.
	*/
	@:overload override public function isManagementEnabled() : Bool;
	
	/**
	* Returns the value of the endpointDisposeDelay attribute or the default value
	* otherwise.
	*
	* @param defaultDelay The default value that is returned if this attribute is
	*   not set
	* @return The value of the endpointDisposeDelay attribute or the default value
	*   otherwise.
	*/
	@:overload public function getEndpointDisposeDelay(defaultDelay : haxe.Int64) : haxe.Int64;
	
	/**
	* A list of CommunicationServerImplementation elements that were set as
	* parameters of this assertion.
	*
	* @return A list of CommunicationServerImplementation elements that were set as
	* parameters of this assertion. May be empty.
	*/
	@:overload public function getCommunicationServerImplementations() : java.util.Collection<ManagedServiceAssertion_ImplementationRecord>;
	
	/**
	* The ConfiguratorImplementation that was set as parameter of this assertion.
	*
	* @return The ConfiguratorImplementation that was set as parameter of this assertion.
	*   May be null.
	*/
	@:overload public function getConfiguratorImplementation() : ManagedServiceAssertion_ImplementationRecord;
	
	/**
	* The ConfigSaverImplementation that was set as parameter of this assertion.
	*
	* @return The ConfigSaverImplementation that was set as parameter of this assertion.
	*   May be null.
	*/
	@:overload public function getConfigSaverImplementation() : ManagedServiceAssertion_ImplementationRecord;
	
	/**
	* The ConfigReaderImplementation that was set as parameter of this assertion.
	*
	* @return The ConfigReaderImplementation that was set as parameter of this assertion.
	*   May be null.
	*/
	@:overload public function getConfigReaderImplementation() : ManagedServiceAssertion_ImplementationRecord;
	
	
}
/**
* Return the implementation class name along with all parameters for the
* implementation.
*/
@:native('com$sun$xml$internal$ws$api$config$management$policy$ManagedServiceAssertion$ImplementationRecord') extern class ManagedServiceAssertion_ImplementationRecord
{
	@:overload private function new(implementation : String, parameters : java.util.Map<javax.xml.namespace.QName, String>, nestedParameters : java.util.Collection<ManagedServiceAssertion_NestedParameters>) : Void;
	
	@:overload public function getImplementation() : String;
	
	/**
	* The parameters that were set for this implementation element.
	*
	* @return The parameters that were set for this implementation element.
	*   May be null.
	*/
	@:overload public function getParameters() : java.util.Map<javax.xml.namespace.QName, String>;
	
	/**
	* Implementation elements may contain element parameters that contain
	* further parameters.
	*
	* @return The nested parameters that were set for this implementation element.
	*   May be null.
	*/
	@:overload public function getNestedParameters() : java.util.Collection<ManagedServiceAssertion_NestedParameters>;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
/**
* The nested parameters that may be set as part of an implementation element.
*/
@:native('com$sun$xml$internal$ws$api$config$management$policy$ManagedServiceAssertion$NestedParameters') extern class ManagedServiceAssertion_NestedParameters
{
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function getParameters() : java.util.Map<javax.xml.namespace.QName, String>;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}

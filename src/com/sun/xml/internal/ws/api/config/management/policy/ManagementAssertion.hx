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
extern class ManagementAssertion extends com.sun.xml.internal.ws.policy.SimpleAssertion
{
	/**
	* The name of the management attribute.
	*/
	@:protected @:static @:final private static var MANAGEMENT_ATTRIBUTE_QNAME(default, null) : javax.xml.namespace.QName;
	
	/**
	* The name of the monitoring attribute.
	*/
	@:protected @:static @:final private static var MONITORING_ATTRIBUTE_QNAME(default, null) : javax.xml.namespace.QName;
	
	/**
	* Return ManagementAssertion if one can be found in the policy map under
	* the given service and port name.
	*
	* @param <T> The implementation class of the assertion.
	* @param name The fully qualified name of the server or client assertion.
	* @param policyMap The policy map. May be null.
	* @param serviceName The WSDL service name. May not be null.
	* @param portName The WSDL port name. May not be null.
	* @param type The implementation class of the assertion.
	* @return An instance of ManagementAssertion or null.
	* @throws WebServiceException If computing the effective policy of the endpoint scope failed.
	*/
	@:overload @:protected @:static private static function getAssertion<T : com.sun.xml.internal.ws.api.config.management.policy.ManagementAssertion>(name : javax.xml.namespace.QName, policyMap : com.sun.xml.internal.ws.policy.PolicyMap, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName, type : Class<T>) : T;
	
	/**
	* Create a new ManagementAssertion instance.
	*
	* @param name The fully qualified name of the server or client assertion. Must
	*   not be null.
	* @param data The assertion data. Must not be null.
	* @param assertionParameters Parameters of the assertion. May be null.
	* @throws AssertionCreationException Thrown if the creation of the assertion failed.
	*/
	@:overload @:protected private function new(name : javax.xml.namespace.QName, data : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData, assertionParameters : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyAssertion>) : Void;
	
	/**
	* Returns the value of the id attribute. May not be null.
	*
	* @return The value of the id attribute.
	*/
	@:overload @:public public function getId() : String;
	
	/**
	* Returns the value of the start attribute. May be null.
	*
	* @return The value of the start attribute.
	*/
	@:overload @:public public function getStart() : String;
	
	/**
	* Returns the value of the managment attribute depending on whether this is
	* a client-side or server-side assertion.
	*
	* @return The value of the managment attribute.
	*/
	@:overload @:public @:abstract public function isManagementEnabled() : Bool;
	
	/**
	* Returns the value of the monitoring attribute.
	*
	* @return The value of the monitoring attribute.
	*/
	@:overload @:public public function monitoringAttribute() : com.sun.xml.internal.ws.api.config.management.policy.ManagementAssertion.ManagementAssertion_Setting;
	
	
}
/**
* To be able to distinguish between explicit settings and no setting.
*/
@:native('com$sun$xml$internal$ws$api$config$management$policy$ManagementAssertion$Setting') extern enum ManagementAssertion_Setting
{
	NOT_SET;
	OFF;
	ON;
	
}


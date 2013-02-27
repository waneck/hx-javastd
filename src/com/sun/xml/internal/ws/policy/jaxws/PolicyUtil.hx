package com.sun.xml.internal.ws.policy.jaxws;
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
extern class PolicyUtil
{
	/**
	* Adds the dynamically discovered implementations for the given service class
	* to the given collection.
	*
	* @param <T> The type of the service class.
	* @param providers The discovered implementations are added to this collection.
	* @param service The service interface.
	*/
	@:overload public static function addServiceProviders<T>(providers : java.util.Collection<T>, service : Class<T>) : Void;
	
	/**
	* Iterates through the ports in the WSDL model, for each policy in the policy
	* map that is attached at endpoint scope computes a list of corresponding
	* WebServiceFeatures and sets them on the port.
	*
	* @param model The WSDL model
	* @param policyMap The policy map
	* @throws PolicyException If the list of WebServiceFeatures could not be computed
	*/
	@:overload public static function configureModel(model : com.sun.xml.internal.ws.api.model.wsdl.WSDLModel, policyMap : com.sun.xml.internal.ws.policy.PolicyMap) : Void;
	
	/**
	* Returns the list of features that correspond to the policies in the policy
	* map for a give port
	*
	* @param policyMap The service policies
	* @param serviceName The service name
	* @param portName The service port name
	* @return List of features for the given port corresponding to the policies in the map
	*/
	@:overload public static function getPortScopedFeatures(policyMap : com.sun.xml.internal.ws.policy.PolicyMap, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName) : java.util.Collection<javax.xml.ws.WebServiceFeature>;
	
	
}

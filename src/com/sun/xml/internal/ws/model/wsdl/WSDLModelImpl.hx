package com.sun.xml.internal.ws.model.wsdl;
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
extern class WSDLModelImpl extends com.sun.xml.internal.ws.model.wsdl.AbstractExtensibleImpl implements com.sun.xml.internal.ws.api.model.wsdl.WSDLModel
{
	@:overload public function new(systemId : String) : Void;
	
	/**
	* To create {@link WSDLModelImpl} from WSDL that doesn't have a system ID.
	*/
	@:overload public function new() : Void;
	
	@:overload public function addMessage(msg : com.sun.xml.internal.ws.model.wsdl.WSDLMessageImpl) : Void;
	
	@:overload public function getMessage(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLMessageImpl;
	
	@:overload public function addPortType(pt : com.sun.xml.internal.ws.model.wsdl.WSDLPortTypeImpl) : Void;
	
	@:overload public function getPortType(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLPortTypeImpl;
	
	@:overload public function addBinding(boundPortType : com.sun.xml.internal.ws.model.wsdl.WSDLBoundPortTypeImpl) : Void;
	
	@:overload public function getBinding(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLBoundPortTypeImpl;
	
	@:overload public function addService(svc : com.sun.xml.internal.ws.model.wsdl.WSDLServiceImpl) : Void;
	
	@:overload public function getService(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLServiceImpl;
	
	@:overload public function getMessages() : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.ws.model.wsdl.WSDLMessageImpl>;
	
	@:overload public function getPortTypes() : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.ws.model.wsdl.WSDLPortTypeImpl>;
	
	@:overload public function getBindings() : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType>;
	
	@:overload public function getServices() : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.ws.model.wsdl.WSDLServiceImpl>;
	
	/**
	* Returns the first service QName from insertion order
	*/
	@:overload public function getFirstServiceName() : javax.xml.namespace.QName;
	
	/**
	* Returns first port QName from first service as per the insertion order
	*/
	@:overload public function getFirstPortName() : javax.xml.namespace.QName;
	
	/**
	* gets the first port in the wsdl which matches the serviceName and portType
	*/
	@:overload public function getMatchingPort(serviceName : javax.xml.namespace.QName, portType : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLPortImpl;
	
	/**
	*
	* @param serviceName non-null service QName
	* @param portName    non-null port QName
	* @return
	*          WSDLBoundOperation on success otherwise null. throws NPE if any of the parameters null
	*/
	@:overload public function getBinding(serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLBoundPortTypeImpl;
	
	/**
	* Gives the PolicyMap associated with the WSDLModel
	*
	* @return PolicyMap
	*/
	@:overload public function getPolicyMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	/**
	* Set PolicyMap for the WSDLModel.
	* @param policyMap
	*/
	@:overload public function setPolicyMap(policyMap : com.sun.xml.internal.ws.policy.PolicyMap) : Void;
	
	/**
	* Invoked at the end of the model construction to fix up references, etc.
	*/
	@:overload public function freeze() : Void;
	
	
}

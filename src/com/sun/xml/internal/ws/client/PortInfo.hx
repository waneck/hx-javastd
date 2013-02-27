package com.sun.xml.internal.ws.client;
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
extern class PortInfo implements com.sun.xml.internal.ws.api.client.WSPortInfo
{
	public var portName(default, null) : javax.xml.namespace.QName;
	
	public var targetEndpoint(default, null) : com.sun.xml.internal.ws.api.EndpointAddress;
	
	public var bindingId(default, null) : com.sun.xml.internal.ws.api.BindingID;
	
	public var policyMap(default, null) : com.sun.xml.internal.ws.policy.PolicyMap;
	
	/**
	* If a port is known statically to a WSDL, {@link PortInfo} may
	* have the corresponding WSDL model. This would occur when the
	* service was created with the WSDL location and the port is defined
	* in the WSDL.
	* <p/>
	* If this is a {@link SEIPortInfo}, then this is always non-null.
	*/
	public var portModel(default, null) : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	@:overload public function new(owner : com.sun.xml.internal.ws.client.WSServiceDelegate, targetEndpoint : com.sun.xml.internal.ws.api.EndpointAddress, name : javax.xml.namespace.QName, bindingId : com.sun.xml.internal.ws.api.BindingID) : Void;
	
	@:overload public function new(owner : com.sun.xml.internal.ws.client.WSServiceDelegate, port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort) : Void;
	
	@:overload public function getPolicyMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	@:overload public function createPolicyMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	/**
	* Creates {@link BindingImpl} for this {@link PortInfo}.
	*
	* @param webServiceFeatures
	*      User-specified features.
	* @param portInterface
	*      Null if this is for dispatch. Otherwise the interface the proxy is going to implement
	* @return
	*      The initialized BindingImpl
	*/
	@:overload public function createBinding(webServiceFeatures : java.NativeArray<javax.xml.ws.WebServiceFeature>, portInterface : Class<Dynamic>) : com.sun.xml.internal.ws.binding.BindingImpl;
	
	@:overload public function getPort() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	@:overload public function getOwner() : com.sun.xml.internal.ws.api.WSService;
	
	@:overload public function getBindingId() : com.sun.xml.internal.ws.api.BindingID;
	
	@:overload public function getEndpointAddress() : com.sun.xml.internal.ws.api.EndpointAddress;
	
	/**
	* @deprecated
	*      Only meant to be used via {@link javax.xml.ws.handler.PortInfo}.
	*      Use {@link WSServiceDelegate#getServiceName()}.
	*/
	@:overload public function getServiceName() : javax.xml.namespace.QName;
	
	/**
	* @deprecated
	*      Only meant to be used via {@link javax.xml.ws.handler.PortInfo}.
	*      Use {@link #portName}.
	*/
	@:overload public function getPortName() : javax.xml.namespace.QName;
	
	/**
	* @deprecated
	*      Only meant to be used via {@link javax.xml.ws.handler.PortInfo}.
	*      Use {@link #bindingId}.
	*/
	@:overload public function getBindingID() : String;
	
	
}

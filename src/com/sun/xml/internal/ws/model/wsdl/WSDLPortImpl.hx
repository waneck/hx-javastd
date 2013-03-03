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
extern class WSDLPortImpl extends com.sun.xml.internal.ws.model.wsdl.AbstractFeaturedObjectImpl implements com.sun.xml.internal.ws.api.model.wsdl.WSDLPort
{
	@:overload @:public public function new(xsr : javax.xml.stream.XMLStreamReader, owner : com.sun.xml.internal.ws.model.wsdl.WSDLServiceImpl, name : javax.xml.namespace.QName, binding : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getBindingName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getAddress() : com.sun.xml.internal.ws.api.EndpointAddress;
	
	@:overload @:public public function getOwner() : com.sun.xml.internal.ws.model.wsdl.WSDLServiceImpl;
	
	/**
	* Only meant for {@link RuntimeWSDLParser} to call.
	*/
	@:overload @:public public function setAddress(address : com.sun.xml.internal.ws.api.EndpointAddress) : Void;
	
	/**
	* Only meant for {@link RuntimeWSDLParser} to call.
	*/
	@:overload @:public public function setEPR(epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	@:overload @:public public function getEPR() : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	@:overload @:public public function getBinding() : com.sun.xml.internal.ws.model.wsdl.WSDLBoundPortTypeImpl;
	
	@:overload @:public public function getSOAPVersion() : com.sun.xml.internal.ws.api.SOAPVersion;
	
	
}

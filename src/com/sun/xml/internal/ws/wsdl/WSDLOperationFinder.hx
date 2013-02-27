package com.sun.xml.internal.ws.wsdl;
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
extern class WSDLOperationFinder
{
	/**
	* Extensions if this class will be used for dispatching the request message to the correct endpoint method by
	* identifying the wsdl operation associated with the request.
	*
	* @See OperationDispatcher
	*
	* @author Rama Pulavarthi
	*/
	private var wsdlModel(default, null) : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	private var binding(default, null) : com.sun.xml.internal.ws.api.WSBinding;
	
	private var seiModel(default, null) : com.sun.xml.internal.ws.api.model.SEIModel;
	
	@:overload public function new(wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding, seiModel : com.sun.xml.internal.ws.api.model.SEIModel) : Void;
	
	/**
	* This methods returns the QName of the WSDL operation correponding to a request Packet.
	* An implementation should return null when it cannot dispatch to a unique method based on the information it processes.
	* In such case, other OperationFinders are queried to resolve a WSDL operation.
	* It should throw an instance of DispatchException if it finds incorrect information in the packet.
	*
	* @param request  Request Packet that is used to find the associated WSDLOperation
	* @return QName of the WSDL Operation that this request correponds to.
	*          null when it cannot find a unique operation to dispatch to.
	* @throws DispatchException When the information in the Packet is invalid
	*/
	@:overload @:abstract public function getWSDLOperationQName(request : com.sun.xml.internal.ws.api.message.Packet) : javax.xml.namespace.QName;
	
	
}

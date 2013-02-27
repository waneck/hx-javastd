package com.sun.xml.internal.ws.api.model.wsdl;
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
extern interface WSDLBoundPortType extends com.sun.xml.internal.ws.api.model.wsdl.WSDLFeaturedObject extends com.sun.xml.internal.ws.api.model.wsdl.WSDLExtensible
{
	/**
	* Gets the name of the wsdl:binding@name attribute value as local name and wsdl:definitions@targetNamespace
	* as the namespace uri.
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	/**
	* Gets the {@link WSDLModel} that owns this port type.
	*/
	@:overload public function getOwner() : com.sun.xml.internal.ws.api.model.wsdl.WSDLModel;
	
	/**
	* Gets the {@link WSDLBoundOperation} for a given operation name
	*
	* @param operationName non-null operationName
	* @return null if a {@link WSDLBoundOperation} is not found
	*/
	@:overload public function get(operationName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation;
	
	/**
	* Gets the wsdl:binding@type value, same as {@link WSDLPortType#getName()}
	*/
	@:overload public function getPortTypeName() : javax.xml.namespace.QName;
	
	/**
	* Gets the {@link WSDLPortType} associated with the wsdl:binding
	*/
	@:overload public function getPortType() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPortType;
	
	/**
	* Gets the {@link WSDLBoundOperation}s
	*/
	@:overload public function getBindingOperations() : java.lang.Iterable<com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation>;
	
	/**
	* Is this a document style or RPC style?
	*
	* Since we only support literal and not encoding, this means
	* either doc/lit or rpc/lit.
	*/
	@:overload public function getStyle() : SOAPBinding.Style;
	
	/**
	* Returns the binding ID.
	* This would typically determined by the binding extension elements in wsdl:binding.
	*/
	@:overload public function getBindingId() : com.sun.xml.internal.ws.api.BindingID;
	
	/**
	* Gets the bound operation in this port for a tag name. Here the operation would be the one whose
	* input part descriptor bound to soap:body is same as the tag name except for rpclit where the tag
	* name would be {@link WSDLBoundOperation#getName()}.
	*
	* <p>
	* If you have a {@link Message} and trying to figure out which operation it belongs to,
	* always use {@link Message#getOperation}, as that performs better.
	*
	* <p>
	* For example this can be used in the case when a message receipient can get the
	* {@link WSDLBoundOperation} from the payload tag name.
	*
	* <p>
	* namespaceUri and the local name both can be null to get the WSDLBoundOperation that has empty body -
	* there is no payload. According to BP 1.1 in a port there can be at MOST one operation with empty body.
	* Its an error to have namespace URI non-null but local name as null.
	*
	* @param namespaceUri namespace of the payload element.
	* @param localName local name of the payload
	* @throws NullPointerException if localName is null and namespaceUri is not.
	* @return
	*      null if no operation with the given tag name is found.
	*/
	@:overload public function getOperation(namespaceUri : String, localName : String) : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation;
	
	
}

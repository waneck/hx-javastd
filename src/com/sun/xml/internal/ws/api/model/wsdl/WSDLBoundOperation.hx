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
extern interface WSDLBoundOperation extends com.sun.xml.internal.ws.api.model.wsdl.WSDLObject extends com.sun.xml.internal.ws.api.model.wsdl.WSDLExtensible
{
	/**
	* Short-cut for {@code getOperation().getName()}
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	/**
	* Gives soapbinding:operation@soapAction value. soapbinding:operation@soapAction is optional attribute.
	* If not present an empty String is returned as per BP 1.1 R2745.
	*/
	@:overload public function getSOAPAction() : String;
	
	/**
	* Gets the wsdl:portType/wsdl:operation model - {@link WSDLOperation},
	* associated with this binding operation.
	*
	* @return always same {@link WSDLOperation}
	*/
	@:overload public function getOperation() : com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation;
	
	/**
	* Gives the owner {@link WSDLBoundPortType}
	*/
	@:overload public function getBoundPortType() : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType;
	
	/**
	* Gets the soapbinding:binding/operation/wsaw:Anonymous. A default value of OPTIONAL is returned.
	*
	* @return Anonymous value of the operation
	*/
	@:overload public function getAnonymous() : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation.WSDLBoundOperation_ANONYMOUS;
	
	/**
	* Gets {@link WSDLPart} for the given wsdl:input or wsdl:output part
	*
	* @return null if no part is found
	*/
	@:overload public function getPart(partName : String, mode : Mode) : com.sun.xml.internal.ws.api.model.wsdl.WSDLPart;
	
	/**
	* Gets all inbound {@link WSDLPart} by its {@link WSDLPart#getName() name}.
	*/
	@:overload public function getInParts() : java.util.Map<String, com.sun.xml.internal.ws.api.model.wsdl.WSDLPart>;
	
	/**
	* Gets all outbound {@link WSDLPart} by its {@link WSDLPart#getName() name}.
	*/
	@:overload public function getOutParts() : java.util.Map<String, com.sun.xml.internal.ws.api.model.wsdl.WSDLPart>;
	
	/**
	* Gets all the {@link WSDLFault} bound to this operation.
	*/
	@:overload public function getFaults() : java.lang.Iterable<com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundFault>;
	
	/**
	* Gets the payload QName of the request message.
	*
	* <p>
	* It's possible for an operation to define no body part, in which case
	* this method returns null.
	*/
	@:overload public function getReqPayloadName() : javax.xml.namespace.QName;
	
	
}
@:native('com$sun$xml$internal$ws$api$model$wsdl$WSDLBoundOperation$ANONYMOUS') extern enum WSDLBoundOperation_ANONYMOUS
{
	optional;
	required;
	prohibited;
	
}


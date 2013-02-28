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
/**
* Implementation of {@link WSDLBoundOperation}
*
* @author Vivek Pandey
*/
extern class WSDLBoundOperationImpl extends com.sun.xml.internal.ws.model.wsdl.AbstractExtensibleImpl implements com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation
{
	/**
	*
	* @param name wsdl:operation name qualified value
	*/
	@:overload public function new(xsr : javax.xml.stream.XMLStreamReader, owner : com.sun.xml.internal.ws.model.wsdl.WSDLBoundPortTypeImpl, name : javax.xml.namespace.QName) : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function getSOAPAction() : String;
	
	@:overload public function setSoapAction(soapAction : String) : Void;
	
	@:overload public function getPart(partName : String, mode : Mode) : com.sun.xml.internal.ws.model.wsdl.WSDLPartImpl;
	
	@:overload public function addPart(part : com.sun.xml.internal.ws.model.wsdl.WSDLPartImpl, mode : Mode) : Void;
	
	/**
	* Map of wsdl:input part name and the binding as {@link ParameterBinding}
	*
	* @return empty Map if there is no parts
	*/
	@:overload public function getInputParts() : java.util.Map<String, com.sun.xml.internal.ws.api.model.ParameterBinding>;
	
	/**
	* Map of wsdl:output part name and the binding as {@link ParameterBinding}
	*
	* @return empty Map if there is no parts
	*/
	@:overload public function getOutputParts() : java.util.Map<String, com.sun.xml.internal.ws.api.model.ParameterBinding>;
	
	/**
	* Map of wsdl:fault part name and the binding as {@link ParameterBinding}
	*
	* @return empty Map if there is no parts
	*/
	@:overload public function getFaultParts() : java.util.Map<String, com.sun.xml.internal.ws.api.model.ParameterBinding>;
	
	@:overload public function getInParts() : java.util.Map<String, com.sun.xml.internal.ws.api.model.wsdl.WSDLPart>;
	
	@:overload public function getOutParts() : java.util.Map<String, com.sun.xml.internal.ws.api.model.wsdl.WSDLPart>;
	
	@:overload public function getFaults() : java.util.List<com.sun.xml.internal.ws.model.wsdl.WSDLBoundFaultImpl>;
	
	@:overload public function addFault(fault : com.sun.xml.internal.ws.model.wsdl.WSDLBoundFaultImpl) : Void;
	
	/**
	* Map of mime:content@part and the mime type from mime:content@type for wsdl:output
	*
	* @return empty Map if there is no parts
	*/
	@:overload public function getInputMimeTypes() : java.util.Map<String, String>;
	
	/**
	* Map of mime:content@part and the mime type from mime:content@type for wsdl:output
	*
	* @return empty Map if there is no parts
	*/
	@:overload public function getOutputMimeTypes() : java.util.Map<String, String>;
	
	/**
	* Map of mime:content@part and the mime type from mime:content@type for wsdl:fault
	*
	* @return empty Map if there is no parts
	*/
	@:overload public function getFaultMimeTypes() : java.util.Map<String, String>;
	
	/**
	* Gets {@link ParameterBinding} for a given wsdl part in wsdl:input
	*
	* @param part Name of wsdl:part, must be non-null
	* @return null if the part is not found.
	*/
	@:overload public function getInputBinding(part : String) : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Gets {@link ParameterBinding} for a given wsdl part in wsdl:output
	*
	* @param part Name of wsdl:part, must be non-null
	* @return null if the part is not found.
	*/
	@:overload public function getOutputBinding(part : String) : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Gets {@link ParameterBinding} for a given wsdl part in wsdl:fault
	*
	* @param part Name of wsdl:part, must be non-null
	* @return null if the part is not found.
	*/
	@:overload public function getFaultBinding(part : String) : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Gets the MIME type for a given wsdl part in wsdl:input
	*
	* @param part Name of wsdl:part, must be non-null
	* @return null if the part is not found.
	*/
	@:overload public function getMimeTypeForInputPart(part : String) : String;
	
	/**
	* Gets the MIME type for a given wsdl part in wsdl:output
	*
	* @param part Name of wsdl:part, must be non-null
	* @return null if the part is not found.
	*/
	@:overload public function getMimeTypeForOutputPart(part : String) : String;
	
	/**
	* Gets the MIME type for a given wsdl part in wsdl:fault
	*
	* @param part Name of wsdl:part, must be non-null
	* @return null if the part is not found.
	*/
	@:overload public function getMimeTypeForFaultPart(part : String) : String;
	
	@:overload public function getOperation() : com.sun.xml.internal.ws.model.wsdl.WSDLOperationImpl;
	
	@:overload public function getBoundPortType() : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType;
	
	@:overload public function setInputExplicitBodyParts(b : Bool) : Void;
	
	@:overload public function setOutputExplicitBodyParts(b : Bool) : Void;
	
	@:overload public function setFaultExplicitBodyParts(b : Bool) : Void;
	
	@:overload public function setStyle(style : Style) : Void;
	
	@:overload public function getReqPayloadName() : javax.xml.namespace.QName;
	
	@:overload public function getResPayloadName() : javax.xml.namespace.QName;
	
	/**
	* For rpclit gives namespace value on soapbinding:body@namespace
	*
	* @return   non-null for rpclit and null for doclit
	* @see com.sun.xml.internal.ws.model.RuntimeModeler#processRpcMethod(com.sun.xml.internal.ws.model.JavaMethodImpl, String, javax.jws.WebMethod, String, java.lang.reflect.Method, javax.jws.WebService)
	*/
	@:overload public function getRequestNamespace() : String;
	
	@:overload public function setRequestNamespace(ns : String) : Void;
	
	/**
	* For rpclit gives namespace value on soapbinding:body@namespace
	*
	* @return   non-null for rpclit and null for doclit
	*      * @see com.sun.xml.internal.ws.modeler.RuntimeModeler#processRpcMethod(com.sun.xml.internal.ws.model.JavaMethod, String, javax.jws.WebMethod, String, java.lang.reflect.Method, javax.jws.WebService)
	*/
	@:overload public function getResponseNamespace() : String;
	
	@:overload public function setResponseNamespace(ns : String) : Void;
	
	@:overload public function setAnonymous(anonymous : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation.WSDLBoundOperation_ANONYMOUS) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function getAnonymous() : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation.WSDLBoundOperation_ANONYMOUS;
	
	
}

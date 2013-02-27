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
extern class WSDLBoundPortTypeImpl extends com.sun.xml.internal.ws.model.wsdl.AbstractFeaturedObjectImpl implements com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType
{
	@:overload public function new(xsr : javax.xml.stream.XMLStreamReader, owner : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl, name : javax.xml.namespace.QName, portTypeName : javax.xml.namespace.QName) : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function getOwner() : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl;
	
	@:overload public function get(operationName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.wsdl.WSDLBoundOperationImpl;
	
	/**
	* Populates the Map that holds operation name as key and {@link WSDLBoundOperation} as the value.
	*
	* @param opName Must be non-null
	* @param ptOp   Must be non-null
	* @throws NullPointerException if either opName or ptOp is null
	*/
	@:overload public function put(opName : javax.xml.namespace.QName, ptOp : com.sun.xml.internal.ws.model.wsdl.WSDLBoundOperationImpl) : Void;
	
	@:overload public function getPortTypeName() : javax.xml.namespace.QName;
	
	@:overload public function getPortType() : com.sun.xml.internal.ws.model.wsdl.WSDLPortTypeImpl;
	
	@:overload public function getBindingOperations() : java.lang.Iterable<com.sun.xml.internal.ws.model.wsdl.WSDLBoundOperationImpl>;
	
	@:overload public function getBindingId() : com.sun.xml.internal.ws.api.BindingID;
	
	@:overload public function setBindingId(bindingId : com.sun.xml.internal.ws.api.BindingID) : Void;
	
	@:overload public function setStyle(style : Style) : Void;
	
	@:overload public function getStyle() : SOAPBinding.Style;
	
	@:overload public function isRpcLit() : Bool;
	
	@:overload public function isDoclit() : Bool;
	
	/**
	* Gets the {@link ParameterBinding} for a given operation, part name and the direction - IN/OUT
	*
	* @param operation wsdl:operation@name value. Must be non-null.
	* @param part      wsdl:part@name such as value of soap:header@part. Must be non-null.
	* @param mode      {@link Mode#IN} or {@link Mode@OUT}. Must be non-null.
	* @return null if the binding could not be resolved for the part.
	*/
	@:overload public function getBinding(operation : javax.xml.namespace.QName, part : String, mode : Mode) : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Gets mime:content@part value which is the MIME type for a given operation, part and {@link Mode}.
	*
	* @param operation wsdl:operation@name value. Must be non-null.
	* @param part      wsdl:part@name such as value of soap:header@part. Must be non-null.
	* @param mode      {@link Mode#IN} or {@link Mode@OUT}. Must be non-null.
	* @return null if the binding could not be resolved for the part.
	*/
	@:overload public function getMimeType(operation : javax.xml.namespace.QName, part : String, mode : Mode) : String;
	
	@:overload public function getOperation(namespaceUri : String, localName : String) : com.sun.xml.internal.ws.model.wsdl.WSDLBoundOperationImpl;
	
	@:overload public function enableMTOM() : Void;
	
	@:overload public function isMTOMEnabled() : Bool;
	
	@:overload public function getSOAPVersion() : com.sun.xml.internal.ws.api.SOAPVersion;
	
	
}

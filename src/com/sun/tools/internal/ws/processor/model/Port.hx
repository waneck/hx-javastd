package com.sun.tools.internal.ws.processor.model;
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
extern class Port extends com.sun.tools.internal.ws.processor.model.ModelObject
{
	/**
	* @author WS Development Team
	*/
	@:overload public function new(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function new(name : javax.xml.namespace.QName, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function setName(n : javax.xml.namespace.QName) : Void;
	
	@:overload public function addOperation(operation : com.sun.tools.internal.ws.processor.model.Operation) : Void;
	
	@:overload public function getOperationByUniqueName(name : String) : com.sun.tools.internal.ws.processor.model.Operation;
	
	/* serialization */
	@:overload public function getOperations() : java.util.List<com.sun.tools.internal.ws.processor.model.Operation>;
	
	/* serialization */
	@:overload public function setOperations(l : java.util.List<com.sun.tools.internal.ws.processor.model.Operation>) : Void;
	
	@:overload public function getJavaInterface() : com.sun.tools.internal.ws.processor.model.java.JavaInterface;
	
	@:overload public function setJavaInterface(i : com.sun.tools.internal.ws.processor.model.java.JavaInterface) : Void;
	
	@:overload public function getAddress() : String;
	
	@:overload public function setAddress(s : String) : Void;
	
	@:overload public function getServiceImplName() : String;
	
	@:overload public function setServiceImplName(name : String) : Void;
	
	@:overload public function accept(visitor : com.sun.tools.internal.ws.processor.model.ModelVisitor) : Void;
	
	@:overload public function isProvider() : Bool;
	
	/**
	* XYZ_Service.getABC() method name
	*
	* @return Returns the portGetterName.
	*/
	@:overload public function getPortGetter() : String;
	
	/**
	* @param portGetterName The portGetterName to set.
	*/
	@:overload public function setPortGetter(portGetterName : String) : Void;
	
	@:overload public function getStyle() : com.sun.tools.internal.ws.wsdl.document.soap.SOAPStyle;
	
	@:overload public function setStyle(s : com.sun.tools.internal.ws.wsdl.document.soap.SOAPStyle) : Void;
	
	@:overload public function isWrapped() : Bool;
	
	@:overload public function setWrapped(isWrapped : Bool) : Void;
	
	public var portTypes : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.wsdl.document.PortType>;
	
	
}

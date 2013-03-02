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
extern class Operation extends com.sun.tools.internal.ws.processor.model.ModelObject
{
	/**
	*
	* @author WS Development Team
	*/
	@:overload public function new(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function new(operation : com.sun.tools.internal.ws.processor.model.Operation, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function new(name : javax.xml.namespace.QName, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function setName(n : javax.xml.namespace.QName) : Void;
	
	@:overload public function getUniqueName() : String;
	
	@:overload public function setUniqueName(s : String) : Void;
	
	@:overload public function getRequest() : com.sun.tools.internal.ws.processor.model.Request;
	
	@:overload public function setRequest(r : com.sun.tools.internal.ws.processor.model.Request) : Void;
	
	@:overload public function getResponse() : com.sun.tools.internal.ws.processor.model.Response;
	
	@:overload public function setResponse(r : com.sun.tools.internal.ws.processor.model.Response) : Void;
	
	@:overload public function isOverloaded() : Bool;
	
	@:overload public function addFault(f : com.sun.tools.internal.ws.processor.model.Fault) : Void;
	
	@:overload public function getFaults() : java.util.Iterator<com.sun.tools.internal.ws.processor.model.Fault>;
	
	@:overload public function getFaultsSet() : java.util.Set<com.sun.tools.internal.ws.processor.model.Fault>;
	
	/* serialization */
	@:overload public function setFaultsSet(s : java.util.Set<com.sun.tools.internal.ws.processor.model.Fault>) : Void;
	
	@:overload public function getAllFaults() : java.util.Iterator<com.sun.tools.internal.ws.processor.model.Fault>;
	
	@:overload public function getAllFaultsSet() : java.util.Set<com.sun.tools.internal.ws.processor.model.Fault>;
	
	@:overload public function getFaultCount() : Int;
	
	@:overload public function getAllFaultBlocks() : java.util.Set<com.sun.tools.internal.ws.processor.model.Block>;
	
	@:overload public function getJavaMethod() : com.sun.tools.internal.ws.processor.model.java.JavaMethod;
	
	@:overload public function setJavaMethod(i : com.sun.tools.internal.ws.processor.model.java.JavaMethod) : Void;
	
	@:overload public function getSOAPAction() : String;
	
	@:overload public function setSOAPAction(s : String) : Void;
	
	@:overload public function getStyle() : com.sun.tools.internal.ws.wsdl.document.soap.SOAPStyle;
	
	@:overload public function setStyle(s : com.sun.tools.internal.ws.wsdl.document.soap.SOAPStyle) : Void;
	
	@:overload public function getUse() : com.sun.tools.internal.ws.wsdl.document.soap.SOAPUse;
	
	@:overload public function setUse(u : com.sun.tools.internal.ws.wsdl.document.soap.SOAPUse) : Void;
	
	@:overload public function isWrapped() : Bool;
	
	@:overload public function setWrapped(isWrapped : Bool) : Void;
	
	@:overload override public function accept(visitor : com.sun.tools.internal.ws.processor.model.ModelVisitor) : Void;
	
	@:overload public function setCustomizedName(name : String) : Void;
	
	@:overload public function getCustomizedName() : String;
	
	@:overload public function getJavaMethodName() : String;
	
	@:overload public function getWSDLPortTypeOperation() : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	@:overload public function setWSDLPortTypeOperation(wsdlOperation : com.sun.tools.internal.ws.wsdl.document.Operation) : Void;
	
	
}

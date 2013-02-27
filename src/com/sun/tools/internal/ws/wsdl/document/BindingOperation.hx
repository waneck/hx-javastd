package com.sun.tools.internal.ws.wsdl.document;
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
extern class BindingOperation extends com.sun.tools.internal.ws.wsdl.framework.Entity implements com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible
{
	/**
	* Entity corresponding to the "operation" child element of a WSDL "binding" element.
	*
	* @author WS Development Team
	*/
	@:overload public function new(locator : org.xml.sax.Locator) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	@:overload public function getUniqueKey() : String;
	
	@:overload public function getStyle() : com.sun.tools.internal.ws.wsdl.document.OperationStyle;
	
	@:overload public function setStyle(s : com.sun.tools.internal.ws.wsdl.document.OperationStyle) : Void;
	
	@:overload public function getInput() : com.sun.tools.internal.ws.wsdl.document.BindingInput;
	
	@:overload public function setInput(i : com.sun.tools.internal.ws.wsdl.document.BindingInput) : Void;
	
	@:overload public function getOutput() : com.sun.tools.internal.ws.wsdl.document.BindingOutput;
	
	@:overload public function setOutput(o : com.sun.tools.internal.ws.wsdl.document.BindingOutput) : Void;
	
	@:overload public function addFault(f : com.sun.tools.internal.ws.wsdl.document.BindingFault) : Void;
	
	@:overload public function faults() : java.lang.Iterable<com.sun.tools.internal.ws.wsdl.document.BindingFault>;
	
	@:overload override public function getElementName() : javax.xml.namespace.QName;
	
	@:overload public function getDocumentation() : com.sun.tools.internal.ws.wsdl.document.Documentation;
	
	@:overload public function setDocumentation(d : com.sun.tools.internal.ws.wsdl.document.Documentation) : Void;
	
	@:overload public function getNameValue() : String;
	
	@:overload public function getNamespaceURI() : String;
	
	@:overload public function getWSDLElementName() : javax.xml.namespace.QName;
	
	@:overload public function addExtension(e : com.sun.tools.internal.ws.api.wsdl.TWSDLExtension) : Void;
	
	@:overload public function extensions() : java.lang.Iterable<com.sun.tools.internal.ws.api.wsdl.TWSDLExtension>;
	
	@:overload public function getParent() : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible;
	
	@:overload override public function withAllSubEntitiesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityAction) : Void;
	
	@:overload public function accept(visitor : com.sun.tools.internal.ws.wsdl.document.WSDLDocumentVisitor) : Void;
	
	@:overload override public function validateThis() : Void;
	
	@:overload public function setParent(parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible) : Void;
	
	
}

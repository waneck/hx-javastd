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
/**
* Entity corresponding to the "definitions" WSDL element.
*
* @author WS Development Team
*/
extern class Definitions extends com.sun.tools.internal.ws.wsdl.framework.Entity implements com.sun.tools.internal.ws.wsdl.framework.Defining implements com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible
{
	@:overload public function new(document : com.sun.tools.internal.ws.wsdl.framework.AbstractDocument, locator : org.xml.sax.Locator) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function setName(s : String) : Void;
	
	@:overload public function getTargetNamespaceURI() : String;
	
	@:overload public function setTargetNamespaceURI(s : String) : Void;
	
	@:overload public function setTypes(t : com.sun.tools.internal.ws.wsdl.document.Types) : Void;
	
	@:overload public function getTypes() : com.sun.tools.internal.ws.wsdl.document.Types;
	
	@:overload public function add(m : com.sun.tools.internal.ws.wsdl.document.Message) : Void;
	
	@:overload public function add(p : com.sun.tools.internal.ws.wsdl.document.PortType) : Void;
	
	@:overload public function add(b : com.sun.tools.internal.ws.wsdl.document.Binding) : Void;
	
	@:overload public function add(s : com.sun.tools.internal.ws.wsdl.document.Service) : Void;
	
	@:overload public function addServiceOveride(s : com.sun.tools.internal.ws.wsdl.document.Service) : Void;
	
	@:overload public function add(i : com.sun.tools.internal.ws.wsdl.document.Import) : Void;
	
	@:overload public function imports() : java.util.Iterator<Dynamic>;
	
	@:overload public function messages() : java.util.Iterator<Dynamic>;
	
	@:overload public function portTypes() : java.util.Iterator<Dynamic>;
	
	@:overload public function bindings() : java.util.Iterator<Dynamic>;
	
	@:overload public function services() : java.util.Iterator<com.sun.tools.internal.ws.wsdl.document.Service>;
	
	@:overload public function getNameValue() : String;
	
	@:overload public function getNamespaceURI() : String;
	
	@:overload public function getWSDLElementName() : javax.xml.namespace.QName;
	
	@:overload public function getDocumentation() : com.sun.tools.internal.ws.wsdl.document.Documentation;
	
	@:overload public function setDocumentation(d : com.sun.tools.internal.ws.wsdl.document.Documentation) : Void;
	
	@:overload public function addExtension(e : com.sun.tools.internal.ws.api.wsdl.TWSDLExtension) : Void;
	
	@:overload public function extensions() : java.lang.Iterable<com.sun.tools.internal.ws.api.wsdl.TWSDLExtension>;
	
	/**
	* wsdl:definition is the root hence no parent so return null.
	*/
	@:overload public function getParent() : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible;
	
	@:overload override public function withAllSubEntitiesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityAction) : Void;
	
	@:overload public function accept(visitor : com.sun.tools.internal.ws.wsdl.document.WSDLDocumentVisitor) : Void;
	
	@:overload override public function validateThis() : Void;
	
	@:overload override public function getElementName() : javax.xml.namespace.QName;
	
	
}

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
extern class Port extends com.sun.tools.internal.ws.wsdl.framework.GlobalEntity implements com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible
{
	/**
	* Entity corresponding to the "port" WSDL element.
	*
	* @author WS Development Team
	*/
	@:overload public function new(defining : com.sun.tools.internal.ws.wsdl.framework.Defining, locator : org.xml.sax.Locator, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload public function getService() : com.sun.tools.internal.ws.wsdl.document.Service;
	
	@:overload public function setService(s : com.sun.tools.internal.ws.wsdl.document.Service) : Void;
	
	@:overload public function getBinding() : javax.xml.namespace.QName;
	
	@:overload public function setBinding(n : javax.xml.namespace.QName) : Void;
	
	@:overload public function resolveBinding(document : com.sun.tools.internal.ws.wsdl.framework.AbstractDocument) : com.sun.tools.internal.ws.wsdl.document.Binding;
	
	@:overload override public function getKind() : com.sun.tools.internal.ws.wsdl.framework.Kind;
	
	@:overload public function getNameValue() : String;
	
	@:overload public function getNamespaceURI() : String;
	
	@:overload public function getWSDLElementName() : javax.xml.namespace.QName;
	
	@:overload public function getDocumentation() : com.sun.tools.internal.ws.wsdl.document.Documentation;
	
	@:overload public function setDocumentation(d : com.sun.tools.internal.ws.wsdl.document.Documentation) : Void;
	
	@:overload override public function withAllQNamesDo(action : com.sun.tools.internal.ws.wsdl.framework.QNameAction) : Void;
	
	@:overload override public function withAllEntityReferencesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityReferenceAction) : Void;
	
	@:overload public function accept(visitor : com.sun.tools.internal.ws.wsdl.document.WSDLDocumentVisitor) : Void;
	
	@:overload override public function validateThis() : Void;
	
	@:overload public function addExtension(e : com.sun.tools.internal.ws.api.wsdl.TWSDLExtension) : Void;
	
	@:overload public function extensions() : java.lang.Iterable<com.sun.tools.internal.ws.api.wsdl.TWSDLExtension>;
	
	@:overload public function getParent() : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible;
	
	@:overload public function setParent(parent : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible) : Void;
	
	@:overload override public function withAllSubEntitiesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityAction) : Void;
	
	@:overload override public function getElementName() : javax.xml.namespace.QName;
	
	
}

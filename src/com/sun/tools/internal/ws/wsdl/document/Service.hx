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
extern class Service extends com.sun.tools.internal.ws.wsdl.framework.GlobalEntity implements com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible
{
	/**
	* Entity corresponding to the "service" WSDL element.
	*
	* @author WS Development Team
	*/
	@:overload @:public public function new(defining : com.sun.tools.internal.ws.wsdl.framework.Defining, locator : org.xml.sax.Locator, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:public public function add(port : com.sun.tools.internal.ws.wsdl.document.Port) : Void;
	
	@:overload @:public public function ports() : java.util.Iterator<com.sun.tools.internal.ws.wsdl.document.Port>;
	
	@:overload @:public override public function getKind() : com.sun.tools.internal.ws.wsdl.framework.Kind;
	
	@:overload @:public override public function getElementName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getDocumentation() : com.sun.tools.internal.ws.wsdl.document.Documentation;
	
	@:overload @:public public function setDocumentation(d : com.sun.tools.internal.ws.wsdl.document.Documentation) : Void;
	
	@:overload @:public override public function withAllSubEntitiesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityAction) : Void;
	
	@:overload @:public public function accept(visitor : com.sun.tools.internal.ws.wsdl.document.WSDLDocumentVisitor) : Void;
	
	@:overload @:public override public function validateThis() : Void;
	
	@:overload @:public public function getNameValue() : String;
	
	@:overload @:public public function getNamespaceURI() : String;
	
	@:overload @:public public function getWSDLElementName() : javax.xml.namespace.QName;
	
	@:overload @:public public function addExtension(e : com.sun.tools.internal.ws.api.wsdl.TWSDLExtension) : Void;
	
	@:overload @:public public function extensions() : java.lang.Iterable<com.sun.tools.internal.ws.api.wsdl.TWSDLExtension>;
	
	@:overload @:public public function getParent() : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible;
	
	
}

package com.sun.tools.internal.ws.wsdl.document.soap;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SOAPHeader extends com.sun.tools.internal.ws.wsdl.framework.ExtensionImpl
{
	/**
	* A SOAP header extension.
	*
	* @author WS Development Team
	*/
	@:overload public function new(locator : org.xml.sax.Locator) : Void;
	
	@:overload public function add(fault : com.sun.tools.internal.ws.wsdl.document.soap.SOAPHeaderFault) : Void;
	
	@:overload public function faults() : java.util.Iterator<Dynamic>;
	
	@:overload override public function getElementName() : javax.xml.namespace.QName;
	
	@:overload public function getNamespace() : String;
	
	@:overload public function setNamespace(s : String) : Void;
	
	@:overload public function getUse() : com.sun.tools.internal.ws.wsdl.document.soap.SOAPUse;
	
	@:overload public function setUse(u : com.sun.tools.internal.ws.wsdl.document.soap.SOAPUse) : Void;
	
	@:overload public function isEncoded() : Bool;
	
	@:overload public function isLiteral() : Bool;
	
	@:overload public function getEncodingStyle() : String;
	
	@:overload public function setEncodingStyle(s : String) : Void;
	
	@:overload public function getPart() : String;
	
	@:overload public function setMessage(message : javax.xml.namespace.QName) : Void;
	
	@:overload public function getMessage() : javax.xml.namespace.QName;
	
	@:overload public function setPart(s : String) : Void;
	
	@:overload override public function withAllSubEntitiesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityAction) : Void;
	
	@:overload override public function withAllQNamesDo(action : com.sun.tools.internal.ws.wsdl.framework.QNameAction) : Void;
	
	@:overload override public function accept(visitor : com.sun.tools.internal.ws.wsdl.framework.ExtensionVisitor) : Void;
	
	@:overload override public function validateThis() : Void;
	
	
}
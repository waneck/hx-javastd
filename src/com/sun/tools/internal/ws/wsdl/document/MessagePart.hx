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
extern class MessagePart extends com.sun.tools.internal.ws.wsdl.framework.Entity
{
	/**
	* Entity corresponding to a WSDL message part.
	*
	* @author WS Development Team
	*/
	@:public @:static @:final public static var SOAP_BODY_BINDING(default, null) : Int;
	
	@:public @:static @:final public static var SOAP_HEADER_BINDING(default, null) : Int;
	
	@:public @:static @:final public static var SOAP_HEADERFAULT_BINDING(default, null) : Int;
	
	@:public @:static @:final public static var SOAP_FAULT_BINDING(default, null) : Int;
	
	@:public @:static @:final public static var WSDL_MIME_BINDING(default, null) : Int;
	
	@:public @:static @:final public static var PART_NOT_BOUNDED(default, null) : Int;
	
	@:overload @:public public function new(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setName(name : String) : Void;
	
	@:overload @:public public function getDescriptor() : javax.xml.namespace.QName;
	
	@:overload @:public public function setDescriptor(n : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function getDescriptorKind() : com.sun.tools.internal.ws.wsdl.framework.Kind;
	
	@:overload @:public public function setDescriptorKind(k : com.sun.tools.internal.ws.wsdl.framework.Kind) : Void;
	
	@:overload @:public override public function getElementName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getBindingExtensibilityElementKind() : Int;
	
	@:overload @:public public function setBindingExtensibilityElementKind(kind : Int) : Void;
	
	@:overload @:public override public function withAllQNamesDo(action : com.sun.tools.internal.ws.wsdl.framework.QNameAction) : Void;
	
	@:overload @:public override public function withAllEntityReferencesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityReferenceAction) : Void;
	
	@:overload @:public public function accept(visitor : com.sun.tools.internal.ws.wsdl.document.WSDLDocumentVisitor) : Void;
	
	@:overload @:public override public function validateThis() : Void;
	
	@:overload @:public public function setMode(mode : Mode) : Void;
	
	@:overload @:public public function getMode() : Mode;
	
	@:overload @:public public function isINOUT() : Bool;
	
	@:overload @:public public function isIN() : Bool;
	
	@:overload @:public public function isOUT() : Bool;
	
	@:overload @:public public function setReturn(ret : Bool) : Void;
	
	@:overload @:public public function isReturn() : Bool;
	
	
}

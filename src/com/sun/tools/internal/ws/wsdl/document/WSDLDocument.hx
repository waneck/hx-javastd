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
extern class WSDLDocument extends com.sun.tools.internal.ws.wsdl.framework.AbstractDocument
{
	/**
	* A WSDL document.
	*
	* @author WS Development Team
	*/
	@:overload @:public public function new(forest : com.sun.tools.internal.ws.wsdl.parser.MetadataFinder, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:public public function getDefinitions() : com.sun.tools.internal.ws.wsdl.document.Definitions;
	
	@:overload @:public public function setDefinitions(d : com.sun.tools.internal.ws.wsdl.document.Definitions) : Void;
	
	@:overload @:public public function getAllServiceQNames() : java.NativeArray<javax.xml.namespace.QName>;
	
	@:overload @:public public function getAllPortQNames() : java.NativeArray<javax.xml.namespace.QName>;
	
	@:overload @:public public function getPortQNames(serviceNameLocalPart : String) : java.NativeArray<javax.xml.namespace.QName>;
	
	@:overload @:public public function accept(visitor : com.sun.tools.internal.ws.wsdl.document.WSDLDocumentVisitor) : Void;
	
	@:overload @:public override public function validate(validator : com.sun.tools.internal.ws.wsdl.framework.EntityReferenceValidator) : Void;
	
	@:overload @:protected override private function getRoot() : com.sun.tools.internal.ws.wsdl.framework.Entity;
	
	
}
@:native('com$sun$tools$internal$ws$wsdl$document$WSDLDocument$GloballyValidatingAction') @:internal extern class WSDLDocument_GloballyValidatingAction implements com.sun.tools.internal.ws.wsdl.framework.EntityAction implements com.sun.tools.internal.ws.wsdl.framework.EntityReferenceAction
{
	@:overload @:public public function new(document : com.sun.tools.internal.ws.wsdl.framework.AbstractDocument, validator : com.sun.tools.internal.ws.wsdl.framework.EntityReferenceValidator) : Void;
	
	@:overload @:public public function perform(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload @:public public function perform(kind : com.sun.tools.internal.ws.wsdl.framework.Kind, name : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function getException() : com.sun.tools.internal.ws.wsdl.framework.ValidationException;
	
	
}

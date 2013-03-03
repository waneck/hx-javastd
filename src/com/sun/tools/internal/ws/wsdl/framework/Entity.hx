package com.sun.tools.internal.ws.wsdl.framework;
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
extern class Entity implements com.sun.tools.internal.ws.wsdl.framework.Elemental
{
	@:protected private var errorReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver;
	
	@:overload @:public public function new(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function setErrorReceiver(errorReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:public public function getLocator() : org.xml.sax.Locator;
	
	@:overload @:public public function getProperty(key : String) : Dynamic;
	
	@:overload @:public public function setProperty(key : String, value : Dynamic) : Void;
	
	@:overload @:public public function removeProperty(key : String) : Void;
	
	@:overload @:public public function withAllSubEntitiesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityAction) : Void;
	
	@:overload @:public public function withAllQNamesDo(action : com.sun.tools.internal.ws.wsdl.framework.QNameAction) : Void;
	
	@:overload @:public public function withAllEntityReferencesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityReferenceAction) : Void;
	
	@:overload @:public @:abstract public function validateThis() : Void;
	
	@:overload @:protected private function failValidation(key : String) : Void;
	
	@:overload @:protected private function failValidation(key : String, arg : String) : Void;
	
	/**
	* Interface implemented by classes that are mappable to XML elements.
	*
	* @author WS Development Team
	*/
	@:overload @:public @:public @:public override public function getElementName() : javax.xml.namespace.QName;
	
	
}

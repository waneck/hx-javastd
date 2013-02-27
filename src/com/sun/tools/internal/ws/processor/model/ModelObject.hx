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
extern class ModelObject
{
	/**
	*
	* @author WS Development Team
	*/
	@:overload @:abstract public function accept(visitor : com.sun.tools.internal.ws.processor.model.ModelVisitor) : Void;
	
	private var errorReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver;
	
	@:overload private function new(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function setErrorReceiver(errorReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload public function getEntity() : com.sun.tools.internal.ws.wsdl.framework.Entity;
	
	@:overload public function getProperty(key : String) : Dynamic;
	
	@:overload public function setProperty(key : String, value : Dynamic) : Void;
	
	@:overload public function removeProperty(key : String) : Void;
	
	@:overload public function getProperties() : java.util.Iterator<Dynamic>;
	
	@:overload public function getLocator() : org.xml.sax.Locator;
	
	@:overload public function getPropertiesMap() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload public function setPropertiesMap(m : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload public function getJavaDoc() : String;
	
	@:overload public function setJavaDoc(javaDoc : String) : Void;
	
	
}

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
extern class AbstractDocument
{
	/**
	* An abstract class for documents containing entities.
	*
	* @author WS Development Team
	*/
	private var forest(default, null) : com.sun.tools.internal.ws.wsdl.parser.DOMForest;
	
	private var errReceiver(default, null) : com.sun.tools.internal.ws.wscompile.ErrorReceiver;
	
	@:overload private function new(forest : com.sun.tools.internal.ws.wsdl.parser.MetadataFinder, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload public function getSystemId() : String;
	
	@:overload public function setSystemId(s : String) : Void;
	
	@:overload public function addIncludedDocument(systemId : String) : Void;
	
	@:overload public function isIncludedDocument(systemId : String) : Bool;
	
	@:overload public function addIncludedEntity(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function addImportedDocument(systemId : String) : Void;
	
	@:overload public function isImportedDocument(systemId : String) : Bool;
	
	@:overload public function addImportedEntity(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function withAllSubEntitiesDo(action : com.sun.tools.internal.ws.wsdl.framework.EntityAction) : Void;
	
	@:overload public function getMap(k : com.sun.tools.internal.ws.wsdl.framework.Kind) : java.util.Map<Dynamic, Dynamic>;
	
	@:overload public function define(e : com.sun.tools.internal.ws.wsdl.framework.GloballyKnown) : Void;
	
	@:overload public function find(k : com.sun.tools.internal.ws.wsdl.framework.Kind, name : javax.xml.namespace.QName) : com.sun.tools.internal.ws.wsdl.framework.GloballyKnown;
	
	@:overload public function validateLocally() : Void;
	
	@:overload @:abstract public function validate(validator : com.sun.tools.internal.ws.wsdl.framework.EntityReferenceValidator) : Void;
	
	@:overload @:abstract private function getRoot() : com.sun.tools.internal.ws.wsdl.framework.Entity;
	
	
}
@:native('com$sun$tools$internal$ws$wsdl$framework$AbstractDocument$LocallyValidatingAction') @:internal extern class AbstractDocument_LocallyValidatingAction implements com.sun.tools.internal.ws.wsdl.framework.EntityAction
{
	@:overload public function new() : Void;
	
	@:overload public function perform(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function getException() : com.sun.tools.internal.ws.wsdl.framework.ValidationException;
	
	
}

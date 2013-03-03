package com.sun.xml.internal.xsom.impl;
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
extern class ComponentImpl implements com.sun.xml.internal.xsom.XSComponent
{
	@:overload @:protected private function new(_owner : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _annon : com.sun.xml.internal.xsom.impl.AnnotationImpl, _loc : org.xml.sax.Locator, fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl) : Void;
	
	@:protected @:final private var ownerDocument(default, null) : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl;
	
	@:overload @:public public function getOwnerSchema() : com.sun.xml.internal.xsom.impl.SchemaImpl;
	
	@:overload @:public public function getRoot() : com.sun.xml.internal.xsom.XSSchemaSet;
	
	@:overload @:public public function getSourceDocument() : com.sun.xml.internal.xsom.parser.SchemaDocument;
	
	@:overload @:public @:final public function getAnnotation() : com.sun.xml.internal.xsom.XSAnnotation;
	
	@:overload @:public public function getAnnotation(createIfNotExist : Bool) : com.sun.xml.internal.xsom.XSAnnotation;
	
	@:overload @:public @:final public function getLocator() : org.xml.sax.Locator;
	
	@:overload @:public public function getForeignAttributes() : java.util.List<com.sun.xml.internal.xsom.impl.ForeignAttributesImpl>;
	
	@:overload @:public public function getForeignAttribute(nsUri : String, localName : String) : String;
	
	@:overload @:public public function select(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	@:overload @:public public function selectSingle(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : com.sun.xml.internal.xsom.XSComponent;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Accepts a functor.
	*/
	@:overload @:public @:public override public function apply<T>(_function : com.sun.xml.internal.xsom.visitor.XSFunction<T>) : T;
	
	/**
	* Accepts a visitor.
	*/
	@:overload @:public @:public override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	
}

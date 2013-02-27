package com.sun.xml.internal.xsom.impl;
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
extern class SchemaImpl implements com.sun.xml.internal.xsom.XSSchema
{
	@:overload public function new(_parent : com.sun.xml.internal.xsom.impl.SchemaSetImpl, loc : org.xml.sax.Locator, tns : String) : Void;
	
	@:overload public function getSourceDocument() : com.sun.xml.internal.xsom.parser.SchemaDocument;
	
	@:overload public function getRoot() : com.sun.xml.internal.xsom.impl.SchemaSetImpl;
	
	private var parent(default, null) : com.sun.xml.internal.xsom.impl.SchemaSetImpl;
	
	@:overload public function getTargetNamespace() : String;
	
	@:overload public function getOwnerSchema() : com.sun.xml.internal.xsom.XSSchema;
	
	@:overload public function setAnnotation(a : com.sun.xml.internal.xsom.XSAnnotation) : Void;
	
	@:overload public function getAnnotation() : com.sun.xml.internal.xsom.XSAnnotation;
	
	@:overload public function getAnnotation(createIfNotExist : Bool) : com.sun.xml.internal.xsom.XSAnnotation;
	
	@:overload public function getLocator() : org.xml.sax.Locator;
	
	@:overload public function addAttributeDecl(newDecl : com.sun.xml.internal.xsom.XSAttributeDecl) : Void;
	
	@:overload public function getAttributeDecls() : java.util.Map<String, com.sun.xml.internal.xsom.XSAttributeDecl>;
	
	@:overload public function getAttributeDecl(name : String) : com.sun.xml.internal.xsom.XSAttributeDecl;
	
	@:overload public function iterateAttributeDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeDecl>;
	
	@:overload public function addElementDecl(newDecl : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	@:overload public function getElementDecls() : java.util.Map<String, com.sun.xml.internal.xsom.XSElementDecl>;
	
	@:overload public function getElementDecl(name : String) : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload public function iterateElementDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSElementDecl>;
	
	@:overload public function addAttGroupDecl(newDecl : com.sun.xml.internal.xsom.XSAttGroupDecl, overwrite : Bool) : Void;
	
	@:overload public function getAttGroupDecls() : java.util.Map<String, com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload public function getAttGroupDecl(name : String) : com.sun.xml.internal.xsom.XSAttGroupDecl;
	
	@:overload public function iterateAttGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload public function addNotation(newDecl : com.sun.xml.internal.xsom.XSNotation) : Void;
	
	@:overload public function getNotations() : java.util.Map<String, com.sun.xml.internal.xsom.XSNotation>;
	
	@:overload public function getNotation(name : String) : com.sun.xml.internal.xsom.XSNotation;
	
	@:overload public function iterateNotations() : java.util.Iterator<com.sun.xml.internal.xsom.XSNotation>;
	
	@:overload public function addModelGroupDecl(newDecl : com.sun.xml.internal.xsom.XSModelGroupDecl, overwrite : Bool) : Void;
	
	@:overload public function getModelGroupDecls() : java.util.Map<String, com.sun.xml.internal.xsom.XSModelGroupDecl>;
	
	@:overload public function getModelGroupDecl(name : String) : com.sun.xml.internal.xsom.XSModelGroupDecl;
	
	@:overload public function iterateModelGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSModelGroupDecl>;
	
	@:overload private function addIdentityConstraint(c : com.sun.xml.internal.xsom.impl.IdentityConstraintImpl) : Void;
	
	@:overload public function getIdentityConstraints() : java.util.Map<String, com.sun.xml.internal.xsom.XSIdentityConstraint>;
	
	@:overload public function getIdentityConstraint(localName : String) : com.sun.xml.internal.xsom.XSIdentityConstraint;
	
	@:overload public function addSimpleType(newDecl : com.sun.xml.internal.xsom.XSSimpleType, overwrite : Bool) : Void;
	
	@:overload public function getSimpleTypes() : java.util.Map<String, com.sun.xml.internal.xsom.XSSimpleType>;
	
	@:overload public function getSimpleType(name : String) : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function iterateSimpleTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSSimpleType>;
	
	@:overload public function addComplexType(newDecl : com.sun.xml.internal.xsom.XSComplexType, overwrite : Bool) : Void;
	
	@:overload public function getComplexTypes() : java.util.Map<String, com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload public function getComplexType(name : String) : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function iterateComplexTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload public function getTypes() : java.util.Map<String, com.sun.xml.internal.xsom.XSType>;
	
	@:overload public function getType(name : String) : com.sun.xml.internal.xsom.XSType;
	
	@:overload public function iterateTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSType>;
	
	@:overload public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload public function apply(_function : com.sun.xml.internal.xsom.visitor.XSFunction<Dynamic>) : Dynamic;
	
	@:overload public function addForeignAttributes(fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl) : Void;
	
	@:overload public function getForeignAttributes() : java.util.List<com.sun.xml.internal.xsom.ForeignAttributes>;
	
	@:overload public function getForeignAttribute(nsUri : String, localName : String) : String;
	
	@:overload public function select(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	@:overload public function selectSingle(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : com.sun.xml.internal.xsom.XSComponent;
	
	
}

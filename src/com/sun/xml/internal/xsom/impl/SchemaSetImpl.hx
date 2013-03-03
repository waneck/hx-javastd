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
extern class SchemaSetImpl implements com.sun.xml.internal.xsom.XSSchemaSet
{
	/**
	* Gets a reference to the existing schema or creates a new one
	* if none exists yet.
	*/
	@:overload @:public public function createSchema(targetNamespace : String, location : org.xml.sax.Locator) : com.sun.xml.internal.xsom.impl.SchemaImpl;
	
	@:overload @:public public function getSchemaSize() : Int;
	
	@:overload @:public public function getSchema(targetNamespace : String) : com.sun.xml.internal.xsom.XSSchema;
	
	@:overload @:public public function getSchema(idx : Int) : com.sun.xml.internal.xsom.XSSchema;
	
	@:overload @:public public function iterateSchema() : java.util.Iterator<com.sun.xml.internal.xsom.XSSchema>;
	
	@:overload @:public @:final public function getSchemas() : java.util.Collection<com.sun.xml.internal.xsom.XSSchema>;
	
	@:overload @:public public function getType(ns : String, localName : String) : com.sun.xml.internal.xsom.XSType;
	
	@:overload @:public public function getSimpleType(ns : String, localName : String) : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload @:public public function getElementDecl(ns : String, localName : String) : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload @:public public function getAttributeDecl(ns : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeDecl;
	
	@:overload @:public public function getModelGroupDecl(ns : String, localName : String) : com.sun.xml.internal.xsom.XSModelGroupDecl;
	
	@:overload @:public public function getAttGroupDecl(ns : String, localName : String) : com.sun.xml.internal.xsom.XSAttGroupDecl;
	
	@:overload @:public public function getComplexType(ns : String, localName : String) : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload @:public public function getIdentityConstraint(ns : String, localName : String) : com.sun.xml.internal.xsom.XSIdentityConstraint;
	
	@:overload @:public public function iterateElementDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSElementDecl>;
	
	@:overload @:public public function iterateTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSType>;
	
	@:overload @:public public function iterateAttributeDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeDecl>;
	
	@:overload @:public public function iterateAttGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload @:public public function iterateModelGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSModelGroupDecl>;
	
	@:overload @:public public function iterateSimpleTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSSimpleType>;
	
	@:overload @:public public function iterateComplexTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload @:public public function iterateNotations() : java.util.Iterator<com.sun.xml.internal.xsom.XSNotation>;
	
	@:overload @:public public function iterateIdentityConstraints() : java.util.Iterator<com.sun.xml.internal.xsom.XSIdentityConstraint>;
	
	@:overload @:public public function select(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	@:overload @:public public function selectSingle(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : com.sun.xml.internal.xsom.XSComponent;
	
	@:public @:final public var empty(default, null) : com.sun.xml.internal.xsom.impl.EmptyImpl;
	
	@:overload @:public public function getEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload @:public public function getAnySimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:public @:final public var anySimpleType(default, null) : com.sun.xml.internal.xsom.impl.SchemaSetImpl.SchemaSetImpl_AnySimpleType;
	
	@:overload @:public public function getAnyType() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:public @:final public var anyType(default, null) : com.sun.xml.internal.xsom.impl.SchemaSetImpl.SchemaSetImpl_AnyType;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$SchemaSetImpl$AnySimpleType') @:internal extern class SchemaSetImpl_AnySimpleType extends com.sun.xml.internal.xsom.impl.DeclarationImpl implements com.sun.xml.internal.xsom.XSRestrictionSimpleType implements com.sun.xml.internal.xsom.impl.Ref.Ref_SimpleType
{
	@:overload @:public override public function getOwnerSchema() : com.sun.xml.internal.xsom.impl.SchemaImpl;
	
	@:overload @:public public function asSimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload @:public public function asComplexType() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload @:public public function isDerivedFrom(t : com.sun.xml.internal.xsom.XSType) : Bool;
	
	@:overload @:public public function isSimpleType() : Bool;
	
	@:overload @:public public function isComplexType() : Bool;
	
	@:overload @:public public function asEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload @:public public function asParticle() : com.sun.xml.internal.xsom.XSParticle;
	
	@:overload @:public public function getBaseType() : com.sun.xml.internal.xsom.XSType;
	
	@:overload @:public public function getSimpleBaseType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload @:public public function getDerivationMethod() : Int;
	
	@:overload @:public public function iterateDeclaredFacets() : java.util.Iterator<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload @:public public function getDeclaredFacets() : java.util.Collection<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload @:public public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSSimpleTypeVisitor) : Void;
	
	@:overload @:public public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSContentTypeVisitor) : Void;
	
	@:overload @:public override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload @:public public function apply<T>(f : com.sun.xml.internal.xsom.visitor.XSSimpleTypeFunction<T>) : T;
	
	@:overload @:public public function apply<T>(f : com.sun.xml.internal.xsom.visitor.XSContentTypeFunction<T>) : T;
	
	@:overload @:public override public function apply<T>(f : com.sun.xml.internal.xsom.visitor.XSFunction<T>) : T;
	
	@:overload @:public public function getVariety() : com.sun.xml.internal.xsom.XSVariety;
	
	@:overload @:public public function getPrimitiveType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload @:public public function isPrimitive() : Bool;
	
	@:overload @:public public function getBaseListType() : com.sun.xml.internal.xsom.XSListSimpleType;
	
	@:overload @:public public function getBaseUnionType() : com.sun.xml.internal.xsom.XSUnionSimpleType;
	
	@:overload @:public public function getFacet(name : String) : com.sun.xml.internal.xsom.XSFacet;
	
	@:overload @:public public function getFacets(name : String) : java.util.List<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload @:public public function getDeclaredFacet(name : String) : com.sun.xml.internal.xsom.XSFacet;
	
	@:overload @:public public function getDeclaredFacets(name : String) : java.util.List<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload @:public public function isRestriction() : Bool;
	
	@:overload @:public public function isList() : Bool;
	
	@:overload @:public public function isUnion() : Bool;
	
	@:overload @:public public function isFinal(v : com.sun.xml.internal.xsom.XSVariety) : Bool;
	
	@:overload @:public public function asRestriction() : com.sun.xml.internal.xsom.XSRestrictionSimpleType;
	
	@:overload @:public public function asList() : com.sun.xml.internal.xsom.XSListSimpleType;
	
	@:overload @:public public function asUnion() : com.sun.xml.internal.xsom.XSUnionSimpleType;
	
	@:overload @:public public function getType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload @:public public function getRedefinedBy() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload @:public public function getRedefinedCount() : Int;
	
	@:overload @:public public function listSubstitutables() : java.NativeArray<com.sun.xml.internal.xsom.XSType>;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$SchemaSetImpl$AnyType') @:internal extern class SchemaSetImpl_AnyType extends com.sun.xml.internal.xsom.impl.DeclarationImpl implements com.sun.xml.internal.xsom.XSComplexType implements com.sun.xml.internal.xsom.impl.Ref.Ref_Type
{
	@:overload @:public override public function getOwnerSchema() : com.sun.xml.internal.xsom.impl.SchemaImpl;
	
	@:overload @:public public function isAbstract() : Bool;
	
	@:overload @:public public function getAttributeWildcard() : com.sun.xml.internal.xsom.XSWildcard;
	
	@:overload @:public public function getAttributeUse(nsURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeUse;
	
	@:overload @:public public function iterateAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload @:public public function getDeclaredAttributeUse(nsURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeUse;
	
	@:overload @:public public function iterateDeclaredAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload @:public public function iterateAttGroups() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload @:public public function getAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload @:public public function getDeclaredAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload @:public public function getAttGroups() : java.util.Collection<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload @:public public function isFinal(i : Int) : Bool;
	
	@:overload @:public public function isSubstitutionProhibited(i : Int) : Bool;
	
	@:overload @:public public function isMixed() : Bool;
	
	@:overload @:public public function getContentType() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload @:public public function getExplicitContent() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload @:public public function getBaseType() : com.sun.xml.internal.xsom.XSType;
	
	@:overload @:public public function asSimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload @:public public function asComplexType() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload @:public public function isDerivedFrom(t : com.sun.xml.internal.xsom.XSType) : Bool;
	
	@:overload @:public public function isSimpleType() : Bool;
	
	@:overload @:public public function isComplexType() : Bool;
	
	@:overload @:public public function asEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload @:public public function getDerivationMethod() : Int;
	
	@:overload @:public public function getScope() : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload @:public override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload @:public override public function apply<T>(f : com.sun.xml.internal.xsom.visitor.XSFunction<T>) : T;
	
	@:overload @:public public function getType() : com.sun.xml.internal.xsom.XSType;
	
	@:overload @:public public function getRedefinedBy() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload @:public public function getRedefinedCount() : Int;
	
	@:overload @:public public function listSubstitutables() : java.NativeArray<com.sun.xml.internal.xsom.XSType>;
	
	@:overload @:public public function getSubtypes() : java.util.List<com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload @:public public function getElementDecls() : java.util.List<com.sun.xml.internal.xsom.XSElementDecl>;
	
	
}

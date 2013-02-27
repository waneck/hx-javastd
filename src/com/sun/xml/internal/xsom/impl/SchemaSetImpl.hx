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
	@:overload public function createSchema(targetNamespace : String, location : org.xml.sax.Locator) : com.sun.xml.internal.xsom.impl.SchemaImpl;
	
	@:overload public function getSchemaSize() : Int;
	
	@:overload public function getSchema(targetNamespace : String) : com.sun.xml.internal.xsom.XSSchema;
	
	@:overload public function getSchema(idx : Int) : com.sun.xml.internal.xsom.XSSchema;
	
	@:overload public function iterateSchema() : java.util.Iterator<com.sun.xml.internal.xsom.XSSchema>;
	
	@:overload @:final public function getSchemas() : java.util.Collection<com.sun.xml.internal.xsom.XSSchema>;
	
	@:overload public function getType(ns : String, localName : String) : com.sun.xml.internal.xsom.XSType;
	
	@:overload public function getSimpleType(ns : String, localName : String) : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function getElementDecl(ns : String, localName : String) : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload public function getAttributeDecl(ns : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeDecl;
	
	@:overload public function getModelGroupDecl(ns : String, localName : String) : com.sun.xml.internal.xsom.XSModelGroupDecl;
	
	@:overload public function getAttGroupDecl(ns : String, localName : String) : com.sun.xml.internal.xsom.XSAttGroupDecl;
	
	@:overload public function getComplexType(ns : String, localName : String) : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function getIdentityConstraint(ns : String, localName : String) : com.sun.xml.internal.xsom.XSIdentityConstraint;
	
	@:overload public function iterateElementDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSElementDecl>;
	
	@:overload public function iterateTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSType>;
	
	@:overload public function iterateAttributeDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeDecl>;
	
	@:overload public function iterateAttGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload public function iterateModelGroupDecls() : java.util.Iterator<com.sun.xml.internal.xsom.XSModelGroupDecl>;
	
	@:overload public function iterateSimpleTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSSimpleType>;
	
	@:overload public function iterateComplexTypes() : java.util.Iterator<com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload public function iterateNotations() : java.util.Iterator<com.sun.xml.internal.xsom.XSNotation>;
	
	@:overload public function iterateIdentityConstraints() : java.util.Iterator<com.sun.xml.internal.xsom.XSIdentityConstraint>;
	
	@:overload public function select(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : java.util.Collection<com.sun.xml.internal.xsom.XSComponent>;
	
	@:overload public function selectSingle(scd : String, nsContext : javax.xml.namespace.NamespaceContext) : com.sun.xml.internal.xsom.XSComponent;
	
	public var empty(default, null) : com.sun.xml.internal.xsom.impl.EmptyImpl;
	
	@:overload public function getEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function getAnySimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	public var anySimpleType(default, null) : SchemaSetImpl_AnySimpleType;
	
	@:overload public function getAnyType() : com.sun.xml.internal.xsom.XSComplexType;
	
	public var anyType(default, null) : SchemaSetImpl_AnyType;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$SchemaSetImpl$AnySimpleType') @:internal extern class SchemaSetImpl_AnySimpleType extends com.sun.xml.internal.xsom.impl.DeclarationImpl implements com.sun.xml.internal.xsom.XSRestrictionSimpleType implements com.sun.xml.internal.xsom.impl.Ref.Ref_SimpleType
{
	@:overload override public function getOwnerSchema() : com.sun.xml.internal.xsom.impl.SchemaImpl;
	
	@:overload public function asSimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function asComplexType() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function isDerivedFrom(t : com.sun.xml.internal.xsom.XSType) : Bool;
	
	@:overload public function isSimpleType() : Bool;
	
	@:overload public function isComplexType() : Bool;
	
	@:overload public function asEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function asParticle() : com.sun.xml.internal.xsom.XSParticle;
	
	@:overload public function getBaseType() : com.sun.xml.internal.xsom.XSType;
	
	@:overload public function getSimpleBaseType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function getDerivationMethod() : Int;
	
	@:overload public function iterateDeclaredFacets() : java.util.Iterator<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload public function getDeclaredFacets() : java.util.Collection<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSSimpleTypeVisitor) : Void;
	
	@:overload public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSContentTypeVisitor) : Void;
	
	@:overload override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload public function apply<T>(f : com.sun.xml.internal.xsom.visitor.XSSimpleTypeFunction<T>) : T;
	
	@:overload public function apply<T>(f : com.sun.xml.internal.xsom.visitor.XSContentTypeFunction<T>) : T;
	
	@:overload override public function apply<T>(f : com.sun.xml.internal.xsom.visitor.XSFunction<T>) : T;
	
	@:overload public function getVariety() : com.sun.xml.internal.xsom.XSVariety;
	
	@:overload public function getPrimitiveType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function isPrimitive() : Bool;
	
	@:overload public function getBaseListType() : com.sun.xml.internal.xsom.XSListSimpleType;
	
	@:overload public function getBaseUnionType() : com.sun.xml.internal.xsom.XSUnionSimpleType;
	
	@:overload public function getFacet(name : String) : com.sun.xml.internal.xsom.XSFacet;
	
	@:overload public function getFacets(name : String) : java.util.List<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload public function getDeclaredFacet(name : String) : com.sun.xml.internal.xsom.XSFacet;
	
	@:overload public function getDeclaredFacets(name : String) : java.util.List<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload public function isRestriction() : Bool;
	
	@:overload public function isList() : Bool;
	
	@:overload public function isUnion() : Bool;
	
	@:overload public function isFinal(v : com.sun.xml.internal.xsom.XSVariety) : Bool;
	
	@:overload public function asRestriction() : com.sun.xml.internal.xsom.XSRestrictionSimpleType;
	
	@:overload public function asList() : com.sun.xml.internal.xsom.XSListSimpleType;
	
	@:overload public function asUnion() : com.sun.xml.internal.xsom.XSUnionSimpleType;
	
	@:overload public function getType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function getRedefinedBy() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function getRedefinedCount() : Int;
	
	@:overload public function listSubstitutables() : java.NativeArray<com.sun.xml.internal.xsom.XSType>;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$SchemaSetImpl$AnyType') @:internal extern class SchemaSetImpl_AnyType extends com.sun.xml.internal.xsom.impl.DeclarationImpl implements com.sun.xml.internal.xsom.XSComplexType implements com.sun.xml.internal.xsom.impl.Ref.Ref_Type
{
	@:overload override public function getOwnerSchema() : com.sun.xml.internal.xsom.impl.SchemaImpl;
	
	@:overload public function isAbstract() : Bool;
	
	@:overload public function getAttributeWildcard() : com.sun.xml.internal.xsom.XSWildcard;
	
	@:overload public function getAttributeUse(nsURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeUse;
	
	@:overload public function iterateAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload public function getDeclaredAttributeUse(nsURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeUse;
	
	@:overload public function iterateDeclaredAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload public function iterateAttGroups() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload public function getAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload public function getDeclaredAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload public function getAttGroups() : java.util.Collection<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload public function isFinal(i : Int) : Bool;
	
	@:overload public function isSubstitutionProhibited(i : Int) : Bool;
	
	@:overload public function isMixed() : Bool;
	
	@:overload public function getContentType() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function getExplicitContent() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function getBaseType() : com.sun.xml.internal.xsom.XSType;
	
	@:overload public function asSimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function asComplexType() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function isDerivedFrom(t : com.sun.xml.internal.xsom.XSType) : Bool;
	
	@:overload public function isSimpleType() : Bool;
	
	@:overload public function isComplexType() : Bool;
	
	@:overload public function asEmpty() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function getDerivationMethod() : Int;
	
	@:overload public function getScope() : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload override public function apply<T>(f : com.sun.xml.internal.xsom.visitor.XSFunction<T>) : T;
	
	@:overload public function getType() : com.sun.xml.internal.xsom.XSType;
	
	@:overload public function getRedefinedBy() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function getRedefinedCount() : Int;
	
	@:overload public function listSubstitutables() : java.NativeArray<com.sun.xml.internal.xsom.XSType>;
	
	@:overload public function getSubtypes() : java.util.List<com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload public function getElementDecls() : java.util.List<com.sun.xml.internal.xsom.XSElementDecl>;
	
	
}

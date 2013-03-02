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
extern class ComplexTypeImpl extends com.sun.xml.internal.xsom.impl.AttributesHolder implements com.sun.xml.internal.xsom.XSComplexType implements com.sun.xml.internal.xsom.impl.Ref.Ref_ComplexType
{
	@:overload public function new(_parent : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _annon : com.sun.xml.internal.xsom.impl.AnnotationImpl, _loc : org.xml.sax.Locator, _fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl, _name : String, _anonymous : Bool, _abstract : Bool, _derivationMethod : Int, _base : com.sun.xml.internal.xsom.impl.Ref.Ref_Type, _final : Int, _block : Int, _mixed : Bool) : Void;
	
	@:overload public function asComplexType() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function isDerivedFrom(t : com.sun.xml.internal.xsom.XSType) : Bool;
	
	@:overload public function asSimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload @:final public function isSimpleType() : Bool;
	
	@:overload @:final public function isComplexType() : Bool;
	
	@:overload public function getDerivationMethod() : Int;
	
	@:overload public function getBaseType() : com.sun.xml.internal.xsom.XSType;
	
	/**
	* Called when this complex type redefines the specified complex type.
	*/
	@:overload public function redefine(ct : com.sun.xml.internal.xsom.impl.ComplexTypeImpl) : Void;
	
	@:overload public function getRedefinedBy() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function getRedefinedCount() : Int;
	
	@:overload public function getScope() : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload public function setScope(_scope : com.sun.xml.internal.xsom.XSElementDecl) : Void;
	
	@:overload public function isAbstract() : Bool;
	
	/**
	* Set the local attribute wildcard.
	*/
	@:overload public function setWildcard(wc : com.sun.xml.internal.xsom.impl.WildcardImpl) : Void;
	
	@:overload public function getAttributeWildcard() : com.sun.xml.internal.xsom.XSWildcard;
	
	@:overload public function isFinal(derivationMethod : Int) : Bool;
	
	@:overload public function isSubstitutionProhibited(method : Int) : Bool;
	
	@:overload public function setContentType(v : com.sun.xml.internal.xsom.impl.Ref.Ref_ContentType) : Void;
	
	@:overload public function getContentType() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function setExplicitContent(v : com.sun.xml.internal.xsom.XSContentType) : Void;
	
	@:overload public function getExplicitContent() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function isMixed() : Bool;
	
	@:overload public function getAttributeUse(nsURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeUse;
	
	@:overload public function iterateAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload public function getAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload public function listSubstitutables() : java.NativeArray<com.sun.xml.internal.xsom.XSType>;
	
	@:overload public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload public function apply<T>(_function : com.sun.xml.internal.xsom.visitor.XSFunction<T>) : T;
	
	@:overload public function getType() : com.sun.xml.internal.xsom.XSComplexType;
	
	@:overload public function getSubtypes() : java.util.List<com.sun.xml.internal.xsom.XSComplexType>;
	
	@:overload public function getElementDecls() : java.util.List<com.sun.xml.internal.xsom.XSElementDecl>;
	
	
}

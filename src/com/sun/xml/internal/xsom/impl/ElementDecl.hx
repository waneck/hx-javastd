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
extern class ElementDecl extends com.sun.xml.internal.xsom.impl.DeclarationImpl implements com.sun.xml.internal.xsom.XSElementDecl implements com.sun.xml.internal.xsom.impl.Ref.Ref_Term
{
	@:overload public function new(reader : com.sun.xml.internal.xsom.impl.parser.PatcherManager, owner : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _annon : com.sun.xml.internal.xsom.impl.AnnotationImpl, _loc : org.xml.sax.Locator, fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl, _tns : String, _name : String, _anonymous : Bool, _defv : com.sun.xml.internal.xsom.XmlString, _fixedv : com.sun.xml.internal.xsom.XmlString, _nillable : Bool, _abstract : Bool, _form : Null<Bool>, _type : com.sun.xml.internal.xsom.impl.Ref.Ref_Type, _substHead : com.sun.xml.internal.xsom.impl.Ref.Ref_Element, _substDisallowed : Int, _substExcluded : Int, idConstraints : java.util.List<com.sun.xml.internal.xsom.impl.IdentityConstraintImpl>) : Void;
	
	@:overload public function getDefaultValue() : com.sun.xml.internal.xsom.XmlString;
	
	@:overload public function getFixedValue() : com.sun.xml.internal.xsom.XmlString;
	
	@:overload public function isNillable() : Bool;
	
	@:overload public function isAbstract() : Bool;
	
	@:overload public function getType() : com.sun.xml.internal.xsom.XSType;
	
	@:overload public function getSubstAffiliation() : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload public function isSubstitutionDisallowed(method : Int) : Bool;
	
	@:overload public function isSubstitutionExcluded(method : Int) : Bool;
	
	@:overload public function getIdentityConstraints() : java.util.List<com.sun.xml.internal.xsom.XSIdentityConstraint>;
	
	@:overload public function getForm() : Null<Bool>;
	
	/**
	* @deprecated
	*/
	@:overload public function listSubstitutables() : java.NativeArray<com.sun.xml.internal.xsom.XSElementDecl>;
	
	@:overload public function getSubstitutables() : java.util.Set<com.sun.xml.internal.xsom.XSElementDecl>;
	
	@:overload private function addSubstitutable(decl : com.sun.xml.internal.xsom.impl.ElementDecl) : Void;
	
	@:overload public function updateSubstitutabilityMap() : Void;
	
	@:overload public function canBeSubstitutedBy(e : com.sun.xml.internal.xsom.XSElementDecl) : Bool;
	
	@:overload public function isWildcard() : Bool;
	
	@:overload public function isModelGroupDecl() : Bool;
	
	@:overload public function isModelGroup() : Bool;
	
	@:overload public function isElementDecl() : Bool;
	
	@:overload public function asWildcard() : com.sun.xml.internal.xsom.XSWildcard;
	
	@:overload public function asModelGroupDecl() : com.sun.xml.internal.xsom.XSModelGroupDecl;
	
	@:overload public function asModelGroup() : com.sun.xml.internal.xsom.XSModelGroup;
	
	@:overload public function asElementDecl() : com.sun.xml.internal.xsom.XSElementDecl;
	
	@:overload override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSTermVisitor) : Void;
	
	@:overload public function apply(_function : com.sun.xml.internal.xsom.visitor.XSTermFunction<Dynamic>) : Dynamic;
	
	@:overload public function apply<T, P>(_function : com.sun.xml.internal.xsom.visitor.XSTermFunctionWithParam<T, P>, param : P) : T;
	
	@:overload override public function apply(_function : com.sun.xml.internal.xsom.visitor.XSFunction<Dynamic>) : Dynamic;
	
	@:overload public function getTerm() : com.sun.xml.internal.xsom.XSTerm;
	
	
}

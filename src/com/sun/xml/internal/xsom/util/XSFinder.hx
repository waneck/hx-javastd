package com.sun.xml.internal.xsom.util;
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
extern class XSFinder implements com.sun.xml.internal.xsom.visitor.XSFunction<Null<Bool>>
{
	/**
	* Invokes this object as a visitor with the specified component.
	*/
	@:overload @:final public function find(c : com.sun.xml.internal.xsom.XSComponent) : Bool;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#annotation(com.sun.xml.internal.xsom.XSAnnotation)
	*/
	@:overload public function annotation(ann : com.sun.xml.internal.xsom.XSAnnotation) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#attGroupDecl(com.sun.xml.internal.xsom.XSAttGroupDecl)
	*/
	@:overload public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#attributeDecl(com.sun.xml.internal.xsom.XSAttributeDecl)
	*/
	@:overload public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#attributeUse(com.sun.xml.internal.xsom.XSAttributeUse)
	*/
	@:overload public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#complexType(com.sun.xml.internal.xsom.XSComplexType)
	*/
	@:overload public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#schema(com.sun.xml.internal.xsom.XSSchema)
	*/
	@:overload public function schema(schema : com.sun.xml.internal.xsom.XSSchema) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#facet(com.sun.xml.internal.xsom.XSFacet)
	*/
	@:overload public function facet(facet : com.sun.xml.internal.xsom.XSFacet) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#notation(com.sun.xml.internal.xsom.XSNotation)
	*/
	@:overload public function notation(notation : com.sun.xml.internal.xsom.XSNotation) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeFunction#simpleType(com.sun.xml.internal.xsom.XSSimpleType)
	*/
	@:overload public function simpleType(simpleType : com.sun.xml.internal.xsom.XSSimpleType) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeFunction#particle(com.sun.xml.internal.xsom.XSParticle)
	*/
	@:overload public function particle(particle : com.sun.xml.internal.xsom.XSParticle) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeFunction#empty(com.sun.xml.internal.xsom.XSContentType)
	*/
	@:overload public function empty(empty : com.sun.xml.internal.xsom.XSContentType) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSTermFunction#wildcard(com.sun.xml.internal.xsom.XSWildcard)
	*/
	@:overload public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSTermFunction#modelGroupDecl(com.sun.xml.internal.xsom.XSModelGroupDecl)
	*/
	@:overload public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSTermFunction#modelGroup(com.sun.xml.internal.xsom.XSModelGroup)
	*/
	@:overload public function modelGroup(group : com.sun.xml.internal.xsom.XSModelGroup) : Null<Bool>;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSTermFunction#elementDecl(com.sun.xml.internal.xsom.XSElementDecl)
	*/
	@:overload public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : Null<Bool>;
	
	@:overload public function identityConstraint(decl : com.sun.xml.internal.xsom.XSIdentityConstraint) : Null<Bool>;
	
	@:overload public function xpath(xpath : com.sun.xml.internal.xsom.XSXPath) : Null<Bool>;
	
	
}

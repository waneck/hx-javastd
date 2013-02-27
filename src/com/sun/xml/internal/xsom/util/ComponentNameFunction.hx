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
extern class ComponentNameFunction implements com.sun.xml.internal.xsom.visitor.XSFunction<String>
{
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#annotation(XSAnnotation)
	*/
	@:overload public function annotation(ann : com.sun.xml.internal.xsom.XSAnnotation) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#attGroupDecl(XSAttGroupDecl)
	*/
	@:overload public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#attributeDecl(XSAttributeDecl)
	*/
	@:overload public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#attributeUse(XSAttributeUse)
	*/
	@:overload public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#complexType(XSComplexType)
	*/
	@:overload public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#schema(XSSchema)
	*/
	@:overload public function schema(schema : com.sun.xml.internal.xsom.XSSchema) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#facet(XSFacet)
	*/
	@:overload public function facet(facet : com.sun.xml.internal.xsom.XSFacet) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSFunction#notation(XSNotation)
	*/
	@:overload public function notation(notation : com.sun.xml.internal.xsom.XSNotation) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeFunction#simpleType(XSSimpleType)
	*/
	@:overload public function simpleType(simpleType : com.sun.xml.internal.xsom.XSSimpleType) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeFunction#particle(XSParticle)
	*/
	@:overload public function particle(particle : com.sun.xml.internal.xsom.XSParticle) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSContentTypeFunction#empty(XSContentType)
	*/
	@:overload public function empty(empty : com.sun.xml.internal.xsom.XSContentType) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSTermFunction#wildcard(XSWildcard)
	*/
	@:overload public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSTermFunction#modelGroupDecl(XSModelGroupDecl)
	*/
	@:overload public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSTermFunction#modelGroup(XSModelGroup)
	*/
	@:overload public function modelGroup(group : com.sun.xml.internal.xsom.XSModelGroup) : String;
	
	/**
	* @see com.sun.xml.internal.xsom.visitor.XSTermFunction#elementDecl(XSElementDecl)
	*/
	@:overload public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : String;
	
	@:overload public function identityConstraint(decl : com.sun.xml.internal.xsom.XSIdentityConstraint) : String;
	
	@:overload public function xpath(xpath : com.sun.xml.internal.xsom.XSXPath) : String;
	
	
}

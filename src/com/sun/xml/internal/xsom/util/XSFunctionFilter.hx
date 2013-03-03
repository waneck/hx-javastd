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
extern class XSFunctionFilter<T> implements com.sun.xml.internal.xsom.visitor.XSFunction<T>
{
	/** This object will receive all forwarded calls. */
	@:protected private var core : com.sun.xml.internal.xsom.visitor.XSFunction<T>;
	
	@:overload @:public public function new(_core : com.sun.xml.internal.xsom.visitor.XSFunction<T>) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function annotation(ann : com.sun.xml.internal.xsom.XSAnnotation) : T;
	
	@:overload @:public public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : T;
	
	@:overload @:public public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : T;
	
	@:overload @:public public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : T;
	
	@:overload @:public public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : T;
	
	@:overload @:public public function schema(schema : com.sun.xml.internal.xsom.XSSchema) : T;
	
	@:overload @:public public function facet(facet : com.sun.xml.internal.xsom.XSFacet) : T;
	
	@:overload @:public public function notation(notation : com.sun.xml.internal.xsom.XSNotation) : T;
	
	@:overload @:public public function simpleType(simpleType : com.sun.xml.internal.xsom.XSSimpleType) : T;
	
	@:overload @:public public function particle(particle : com.sun.xml.internal.xsom.XSParticle) : T;
	
	@:overload @:public public function empty(empty : com.sun.xml.internal.xsom.XSContentType) : T;
	
	@:overload @:public public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : T;
	
	@:overload @:public public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : T;
	
	@:overload @:public public function modelGroup(group : com.sun.xml.internal.xsom.XSModelGroup) : T;
	
	@:overload @:public public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : T;
	
	@:overload @:public public function identityConstraint(decl : com.sun.xml.internal.xsom.XSIdentityConstraint) : T;
	
	@:overload @:public public function xpath(xpath : com.sun.xml.internal.xsom.XSXPath) : T;
	
	
}

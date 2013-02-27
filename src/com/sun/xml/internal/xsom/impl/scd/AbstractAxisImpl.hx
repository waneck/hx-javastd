package com.sun.xml.internal.xsom.impl.scd;
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
@:internal extern class AbstractAxisImpl<T> implements com.sun.xml.internal.xsom.impl.scd.Axis<T> implements com.sun.xml.internal.xsom.visitor.XSFunction<java.util.Iterator<T>>
{
	/**
	* Creates a singleton list.
	*/
	@:overload @:final private function singleton(t : T) : java.util.Iterator<T>;
	
	@:overload @:final private function union(items : java.NativeArray<T>) : java.util.Iterator<T>;
	
	@:overload @:final private function union(first : java.util.Iterator<T>, second : java.util.Iterator<T>) : java.util.Iterator<T>;
	
	@:overload public function iterator(contextNode : com.sun.xml.internal.xsom.XSComponent) : java.util.Iterator<T>;
	
	/**
	* Gets the prefix of the axis, like "foo::".
	*/
	@:overload public function getName() : String;
	
	/**
	* Default implementation that simply delegate sto {@link #iterator(XSComponent)}
	*/
	@:overload public function iterator(contextNodes : java.util.Iterator<com.sun.xml.internal.xsom.XSComponent>) : java.util.Iterator<T>;
	
	@:overload public function isModelGroup() : Bool;
	
	@:overload public function annotation(ann : com.sun.xml.internal.xsom.XSAnnotation) : java.util.Iterator<T>;
	
	@:overload public function attGroupDecl(decl : com.sun.xml.internal.xsom.XSAttGroupDecl) : java.util.Iterator<T>;
	
	@:overload public function attributeDecl(decl : com.sun.xml.internal.xsom.XSAttributeDecl) : java.util.Iterator<T>;
	
	@:overload public function attributeUse(use : com.sun.xml.internal.xsom.XSAttributeUse) : java.util.Iterator<T>;
	
	@:overload public function complexType(type : com.sun.xml.internal.xsom.XSComplexType) : java.util.Iterator<T>;
	
	@:overload public function schema(schema : com.sun.xml.internal.xsom.XSSchema) : java.util.Iterator<T>;
	
	@:overload public function facet(facet : com.sun.xml.internal.xsom.XSFacet) : java.util.Iterator<T>;
	
	@:overload public function notation(notation : com.sun.xml.internal.xsom.XSNotation) : java.util.Iterator<T>;
	
	@:overload public function identityConstraint(decl : com.sun.xml.internal.xsom.XSIdentityConstraint) : java.util.Iterator<T>;
	
	@:overload public function xpath(xpath : com.sun.xml.internal.xsom.XSXPath) : java.util.Iterator<T>;
	
	@:overload public function simpleType(simpleType : com.sun.xml.internal.xsom.XSSimpleType) : java.util.Iterator<T>;
	
	@:overload public function particle(particle : com.sun.xml.internal.xsom.XSParticle) : java.util.Iterator<T>;
	
	@:overload public function empty(empty : com.sun.xml.internal.xsom.XSContentType) : java.util.Iterator<T>;
	
	@:overload public function wildcard(wc : com.sun.xml.internal.xsom.XSWildcard) : java.util.Iterator<T>;
	
	@:overload public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : java.util.Iterator<T>;
	
	@:overload public function modelGroup(group : com.sun.xml.internal.xsom.XSModelGroup) : java.util.Iterator<T>;
	
	@:overload public function elementDecl(decl : com.sun.xml.internal.xsom.XSElementDecl) : java.util.Iterator<T>;
	
	/**
	* Returns an empty list.
	*/
	@:overload @:final private function empty() : java.util.Iterator<T>;
	
	
}

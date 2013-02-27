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
extern class UnionSimpleTypeImpl extends com.sun.xml.internal.xsom.impl.SimpleTypeImpl implements com.sun.xml.internal.xsom.XSUnionSimpleType
{
	@:overload public function new(_parent : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _annon : com.sun.xml.internal.xsom.impl.AnnotationImpl, _loc : org.xml.sax.Locator, _fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl, _name : String, _anonymous : Bool, finalSet : java.util.Set<com.sun.xml.internal.xsom.XSVariety>, _members : java.NativeArray<com.sun.xml.internal.xsom.impl.Ref.Ref_SimpleType>) : Void;
	
	@:overload public function getMember(idx : Int) : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function getMemberSize() : Int;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.xsom.XSSimpleType>;
	
	@:overload override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSSimpleTypeVisitor) : Void;
	
	@:overload override public function apply(_function : com.sun.xml.internal.xsom.visitor.XSSimpleTypeFunction<Dynamic>) : Dynamic;
	
	@:overload override public function getBaseUnionType() : com.sun.xml.internal.xsom.XSUnionSimpleType;
	
	@:overload override public function getFacet(name : String) : com.sun.xml.internal.xsom.XSFacet;
	
	@:overload override public function getFacets(name : String) : java.util.List<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload override public function getVariety() : com.sun.xml.internal.xsom.XSVariety;
	
	@:overload override public function getPrimitiveType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload override public function isUnion() : Bool;
	
	@:overload override public function asUnion() : com.sun.xml.internal.xsom.XSUnionSimpleType;
	
	
}

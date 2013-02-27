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
extern class AttributeDeclImpl extends com.sun.xml.internal.xsom.impl.DeclarationImpl implements com.sun.xml.internal.xsom.XSAttributeDecl implements com.sun.xml.internal.xsom.impl.Ref.Ref_Attribute
{
	@:overload public function new(owner : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _targetNamespace : String, _name : String, _annon : com.sun.xml.internal.xsom.impl.AnnotationImpl, _loc : org.xml.sax.Locator, _fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl, _anonymous : Bool, _defValue : com.sun.xml.internal.xsom.XmlString, _fixedValue : com.sun.xml.internal.xsom.XmlString, _type : com.sun.xml.internal.xsom.impl.Ref.Ref_SimpleType) : Void;
	
	@:overload public function getType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	@:overload public function getDefaultValue() : com.sun.xml.internal.xsom.XmlString;
	
	@:overload public function getFixedValue() : com.sun.xml.internal.xsom.XmlString;
	
	@:overload override public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSVisitor) : Void;
	
	@:overload override public function apply(_function : com.sun.xml.internal.xsom.visitor.XSFunction<Dynamic>) : Dynamic;
	
	@:overload public function getAttribute() : com.sun.xml.internal.xsom.XSAttributeDecl;
	
	
}

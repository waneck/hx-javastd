package com.sun.tools.internal.xjc.model;
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
extern class CAttributePropertyInfo extends com.sun.tools.internal.xjc.model.CSingleTypePropertyInfo implements com.sun.xml.internal.bind.v2.model.core.AttributePropertyInfo<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>
{
	/**
	* @param type
	*      Represents the bound type of this attribute.
	* @param typeName
	*      XML Schema type name of this attribute. Optional for other schema languages.
	*/
	@:overload @:public public function new(name : String, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations, locator : org.xml.sax.Locator, attName : javax.xml.namespace.QName, type : com.sun.tools.internal.xjc.model.TypeUse, typeName : javax.xml.namespace.QName, required : Bool) : Void;
	
	@:overload @:public public function isRequired() : Bool;
	
	@:overload @:public public function getXmlName() : javax.xml.namespace.QName;
	
	/**
	* An optional attribute can never be unboxable,
	* for we need null to represent the absence.
	*/
	@:overload @:public override public function isUnboxable() : Bool;
	
	@:overload @:public override public function isOptionalPrimitive() : Bool;
	
	@:overload @:public override public function accept<V>(visitor : com.sun.tools.internal.xjc.model.CPropertyVisitor<V>) : V;
	
	@:overload @:public @:final override public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	
}

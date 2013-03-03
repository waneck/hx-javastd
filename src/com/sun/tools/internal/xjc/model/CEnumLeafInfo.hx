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
extern class CEnumLeafInfo implements com.sun.xml.internal.bind.v2.model.core.EnumLeafInfo<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass> implements com.sun.tools.internal.xjc.model.nav.NClass implements com.sun.tools.internal.xjc.model.CNonElement
{
	/**
	* The {@link Model} object to which this bean belongs.
	*/
	@:public @:final public var model(default, null) : com.sun.tools.internal.xjc.model.Model;
	
	/**
	* The parent into which the enum class should be generated.
	*/
	@:public @:final public var parent(default, null) : com.sun.tools.internal.xjc.model.CClassInfoParent;
	
	/**
	* Short name of the generated type-safe enum.
	*/
	@:public @:final public var shortName(default, null) : String;
	
	/**
	* Represents the underlying type of this enumeration
	* and its conversion.
	*
	* <p>
	* To parse XML into a constant, we use the base type
	* to do lexical -> value, then use a map to pick up the right one.
	*
	* <p>
	* Hence this also represents the type of the Java value.
	* For example, if this is an enumeration of xs:int,
	* then this field will be Java int.
	*/
	@:public @:final public var base(default, null) : com.sun.tools.internal.xjc.model.CNonElement;
	
	/**
	* List of enum members.
	*/
	@:public @:final public var members(default, null) : java.util.Collection<com.sun.tools.internal.xjc.model.CEnumConstant>;
	
	@:public public var javadoc : String;
	
	@:overload @:public public function new(model : com.sun.tools.internal.xjc.model.Model, typeName : javax.xml.namespace.QName, container : com.sun.tools.internal.xjc.model.CClassInfoParent, shortName : String, base : com.sun.tools.internal.xjc.model.CNonElement, _members : java.util.Collection<com.sun.tools.internal.xjc.model.CEnumConstant>, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations, _sourceLocator : org.xml.sax.Locator) : Void;
	
	/**
	* Source line information that points to the place
	* where this type-safe enum is defined.
	* Used to report error messages.
	*/
	@:overload @:public public function getLocator() : org.xml.sax.Locator;
	
	@:overload @:public public function getTypeName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getType() : com.sun.tools.internal.xjc.model.nav.NType;
	
	/**
	* @deprecated
	*      why are you calling the method whose return value is known?
	*/
	@:overload @:public public function canBeReferencedByIDREF() : Bool;
	
	@:overload @:public public function isElement() : Bool;
	
	@:overload @:public public function getElementName() : javax.xml.namespace.QName;
	
	@:overload @:public public function asElement() : com.sun.xml.internal.bind.v2.model.core.Element<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>;
	
	@:overload @:public public function getClazz() : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload @:public public function getSchemaComponent() : com.sun.xml.internal.xsom.XSComponent;
	
	@:overload @:public public function toType(o : com.sun.tools.internal.xjc.outline.Outline, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JClass;
	
	@:overload @:public public function isAbstract() : Bool;
	
	@:overload @:public public function isBoxedType() : Bool;
	
	@:overload @:public public function fullName() : String;
	
	@:overload @:public public function isPrimitive() : Bool;
	
	@:overload @:public public function isSimpleType() : Bool;
	
	/**
	* The spec says the value field in the enum class will be generated
	* only under certain circumstances.
	*
	* @return
	*      true if the generated enum class should have the value field.
	*/
	@:overload @:public public function needsValueField() : Bool;
	
	@:overload @:public public function createConstant(outline : com.sun.tools.internal.xjc.outline.Outline, literal : com.sun.xml.internal.xsom.XmlString) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public public function isCollection() : Bool;
	
	@:overload @:public public function getAdapterUse() : com.sun.tools.internal.xjc.model.CAdapter;
	
	@:overload @:public public function getInfo() : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload @:public public function idUse() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload @:public public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload @:public public function getConstants() : java.util.Collection<com.sun.tools.internal.xjc.model.CEnumConstant>;
	
	@:overload @:public public function getBaseType() : com.sun.xml.internal.bind.v2.model.core.NonElement<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>;
	
	@:overload @:public public function getCustomizations() : com.sun.tools.internal.xjc.model.CCustomizations;
	
	@:overload @:public public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload @:public public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	
}

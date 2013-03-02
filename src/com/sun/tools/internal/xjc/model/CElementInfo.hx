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
extern class CElementInfo extends com.sun.tools.internal.xjc.model.AbstractCElement implements com.sun.xml.internal.bind.v2.model.core.ElementInfo<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass> implements com.sun.tools.internal.xjc.model.nav.NType implements com.sun.tools.internal.xjc.model.CClassInfoParent
{
	/**
	* If this element is global, the element info is considered to be
	* package-level, and this points to the package in which this element
	* lives in.
	*
	* <p>
	* For local elements, this points to the parent {@link CClassInfo}.
	*/
	public var parent(default, null) : com.sun.tools.internal.xjc.model.CClassInfoParent;
	
	/**
	* Creates an element in the given parent.
	*
	* <p>
	* When using this construction, {@link #initContentType(TypeUse, XSElementDecl, XmlString)}
	* must not be invoked.
	*/
	@:overload public function new(model : com.sun.tools.internal.xjc.model.Model, tagName : javax.xml.namespace.QName, parent : com.sun.tools.internal.xjc.model.CClassInfoParent, contentType : com.sun.tools.internal.xjc.model.TypeUse, defaultValue : com.sun.xml.internal.xsom.XmlString, source : com.sun.xml.internal.xsom.XSElementDecl, customizations : com.sun.tools.internal.xjc.model.CCustomizations, location : org.xml.sax.Locator) : Void;
	
	/**
	* Creates an element with a class in the given parent.
	*
	* <p>
	* When using this construction, the caller must use
	* {@link #initContentType(TypeUse, XSElementDecl, XmlString)} to fill in the content type
	* later.
	*
	* This is to avoid a circular model construction dependency between buidling a type
	* inside an element and element itself. To build a content type, you need to have
	* {@link CElementInfo} for a parent, so we can't take it as a constructor parameter.
	*/
	@:overload public function new(model : com.sun.tools.internal.xjc.model.Model, tagName : javax.xml.namespace.QName, parent : com.sun.tools.internal.xjc.model.CClassInfoParent, className : String, customizations : com.sun.tools.internal.xjc.model.CCustomizations, location : org.xml.sax.Locator) : Void;
	
	@:overload public function initContentType(contentType : com.sun.tools.internal.xjc.model.TypeUse, source : com.sun.xml.internal.xsom.XSElementDecl, defaultValue : com.sun.xml.internal.xsom.XmlString) : Void;
	
	@:overload @:final public function getDefaultValue() : String;
	
	@:overload @:final public function _package() : com.sun.codemodel.internal.JPackage;
	
	@:overload public function getContentType() : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload public function getContentInMemoryType() : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function getProperty() : com.sun.tools.internal.xjc.model.CElementPropertyInfo;
	
	@:overload public function getScope() : com.sun.tools.internal.xjc.model.CClassInfo;
	
	/**
	* @deprecated why are you calling a method that returns this?
	*/
	@:overload override public function getType() : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function getElementName() : javax.xml.namespace.QName;
	
	@:overload override public function toType(o : com.sun.tools.internal.xjc.outline.Outline, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	/**
	* Returns the "squeezed name" of this element.
	*
	* @see CClassInfo#getSqueezedName()
	*/
	@:overload public function getSqueezedName() : String;
	
	@:overload public function getSubstitutionHead() : com.sun.tools.internal.xjc.model.CElementInfo;
	
	@:overload public function getSubstitutionMembers() : java.util.Collection<com.sun.tools.internal.xjc.model.CElementInfo>;
	
	@:overload public function setSubstitutionHead(substitutionHead : com.sun.tools.internal.xjc.model.CElementInfo) : Void;
	
	@:overload public function isBoxedType() : Bool;
	
	@:overload public function fullName() : String;
	
	@:overload public function accept<T>(visitor : com.sun.tools.internal.xjc.model.CClassInfoParent.CClassInfoParent_Visitor<T>) : T;
	
	@:overload public function getOwnerPackage() : com.sun.codemodel.internal.JPackage;
	
	@:overload public function shortName() : String;
	
	/**
	* True if this element has its own class
	* (as opposed to be represented as an instance of {@link JAXBElement}.
	*/
	@:overload public function hasClass() : Bool;
	
	
}

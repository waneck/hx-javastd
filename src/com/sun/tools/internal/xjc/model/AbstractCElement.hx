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
@:internal extern class AbstractCElement extends com.sun.tools.internal.xjc.model.AbstractCTypeInfoImpl implements com.sun.tools.internal.xjc.model.CElement
{
	@:overload @:protected private function new(model : com.sun.tools.internal.xjc.model.Model, source : com.sun.xml.internal.xsom.XSComponent, locator : org.xml.sax.Locator, customizations : com.sun.tools.internal.xjc.model.CCustomizations) : Void;
	
	@:overload @:public override public function getLocator() : org.xml.sax.Locator;
	
	@:overload @:public public function isAbstract() : Bool;
	
	@:overload @:public public function setAbstract() : Void;
	
	/**
	* If this element can substitute another element, return that element.
	*
	* <p>
	* Substitutability of elements are transitive.
	*
	* @return
	*      null if no such element exists.
	*/
	@:overload @:public public function getSubstitutionHead() : com.sun.xml.internal.bind.v2.model.core.Element<Dynamic, Dynamic>;
	
	/**
	* Gets the upstream {@link Location} information.
	*
	* @return
	*      can be null.
	*/
	@:overload @:public override public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	/**
	* Gets the element name of the class.
	*
	* @return
	*      Always non-null.
	*/
	@:overload @:public public function getElementName() : javax.xml.namespace.QName;
	
	/**
	* True if this type is a valid target from a property annotated with {@link XmlIDREF}.
	*/
	@:overload @:public override public function canBeReferencedByIDREF() : Bool;
	
	/**
	* If this model object is built from XML Schema,
	* this property returns a schema component from which the model is built.
	*
	* @return
	*      null if the model is built from sources other than XML Schema
	*      (such as DTD.)
	*/
	@:overload @:public override public function getSchemaComponent() : com.sun.xml.internal.xsom.XSComponent;
	
	/**
	* Returns the {@link JClass} that represents the class being bound,
	* under the given {@link Outline}.
	*
	* @see NType#toType(Outline, Aspect)
	*/
	@:overload @:public override public function toType(o : com.sun.tools.internal.xjc.outline.Outline, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	/**
	* Gets the location object that this object points to.
	*
	* This operation could be inefficient and costly.
	*/
	@:overload @:public override public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	/**
	* Gets the underlying Java type that object represents.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public override public function getType() : Dynamic;
	
	/**
	* Gets the list of customizations attached to this model component.
	*
	* @return
	*      can be an empty list but never be null. The returned list is read-only.
	*      Do not modify.
	*
	* @see Plugin#getCustomizationURIs()
	*/
	@:overload @:public override public function getCustomizations() : com.sun.tools.internal.xjc.model.CCustomizations;
	
	/**
	* If non-null, this element is only active inside the given scope.
	*/
	@:overload @:public public function getScope() : com.sun.xml.internal.bind.v2.model.core.ClassInfo<Dynamic, Dynamic>;
	
	
}

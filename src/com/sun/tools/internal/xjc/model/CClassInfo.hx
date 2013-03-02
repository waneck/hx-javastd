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
extern class CClassInfo extends com.sun.tools.internal.xjc.model.AbstractCElement implements com.sun.xml.internal.bind.v2.model.core.ClassInfo<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass> implements com.sun.tools.internal.xjc.model.CClassInfoParent implements com.sun.tools.internal.xjc.model.CClass implements com.sun.tools.internal.xjc.model.nav.NClass
{
	/**
	* TODO: revisit this design.
	* we should at least do a basic encapsulation to avoid careless
	* mistakes. Maybe we should even differ the javadoc generation
	* by queueing runners.
	*/
	public var javadoc : String;
	
	/**
	* short name.
	*/
	public var shortName(default, null) : String;
	
	/**
	* The {@link Model} object to which this bean belongs.
	*/
	public var model(default, null) : com.sun.tools.internal.xjc.model.Model;
	
	@:overload public function new(model : com.sun.tools.internal.xjc.model.Model, pkg : com.sun.codemodel.internal.JPackage, shortName : String, location : org.xml.sax.Locator, typeName : javax.xml.namespace.QName, elementName : javax.xml.namespace.QName, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations) : Void;
	
	@:overload public function new(model : com.sun.tools.internal.xjc.model.Model, p : com.sun.tools.internal.xjc.model.CClassInfoParent, shortName : String, location : org.xml.sax.Locator, typeName : javax.xml.namespace.QName, elementName : javax.xml.namespace.QName, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations) : Void;
	
	@:overload public function new(model : com.sun.tools.internal.xjc.model.Model, cm : com.sun.codemodel.internal.JCodeModel, fullName : String, location : org.xml.sax.Locator, typeName : javax.xml.namespace.QName, elementName : javax.xml.namespace.QName, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations) : Void;
	
	@:overload public function hasAttributeWildcard() : Bool;
	
	@:overload public function hasAttributeWildcard(hasAttributeWildcard : Bool) : Void;
	
	@:overload public function hasSubClasses() : Bool;
	
	/**
	* Returns true if a new attribute wildcard property needs to be
	* declared on this class.
	*/
	@:overload public function declaresAttributeWildcard() : Bool;
	
	/**
	* Returns true if this class inherits a wildcard attribute property
	* from its ancestor classes.
	*/
	@:overload public function inheritsAttributeWildcard() : Bool;
	
	@:overload public function getClazz() : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload override public function getScope() : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload public function getName() : String;
	
	/**
	* Returns the "squeezed name" of this bean token.
	* <p>
	* The squeezed name of a bean is the concatenation of
	* the names of its outer classes and itself.
	* <p>
	* Thus if the bean is "org.acme.foo.Bean", then the squeezed name is "Bean",
	* if the bean is "org.acme.foo.Outer1.Outer2.Bean", then "Outer1Outer2Bean".
	* <p>
	* This is used by the code generator
	*/
	@:overload public function getSqueezedName() : String;
	
	/**
	* Returns a mutable list.
	*/
	@:overload public function getProperties() : java.util.List<com.sun.tools.internal.xjc.model.CPropertyInfo>;
	
	@:overload public function hasValueProperty() : Bool;
	
	/**
	* Gets a propery by name.
	*/
	@:overload public function getProperty(name : String) : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	@:overload public function hasProperties() : Bool;
	
	@:overload public function isElement() : Bool;
	
	/**
	* Guaranteed to return this.
	*/
	@:overload public function getInfo() : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload public function asElement() : com.sun.xml.internal.bind.v2.model.core.Element<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>;
	
	@:overload public function isOrdered() : Bool;
	
	/**
	* @deprecated
	*      if you are calling this method directly, you must be doing something wrong.
	*/
	@:overload public function isFinal() : Bool;
	
	@:overload public function setOrdered(value : Bool) : Void;
	
	@:overload override public function getElementName() : javax.xml.namespace.QName;
	
	@:overload public function getTypeName() : javax.xml.namespace.QName;
	
	@:overload public function isSimpleType() : Bool;
	
	/**
	* Returns the FQCN of this bean.
	*/
	@:overload public function fullName() : String;
	
	@:overload public function parent() : com.sun.tools.internal.xjc.model.CClassInfoParent;
	
	@:overload public function setUserSpecifiedImplClass(implClass : String) : Void;
	
	@:overload public function getUserSpecifiedImplClass() : String;
	
	/**
	* Adds a new property.
	*/
	@:overload public function addProperty(prop : com.sun.tools.internal.xjc.model.CPropertyInfo) : Void;
	
	/**
	* This method accepts both {@link CClassInfo} (which means the base class
	* is also generated), or {@link CClassRef} (which means the base class is
	* already generated and simply referenced.)
	*
	* The latter is treated somewhat special --- from the rest of the model
	* this external base class is invisible. This modeling might need more
	* thoughts to get right.
	*/
	@:overload public function setBaseClass(base : com.sun.tools.internal.xjc.model.CClass) : Void;
	
	/**
	* This inherited version returns null if this class extends from {@link CClassRef}.
	*
	* @see #getRefBaseClass()
	*/
	@:overload public function getBaseClass() : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload public function getRefBaseClass() : com.sun.tools.internal.xjc.model.CClassRef;
	
	/**
	* Enumerates all the sub-classes of this class.
	*/
	@:overload public function listSubclasses() : java.util.Iterator<com.sun.tools.internal.xjc.model.CClassInfo>;
	
	@:overload override public function getSubstitutionHead() : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload public function _implements(c : com.sun.codemodel.internal.JClass) : Void;
	
	/** Creates a new constructor declaration and adds it. */
	@:overload public function addConstructor(fieldNames : java.NativeArray<String>) : Void;
	
	/** list all constructor declarations. */
	@:overload public function getConstructors() : java.util.Collection<com.sun.tools.internal.xjc.model.Constructor>;
	
	@:overload @:final public function accept<T>(visitor : com.sun.tools.internal.xjc.model.CClassInfoParent.CClassInfoParent_Visitor<T>) : T;
	
	@:overload public function getOwnerPackage() : com.sun.codemodel.internal.JPackage;
	
	@:overload @:final override public function getType() : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload @:final override public function toType(o : com.sun.tools.internal.xjc.outline.Outline, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JClass;
	
	@:overload public function isBoxedType() : Bool;
	
	@:overload public function toString() : String;
	
	
}

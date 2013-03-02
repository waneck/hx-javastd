package com.sun.xml.internal.bind.v2.model.impl;
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
extern class ClassInfoImpl<T, C, F, M> extends com.sun.xml.internal.bind.v2.model.impl.TypeInfoImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.core.ClassInfo<T, C> implements com.sun.xml.internal.bind.v2.model.core.Element<T, C>
{
	/**
	* A part of the {@link ClassInfo} that doesn't depend on a particular
	* reflection library.
	*
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	private var clazz(default, null) : C;
	
	/**
	* If this class has a declared (not inherited) attribute wildcard,  keep the reference
	* to it.
	*
	* This parameter is initialized at the construction time and never change.
	*/
	/*final*/
	private var attributeWildcard : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>;
	
	@:overload public function getBaseClass() : com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>;
	
	/**
	* {@inheritDoc}
	*
	* The substitution hierarchy is the same as the inheritance hierarchy.
	*/
	@:overload @:final public function getSubstitutionHead() : com.sun.xml.internal.bind.v2.model.core.Element<T, C>;
	
	@:overload @:final public function getClazz() : C;
	
	/**
	* When a bean binds to an element, it's always through {@link XmlRootElement},
	* so this method always return null.
	*
	* @deprecated
	*      you shouldn't be invoking this method on {@link ClassInfoImpl}.
	*/
	@:overload public function getScope() : com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>;
	
	@:overload @:final override public function getType() : T;
	
	/**
	* A {@link ClassInfo} can be referenced by {@link XmlIDREF} if
	* it has an ID property.
	*/
	@:overload override public function canBeReferencedByIDREF() : Bool;
	
	@:overload @:final public function getName() : String;
	
	@:overload public function readAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>) : A;
	
	@:overload public function asElement() : com.sun.xml.internal.bind.v2.model.core.Element<T, C>;
	
	@:overload public function getProperties() : java.util.List<com.sun.xml.internal.bind.v2.model.core.PropertyInfo<T, C>>;
	
	@:overload @:final public function hasValueProperty() : Bool;
	
	@:overload public function getProperty(name : String) : com.sun.xml.internal.bind.v2.model.core.PropertyInfo<T, C>;
	
	/**
	* This hook is used by {@link RuntimeClassInfoImpl} to look for {@link XmlLocation}.
	*/
	@:overload private function checkFieldXmlLocation(f : F) : Void;
	
	@:overload public function hasProperties() : Bool;
	
	@:overload private function createReferenceProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>) : com.sun.xml.internal.bind.v2.model.impl.ReferencePropertyInfoImpl<T, C, F, M>;
	
	@:overload private function createAttributeProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>) : com.sun.xml.internal.bind.v2.model.impl.AttributePropertyInfoImpl<T, C, F, M>;
	
	@:overload private function createValueProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>) : com.sun.xml.internal.bind.v2.model.impl.ValuePropertyInfoImpl<T, C, F, M>;
	
	@:overload private function createElementProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>) : com.sun.xml.internal.bind.v2.model.impl.ElementPropertyInfoImpl<T, C, F, M>;
	
	@:overload private function createMapProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>) : com.sun.xml.internal.bind.v2.model.impl.MapPropertyInfoImpl<T, C, F, M>;
	
	/**
	* Creates a new {@link FieldPropertySeed} object.
	*
	* <p>
	* Derived class can override this method to create a sub-class.
	*/
	@:overload private function createFieldSeed(f : F) : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>;
	
	/**
	* Creates a new {@link GetterSetterPropertySeed} object.
	*/
	@:overload private function createAccessorSeed(getter : M, setter : M) : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>;
	
	@:overload @:final public function isElement() : Bool;
	
	@:overload public function isAbstract() : Bool;
	
	@:overload public function isOrdered() : Bool;
	
	@:overload @:final public function isFinal() : Bool;
	
	@:overload @:final public function hasSubClasses() : Bool;
	
	@:overload @:final public function hasAttributeWildcard() : Bool;
	
	@:overload @:final public function inheritsAttributeWildcard() : Bool;
	
	@:overload @:final public function declaresAttributeWildcard() : Bool;
	
	@:overload @:final public function getElementName() : javax.xml.namespace.QName;
	
	@:overload @:final public function getTypeName() : javax.xml.namespace.QName;
	
	@:overload @:final public function isSimpleType() : Bool;
	
	@:overload override public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function getFactoryMethod() : java.lang.reflect.Method;
	
	@:overload public function toString() : String;
	
	
}
/**
* Compares orders among {@link PropertyInfoImpl} according to {@link ClassInfoImpl#propOrder}.
*
* <p>
* extends {@link HashMap} to save memory.
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$ClassInfoImpl$PropertySorter') @:internal extern class ClassInfoImpl_PropertySorter extends java.util.HashMap<String, Null<Int>> implements java.util.Comparator<com.sun.xml.internal.bind.v2.model.impl.PropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>>
{
	@:overload public function compare(o1 : com.sun.xml.internal.bind.v2.model.impl.PropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>, o2 : com.sun.xml.internal.bind.v2.model.impl.PropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>) : Int;
	
	/**
	* Report errors for unused propOrder entries.
	*/
	@:overload public function checkUnusedProperties() : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$model$impl$ClassInfoImpl$ConflictException') @:internal extern class ClassInfoImpl_ConflictException extends java.lang.Exception
{
	@:overload public function new(one : java.util.List<java.lang.annotation.Annotation>) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$model$impl$ClassInfoImpl$DuplicateException') @:internal extern class ClassInfoImpl_DuplicateException extends java.lang.Exception
{
	@:overload public function new(a1 : java.lang.annotation.Annotation, a2 : java.lang.annotation.Annotation) : Void;
	
	
}
/**
* Represents 6 groups of secondary annotations
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$ClassInfoImpl$SecondaryAnnotation') privateextern enum ClassInfoImpl_SecondaryAnnotation
{
	JAVA_TYPE;
	ID_IDREF;
	BINARY;
	ELEMENT_WRAPPER;
	LIST;
	SCHEMA_TYPE;
	
}

/**
* Represents 7 groups of properties.
*
* Each instance is also responsible for rejecting annotations
* that are not allowed on that kind.
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$ClassInfoImpl$PropertyGroup') privateextern enum ClassInfoImpl_PropertyGroup
{
	TRANSIENT;
	ANY_ATTRIBUTE;
	ATTRIBUTE;
	VALUE;
	ELEMENT;
	ELEMENT_REF;
	MAP;
	
}


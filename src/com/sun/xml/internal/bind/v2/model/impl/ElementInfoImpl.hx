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
@:internal extern class ElementInfoImpl<T, C, F, M> extends com.sun.xml.internal.bind.v2.model.impl.TypeInfoImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.core.ElementInfo<T, C>
{
	/**
	* @param m
	*      The factory method on ObjectFactory that comes with {@link XmlElementDecl}.
	*/
	@:overload public function new(builder : com.sun.xml.internal.bind.v2.model.impl.ModelBuilder<T, C, F, M>, registry : com.sun.xml.internal.bind.v2.model.impl.RegistryInfoImpl<T, C, F, M>, m : M) : Void;
	
	@:overload private function createPropertyImpl() : ElementInfoImpl_PropertyImpl;
	
	@:overload public function getProperty() : com.sun.xml.internal.bind.v2.model.core.ElementPropertyInfo<T, C>;
	
	@:overload public function getContentType() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	@:overload public function getContentInMemoryType() : T;
	
	@:overload public function getElementName() : javax.xml.namespace.QName;
	
	@:overload override public function getType() : T;
	
	/**
	* Leaf-type cannot be referenced from IDREF.
	*
	* @deprecated
	*      why are you calling a method whose return value is always known?
	*/
	@:overload @:final override public function canBeReferencedByIDREF() : Bool;
	
	@:overload public function getScope() : com.sun.xml.internal.bind.v2.model.core.ClassInfo<T, C>;
	
	@:overload public function getSubstitutionHead() : com.sun.xml.internal.bind.v2.model.core.ElementInfo<T, C>;
	
	@:overload public function getSubstitutionMembers() : java.util.Collection<ElementInfoImpl<T, C, F, M>>;
	
	@:overload override public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	
}
/**
* Singleton instance of {@link ElementPropertyInfo} for this element.
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$ElementInfoImpl$PropertyImpl') extern class ElementInfoImpl_PropertyImpl implements com.sun.xml.internal.bind.v2.model.core.ElementPropertyInfo<Dynamic, Dynamic> implements com.sun.xml.internal.bind.v2.model.core.TypeRef<Dynamic, Dynamic> implements com.sun.xml.internal.bind.v2.model.annotation.AnnotationSource
{
	@:overload public function getTarget() : com.sun.xml.internal.bind.v2.model.core.NonElement<Dynamic, Dynamic>;
	
	@:overload public function getTagName() : javax.xml.namespace.QName;
	
	@:overload public function getTypes() : java.util.List<com.sun.xml.internal.bind.v2.model.core.TypeRef<Dynamic, Dynamic>>;
	
	@:overload public function ref() : java.util.List<com.sun.xml.internal.bind.v2.model.core.NonElement<Dynamic, Dynamic>>;
	
	@:overload public function getXmlName() : javax.xml.namespace.QName;
	
	@:overload public function isCollectionRequired() : Bool;
	
	@:overload public function isCollectionNillable() : Bool;
	
	@:overload public function isNillable() : Bool;
	
	@:overload public function getDefaultValue() : String;
	
	@:overload public function parent() : ElementInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload public function getName() : String;
	
	@:overload public function displayName() : String;
	
	@:overload public function isCollection() : Bool;
	
	/**
	* For {@link ElementInfo}s, a collection always means a list of values.
	*/
	@:overload public function isValueList() : Bool;
	
	@:overload public function isRequired() : Bool;
	
	@:overload public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	@:overload public function getAdapter() : com.sun.xml.internal.bind.v2.model.core.Adapter<Dynamic, Dynamic>;
	
	@:overload public function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload public function getSchemaType() : javax.xml.namespace.QName;
	
	@:overload public function inlineBinaryData() : Bool;
	
	@:overload public function getSource() : com.sun.xml.internal.bind.v2.model.core.PropertyInfo<Dynamic, Dynamic>;
	
	@:overload public function readAnnotation<A : java.lang.annotation.Annotation>(annotationType : Class<A>) : A;
	
	@:overload public function hasAnnotation(annotationType : Class<java.lang.annotation.Annotation>) : Bool;
	
	
}

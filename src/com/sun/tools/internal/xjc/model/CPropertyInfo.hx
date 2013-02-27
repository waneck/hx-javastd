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
extern class CPropertyInfo implements com.sun.xml.internal.bind.v2.model.core.PropertyInfo<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass> implements com.sun.tools.internal.xjc.model.CCustomizable
{
	public var locator(default, null) : org.xml.sax.Locator;
	
	/**
	* If the base type of the property is overriden,
	* this field is set to non-null.
	*/
	public var baseType : com.sun.codemodel.internal.JType;
	
	/**
	* Javadoc for this property. Must not be null.
	*/
	public var javadoc : String;
	
	/**
	* Specifies how the field is generated by the backend.
	*/
	public var realization : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	/**
	* If non-null, keeps the default value in Java representation.
	*
	* If {@link #isCollection} is true, this field is always null,
	* for we don't handle default values for a list.
	*/
	public var defaultValue : com.sun.tools.internal.xjc.model.CDefaultValue;
	
	@:overload private function new(name : String, collection : Bool, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations, locator : org.xml.sax.Locator) : Void;
	
	@:overload public function parent() : com.sun.tools.internal.xjc.model.CTypeInfo;
	
	@:overload public function getLocator() : org.xml.sax.Locator;
	
	/**
	* If this model object is built from XML Schema,
	* this property returns a schema component from which the model is built.
	*
	* @return
	*      null if the model is built from sources other than XML Schema
	*      (such as DTD.)
	*/
	@:overload @:final public function getSchemaComponent() : com.sun.xml.internal.xsom.XSComponent;
	
	@:overload @:abstract public function getAdapter() : com.sun.tools.internal.xjc.model.CAdapter;
	
	/**
	* Name of the property.
	*
	* <p>
	* This method is implemented to follow the contract of
	* {@link PropertyInfo#getName()}, and therefore it always
	* returns the name of the annotated field.
	* <p>
	* This name is normally not useful for the rest of XJC,
	* which usually wants to access the "public name" of the property.
	* A "public name" of the property is a name like "FooBar" which
	* is used as a seed for generating the accessor methods.
	* This is the name controlled by the schema customization via users.
	*
	* <p>
	* If the caller is calling this method statically, it's usually
	* the sign of a mistake. Use {@link #getName(boolean)} method instead,
	* which forces you to think about which name you want to get.
	*
	* @deprecated
	*      marked as deprecated so that we can spot the use of this method.
	*
	* @see #getName(boolean)
	*/
	@:overload public function getName() : String;
	
	/**
	* Gets the name of the property.
	*
	* @param isPublic
	*      if true, this method returns a name like "FooBar", which
	*      should be used as a seed for generating user-visible names
	*      (such as accessors like "getFooBar".)
	*
	*      <p>
	*      if false, this method returns the "name of the property"
	*      as defined in the j2s side of the spec. This name is usually
	*      something like "fooBar", which often corresponds to the XML
	*      element/attribute name of this property (for taking advantage
	*      of annotation defaulting as much as possible)
	*/
	@:overload public function getName(isPublic : Bool) : String;
	
	/**
	* Overrides the name of the property.
	*
	* This method can be used from {@link Plugin#postProcessModel(Model, ErrorHandler)}.
	* But the caller should do so with the understanding that this is inherently
	* dangerous method.
	*/
	@:overload public function setName(isPublic : Bool, newName : String) : Void;
	
	@:overload public function displayName() : String;
	
	@:overload public function isCollection() : Bool;
	
	@:overload @:abstract public function ref() : java.util.Collection<com.sun.tools.internal.xjc.model.CTypeInfo>;
	
	/**
	* Returns true if this property is "unboxable".
	*
	* <p>
	* In general, a property often has to be capable of representing null
	* to indicate the absence of the value. This requires properties
	* to be generated as <tt>@XmlElement Float f</tt>, not as
	* <tt>@XmlElement float f;</tt>. But this is slow.
	*
	* <p>
	* Fortunately, there are cases where we know that the property can
	* never legally be absent. When this condition holds we can generate
	* the optimized "unboxed form".
	*
	* <p>
	* The exact such conditions depend
	* on the kind of properties, so refer to the implementation code
	* for the details.
	*
	* <p>
	* This method returns true when the property can be generated
	* as "unboxed form", false otherwise.
	*
	* <p>
	* When this property is a collection, this method returns true
	* if items in the collection is unboxable. Obviously, the collection
	* itself is always a reference type.
	*/
	@:overload public function isUnboxable() : Bool;
	
	/**
	* Returns true if this property needs to represent null
	* just for the purpose of representing an absence of the property.
	*/
	@:overload public function isOptionalPrimitive() : Bool;
	
	@:overload public function getCustomizations() : com.sun.tools.internal.xjc.model.CCustomizations;
	
	@:overload public function inlineBinaryData() : Bool;
	
	@:overload @:abstract public function accept<V>(visitor : com.sun.tools.internal.xjc.model.CPropertyVisitor<V>) : V;
	
	/**
	* Checks if the given {@link TypeUse} would need an explicit {@link XmlSchemaType}
	* annotation with the given type name.
	*/
	@:overload private static function needsExplicitTypeName(type : com.sun.tools.internal.xjc.model.TypeUse, typeName : javax.xml.namespace.QName) : Bool;
	
	/**
	* Puts the element names that this property possesses to the map,
	* so that we can find two properties that own the same element name,
	* which is an error.
	*
	* @return
	*      null if no conflict was found. Otherwise return the QName that has the collision.
	*/
	@:overload public function collectElementNames(table : java.util.Map<javax.xml.namespace.QName, CPropertyInfo>) : javax.xml.namespace.QName;
	
	@:overload @:final public function readAnnotation<A : java.lang.annotation.Annotation>(annotationType : Class<A>) : A;
	
	@:overload @:final public function hasAnnotation(annotationType : Class<java.lang.annotation.Annotation>) : Bool;
	
	/**
	* Gets the kind of this proeprty.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	/**
	* Expected MIME type, if any.
	*/
	@:overload public function getExpectedMimeType() : javax.activation.MimeType;
	
	/**
	* Returns the IDness of the value of this element.
	*
	* @see XmlID
	* @see XmlIDREF
	*
	* @return
	*      always non-null
	*/
	@:overload public function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	/**
	* The effective value of {@link XmlSchemaType} annotation, if any.
	*
	* <p>
	* If the property doesn't have {@link XmlSchemaType} annotation,
	* this method returns null.
	*
	* <p>
	* Since a type name is a property of a Java type, not a Java property,
	* A schema type name of a Java type should be primarily obtained
	* by using {@link NonElement#getTypeName()}. This method is to correctly
	* implement the ugly semantics of {@link XmlSchemaType} (namely
	* when this returns non-null, it overrides the type names of all types
	* that are in this property.)
	*/
	@:overload public function getSchemaType() : javax.xml.namespace.QName;
	
	
}

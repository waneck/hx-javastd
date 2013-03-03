package com.sun.xml.internal.bind.v2.model.core;
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
extern interface PropertyInfo<T, C> extends com.sun.xml.internal.bind.v2.model.annotation.AnnotationSource
{
	/**
	* Gets the {@link ClassInfo} or {@link ElementInfo} to which this property belongs.
	*/
	@:overload public function parent() : com.sun.xml.internal.bind.v2.model.core.TypeInfo<T, C>;
	
	/**
	* Gets the name of the property.
	*
	* <p>
	* For example, "foo" or "bar".
	* Generally, a property name is different from XML,
	* (although they are often related, as a property name is often
	* computed from tag names / attribute names.)
	* In fact, <b>property names do not directly affect XML</b>.
	* The property name uniquely identifies a property within a class.
	*
	* @see XmlType#propOrder()
	*/
	@:overload public function getName() : String;
	
	/**
	* Gets the display name of the property.
	*
	* <p>
	* This is a convenience method for
	* {@code parent().getName()+'#'+getName()}.
	*/
	@:overload public function displayName() : String;
	
	/**
	* Returns true if this is a multi-valued collection property.
	* Otherwise false, in which case the property is a single value.
	*/
	@:overload public function isCollection() : Bool;
	
	/**
	* List of {@link TypeInfo}s that this property references.
	*
	* This allows the caller to traverse the reference graph without
	* getting into the details of each different property type.
	*
	* @return
	*      non-null read-only collection.
	*/
	@:overload @:public public function ref() : java.util.Collection<com.sun.xml.internal.bind.v2.model.core.TypeInfo<T, C>>;
	
	/**
	* Gets the kind of this proeprty.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public @:public public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	/**
	* @return
	*      null if the property is not adapted.
	*/
	@:overload public function getAdapter() : com.sun.xml.internal.bind.v2.model.core.Adapter<T, C>;
	
	/**
	* Returns the IDness of the value of this element.
	*
	* @see XmlID
	* @see XmlIDREF
	*
	* @return
	*      always non-null
	*/
	@:overload @:public public function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	/**
	* Expected MIME type, if any.
	*/
	@:overload @:public public function getExpectedMimeType() : javax.activation.MimeType;
	
	/**
	* If this is true and this property indeed represents a binary data,
	* it should be always inlined.
	*/
	@:overload public function inlineBinaryData() : Bool;
	
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
	@:overload @:public public function getSchemaType() : javax.xml.namespace.QName;
	
	
}

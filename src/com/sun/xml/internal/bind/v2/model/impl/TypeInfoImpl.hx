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
@:internal extern class TypeInfoImpl<TypeT, ClassDeclT, FieldT, MethodT> implements com.sun.xml.internal.bind.v2.model.core.TypeInfo<TypeT, ClassDeclT> implements com.sun.xml.internal.bind.v2.model.annotation.Locatable
{
	/**
	* {@link TypeInfoSet} to which this class belongs.
	*/
	@:protected @:final private var owner(default, null) : com.sun.xml.internal.bind.v2.model.impl.TypeInfoSetImpl<TypeT, ClassDeclT, FieldT, MethodT>;
	
	/**
	* Reference to the {@link ModelBuilder}, only until we link {@link TypeInfo}s all together,
	* because we don't want to keep {@link ModelBuilder} too long.
	*/
	@:protected private var builder : com.sun.xml.internal.bind.v2.model.impl.ModelBuilder<TypeT, ClassDeclT, FieldT, MethodT>;
	
	@:overload @:protected private function new(builder : com.sun.xml.internal.bind.v2.model.impl.ModelBuilder<TypeT, ClassDeclT, FieldT, MethodT>, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : Void;
	
	@:overload @:public public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload @:protected @:final private function nav() : com.sun.xml.internal.bind.v2.model.nav.Navigator<TypeT, ClassDeclT, FieldT, MethodT>;
	
	@:overload @:protected @:final private function reader() : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<TypeT, ClassDeclT, FieldT, MethodT>;
	
	/**
	* Parses an {@link XmlRootElement} annotation on a class
	* and determine the element name.
	*
	* @return null
	*      if none was found.
	*/
	@:overload @:protected @:final private function parseElementName(clazz : ClassDeclT) : javax.xml.namespace.QName;
	
	@:overload @:protected @:final private function parseTypeName(clazz : ClassDeclT) : javax.xml.namespace.QName;
	
	/**
	* Parses a (potentially-null) {@link XmlType} annotation on a class
	* and determine the actual value.
	*
	* @param clazz
	*      The class on which the XmlType annotation is checked.
	* @param t
	*      The {@link XmlType} annotation on the clazz. This value
	*      is taken as a parameter to improve the performance for the case where
	*      't' is pre-computed.
	*/
	@:overload @:protected @:final private function parseTypeName(clazz : ClassDeclT, t : javax.xml.bind.annotation.XmlType) : javax.xml.namespace.QName;
	
	/**
	* True if this type is a valid target from a property annotated with {@link XmlIDREF}.
	*/
	@:overload @:public @:public @:public override public function canBeReferencedByIDREF() : Bool;
	
	/**
	* Gets the location object that this object points to.
	*
	* This operation could be inefficient and costly.
	*/
	@:overload @:public @:public @:public override public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	/**
	* Gets the underlying Java type that object represents.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public @:public @:public @:public override public function getType() : Dynamic;
	
	
}

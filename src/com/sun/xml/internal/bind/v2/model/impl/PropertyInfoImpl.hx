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
@:internal extern class PropertyInfoImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.core.PropertyInfo<T, C> implements com.sun.xml.internal.bind.v2.model.annotation.Locatable implements java.lang.Comparable<com.sun.xml.internal.bind.v2.model.impl.PropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>>
{
	/**
	* Object that reads annotations.
	*/
	@:protected @:final private var seed(default, null) : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>;
	
	@:overload @:protected private function new(parent : com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>, spi : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>) : Void;
	
	@:overload @:public public function parent() : com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>;
	
	@:overload @:protected @:final private function nav() : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, F, M>;
	
	@:overload @:protected @:final private function reader() : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<T, C, F, M>;
	
	@:overload @:public public function getRawType() : T;
	
	@:overload @:public public function getIndividualType() : T;
	
	@:overload @:public @:final public function getName() : String;
	
	/**
	* This is the default implementation of the getAdapter method
	* defined on many of the {@link PropertyInfo}-derived classes.
	*/
	@:overload @:public public function getAdapter() : com.sun.xml.internal.bind.v2.model.core.Adapter<T, C>;
	
	@:overload @:public @:final public function displayName() : String;
	
	@:overload @:public @:final public function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload @:public @:final public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload @:public @:final public function inlineBinaryData() : Bool;
	
	@:overload @:public @:final public function getSchemaType() : javax.xml.namespace.QName;
	
	@:overload @:public @:final public function isCollection() : Bool;
	
	/**
	* Called after all the {@link TypeInfo}s are collected into the governing {@link TypeInfoSet}.
	*
	* Derived class can do additional actions to complete the model.
	*/
	@:overload @:protected private function link() : Void;
	
	/**
	* A {@link PropertyInfoImpl} is always referenced by its enclosing class,
	* so return that as the upstream.
	*/
	@:overload @:public public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload @:public public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	/**
	* Computes the tag name from a {@link XmlElement} by taking the defaulting into account.
	*/
	@:overload @:protected @:final private function calcXmlName(e : javax.xml.bind.annotation.XmlElement) : javax.xml.namespace.QName;
	
	/**
	* Computes the tag name from a {@link XmlElementWrapper} by taking the defaulting into account.
	*/
	@:overload @:protected @:final private function calcXmlName(e : javax.xml.bind.annotation.XmlElementWrapper) : javax.xml.namespace.QName;
	
	@:overload @:public public function compareTo(that : com.sun.xml.internal.bind.v2.model.impl.PropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>) : Int;
	
	@:overload @:public @:final public function readAnnotation<A : java.lang.annotation.Annotation>(annotationType : Class<A>) : A;
	
	@:overload @:public @:final public function hasAnnotation(annotationType : Class<java.lang.annotation.Annotation>) : Bool;
	
	/**
	* Gets the kind of this proeprty.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
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
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload @:public public function compareTo(o : T) : Int;
	
	
}

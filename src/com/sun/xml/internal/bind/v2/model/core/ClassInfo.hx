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
extern interface ClassInfo<T, C> extends com.sun.xml.internal.bind.v2.model.core.MaybeElement<T, C>
{
	/**
	* Obtains the information about the base class.
	*
	* @return null
	*      if this info extends from {@link Object}.
	*/
	@:overload public function getBaseClass() : ClassInfo<T, C>;
	
	/**
	* Gets the declaration this object is wrapping.
	*/
	@:overload public function getClazz() : C;
	
	/**
	* Gets the fully-qualified name of the class.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns all the properties newly declared in this class.
	*
	* <p>
	* This excludes properties defined in the super class.
	*
	* <p>
	* If the properties are {@link #isOrdered() ordered},
	* it will be returned in the order that appear in XML.
	* Otherwise it will be returned in no particular order.
	*
	* <p>
	* Properties marked with {@link XmlTransient} will not show up
	* in this list. As far as JAXB is concerned, they are considered
	* non-existent.
	*
	* @return
	*      always non-null, but can be empty.
	*/
	@:overload public function getProperties() : java.util.List<com.sun.xml.internal.bind.v2.model.core.PropertyInfo<T, C>>;
	
	/**
	* Returns true if this class or its ancestor has {@link XmlValue}
	* property.
	*/
	@:overload public function hasValueProperty() : Bool;
	
	/**
	* Gets the property that has the specified name.
	*
	* <p>
	* This is just a convenience method for:
	* <pre>
	* for( PropertyInfo p : getProperties() ) {
	*   if(p.getName().equals(name))
	*     return p;
	* }
	* return null;
	* </pre>
	*
	* @return null
	*      if the property was not found.
	*
	* @see PropertyInfo#getName()
	*/
	@:overload public function getProperty(name : String) : com.sun.xml.internal.bind.v2.model.core.PropertyInfo<T, C>;
	
	/**
	* If the class has properties, return true.  This is only
	* true if the Collection object returned by {@link #getProperties()}
	* is not empty.
	*/
	@:overload public function hasProperties() : Bool;
	
	/**
	* If this class is abstract and thus shall never be directly instanciated.
	*/
	@:overload public function isAbstract() : Bool;
	
	/**
	* Returns true if the properties of this class is ordered in XML.
	* False if it't not.
	*
	* <p>
	* In RELAX NG context, ordered properties mean &lt;group> and
	* unordered properties mean &lt;interleave>.
	*/
	@:overload public function isOrdered() : Bool;
	
	/**
	* If this class is marked as final and no further extension/restriction is allowed.
	*/
	@:overload public function isFinal() : Bool;
	
	/**
	* True if there's a known sub-type of this class in {@link TypeInfoSet}.
	*/
	@:overload public function hasSubClasses() : Bool;
	
	/**
	* Returns true if this bean class has an attribute wildcard.
	*
	* <p>
	* This is true if the class declares an attribute wildcard,
	* or it is inherited from its super classes.
	*
	* @see #inheritsAttributeWildcard()
	*/
	@:overload public function hasAttributeWildcard() : Bool;
	
	/**
	* Returns true iff this class inherits a wildcard attribute
	* from its ancestor classes.
	*/
	@:overload public function inheritsAttributeWildcard() : Bool;
	
	/**
	* Returns true iff this class declares a wildcard attribute.
	*/
	@:overload public function declaresAttributeWildcard() : Bool;
	
	
}

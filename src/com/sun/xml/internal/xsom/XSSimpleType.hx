package com.sun.xml.internal.xsom;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface XSSimpleType extends com.sun.xml.internal.xsom.XSType extends com.sun.xml.internal.xsom.XSContentType
{
	/**
	* Gets the base type as XSSimpleType.
	*
	* Equivalent to
	* <code>
	* (XSSimpleType)getBaseType()
	* </code>
	* Since this is a simple type, we know that the base type
	* is also a simple type.
	*
	* The only exception is xs:anySimpleType, which has xs:anyType
	* as the base type.
	*
	* @return
	*      null if this is xs:anySimpleType. Otherwise non-null.
	*/
	@:overload public function getSimpleBaseType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	/**
	* Gets the variety of this simple type.
	*/
	@:overload public function getVariety() : com.sun.xml.internal.xsom.XSVariety;
	
	/**
	* Gets the ancestor primitive {@link XSSimpleType} if
	* this type is {@link XSVariety#ATOMIC atomic}.
	*
	* @return
	*      null otherwise.
	*/
	@:overload public function getPrimitiveType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	/**
	* Returns true if this is a primitive built-in simple type
	* (that directly derives from xs:anySimpleType, by definition.)
	*/
	@:overload public function isPrimitive() : Bool;
	
	/**
	* Gets the nearest ancestor {@link XSListSimpleType} (including itself)
	* if the variety of this type is {@link XSVariety#LIST list}.
	*
	* @return otherwise return null
	*/
	@:overload public function getBaseListType() : com.sun.xml.internal.xsom.XSListSimpleType;
	
	/**
	* Gets the nearest ancestor {@link XSUnionSimpleType} (including itself)
	* if the variety of this type is {@link XSVariety#UNION union}.
	*
	* @return otherwise return null
	*/
	@:overload public function getBaseUnionType() : com.sun.xml.internal.xsom.XSUnionSimpleType;
	
	/**
	* Returns true if this type definition is marked as 'final'
	* with respect to the given {@link XSVariety}.
	*
	* @return
	*      true if the type is marked final.
	*/
	@:overload public function isFinal(v : com.sun.xml.internal.xsom.XSVariety) : Bool;
	
	/**
	* If this {@link XSSimpleType} is redefined by another simple type,
	* return that component.
	*
	* @return null
	*      if this component has not been redefined.
	*/
	@:overload public function getRedefinedBy() : com.sun.xml.internal.xsom.XSSimpleType;
	
	/**
	* Gets the effective facet object of the given name.
	*
	* <p>
	* For example, if a simple type "foo" is derived from
	* xs:string by restriction with the "maxLength" facet and
	* another simple type "bar" is derived from "foo" by
	* restriction with another "maxLength" facet, this method
	* will return the latter one, because that is the most
	* restrictive, effective facet.
	*
	* <p>
	* For those facets that can have multiple values
	* (pattern facets and enumeration facets), this method
	* will return only the first one.
	* TODO: allow clients to access all of them by some means.
	*
	* @return
	*      If this datatype has a facet of the given name,
	*      return that object. If the facet is not specified
	*      anywhere in its derivation chain, null will be returned.
	*/
	@:overload public function getFacet(name : String) : com.sun.xml.internal.xsom.XSFacet;
	
	/**
	* For multi-valued facets (enumeration and pattern), obtain all values.
	*
	* @see #getFacet(String)
	*
	* @return
	*      can be empty but never null.
	*/
	@:overload public function getFacets(name : String) : java.util.List<com.sun.xml.internal.xsom.XSFacet>;
	
	@:overload public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSSimpleTypeVisitor) : Void;
	
	@:overload public function apply<T>(_function : com.sun.xml.internal.xsom.visitor.XSSimpleTypeFunction<T>) : T;
	
	/** Returns true if <code>this instanceof XSRestrictionSimpleType</code>. */
	@:overload public function isRestriction() : Bool;
	
	/** Returns true if <code>this instanceof XSListSimpleType</code>. */
	@:overload public function isList() : Bool;
	
	/** Returns true if <code>this instanceof XSUnionSimpleType</code>. */
	@:overload public function isUnion() : Bool;
	
	@:overload public function asRestriction() : com.sun.xml.internal.xsom.XSRestrictionSimpleType;
	
	@:overload public function asList() : com.sun.xml.internal.xsom.XSListSimpleType;
	
	@:overload public function asUnion() : com.sun.xml.internal.xsom.XSUnionSimpleType;
	
	
}

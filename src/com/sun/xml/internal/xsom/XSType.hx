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
/**
* Base interface for {@link XSComplexType} and {@link XSSimpleType}.
*
* @author
*  Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
extern interface XSType extends com.sun.xml.internal.xsom.XSDeclaration
{
	/**
	* Returns the base type of this type.
	*
	* Note that if this type represents <tt>xs:anyType</tt>, this method returns itself.
	* This is awkward as an API, but it follows the schema specification.
	*
	* @return  always non-null.
	*/
	@:overload public function getBaseType() : com.sun.xml.internal.xsom.XSType;
	
	@:overload public function getDerivationMethod() : Int;
	
	/** Returns true if <code>this instanceof XSSimpleType</code>. */
	@:overload public function isSimpleType() : Bool;
	
	/** Returns true if <code>this instanceof XSComplexType</code>. */
	@:overload public function isComplexType() : Bool;
	
	/**
	* Lists up types that can substitute this type by using xsi:type.
	* Includes this type itself.
	* <p>
	* This method honors the block flag.
	*/
	@:overload public function listSubstitutables() : java.NativeArray<com.sun.xml.internal.xsom.XSType>;
	
	/**
	* If this {@link XSType} is redefined by another type,
	* return that component.
	*
	* @return null
	*      if this component has not been redefined.
	*/
	@:overload public function getRedefinedBy() : com.sun.xml.internal.xsom.XSType;
	
	/**
	* Returns the number of complex types that redefine this component.
	*
	* <p>
	* For example, if A is redefined by B and B is redefined by C,
	* A.getRedefinedCount()==2, B.getRedefinedCount()==1, and
	* C.getRedefinedCount()==0.
	*/
	@:overload public function getRedefinedCount() : Int;
	
	/** Casts this object to XSSimpleType if possible, otherwise returns null. */
	@:overload public function asSimpleType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	/** Casts this object to XSComplexType if possible, otherwise returns null. */
	@:overload public function asComplexType() : com.sun.xml.internal.xsom.XSComplexType;
	
	/**
	* Returns true if this type is derived from the specified type.
	*
	* <p>
	* Note that <tt>t.isDerivedFrom(t)</tt> returns true.
	*/
	@:overload public function isDerivedFrom(t : com.sun.xml.internal.xsom.XSType) : Bool;
	
	
}

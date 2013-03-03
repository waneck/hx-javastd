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
extern interface XSComplexType extends com.sun.xml.internal.xsom.XSType extends com.sun.xml.internal.xsom.XSAttContainer
{
	/**
	* Checks if this complex type is declared as an abstract type.
	*/
	@:overload public function isAbstract() : Bool;
	
	@:overload public function isFinal(derivationMethod : Int) : Bool;
	
	/**
	* Roughly corresponds to the block attribute. But see the spec
	* for gory detail.
	*/
	@:overload public function isSubstitutionProhibited(method : Int) : Bool;
	
	/**
	* Gets the scope of this complex type.
	* This is not a property defined in the schema spec.
	*
	* @return
	*      null if this complex type is global. Otherwise
	*      return the element declaration that contains this anonymous
	*      complex type.
	*/
	@:overload public function getScope() : com.sun.xml.internal.xsom.XSElementDecl;
	
	/**
	* The content of this complex type.
	*
	* @return
	*      always non-null.
	*/
	@:overload public function getContentType() : com.sun.xml.internal.xsom.XSContentType;
	
	/**
	* Gets the explicit content of a complex type with a complex content
	* that was derived by extension.
	*
	* <p>
	* Informally, the "explicit content" is the portion of the
	* content model added in this derivation. IOW, it's a delta between
	* the base complex type and this complex type.
	*
	* <p>
	* For example, when a complex type T2 derives fom T1, then:
	* <pre>
	* content type of T2 = SEQUENCE( content type of T1, explicit content of T2 )
	* </pre>
	*
	* @return
	*      If this complex type is derived by restriction or has a
	*      simple content, this method returns null.
	*      IOW, this method only works for a complex type with
	*      a complex content derived by extension from another complex type.
	*/
	@:overload public function getExplicitContent() : com.sun.xml.internal.xsom.XSContentType;
	
	@:overload public function isMixed() : Bool;
	
	/**
	* If this {@link XSComplexType} is redefined by another complex type,
	* return that component.
	*
	* @return null
	*      if this component has not been redefined.
	*/
	@:overload @:public public function getRedefinedBy() : com.sun.xml.internal.xsom.XSComplexType;
	
	/**
	* Returns a list of direct subtypes of this complex type. If the type is not subtyped, returns empty list.
	* Doesn't return null.
	* Note that the complex type may be extended outside of the scope of the schemaset known to XSOM.
	* @return
	*/
	@:overload @:public public function getSubtypes() : java.util.List<com.sun.xml.internal.xsom.XSComplexType>;
	
	/**
	* Returns a list of element declarations of this type.
	* @return
	*/
	@:overload @:public public function getElementDecls() : java.util.List<com.sun.xml.internal.xsom.XSElementDecl>;
	
	
}

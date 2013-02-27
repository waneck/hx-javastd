package com.sun.tools.internal.xjc.reader.xmlschema.ct;
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
@:internal extern class AbstractExtendedComplexTypeBuilder extends com.sun.tools.internal.xjc.reader.xmlschema.ct.CTBuilder
{
	/**
	* Map from {@link XSComplexType} to {@link NameClass}[2] that
	* represents the names used in its child elements [0] and
	* attributes [1].
	*/
	private var characteristicNameClasses(default, null) : java.util.Map<com.sun.xml.internal.xsom.XSComplexType, java.NativeArray<com.sun.xml.internal.rngom.nc.NameClass>>;
	
	/**
	* Computes a name class that represents everything in a given content model.
	*/
	private var contentModelNameClassBuilder(default, null) : com.sun.xml.internal.xsom.visitor.XSTermFunction<com.sun.xml.internal.rngom.nc.NameClass>;
	
	/**
	* Checks if the particles/attributes defined in the type parameter
	* collides with the name classes of anc/enc.
	*
	* @return true if there's a collision.
	*/
	@:overload private function checkCollision(anc : com.sun.xml.internal.rngom.nc.NameClass, enc : com.sun.xml.internal.rngom.nc.NameClass, type : com.sun.xml.internal.xsom.XSComplexType) : Bool;
	
	/**
	* Looks for the derivation chain t_1 > t_2 > ... > t
	* and find t_i such that t_i derives by restriction but
	* for every j>i, t_j derives by extension.
	*
	* @return null
	*      If there's no such t_i or if t_i is any type.
	*/
	@:overload private function getLastRestrictedType(t : com.sun.xml.internal.xsom.XSComplexType) : com.sun.xml.internal.xsom.XSComplexType;
	
	/**
	* Checks if this new extension is safe.
	*
	* UGLY.
	* <p>
	* If you have ctA extending ctB and ctB restricting ctC, our
	* Java classes will look like CtAImpl extending CtBImpl
	* extending CtCImpl.
	*
	* <p>
	* Since a derived class unmarshaller uses the base class unmarshaller,
	* this could potentially result in incorrect unmarshalling.
	* We used to just reject such a case, but then we found that
	* there are schemas that are using it.
	*
	* <p>
	* One generalized observation that we reached is that if the extension
	* is only adding new elements/attributes which has never been used
	* in any of its base class (IOW, if none of the particle / attribute use /
	* attribute wildcard can match the name of newly added elements/attributes)
	* then it is safe to add them.
	*
	* <p>
	* This function checks if the derivation chain to this type is
	* not using restriction, and if it is, then checks if it is safe
	* according to the above condition.
	*
	* @return false
	*      If this complex type needs to be rejected.
	*/
	@:overload private function checkIfExtensionSafe(baseType : com.sun.xml.internal.xsom.XSComplexType, thisType : com.sun.xml.internal.xsom.XSComplexType) : Bool;
	
	
}

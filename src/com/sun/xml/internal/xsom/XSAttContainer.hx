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
extern interface XSAttContainer extends com.sun.xml.internal.xsom.XSDeclaration
{
	/**
	* Common aspect of {@link XSComplexType} and {@link XSAttGroupDecl}
	* as the container of attribute uses/attribute groups.
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload public function getAttributeWildcard() : com.sun.xml.internal.xsom.XSWildcard;
	
	/**
	* Looks for the attribute use with the specified name from
	* all the attribute uses that are directly/indirectly
	* referenced from this component.
	*
	* <p>
	* This is the exact implementation of the "attribute use"
	* schema component.
	*/
	@:overload public function getAttributeUse(nsURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeUse;
	
	/**
	* Lists all the attribute uses that are directly/indirectly
	* referenced from this component.
	*
	* <p>
	* This is the exact implementation of the "attribute use"
	* schema component.
	*/
	@:overload public function iterateAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	/**
	* Gets all the attribute uses.
	*/
	@:overload public function getAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	/**
	* Looks for the attribute use with the specified name from
	* the attribute uses which are declared in this complex type.
	*
	* This does not include att uses declared in att groups that
	* are referenced from this complex type, nor does include
	* att uses declared in base types.
	*/
	@:overload public function getDeclaredAttributeUse(nsURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeUse;
	
	/**
	* Lists all the attribute uses that are declared in this complex type.
	*/
	@:overload public function iterateDeclaredAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	/**
	* Lists all the attribute uses that are declared in this complex type.
	*/
	@:overload public function getDeclaredAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	/**
	* Iterates all AttGroups which are directly referenced from
	* this component.
	*/
	@:overload public function iterateAttGroups() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	/**
	* Iterates all AttGroups which are directly referenced from
	* this component.
	*/
	@:overload public function getAttGroups() : java.util.Collection<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	
}

package com.sun.xml.internal.xsom.impl;
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
extern class AttributesHolder extends com.sun.xml.internal.xsom.impl.DeclarationImpl
{
	@:overload private function new(_parent : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, _annon : com.sun.xml.internal.xsom.impl.AnnotationImpl, loc : org.xml.sax.Locator, _fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl, _name : String, _anonymous : Bool) : Void;
	
	/** set the local wildcard. */
	@:overload @:abstract public function setWildcard(wc : com.sun.xml.internal.xsom.impl.WildcardImpl) : Void;
	
	/**
	* Local attribute use.
	* Use linked hash map to guarantee the iteration order, and make it close to
	* what was in the schema document.
	*/
	private var attributes(default, null) : java.util.Map<com.sun.xml.internal.xsom.impl.UName, com.sun.xml.internal.xsom.impl.AttributeUseImpl>;
	
	@:overload public function addAttributeUse(name : com.sun.xml.internal.xsom.impl.UName, a : com.sun.xml.internal.xsom.impl.AttributeUseImpl) : Void;
	
	/** prohibited attributes. */
	private var prohibitedAtts(default, null) : java.util.Set<com.sun.xml.internal.xsom.impl.UName>;
	
	@:overload public function addProhibitedAttribute(name : com.sun.xml.internal.xsom.impl.UName) : Void;
	
	/**
	* Returns the attribute uses by looking at attribute groups and etc.
	* Searching for the base type is done in {@link ComplexTypeImpl}.
	*/
	@:overload public function getAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload public function iterateAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttributeUse>;
	
	@:overload public function getDeclaredAttributeUse(nsURI : String, localName : String) : com.sun.xml.internal.xsom.XSAttributeUse;
	
	@:overload public function iterateDeclaredAttributeUses() : java.util.Iterator<com.sun.xml.internal.xsom.impl.AttributeUseImpl>;
	
	@:overload public function getDeclaredAttributeUses() : java.util.Collection<com.sun.xml.internal.xsom.impl.AttributeUseImpl>;
	
	/** {@link Ref.AttGroup}s that are directly refered from this. */
	private var attGroups(default, null) : java.util.Set<com.sun.xml.internal.xsom.impl.Ref.Ref_AttGroup>;
	
	@:overload public function addAttGroup(a : com.sun.xml.internal.xsom.impl.Ref.Ref_AttGroup) : Void;
	
	@:overload public function iterateAttGroups() : java.util.Iterator<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	@:overload public function getAttGroups() : java.util.Set<com.sun.xml.internal.xsom.XSAttGroupDecl>;
	
	
}

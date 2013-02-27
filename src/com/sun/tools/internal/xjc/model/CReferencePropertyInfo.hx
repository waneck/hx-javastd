package com.sun.tools.internal.xjc.model;
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
extern class CReferencePropertyInfo extends com.sun.tools.internal.xjc.model.CPropertyInfo implements com.sun.xml.internal.bind.v2.model.core.ReferencePropertyInfo<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>
{
	@:overload public function new(name : String, collection : Bool, required : Bool, isMixed : Bool, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations, locator : org.xml.sax.Locator, dummy : Bool, content : Bool, isMixedExtended : Bool) : Void;
	
	@:overload override public function ref() : java.util.Set<com.sun.tools.internal.xjc.model.CTypeInfo>;
	
	@:overload public function getElements() : java.util.Set<com.sun.tools.internal.xjc.model.CElement>;
	
	@:overload public function isMixed() : Bool;
	
	@:overload public function isDummy() : Bool;
	
	@:overload public function isContent() : Bool;
	
	@:overload public function isMixedExtendedCust() : Bool;
	
	/**
	* We'll never use a wrapper element in XJC. Always return null.
	*/
	@:overload public function getXmlName() : javax.xml.namespace.QName;
	
	/**
	* Reference properties refer to elements, and none of the Java primitive type
	* maps to an element. Thus a reference property is always unboxable.
	*/
	@:overload override public function isUnboxable() : Bool;
	
	@:overload override public function isOptionalPrimitive() : Bool;
	
	@:overload override public function accept<V>(visitor : com.sun.tools.internal.xjc.model.CPropertyVisitor<V>) : V;
	
	@:overload override public function getAdapter() : com.sun.tools.internal.xjc.model.CAdapter;
	
	@:overload @:final override public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	/**
	* A reference property can never be ID/IDREF because they always point to
	* other element classes.
	*/
	@:overload override public function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload public function getWildcard() : com.sun.xml.internal.bind.v2.model.core.WildcardMode;
	
	@:overload public function setWildcard(mode : com.sun.xml.internal.bind.v2.model.core.WildcardMode) : Void;
	
	@:overload public function getDOMHandler() : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload override public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload public function isCollectionNillable() : Bool;
	
	@:overload public function isCollectionRequired() : Bool;
	
	@:overload override public function getSchemaType() : javax.xml.namespace.QName;
	
	@:overload public function isRequired() : Bool;
	
	@:overload override public function collectElementNames(table : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.xjc.model.CPropertyInfo>) : javax.xml.namespace.QName;
	
	
}

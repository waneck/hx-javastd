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
extern class CElementPropertyInfo extends com.sun.tools.internal.xjc.model.CPropertyInfo implements com.sun.xml.internal.bind.v2.model.core.ElementPropertyInfo<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>
{
	@:overload public function new(name : String, collection : com.sun.tools.internal.xjc.model.CElementPropertyInfo.CElementPropertyInfo_CollectionMode, id : com.sun.xml.internal.bind.v2.model.core.ID, expectedMimeType : javax.activation.MimeType, source : com.sun.xml.internal.xsom.XSComponent, customizations : com.sun.tools.internal.xjc.model.CCustomizations, locator : org.xml.sax.Locator, required : Bool) : Void;
	
	@:overload public function id() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	@:overload public function getTypes() : java.util.List<com.sun.tools.internal.xjc.model.CTypeRef>;
	
	@:overload public function ref() : java.util.List<com.sun.tools.internal.xjc.model.CNonElement>;
	
	@:overload public function getSchemaType() : javax.xml.namespace.QName;
	
	/**
	* XJC never uses the wrapper element. Always return null.
	*/
	@:overload public function getXmlName() : javax.xml.namespace.QName;
	
	@:overload public function isCollectionRequired() : Bool;
	
	@:overload public function isCollectionNillable() : Bool;
	
	@:overload public function isRequired() : Bool;
	
	@:overload public function isValueList() : Bool;
	
	@:overload public function isUnboxable() : Bool;
	
	@:overload public function isOptionalPrimitive() : Bool;
	
	@:overload public function accept<V>(visitor : com.sun.tools.internal.xjc.model.CPropertyVisitor<V>) : V;
	
	@:overload public function getAdapter() : com.sun.tools.internal.xjc.model.CAdapter;
	
	@:overload public function setAdapter(a : com.sun.tools.internal.xjc.model.CAdapter) : Void;
	
	@:overload @:final public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	@:overload public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload public function collectElementNames(table : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.xjc.model.CPropertyInfo>) : javax.xml.namespace.QName;
	
	
}
@:native('com$sun$tools$internal$xjc$model$CElementPropertyInfo$CollectionMode') extern enum CElementPropertyInfo_CollectionMode
{
	NOT_REPEATED;
	REPEATED_ELEMENT;
	REPEATED_VALUE;
	
}


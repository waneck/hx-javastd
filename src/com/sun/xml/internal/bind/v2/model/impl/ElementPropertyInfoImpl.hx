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
@:internal extern class ElementPropertyInfoImpl<TypeT, ClassDeclT, FieldT, MethodT> extends com.sun.xml.internal.bind.v2.model.impl.ERPropertyInfoImpl<TypeT, ClassDeclT, FieldT, MethodT> implements com.sun.xml.internal.bind.v2.model.core.ElementPropertyInfo<TypeT, ClassDeclT>
{
	@:overload public function getTypes() : java.util.List<com.sun.xml.internal.bind.v2.model.impl.TypeRefImpl<TypeT, ClassDeclT>>;
	
	/**
	* Used by {@link PropertyInfoImpl} to create new instances of {@link TypeRef}
	*/
	@:overload private function createTypeRef(name : javax.xml.namespace.QName, type : TypeT, isNillable : Bool, defaultValue : String) : com.sun.xml.internal.bind.v2.model.impl.TypeRefImpl<TypeT, ClassDeclT>;
	
	@:overload public function isValueList() : Bool;
	
	@:overload public function isRequired() : Bool;
	
	@:overload public function ref() : java.util.List<com.sun.xml.internal.bind.v2.model.core.TypeInfo<TypeT, ClassDeclT>>;
	
	@:overload @:final public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	@:overload override private function link() : Void;
	
	
}

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
extern class ArrayInfoImpl<TypeT, ClassDeclT, FieldT, MethodT> extends com.sun.xml.internal.bind.v2.model.impl.TypeInfoImpl<TypeT, ClassDeclT, FieldT, MethodT> implements com.sun.xml.internal.bind.v2.model.core.ArrayInfo<TypeT, ClassDeclT> implements com.sun.xml.internal.bind.v2.runtime.Location
{
	@:overload public function new(builder : com.sun.xml.internal.bind.v2.model.impl.ModelBuilder<TypeT, ClassDeclT, FieldT, MethodT>, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable, arrayType : TypeT) : Void;
	
	/**
	* Computes the type name of the array from that of the item type.
	*/
	@:overload public static function calcArrayTypeName(n : javax.xml.namespace.QName) : javax.xml.namespace.QName;
	
	@:overload public function getItemType() : com.sun.xml.internal.bind.v2.model.core.NonElement<TypeT, ClassDeclT>;
	
	@:overload public function getTypeName() : javax.xml.namespace.QName;
	
	@:overload public function isSimpleType() : Bool;
	
	@:overload override public function getType() : TypeT;
	
	/**
	* Leaf-type cannot be referenced from IDREF.
	*
	* @deprecated
	*      why are you calling a method whose return value is always known?
	*/
	@:overload @:final override public function canBeReferencedByIDREF() : Bool;
	
	@:overload override public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function toString() : String;
	
	
}

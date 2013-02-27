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
@:internal extern class EnumLeafInfoImpl<T, C, F, M> extends com.sun.xml.internal.bind.v2.model.impl.TypeInfoImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.core.EnumLeafInfo<T, C> implements com.sun.xml.internal.bind.v2.model.core.Element<T, C> implements java.lang.Iterable<com.sun.xml.internal.bind.v2.model.impl.EnumConstantImpl<T, C, F, M>>
{
	/**
	* Used to recognize token vs string.
	*/
	private var tokenStringType : Bool;
	
	/**
	* @param clazz
	* @param type
	*      clazz and type should both point to the enum class
	*      that this {@link EnumLeafInfo} represents.
	*      Because of the type parameterization we have to take them separately.
	*/
	@:overload public function new(builder : com.sun.xml.internal.bind.v2.model.impl.ModelBuilder<T, C, F, M>, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable, clazz : C, type : T) : Void;
	
	/**
	* Build {@link EnumConstant}s and discover/report any error in it.
	*/
	@:overload private function calcConstants() : Void;
	
	@:overload private function createEnumConstant(name : String, literal : String, constant : F, last : com.sun.xml.internal.bind.v2.model.impl.EnumConstantImpl<T, C, F, M>) : com.sun.xml.internal.bind.v2.model.impl.EnumConstantImpl<T, C, F, M>;
	
	@:overload override public function getType() : T;
	
	/**
	*
	* @return true if enum is restriction/extension from xs:token type, otherwise false
	*/
	@:overload public function isToken() : Bool;
	
	/**
	* Leaf-type cannot be referenced from IDREF.
	*
	* @deprecated
	*      why are you calling a method whose return value is always known?
	*/
	@:overload @:final override public function canBeReferencedByIDREF() : Bool;
	
	@:overload public function getTypeName() : javax.xml.namespace.QName;
	
	@:overload public function getClazz() : C;
	
	@:overload public function getBaseType() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	@:overload public function isSimpleType() : Bool;
	
	@:overload override public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function getConstants() : java.lang.Iterable<com.sun.xml.internal.bind.v2.model.impl.EnumConstantImpl<T, C, F, M>>;
	
	@:overload override public function link() : Void;
	
	/**
	* No substitution.
	*
	* @deprecated if you are invoking this method directly, there's something wrong.
	*/
	@:overload public function getSubstitutionHead() : com.sun.xml.internal.bind.v2.model.core.Element<T, C>;
	
	@:overload public function getElementName() : javax.xml.namespace.QName;
	
	@:overload public function isElement() : Bool;
	
	@:overload public function asElement() : com.sun.xml.internal.bind.v2.model.core.Element<T, C>;
	
	/**
	* When a bean binds to an element, it's always through {@link XmlRootElement},
	* so this method always return null.
	*
	* @deprecated
	*      you shouldn't be invoking this method on {@link ClassInfoImpl}.
	*/
	@:overload public function getScope() : com.sun.xml.internal.bind.v2.model.core.ClassInfo<T, C>;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.bind.v2.model.impl.EnumConstantImpl<T, C, F, M>>;
	
	
}

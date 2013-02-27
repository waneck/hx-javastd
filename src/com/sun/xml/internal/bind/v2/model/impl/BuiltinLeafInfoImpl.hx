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
extern class BuiltinLeafInfoImpl<TypeT, ClassDeclT> extends com.sun.xml.internal.bind.v2.model.impl.LeafInfoImpl<TypeT, ClassDeclT> implements com.sun.xml.internal.bind.v2.model.core.BuiltinLeafInfo<TypeT, ClassDeclT>
{
	@:overload private function new(type : TypeT, typeNames : java.NativeArray<javax.xml.namespace.QName>) : Void;
	
	/**
	* Returns all the type names recognized by this bean info.
	*
	* @return
	*      do not modify the returned array.
	*/
	@:overload @:final public function getTypeNames() : java.NativeArray<javax.xml.namespace.QName>;
	
	/**
	* @deprecated always return false at this level.
	*/
	@:overload @:final override public function isElement() : Bool;
	
	/**
	* @deprecated always return null at this level.
	*/
	@:overload @:final override public function getElementName() : javax.xml.namespace.QName;
	
	/**
	* @deprecated always return null at this level.
	*/
	@:overload @:final override public function asElement() : com.sun.xml.internal.bind.v2.model.core.Element<TypeT, ClassDeclT>;
	
	/**
	* Creates all the {@link BuiltinLeafInfoImpl}s as specified in the spec.
	*
	* {@link LeafInfo}s are all defined by the spec.
	*/
	@:overload public static function createLeaves<TypeT, ClassDeclT>(nav : com.sun.xml.internal.bind.v2.model.nav.Navigator<TypeT, ClassDeclT, Dynamic, Dynamic>) : java.util.Map<TypeT, BuiltinLeafInfoImpl<TypeT, ClassDeclT>>;
	
	
}

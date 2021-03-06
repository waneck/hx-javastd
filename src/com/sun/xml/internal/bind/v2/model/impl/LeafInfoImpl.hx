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
@:internal extern class LeafInfoImpl<TypeT, ClassDeclT> implements com.sun.xml.internal.bind.v2.model.core.LeafInfo<TypeT, ClassDeclT> implements com.sun.xml.internal.bind.v2.runtime.Location
{
	@:overload @:protected private function new(type : TypeT, typeName : javax.xml.namespace.QName) : Void;
	
	/**
	* A reference to the representation of the type.
	*/
	@:overload @:public public function getType() : TypeT;
	
	/**
	* Leaf-type cannot be referenced from IDREF.
	*
	* @deprecated
	*      why are you calling a method whose return value is always known?
	*/
	@:overload @:public @:final public function canBeReferencedByIDREF() : Bool;
	
	@:overload @:public public function getTypeName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload @:public public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:public public function isSimpleType() : Bool;
	
	@:overload @:public public function toString() : String;
	
	/**
	* If the class is bound to an element, return true.
	*
	* <p>
	* Note that when this is true, the class is bound to both an element
	* and a type.
	*/
	@:overload @:public public function isElement() : Bool;
	
	/**
	* Gets the element name of the class, if the class is bound
	* to an element.
	*
	* @return
	*      non-null iff {@link #isElement()}.
	*/
	@:overload @:public public function getElementName() : javax.xml.namespace.QName;
	
	/**
	* Returns the {@link Element} aspect of this {@link ClassInfo}.
	*
	* @return
	*      null if {@link #isElement()}==false, non-null if {@link #isElement()}==true.
	*/
	@:overload @:public public function asElement() : com.sun.xml.internal.bind.v2.model.core.Element<Dynamic, Dynamic>;
	
	
}

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
@:internal extern class FieldPropertySeed<TypeT, ClassDeclT, FieldT, MethodT> implements com.sun.xml.internal.bind.v2.model.impl.PropertySeed<TypeT, ClassDeclT, FieldT, MethodT>
{
	/**
	* {@link PropertyInfo} implementation backed by a field.
	*/
	@:protected @:final private var field(default, null) : FieldT;
	
	@:overload @:public public function readAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>) : A;
	
	@:overload @:public public function hasAnnotation(annotationType : Class<java.lang.annotation.Annotation>) : Bool;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getRawType() : TypeT;
	
	/**
	* Use the enclosing class as the upsream {@link Location}.
	*/
	@:overload @:public public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload @:public public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	
}

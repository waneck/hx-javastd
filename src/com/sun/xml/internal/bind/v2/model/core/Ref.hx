package com.sun.xml.internal.bind.v2.model.core;
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
extern class Ref<T, C>
{
	/**
	* The type being referenced.
	* <p>
	* If the type is adapted, this field is the same as the adapter's default type.
	*/
	@:public @:final public var type(default, null) : T;
	
	/**
	* If the reference has an adapter, non-null.
	*/
	@:public @:final public var adapter(default, null) : com.sun.xml.internal.bind.v2.model.core.Adapter<T, C>;
	
	/**
	* If the {@link #type} is an array and it is a value list,
	* true.
	*/
	@:public @:final public var valueList(default, null) : Bool;
	
	@:overload @:public public function new(type : T) : Void;
	
	@:overload @:public public function new(type : T, adapter : com.sun.xml.internal.bind.v2.model.core.Adapter<T, C>, valueList : Bool) : Void;
	
	@:overload @:public public function new(builder : com.sun.xml.internal.bind.v2.model.impl.ModelBuilder<T, C, Dynamic, Dynamic>, type : T, xjta : javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter, xl : javax.xml.bind.annotation.XmlList) : Void;
	
	@:overload @:public public function new(reader : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<T, C, Dynamic, Dynamic>, nav : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, Dynamic, Dynamic>, type : T, xjta : javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter, xl : javax.xml.bind.annotation.XmlList) : Void;
	
	
}

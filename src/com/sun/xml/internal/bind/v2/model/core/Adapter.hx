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
extern class Adapter<TypeT, ClassDeclT>
{
	/**
	* The adapter class. Always non-null.
	*
	* A class that derives from {@link javax.xml.bind.annotation.adapters.XmlAdapter}.
	*/
	@:public @:final public var adapterType(default, null) : ClassDeclT;
	
	/**
	* The type that the JAXB can handle natively.
	* The <tt>Default</tt> parameter of <tt>XmlAdapter&lt;Default,Custom></tt>.
	*
	* Always non-null.
	*/
	@:public @:final public var defaultType(default, null) : TypeT;
	
	/**
	* The type that is stored in memory.
	* The <tt>Custom</tt> parameter of <tt>XmlAdapter&lt;Default,Custom></tt>.
	*/
	@:public @:final public var customType(default, null) : TypeT;
	
	@:overload @:public public function new(spec : javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter, reader : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<TypeT, ClassDeclT, Dynamic, Dynamic>, nav : com.sun.xml.internal.bind.v2.model.nav.Navigator<TypeT, ClassDeclT, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function new(adapterType : ClassDeclT, nav : com.sun.xml.internal.bind.v2.model.nav.Navigator<TypeT, ClassDeclT, Dynamic, Dynamic>) : Void;
	
	
}

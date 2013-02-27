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
@:internal extern class RuntimeEnumLeafInfoImpl<T, B> extends com.sun.xml.internal.bind.v2.model.impl.EnumLeafInfoImpl<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method> implements com.sun.xml.internal.bind.v2.model.runtime.RuntimeEnumLeafInfo implements com.sun.xml.internal.bind.v2.runtime.Transducer<T>
{
	/**
	* @author Kohsuke Kawaguchi
	*/
	@:overload public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<T>;
	
	@:overload public function createEnumConstant(name : String, literal : String, constant : java.lang.reflect.Field, last : com.sun.xml.internal.bind.v2.model.impl.EnumConstantImpl<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>) : com.sun.xml.internal.bind.v2.model.impl.RuntimeEnumConstantImpl;
	
	@:overload public function getTypeNames() : java.NativeArray<javax.xml.namespace.QName>;
	
	@:overload public function isDefault() : Bool;
	
	@:overload override public function getClazz() : Class<Dynamic>;
	
	@:overload public function useNamespace() : Bool;
	
	@:overload public function declareNamespace(t : T, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload public function print(t : T) : java.lang.CharSequence;
	
	@:overload public function parse(lexical : java.lang.CharSequence) : T;
	
	@:overload public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, t : T, fieldName : String) : Void;
	
	@:overload public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : T, fieldName : String) : Void;
	
	@:overload public function getTypeName(instance : T) : javax.xml.namespace.QName;
	
	
}

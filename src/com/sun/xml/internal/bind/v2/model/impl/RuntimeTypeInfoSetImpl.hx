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
@:internal extern class RuntimeTypeInfoSetImpl extends com.sun.xml.internal.bind.v2.model.impl.TypeInfoSetImpl<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method> implements com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfoSet
{
	/**
	* {@link TypeInfoSet} specialized for runtime.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:public public function new(reader : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>) : Void;
	
	@:overload @:protected override private function createAnyType() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload @:public override public function getNavigator() : com.sun.xml.internal.bind.v2.model.nav.ReflectionNavigator;
	
	@:overload @:public public function getTypeInfo(type : java.lang.reflect.Type) : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload @:public override public function getAnyTypeInfo() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload @:public public function getClassInfo(clazz : Class<Dynamic>) : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload @:public override public function beans() : java.util.Map<Class<Dynamic>, com.sun.xml.internal.bind.v2.model.impl.RuntimeClassInfoImpl>;
	
	@:overload @:public override public function builtins() : java.util.Map<java.lang.reflect.Type, com.sun.xml.internal.bind.v2.model.impl.RuntimeBuiltinLeafInfoImpl<Dynamic>>;
	
	@:overload @:public override public function enums() : java.util.Map<Class<Dynamic>, com.sun.xml.internal.bind.v2.model.impl.RuntimeEnumLeafInfoImpl<Dynamic, Dynamic>>;
	
	@:overload @:public override public function arrays() : java.util.Map<Class<Dynamic>, com.sun.xml.internal.bind.v2.model.impl.RuntimeArrayInfoImpl>;
	
	@:overload @:public public function getElementInfo(scope : Class<Dynamic>, name : javax.xml.namespace.QName) : com.sun.xml.internal.bind.v2.model.impl.RuntimeElementInfoImpl;
	
	@:overload @:public public function getElementMappings(scope : Class<Dynamic>) : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.bind.v2.model.impl.RuntimeElementInfoImpl>;
	
	@:overload @:public override public function getAllElements() : java.lang.Iterable<com.sun.xml.internal.bind.v2.model.impl.RuntimeElementInfoImpl>;
	
	
}

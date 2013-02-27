package com.sun.xml.internal.bind.v2.model.runtime;
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
extern interface RuntimeTypeInfoSet extends com.sun.xml.internal.bind.v2.model.core.TypeInfoSet<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>
{
	/**
	* {@link TypeInfoSet} refined for runtime.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload public function arrays() : java.util.Map<Class<Dynamic>, com.sun.xml.internal.bind.v2.model.runtime.RuntimeArrayInfo>;
	
	@:overload public function beans() : java.util.Map<Class<Dynamic>, com.sun.xml.internal.bind.v2.model.runtime.RuntimeClassInfo>;
	
	@:overload public function builtins() : java.util.Map<java.lang.reflect.Type, com.sun.xml.internal.bind.v2.model.runtime.RuntimeBuiltinLeafInfo>;
	
	@:overload public function enums() : java.util.Map<Class<Dynamic>, com.sun.xml.internal.bind.v2.model.runtime.RuntimeEnumLeafInfo>;
	
	@:overload public function getTypeInfo(type : java.lang.reflect.Type) : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload public function getAnyTypeInfo() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload public function getClassInfo(type : Class<Dynamic>) : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload public function getElementInfo(scope : Class<Dynamic>, name : javax.xml.namespace.QName) : com.sun.xml.internal.bind.v2.model.runtime.RuntimeElementInfo;
	
	@:overload public function getElementMappings(scope : Class<Dynamic>) : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.bind.v2.model.runtime.RuntimeElementInfo>;
	
	@:overload public function getAllElements() : java.lang.Iterable<com.sun.xml.internal.bind.v2.model.runtime.RuntimeElementInfo>;
	
	@:overload public function getNavigator() : com.sun.xml.internal.bind.v2.model.nav.ReflectionNavigator;
	
	
}

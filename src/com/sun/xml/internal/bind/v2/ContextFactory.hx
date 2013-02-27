package com.sun.xml.internal.bind.v2;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ContextFactory
{
	/**
	* The API will invoke this method via reflection
	*/
	@:overload public static function createContext(classes : java.NativeArray<Class<Dynamic>>, properties : java.util.Map<String, Dynamic>) : javax.xml.bind.JAXBContext;
	
	@:overload public static function createContext(classes : java.NativeArray<Class<Dynamic>>, typeRefs : java.util.Collection<com.sun.xml.internal.bind.api.TypeReference>, subclassReplacements : java.util.Map<Class<Dynamic>, Class<Dynamic>>, defaultNsUri : String, c14nSupport : Bool, ar : com.sun.xml.internal.bind.v2.model.annotation.RuntimeAnnotationReader, xmlAccessorFactorySupport : Bool, allNillable : Bool, retainPropertyInfo : Bool) : com.sun.xml.internal.bind.api.JAXBRIContext;
	
	@:overload public static function createContext(classes : java.NativeArray<Class<Dynamic>>, typeRefs : java.util.Collection<com.sun.xml.internal.bind.api.TypeReference>, subclassReplacements : java.util.Map<Class<Dynamic>, Class<Dynamic>>, defaultNsUri : String, c14nSupport : Bool, ar : com.sun.xml.internal.bind.v2.model.annotation.RuntimeAnnotationReader, xmlAccessorFactorySupport : Bool, allNillable : Bool, retainPropertyInfo : Bool, improvedXsiTypeHandling : Bool) : com.sun.xml.internal.bind.api.JAXBRIContext;
	
	/**
	* The API will invoke this method via reflection.
	*/
	@:overload public static function createContext(contextPath : String, classLoader : java.lang.ClassLoader, properties : java.util.Map<String, Dynamic>) : javax.xml.bind.JAXBContext;
	
	public static var USE_JAXB_PROPERTIES(default, null) : String;
	
	
}
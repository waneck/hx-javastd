package com.sun.xml.internal.bind.v2;
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
extern class ClassFactory
{
	@:overload public static function cleanCache() : Void;
	
	/**
	* Creates a new instance of the class but throw exceptions without catching it.
	*/
	@:overload public static function create0<T>(clazz : Class<T>) : T;
	
	/**
	* The same as {@link #create0} but with an error handling to make
	* the instanciation error fatal.
	*/
	@:overload public static function create<T>(clazz : Class<T>) : T;
	
	/**
	*  Call a method in the factory class to get the object.
	*/
	@:overload public static function create(method : java.lang.reflect.Method) : Dynamic;
	
	/**
	* Infers the instanciable implementation class that can be assigned to the given field type.
	*
	* @return null
	*      if inference fails.
	*/
	@:overload public static function inferImplClass<T>(fieldType : Class<T>, knownImplClasses : java.NativeArray<Class<Dynamic>>) : Class<T>;
	
	
}

package com.sun.beans.finder;
/*
* Copyright (c) 2008, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class MethodFinder extends com.sun.beans.finder.AbstractFinder<java.lang.reflect.Method>
{
	/**
	* Finds public method (static or non-static)
	* that is accessible from public class.
	*
	* @param type  the class that can have method
	* @param name  the name of method to find
	* @param args  parameter types that is used to find method
	* @return object that represents found method
	* @throws NoSuchMethodException if method could not be found
	*                               or some methods are found
	*/
	@:overload public static function findMethod(type : Class<Dynamic>, name : String, args : java.NativeArray<Class<Dynamic>>) : java.lang.reflect.Method;
	
	/**
	* Finds public non-static method
	* that is accessible from public class.
	*
	* @param type  the class that can have method
	* @param name  the name of method to find
	* @param args  parameter types that is used to find method
	* @return object that represents found method
	* @throws NoSuchMethodException if method could not be found
	*                               or some methods are found
	*/
	@:overload public static function findInstanceMethod(type : Class<Dynamic>, name : String, args : java.NativeArray<Class<Dynamic>>) : java.lang.reflect.Method;
	
	/**
	* Finds public static method
	* that is accessible from public class.
	*
	* @param type  the class that can have method
	* @param name  the name of method to find
	* @param args  parameter types that is used to find method
	* @return object that represents found method
	* @throws NoSuchMethodException if method could not be found
	*                               or some methods are found
	*/
	@:overload public static function findStaticMethod(type : Class<Dynamic>, name : String, args : java.NativeArray<Class<Dynamic>>) : java.lang.reflect.Method;
	
	/**
	* Finds method that is accessible from public class or interface through class hierarchy.
	*
	* @param method  object that represents found method
	* @return object that represents accessible method
	* @throws NoSuchMethodException if method is not accessible or is not found
	*                               in specified superclass or interface
	*/
	@:overload public static function findAccessibleMethod(method : java.lang.reflect.Method) : java.lang.reflect.Method;
	
	/**
	* Returns an array of {@code Class} objects
	* that represent the formal parameter types of the method.
	* Returns an empty array if the method takes no parameters.
	*
	* @param method  the object that represents method
	* @return the parameter types of the method
	*/
	@:overload private function getParameters(method : java.lang.reflect.Method) : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Returns {@code true} if and only if the method
	* was declared to take a variable number of arguments.
	*
	* @param method  the object that represents method
	* @return {@code true} if the method was declared
	*         to take a variable number of arguments;
	*         {@code false} otherwise
	*/
	@:overload private function isVarArgs(method : java.lang.reflect.Method) : Bool;
	
	/**
	* Checks validness of the method.
	* The valid method should be public and
	* should have the specified name.
	*
	* @param method  the object that represents method
	* @return {@code true} if the method is valid,
	*         {@code false} otherwise
	*/
	@:overload private function isValid(method : java.lang.reflect.Method) : Bool;
	
	
}

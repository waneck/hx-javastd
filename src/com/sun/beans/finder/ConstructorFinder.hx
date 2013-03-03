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
extern class ConstructorFinder extends com.sun.beans.finder.AbstractFinder<java.lang.reflect.Constructor<Dynamic>>
{
	/**
	* Finds public constructor
	* that is declared in public class.
	*
	* @param type  the class that can have constructor
	* @param args  parameter types that is used to find constructor
	* @return object that represents found constructor
	* @throws NoSuchMethodException if constructor could not be found
	*                               or some constructors are found
	*/
	@:overload @:public @:static public static function findConstructor(type : Class<Dynamic>, args : java.NativeArray<Class<Dynamic>>) : java.lang.reflect.Constructor<Dynamic>;
	
	/**
	* Returns an array of {@code Class} objects
	* that represent the formal parameter types of the constructor.
	* Returns an empty array if the constructor takes no parameters.
	*
	* @param constructor  the object that represents constructor
	* @return the parameter types of the constructor
	*/
	@:overload @:protected private function getParameters(constructor : java.lang.reflect.Constructor<Dynamic>) : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Returns {@code true} if and only if the constructor
	* was declared to take a variable number of arguments.
	*
	* @param constructor  the object that represents constructor
	* @return {@code true} if the constructor was declared
	*         to take a variable number of arguments;
	*         {@code false} otherwise
	*/
	@:overload @:protected private function isVarArgs(constructor : java.lang.reflect.Constructor<Dynamic>) : Bool;
	
	/**
	* Checks validness of the constructor.
	* The valid constructor should be public.
	*
	* @param constructor  the object that represents constructor
	* @return {@code true} if the constructor is valid,
	*         {@code false} otherwise
	*/
	@:overload @:protected private function isValid(constructor : java.lang.reflect.Constructor<Dynamic>) : Bool;
	
	
}

package com.sun.beans.finder;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractFinder<T>
{
	/**
	* Creates finder for array of classes of arguments.
	* If a particular element of array equals {@code null},
	* than the appropriate pair of classes
	* does not take into consideration.
	*
	* @param args  array of classes of arguments
	*/
	@:overload private function new(args : java.NativeArray<Class<Dynamic>>) : Void;
	
	/**
	* Returns an array of {@code Class} objects
	* that represent the formal parameter types of the method.
	* Returns an empty array if the method takes no parameters.
	*
	* @param method  the object that represents method
	* @return the parameter types of the method
	*/
	@:overload @:abstract private function getParameters(method : T) : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Returns {@code true} if and only if the method
	* was declared to take a variable number of arguments.
	*
	* @param method  the object that represents method
	* @return {@code true} if the method was declared
	*         to take a variable number of arguments;
	*         {@code false} otherwise
	*/
	@:overload @:abstract private function isVarArgs(method : T) : Bool;
	
	/**
	* Checks validness of the method.
	* At least the valid method should be public.
	*
	* @param method  the object that represents method
	* @return {@code true} if the method is valid,
	*         {@code false} otherwise
	*/
	@:overload @:abstract private function isValid(method : T) : Bool;
	
	
}

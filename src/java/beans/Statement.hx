package java.beans;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Statement
{
	/**
	* Creates a new {@link Statement} object
	* for the specified target object to invoke the method
	* specified by the name and by the array of arguments.
	* <p>
	* The {@code target} and the {@code methodName} values should not be {@code null}.
	* Otherwise an attempt to execute this {@code Expression}
	* will result in a {@code NullPointerException}.
	* If the {@code arguments} value is {@code null},
	* an empty array is used as the value of the {@code arguments} property.
	*
	* @param target  the target object of this statement
	* @param methodName  the name of the method to invoke on the specified target
	* @param arguments  the array of arguments to invoke the specified method
	*/
	@:overload @:public public function new(target : Dynamic, methodName : String, arguments : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns the target object of this statement.
	* If this method returns {@code null},
	* the {@link #execute} method
	* throws a {@code NullPointerException}.
	*
	* @return the target object of this statement
	*/
	@:overload @:public public function getTarget() : Dynamic;
	
	/**
	* Returns the name of the method to invoke.
	* If this method returns {@code null},
	* the {@link #execute} method
	* throws a {@code NullPointerException}.
	*
	* @return the name of the method
	*/
	@:overload @:public public function getMethodName() : String;
	
	/**
	* Returns the arguments for the method to invoke.
	* The number of arguments and their types
	* must match the method being  called.
	* {@code null} can be used as a synonym of an empty array.
	*
	* @return the array of arguments
	*/
	@:overload @:public public function getArguments() : java.NativeArray<Dynamic>;
	
	/**
	* The {@code execute} method finds a method whose name is the same
	* as the {@code methodName} property, and invokes the method on
	* the target.
	*
	* When the target's class defines many methods with the given name
	* the implementation should choose the most specific method using
	* the algorithm specified in the Java Language Specification
	* (15.11). The dynamic class of the target and arguments are used
	* in place of the compile-time type information and, like the
	* {@link java.lang.reflect.Method} class itself, conversion between
	* primitive values and their associated wrapper classes is handled
	* internally.
	* <p>
	* The following method types are handled as special cases:
	* <ul>
	* <li>
	* Static methods may be called by using a class object as the target.
	* <li>
	* The reserved method name "new" may be used to call a class's constructor
	* as if all classes defined static "new" methods. Constructor invocations
	* are typically considered {@code Expression}s rather than {@code Statement}s
	* as they return a value.
	* <li>
	* The method names "get" and "set" defined in the {@link java.util.List}
	* interface may also be applied to array instances, mapping to
	* the static methods of the same name in the {@code Array} class.
	* </ul>
	*
	* @throws NullPointerException if the value of the {@code target} or
	*                              {@code methodName} property is {@code null}
	* @throws NoSuchMethodException if a matching method is not found
	* @throws SecurityException if a security manager exists and
	*                           it denies the method invocation
	* @throws Exception that is thrown by the invoked method
	*
	* @see java.lang.reflect.Method
	*/
	@:overload @:public public function execute() : Void;
	
	/**
	* Prints the value of this statement using a Java-style syntax.
	*/
	@:overload @:public public function toString() : String;
	
	
}

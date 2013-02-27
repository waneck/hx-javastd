package java.lang.invoke;
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
extern class MethodHandleProxies
{
	/**
	* Produces an instance of the given single-method interface which redirects
	* its calls to the given method handle.
	* <p>
	* A single-method interface is an interface which declares a uniquely named method.
	* When determining the uniquely named method of a single-method interface,
	* the public {@code Object} methods ({@code toString}, {@code equals}, {@code hashCode})
	* are disregarded.  For example, {@link java.util.Comparator} is a single-method interface,
	* even though it re-declares the {@code Object.equals} method.
	* <p>
	* The interface must be public.  No additional access checks are performed.
	* <p>
	* The resulting instance of the required type will respond to
	* invocation of the type's uniquely named method by calling
	* the given target on the incoming arguments,
	* and returning or throwing whatever the target
	* returns or throws.  The invocation will be as if by
	* {@code target.invoke}.
	* The target's type will be checked before the
	* instance is created, as if by a call to {@code asType},
	* which may result in a {@code WrongMethodTypeException}.
	* <p>
	* The uniquely named method is allowed to be multiply declared,
	* with distinct type descriptors.  (E.g., it can be overloaded,
	* or can possess bridge methods.)  All such declarations are
	* connected directly to the target method handle.
	* Argument and return types are adjusted by {@code asType}
	* for each individual declaration.
	* <p>
	* The wrapper instance will implement the requested interface
	* and its super-types, but no other single-method interfaces.
	* This means that the instance will not unexpectedly
	* pass an {@code instanceof} test for any unrequested type.
	* <p style="font-size:smaller;">
	* <em>Implementation Note:</em>
	* Therefore, each instance must implement a unique single-method interface.
	* Implementations may not bundle together
	* multiple single-method interfaces onto single implementation classes
	* in the style of {@link java.awt.AWTEventMulticaster}.
	* <p>
	* The method handle may throw an <em>undeclared exception</em>,
	* which means any checked exception (or other checked throwable)
	* not declared by the requested type's single abstract method.
	* If this happens, the throwable will be wrapped in an instance of
	* {@link java.lang.reflect.UndeclaredThrowableException UndeclaredThrowableException}
	* and thrown in that wrapped form.
	* <p>
	* Like {@link java.lang.Integer#valueOf Integer.valueOf},
	* {@code asInterfaceInstance} is a factory method whose results are defined
	* by their behavior.
	* It is not guaranteed to return a new instance for every call.
	* <p>
	* Because of the possibility of {@linkplain java.lang.reflect.Method#isBridge bridge methods}
	* and other corner cases, the interface may also have several abstract methods
	* with the same name but having distinct descriptors (types of returns and parameters).
	* In this case, all the methods are bound in common to the one given target.
	* The type check and effective {@code asType} conversion is applied to each
	* method type descriptor, and all abstract methods are bound to the target in common.
	* Beyond this type check, no further checks are made to determine that the
	* abstract methods are related in any way.
	* <p>
	* Future versions of this API may accept additional types,
	* such as abstract classes with single abstract methods.
	* Future versions of this API may also equip wrapper instances
	* with one or more additional public "marker" interfaces.
	*
	* @param target the method handle to invoke from the wrapper
	* @param intfc the desired type of the wrapper, a single-method interface
	* @return a correctly-typed wrapper for the given target
	* @throws NullPointerException if either argument is null
	* @throws IllegalArgumentException if the {@code intfc} is not a
	*         valid argument to this method
	* @throws WrongMethodTypeException if the target cannot
	*         be converted to the type required by the requested interface
	*/
	@:overload public static function asInterfaceInstance<T>(intfc : Class<T>, target : java.lang.invoke.MethodHandle) : T;
	
	/**
	* Determines if the given object was produced by a call to {@link #asInterfaceInstance asInterfaceInstance}.
	* @param x any reference
	* @return true if the reference is not null and points to an object produced by {@code asInterfaceInstance}
	*/
	@:overload public static function isWrapperInstance(x : Dynamic) : Bool;
	
	/**
	* Produces or recovers a target method handle which is behaviorally
	* equivalent to the unique method of this wrapper instance.
	* The object {@code x} must have been produced by a call to {@link #asInterfaceInstance asInterfaceInstance}.
	* This requirement may be tested via {@link #isWrapperInstance isWrapperInstance}.
	* @param x any reference
	* @return a method handle implementing the unique method
	* @throws IllegalArgumentException if the reference x is not to a wrapper instance
	*/
	@:overload public static function wrapperInstanceTarget(x : Dynamic) : java.lang.invoke.MethodHandle;
	
	/**
	* Recovers the unique single-method interface type for which this wrapper instance was created.
	* The object {@code x} must have been produced by a call to {@link #asInterfaceInstance asInterfaceInstance}.
	* This requirement may be tested via {@link #isWrapperInstance isWrapperInstance}.
	* @param x any reference
	* @return the single-method interface type for which the wrapper was created
	* @throws IllegalArgumentException if the reference x is not to a wrapper instance
	*/
	@:overload public static function wrapperInstanceType(x : Dynamic) : Class<Dynamic>;
	
	
}

package java.lang.reflect;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Proxy implements java.io.Serializable
{
	/**
	* the invocation handler for this proxy instance.
	* @serial
	*/
	@:protected private var h : java.lang.reflect.InvocationHandler;
	
	/**
	* Constructs a new {@code Proxy} instance from a subclass
	* (typically, a dynamic proxy class) with the specified value
	* for its invocation handler.
	*
	* @param   h the invocation handler for this proxy instance
	*/
	@:overload @:protected private function new(h : java.lang.reflect.InvocationHandler) : Void;
	
	/**
	* Returns the {@code java.lang.Class} object for a proxy class
	* given a class loader and an array of interfaces.  The proxy class
	* will be defined by the specified class loader and will implement
	* all of the supplied interfaces.  If a proxy class for the same
	* permutation of interfaces has already been defined by the class
	* loader, then the existing proxy class will be returned; otherwise,
	* a proxy class for those interfaces will be generated dynamically
	* and defined by the class loader.
	*
	* <p>There are several restrictions on the parameters that may be
	* passed to {@code Proxy.getProxyClass}:
	*
	* <ul>
	* <li>All of the {@code Class} objects in the
	* {@code interfaces} array must represent interfaces, not
	* classes or primitive types.
	*
	* <li>No two elements in the {@code interfaces} array may
	* refer to identical {@code Class} objects.
	*
	* <li>All of the interface types must be visible by name through the
	* specified class loader.  In other words, for class loader
	* {@code cl} and every interface {@code i}, the following
	* expression must be true:
	* <pre>
	*     Class.forName(i.getName(), false, cl) == i
	* </pre>
	*
	* <li>All non-public interfaces must be in the same package;
	* otherwise, it would not be possible for the proxy class to
	* implement all of the interfaces, regardless of what package it is
	* defined in.
	*
	* <li>For any set of member methods of the specified interfaces
	* that have the same signature:
	* <ul>
	* <li>If the return type of any of the methods is a primitive
	* type or void, then all of the methods must have that same
	* return type.
	* <li>Otherwise, one of the methods must have a return type that
	* is assignable to all of the return types of the rest of the
	* methods.
	* </ul>
	*
	* <li>The resulting proxy class must not exceed any limits imposed
	* on classes by the virtual machine.  For example, the VM may limit
	* the number of interfaces that a class may implement to 65535; in
	* that case, the size of the {@code interfaces} array must not
	* exceed 65535.
	* </ul>
	*
	* <p>If any of these restrictions are violated,
	* {@code Proxy.getProxyClass} will throw an
	* {@code IllegalArgumentException}.  If the {@code interfaces}
	* array argument or any of its elements are {@code null}, a
	* {@code NullPointerException} will be thrown.
	*
	* <p>Note that the order of the specified proxy interfaces is
	* significant: two requests for a proxy class with the same combination
	* of interfaces but in a different order will result in two distinct
	* proxy classes.
	*
	* @param   loader the class loader to define the proxy class
	* @param   interfaces the list of interfaces for the proxy class
	*          to implement
	* @return  a proxy class that is defined in the specified class loader
	*          and that implements the specified interfaces
	* @throws  IllegalArgumentException if any of the restrictions on the
	*          parameters that may be passed to {@code getProxyClass}
	*          are violated
	* @throws  NullPointerException if the {@code interfaces} array
	*          argument or any of its elements are {@code null}
	*/
	@:overload @:public @:static public static function getProxyClass(loader : java.lang.ClassLoader, interfaces : java.NativeArray<Class<Dynamic>>) : Class<Dynamic>;
	
	/**
	* Returns an instance of a proxy class for the specified interfaces
	* that dispatches method invocations to the specified invocation
	* handler.  This method is equivalent to:
	* <pre>
	*     Proxy.getProxyClass(loader, interfaces).
	*         getConstructor(new Class[] { InvocationHandler.class }).
	*         newInstance(new Object[] { handler });
	* </pre>
	*
	* <p>{@code Proxy.newProxyInstance} throws
	* {@code IllegalArgumentException} for the same reasons that
	* {@code Proxy.getProxyClass} does.
	*
	* @param   loader the class loader to define the proxy class
	* @param   interfaces the list of interfaces for the proxy class
	*          to implement
	* @param   h the invocation handler to dispatch method invocations to
	* @return  a proxy instance with the specified invocation handler of a
	*          proxy class that is defined by the specified class loader
	*          and that implements the specified interfaces
	* @throws  IllegalArgumentException if any of the restrictions on the
	*          parameters that may be passed to {@code getProxyClass}
	*          are violated
	* @throws  NullPointerException if the {@code interfaces} array
	*          argument or any of its elements are {@code null}, or
	*          if the invocation handler, {@code h}, is
	*          {@code null}
	*/
	@:overload @:public @:static public static function newProxyInstance(loader : java.lang.ClassLoader, interfaces : java.NativeArray<Class<Dynamic>>, h : java.lang.reflect.InvocationHandler) : Dynamic;
	
	/**
	* Returns true if and only if the specified class was dynamically
	* generated to be a proxy class using the {@code getProxyClass}
	* method or the {@code newProxyInstance} method.
	*
	* <p>The reliability of this method is important for the ability
	* to use it to make security decisions, so its implementation should
	* not just test if the class in question extends {@code Proxy}.
	*
	* @param   cl the class to test
	* @return  {@code true} if the class is a proxy class and
	*          {@code false} otherwise
	* @throws  NullPointerException if {@code cl} is {@code null}
	*/
	@:overload @:public @:static public static function isProxyClass(cl : Class<Dynamic>) : Bool;
	
	/**
	* Returns the invocation handler for the specified proxy instance.
	*
	* @param   proxy the proxy instance to return the invocation handler for
	* @return  the invocation handler for the proxy instance
	* @throws  IllegalArgumentException if the argument is not a
	*          proxy instance
	*/
	@:overload @:public @:static public static function getInvocationHandler(proxy : Dynamic) : java.lang.reflect.InvocationHandler;
	
	
}
@:native('java$lang$reflect$Proxy$ProxyAccessHelper') @:internal extern class Proxy_ProxyAccessHelper
{
	
}

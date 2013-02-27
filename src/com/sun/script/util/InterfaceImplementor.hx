package com.sun.script.util;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
/*
* java.lang.reflect.Proxy based interface implementor. This is meant
* to be used to implement Invocable.getInterface.
*
* @author Mike Grogan
* @since 1.6
*/
@:require(java6) extern class InterfaceImplementor
{
	/** Creates a new instance of Invocable */
	@:overload public function new(engine : javax.script.Invocable) : Void;
	
	@:overload public function getInterface<T>(thiz : Dynamic, iface : Class<T>) : T;
	
	@:overload private function isImplemented(thiz : Dynamic, iface : Class<Dynamic>) : Bool;
	
	@:overload private function convertResult(method : java.lang.reflect.Method, res : Dynamic) : Dynamic;
	
	@:overload private function convertArguments(method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	
}
@:native('com$sun$script$util$InterfaceImplementor$InterfaceImplementorInvocationHandler') @:internal extern class InterfaceImplementor_InterfaceImplementorInvocationHandler implements java.lang.reflect.InvocationHandler
{
	@:overload public function new(thiz : Dynamic, accCtxt : java.security.AccessControlContext) : Void;
	
	@:overload public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}

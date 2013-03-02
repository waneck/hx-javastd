package java.rmi.server;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class RemoteObjectInvocationHandler extends java.rmi.server.RemoteObject implements java.lang.reflect.InvocationHandler
{
	/**
	* Creates a new <code>RemoteObjectInvocationHandler</code> constructed
	* with the specified <code>RemoteRef</code>.
	*
	* @param ref the remote ref
	*
	* @throws NullPointerException if <code>ref</code> is <code>null</code>
	**/
	@:overload public function new(ref : java.rmi.server.RemoteRef) : Void;
	
	/**
	* Processes a method invocation made on the encapsulating
	* proxy instance, <code>proxy</code>, and returns the result.
	*
	* <p><code>RemoteObjectInvocationHandler</code> implements this method
	* as follows:
	*
	* <p>If <code>method</code> is one of the following methods, it
	* is processed as described below:
	*
	* <ul>
	*
	* <li>{@link Object#hashCode Object.hashCode}: Returns the hash
	* code value for the proxy.
	*
	* <li>{@link Object#equals Object.equals}: Returns <code>true</code>
	* if the argument (<code>args[0]</code>) is an instance of a dynamic
	* proxy class and this invocation handler is equal to the invocation
	* handler of that argument, and returns <code>false</code> otherwise.
	*
	* <li>{@link Object#toString Object.toString}: Returns a string
	* representation of the proxy.
	* </ul>
	*
	* <p>Otherwise, a remote call is made as follows:
	*
	* <ul>
	* <li>If <code>proxy</code> is not an instance of the interface
	* {@link Remote}, then an {@link IllegalArgumentException} is thrown.
	*
	* <li>Otherwise, the {@link RemoteRef#invoke invoke} method is invoked
	* on this invocation handler's <code>RemoteRef</code>, passing
	* <code>proxy</code>, <code>method</code>, <code>args</code>, and the
	* method hash (defined in section 8.3 of the "Java Remote Method
	* Invocation (RMI) Specification") for <code>method</code>, and the
	* result is returned.
	*
	* <li>If an exception is thrown by <code>RemoteRef.invoke</code> and
	* that exception is a checked exception that is not assignable to any
	* exception in the <code>throws</code> clause of the method
	* implemented by the <code>proxy</code>'s class, then that exception
	* is wrapped in an {@link UnexpectedException} and the wrapped
	* exception is thrown.  Otherwise, the exception thrown by
	* <code>invoke</code> is thrown by this method.
	* </ul>
	*
	* <p>The semantics of this method are unspecified if the
	* arguments could not have been produced by an instance of some
	* valid dynamic proxy class containing this invocation handler.
	*
	* @param proxy the proxy instance that the method was invoked on
	* @param method the <code>Method</code> instance corresponding to the
	* interface method invoked on the proxy instance
	* @param args an array of objects containing the values of the
	* arguments passed in the method invocation on the proxy instance, or
	* <code>null</code> if the method takes no arguments
	* @return the value to return from the method invocation on the proxy
	* instance
	* @throws  Throwable the exception to throw from the method invocation
	* on the proxy instance
	**/
	@:overload public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
/**
* A weak hash map, mapping classes to weak hash maps that map
* method objects to method hashes.
**/
@:native('java$rmi$server$RemoteObjectInvocationHandler$MethodToHash_Maps') @:internal extern class RemoteObjectInvocationHandler_MethodToHash_Maps extends sun.rmi.server.WeakClassHashMap<java.util.Map<java.lang.reflect.Method, Null<haxe.Int64>>>
{
	@:overload private function computeValue(remoteClass : Class<Dynamic>) : java.util.Map<java.lang.reflect.Method, Null<haxe.Int64>>;
	
	
}

package sun.rmi.server;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Util
{
	/** server reference log */
	public static var serverRefLog(default, null) : sun.rmi.runtime.Log;
	
	/**
	* Returns a proxy for the specified implClass.
	*
	* If both of the following criteria is satisfied, a dynamic proxy for
	* the specified implClass is returned (otherwise a RemoteStub instance
	* for the specified implClass is returned):
	*
	*    a) either the property java.rmi.server.ignoreStubClasses is true or
	*       a pregenerated stub class does not exist for the impl class, and
	*    b) forceStubUse is false.
	*
	* If the above criteria are satisfied, this method constructs a
	* dynamic proxy instance (that implements the remote interfaces of
	* implClass) constructed with a RemoteObjectInvocationHandler instance
	* constructed with the clientRef.
	*
	* Otherwise, this method loads the pregenerated stub class (which
	* extends RemoteStub and implements the remote interfaces of
	* implClass) and constructs an instance of the pregenerated stub
	* class with the clientRef.
	*
	* @param implClass the class to obtain remote interfaces from
	* @param clientRef the remote ref to use in the invocation handler
	* @param forceStubUse if true, forces creation of a RemoteStub
	* @throws IllegalArgumentException if implClass implements illegal
	* remote interfaces
	* @throws StubNotFoundException if problem locating/creating stub or
	* creating the dynamic proxy instance
	**/
	@:overload public static function createProxy(implClass : Class<Dynamic>, clientRef : java.rmi.server.RemoteRef, forceStubUse : Bool) : java.rmi.Remote;
	
	/**
	* Compute the "method hash" of a remote method.  The method hash
	* is a long containing the first 64 bits of the SHA digest from
	* the UTF encoded string of the method name and descriptor.
	*/
	@:overload public static function computeMethodHash(m : java.lang.reflect.Method) : haxe.Int64;
	
	/**
	* Returns the binary name of the given type without package
	* qualification.  Nested types are treated no differently from
	* top-level types, so for a nested type, the returned name will
	* still be qualified with the simple name of its enclosing
	* top-level type (and perhaps other enclosing types), the
	* separator will be '$', etc.
	**/
	@:overload public static function getUnqualifiedName(c : Class<Dynamic>) : String;
	
	
}

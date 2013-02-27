package com.sun.org.glassfish.gmbal;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ManagedObjectManagerFactory
{
	/** Convenience method for getting access to a method through reflection.
	* Same as Class.getDeclaredMethod, but only throws RuntimeExceptions.
	* @param cls The class to search for a method.
	* @param name The method name.
	* @param types The array of argument types.
	* @return The Method if found.
	* @throws GmbalException if no such method is found.
	*/
	@:overload public static function getMethod(cls : Class<Dynamic>, name : String, types : java.NativeArray<Class<Dynamic>>) : java.lang.reflect.Method;
	
	/** Create a new ManagedObjectManager.  All objectnames created will share
	* the domain value passed on this call.  This ManagedObjectManager is
	* at the top of the containment hierarchy: the parent of the root is null.
	* @param domain The domain to use for all ObjectNames created when
	* MBeans are registered.
	* @return A new ManagedObjectManager.
	*/
	@:overload public static function createStandalone(domain : String) : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	/** Alternative form of the create method to be used when the
	* rootName is not needed explicitly.  If the root name is available
	* from an @ObjectNameKey annotation, it is used; otherwise the
	* type is used as the name, since the root is a singleton.
	*
	* @param rootParentName The JMX ObjectName of the parent of the root.
	* The parent is outside of the control of this ManagedObjectManager.
	* The ManagedObjectManager root is a child of the MBean identified
	* by the rootParentName.
	* @return The ManagedObjectManager.
	*/
	@:overload public static function createFederated(rootParentName : javax.management.ObjectName) : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	/** Return a ManagedObjectManager that performs no operations.  Useful to
	* allow the same code to run with or without creating MBeans through
	* gmbal.
	* @return ManagedObjectManager that performs no operations.
	*/
	@:overload public static function createNOOP() : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	
}

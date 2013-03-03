package sun.reflect.misc;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ReflectUtil
{
	@:overload @:public @:static public static function forName(name : String) : Class<Dynamic>;
	
	@:overload @:public @:static public static function newInstance(cls : Class<Dynamic>) : Dynamic;
	
	/*
	* Reflection.ensureMemberAccess is overly-restrictive
	* due to a bug. We awkwardly work around it for now.
	*/
	@:overload @:public @:static public static function ensureMemberAccess(currentClass : Class<Dynamic>, memberClass : Class<Dynamic>, target : Dynamic, modifiers : Int) : Void;
	
	@:overload @:public @:static public static function checkPackageAccess(clazz : Class<Dynamic>) : Void;
	
	@:overload @:public @:static public static function checkPackageAccess(name : String) : Void;
	
	@:overload @:public @:static public static function isPackageAccessible(clazz : Class<Dynamic>) : Bool;
	
	/**
	* Returns true if package access check is needed for reflective
	* access from a class loader 'from' to classes or members in
	* a class defined by class loader 'to'.  This method returns true
	* if 'from' is not the same as or an ancestor of 'to'.  All code
	* in a system domain are granted with all permission and so this
	* method returns false if 'from' class loader is a class loader
	* loading system classes.  On the other hand, if a class loader
	* attempts to access system domain classes, it requires package
	* access check and this method will return true.
	*/
	@:overload @:public @:static public static function needsPackageAccessCheck(from : java.lang.ClassLoader, to : java.lang.ClassLoader) : Bool;
	
	/**
	* Access check on the interfaces that a proxy class implements and throw
	* {@code SecurityException} if it accesses a restricted package.
	*
	* @param ccl the caller's class loader
	* @param interfaces the list of interfaces that a proxy class implements
	*
	* @see Proxy#checkProxyAccess
	*/
	@:overload @:public @:static public static function checkProxyPackageAccess(ccl : java.lang.ClassLoader, interfaces : java.NativeArray<Class<Dynamic>>) : Void;
	
	@:public @:static @:final public static var PROXY_PACKAGE(default, null) : String;
	
	
}

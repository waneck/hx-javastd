package sun.reflect.misc;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Trampoline
{
	
}
extern class MethodUtil extends java.security.SecureClassLoader
{
	@:overload public static function getMethod(cls : Class<Dynamic>, name : String, args : java.NativeArray<Class<Dynamic>>) : java.lang.reflect.Method;
	
	@:overload public static function getMethods(cls : Class<Dynamic>) : java.NativeArray<java.lang.reflect.Method>;
	
	/*
	* Discover the public methods on public classes
	* and interfaces accessible to any caller by calling
	* Class.getMethods() and walking towards Object until
	* we're done.
	*/
	@:overload public static function getPublicMethods(cls : Class<Dynamic>) : java.NativeArray<java.lang.reflect.Method>;
	
	/*
	* Bounce through the trampoline.
	*/
	@:overload public static function invoke(m : java.lang.reflect.Method, obj : Dynamic, params : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload @:synchronized private function loadClass(name : String, resolve : Bool) : Class<Dynamic>;
	
	@:overload private function findClass(name : String) : Class<Dynamic>;
	
	@:overload override private function getPermissions(codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	
}
/**
* A class that represents the unique elements of a method that will be a
* key in the method cache.
*/
@:native('sun$reflect$misc$MethodUtil$Signature') @:internal extern class MethodUtil_Signature
{
	@:overload public function equals(o2 : Dynamic) : Bool;
	
	/**
	* Hash code computed using algorithm suggested in
	* Effective Java, Item 8.
	*/
	@:overload public function hashCode() : Int;
	
	
}

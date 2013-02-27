package sun.reflect;
/*
* Copyright (c) 2001, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Reflection
{
	/** Returns the class of the method <code>realFramesToSkip</code>
	frames up the stack (zero-based), ignoring frames associated
	with java.lang.reflect.Method.invoke() and its implementation.
	The first frame is that associated with this method, so
	<code>getCallerClass(0)</code> returns the Class object for
	sun.reflect.Reflection. Frames associated with
	java.lang.reflect.Method.invoke() and its implementation are
	completely ignored and do not count toward the number of "real"
	frames skipped. */
	@:overload @:native public static function getCallerClass(realFramesToSkip : Int) : Class<Dynamic>;
	
	/** A quick "fast-path" check to try to avoid getCallerClass()
	calls. */
	@:overload public static function quickCheckMemberAccess(memberClass : Class<Dynamic>, modifiers : Int) : Bool;
	
	@:overload public static function ensureMemberAccess(currentClass : Class<Dynamic>, memberClass : Class<Dynamic>, target : Dynamic, modifiers : Int) : Void;
	
	@:overload public static function verifyMemberAccess(currentClass : Class<Dynamic>, memberClass : Class<Dynamic>, target : Dynamic, modifiers : Int) : Bool;
	
	@:overload @:synchronized public static function registerFieldsToFilter(containingClass : Class<Dynamic>, fieldNames : java.NativeArray<String>) : Void;
	
	@:overload @:synchronized public static function registerMethodsToFilter(containingClass : Class<Dynamic>, methodNames : java.NativeArray<String>) : Void;
	
	@:overload public static function filterFields(containingClass : Class<Dynamic>, fields : java.NativeArray<java.lang.reflect.Field>) : java.NativeArray<java.lang.reflect.Field>;
	
	@:overload public static function filterMethods(containingClass : Class<Dynamic>, methods : java.NativeArray<java.lang.reflect.Method>) : java.NativeArray<java.lang.reflect.Method>;
	
	
}

package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* Factory methods that generate various {@link JExpression}s.
*/
extern class JExpr
{
	@:overload @:public @:static public static function assign(lhs : com.sun.codemodel.internal.JAssignmentTarget, rhs : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function assignPlus(lhs : com.sun.codemodel.internal.JAssignmentTarget, rhs : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function _new(c : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JInvocation;
	
	@:overload @:public @:static public static function _new(t : com.sun.codemodel.internal.JType) : com.sun.codemodel.internal.JInvocation;
	
	@:overload @:public @:static public static function invoke(method : String) : com.sun.codemodel.internal.JInvocation;
	
	@:overload @:public @:static public static function invoke(method : com.sun.codemodel.internal.JMethod) : com.sun.codemodel.internal.JInvocation;
	
	@:overload @:public @:static public static function invoke(lhs : com.sun.codemodel.internal.JExpression, method : com.sun.codemodel.internal.JMethod) : com.sun.codemodel.internal.JInvocation;
	
	@:overload @:public @:static public static function invoke(lhs : com.sun.codemodel.internal.JExpression, method : String) : com.sun.codemodel.internal.JInvocation;
	
	@:overload @:public @:static public static function ref(field : String) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload @:public @:static public static function ref(lhs : com.sun.codemodel.internal.JExpression, field : com.sun.codemodel.internal.JVar) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload @:public @:static public static function ref(lhs : com.sun.codemodel.internal.JExpression, field : String) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload @:public @:static public static function refthis(field : String) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload @:public @:static public static function dotclass(cl : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function component(lhs : com.sun.codemodel.internal.JExpression, index : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JArrayCompRef;
	
	@:native('cast') @:overload @:public @:static public static function _cast(type : com.sun.codemodel.internal.JType, expr : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JCast;
	
	@:overload @:public @:static public static function newArray(type : com.sun.codemodel.internal.JType) : com.sun.codemodel.internal.JArray;
	
	/**
	* Generates {@code new T[size]}.
	*
	* @param type
	*      The type of the array component. 'T' or {@code new T[size]}.
	*/
	@:overload @:public @:static public static function newArray(type : com.sun.codemodel.internal.JType, size : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JArray;
	
	/**
	* Generates {@code new T[size]}.
	*
	* @param type
	*      The type of the array component. 'T' or {@code new T[size]}.
	*/
	@:overload @:public @:static public static function newArray(type : com.sun.codemodel.internal.JType, size : Int) : com.sun.codemodel.internal.JArray;
	
	/**
	* Returns a reference to "this", an implicit reference
	* to the current object.
	*/
	@:overload @:public @:static public static function _this() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns a reference to "super", an implicit reference
	* to the super class.
	*/
	@:overload @:public @:static public static function _super() : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function _null() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Boolean constant that represents <code>true</code>
	*/
	@:public @:static @:final public static var TRUE(default, null) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Boolean constant that represents <code>false</code>
	*/
	@:public @:static @:final public static var FALSE(default, null) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function lit(b : Bool) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function lit(n : Int) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function lit(n : haxe.Int64) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function lit(f : Single) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function lit(d : Float) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Escapes the given string, then surrounds it by the specified
	* quotation mark.
	*/
	@:overload @:public @:static public static function quotify(quote : java.StdTypes.Char16, s : String) : String;
	
	@:overload @:public @:static public static function lit(c : java.StdTypes.Char16) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public @:static public static function lit(s : String) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Creates an expression directly from a source code fragment.
	*
	* <p>
	* This method can be used as a short-cut to create a JExpression.
	* For example, instead of <code>_a.gt(_b)</code>, you can write
	* it as: <code>JExpr.direct("a>b")</code>.
	*
	* <p>
	* Be warned that there is a danger in using this method,
	* as it obfuscates the object model.
	*/
	@:overload @:public @:static public static function direct(source : String) : com.sun.codemodel.internal.JExpression;
	
	
}

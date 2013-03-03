package com.sun.tools.javac.jvm;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassFile
{
	/** A JVM class file.
	*
	*  <p>Generic Java classfiles have one additional attribute for classes,
	*  methods and fields:
	*  <pre>
	*   "Signature" (u4 attr-length, u2 signature-index)
	*  </pre>
	*
	*  <p>A signature gives the full Java type of a method or field. When
	*  used as a class attribute, it indicates type parameters, followed
	*  by supertype, followed by all interfaces.
	*  <pre>
	*     methodOrFieldSignature ::= type
	*     classSignature         ::= [ typeparams ] supertype { interfacetype }
	*  </pre>
	*  <p>The type syntax in signatures is extended as follows:
	*  <pre>
	*     type       ::= ... | classtype | methodtype | typevar
	*     classtype  ::= classsig { '.' classsig }
	*     classig    ::= 'L' name [typeargs] ';'
	*     methodtype ::= [ typeparams ] '(' { type } ')' type
	*     typevar    ::= 'T' name ';'
	*     typeargs   ::= '<' type { type } '>'
	*     typeparams ::= '<' typeparam { typeparam } '>'
	*     typeparam  ::= name ':' type
	*  </pre>
	*  <p>This class defines constants used in class files as well
	*  as routines to convert between internal ``.'' and external ``/''
	*  separators in class names.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b> */
	@:public @:final @:static public static var JAVA_MAGIC(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Utf8(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Unicode(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Integer(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Float(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Long(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Double(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Class(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_String(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Fieldref(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_Methodref(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_InterfaceMethodref(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_NameandType(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_MethodHandle(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_MethodType(default, null) : Int;
	
	@:public @:final @:static public static var CONSTANT_InvokeDynamic(default, null) : Int;
	
	@:public @:final @:static public static var MAX_PARAMETERS(default, null) : Int;
	
	@:public @:final @:static public static var MAX_DIMENSIONS(default, null) : Int;
	
	@:public @:final @:static public static var MAX_CODE(default, null) : Int;
	
	@:public @:final @:static public static var MAX_LOCALS(default, null) : Int;
	
	@:public @:final @:static public static var MAX_STACK(default, null) : Int;
	
	/** Return internal representation of buf[offset..offset+len-1],
	*  converting '/' to '.'.
	*/
	@:overload @:public @:static public static function internalize(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Return internal representation of given name,
	*  converting '/' to '.'.
	*/
	@:overload @:public @:static public static function internalize(name : com.sun.tools.javac.util.Name) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Return external representation of buf[offset..offset+len-1],
	*  converting '.' to '/'.
	*/
	@:overload @:public @:static public static function externalize(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Return external representation of given name,
	*  converting '/' to '.'.
	*/
	@:overload @:public @:static public static function externalize(name : com.sun.tools.javac.util.Name) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$tools$javac$jvm$ClassFile$Version') extern enum ClassFile_Version
{
	V45_3;
	V49;
	V50;
	V51;
	
}

/** A class for the name-and-type signature of a method or field.
*/
@:native('com$sun$tools$javac$jvm$ClassFile$NameAndType') extern class ClassFile_NameAndType
{
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}

package com.sun.tools.javah;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Mangle
{
	@:overload @:final public function mangle(name : java.lang.CharSequence, mtype : Int) : String;
	
	@:overload public function mangleMethod(method : javax.lang.model.element.ExecutableElement, clazz : javax.lang.model.element.TypeElement, mtype : Int) : String;
	
	@:overload @:final public function mangleChar(ch : java.StdTypes.Char16) : String;
	
	
}
/**
* A utility for mangling java identifiers into C names.  Should make
* this more fine grained and distribute the functionality to the
* generators.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own
* risk.  This code and its internal interfaces are subject to change
* or deletion without notice.</b></p>
*
* @author  Sucheta Dambalkar(Revised)
*/
@:native('com$sun$tools$javah$Mangle$Type') extern class Mangle_Type
{
	public static var CLASS(default, null) : Int;
	
	public static var FIELDSTUB(default, null) : Int;
	
	public static var FIELD(default, null) : Int;
	
	public static var JNI(default, null) : Int;
	
	public static var SIGNATURE(default, null) : Int;
	
	public static var METHOD_JDK_1(default, null) : Int;
	
	public static var METHOD_JNI_SHORT(default, null) : Int;
	
	public static var METHOD_JNI_LONG(default, null) : Int;
	
	
}

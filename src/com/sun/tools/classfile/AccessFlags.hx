package com.sun.tools.classfile;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AccessFlags
{
	/**
	* See JVMS, sections 4.2, 4.6, 4.7.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:public @:static @:final public static var ACC_PUBLIC(default, null) : Int;
	
	@:public @:static @:final public static var ACC_PRIVATE(default, null) : Int;
	
	@:public @:static @:final public static var ACC_PROTECTED(default, null) : Int;
	
	@:public @:static @:final public static var ACC_STATIC(default, null) : Int;
	
	@:public @:static @:final public static var ACC_FINAL(default, null) : Int;
	
	@:public @:static @:final public static var ACC_SUPER(default, null) : Int;
	
	@:public @:static @:final public static var ACC_SYNCHRONIZED(default, null) : Int;
	
	@:public @:static @:final public static var ACC_VOLATILE(default, null) : Int;
	
	@:public @:static @:final public static var ACC_BRIDGE(default, null) : Int;
	
	@:public @:static @:final public static var ACC_TRANSIENT(default, null) : Int;
	
	@:public @:static @:final public static var ACC_VARARGS(default, null) : Int;
	
	@:public @:static @:final public static var ACC_NATIVE(default, null) : Int;
	
	@:public @:static @:final public static var ACC_INTERFACE(default, null) : Int;
	
	@:public @:static @:final public static var ACC_ABSTRACT(default, null) : Int;
	
	@:public @:static @:final public static var ACC_STRICT(default, null) : Int;
	
	@:public @:static @:final public static var ACC_SYNTHETIC(default, null) : Int;
	
	@:public @:static @:final public static var ACC_ANNOTATION(default, null) : Int;
	
	@:public @:static @:final public static var ACC_ENUM(default, null) : Int;
	
	@:public @:static @:final public static var ACC_MODULE(default, null) : Int;
	
	@:overload @:public public function new(flags : Int) : Void;
	
	@:overload @:public public function ignore(mask : Int) : com.sun.tools.classfile.AccessFlags;
	
	@:overload @:public public function is(mask : Int) : Bool;
	
	@:overload @:public public function byteLength() : Int;
	
	@:overload @:public public function getClassModifiers() : java.util.Set<String>;
	
	@:overload @:public public function getClassFlags() : java.util.Set<String>;
	
	@:overload @:public public function getInnerClassModifiers() : java.util.Set<String>;
	
	@:overload @:public public function getInnerClassFlags() : java.util.Set<String>;
	
	@:overload @:public public function getFieldModifiers() : java.util.Set<String>;
	
	@:overload @:public public function getFieldFlags() : java.util.Set<String>;
	
	@:overload @:public public function getMethodModifiers() : java.util.Set<String>;
	
	@:overload @:public public function getMethodFlags() : java.util.Set<String>;
	
	@:public @:final public var flags(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$AccessFlags$Kind') extern enum AccessFlags_Kind
{
	Class;
	InnerClass;
	Field;
	Method;
	
}


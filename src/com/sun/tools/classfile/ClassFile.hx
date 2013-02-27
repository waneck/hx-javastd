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
/**
* See JVMS, section 4.2.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class ClassFile
{
	@:overload public static function read(file : java.io.File) : ClassFile;
	
	@:overload public static function read(file : java.io.File, attributeFactory : com.sun.tools.classfile.Attribute.Attribute_Factory) : ClassFile;
	
	@:overload public static function read(_in : java.io.InputStream) : ClassFile;
	
	@:overload public static function read(_in : java.io.InputStream, attributeFactory : com.sun.tools.classfile.Attribute.Attribute_Factory) : ClassFile;
	
	@:overload public function new(magic : Int, minor_version : Int, major_version : Int, constant_pool : com.sun.tools.classfile.ConstantPool, access_flags : com.sun.tools.classfile.AccessFlags, this_class : Int, super_class : Int, interfaces : java.NativeArray<Int>, fields : java.NativeArray<com.sun.tools.classfile.Field>, methods : java.NativeArray<com.sun.tools.classfile.Method>, attributes : com.sun.tools.classfile.Attributes) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getSuperclassName() : String;
	
	@:overload public function getInterfaceName(i : Int) : String;
	
	@:overload public function getAttribute(name : String) : com.sun.tools.classfile.Attribute;
	
	@:overload public function isClass() : Bool;
	
	@:overload public function isInterface() : Bool;
	
	@:overload public function byteLength() : Int;
	
	public var magic(default, null) : Int;
	
	public var minor_version(default, null) : Int;
	
	public var major_version(default, null) : Int;
	
	public var constant_pool(default, null) : com.sun.tools.classfile.ConstantPool;
	
	public var access_flags(default, null) : com.sun.tools.classfile.AccessFlags;
	
	public var this_class(default, null) : Int;
	
	public var super_class(default, null) : Int;
	
	public var interfaces(default, null) : java.NativeArray<Int>;
	
	public var fields(default, null) : java.NativeArray<com.sun.tools.classfile.Field>;
	
	public var methods(default, null) : java.NativeArray<com.sun.tools.classfile.Method>;
	
	public var attributes(default, null) : com.sun.tools.classfile.Attributes;
	
	
}

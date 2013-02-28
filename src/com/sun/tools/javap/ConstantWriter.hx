package com.sun.tools.javap;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
/*
*  Write a constant pool entry.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class ConstantWriter extends com.sun.tools.javap.BasicWriter
{
	@:overload public static function instance(context : com.sun.tools.javap.Context) : ConstantWriter;
	
	@:overload private function new(context : com.sun.tools.javap.Context) : Void;
	
	@:overload private function writeConstantPool() : Void;
	
	@:overload private function writeConstantPool(constant_pool : com.sun.tools.classfile.ConstantPool) : Void;
	
	@:overload private function write(cpx : Int) : Void;
	
	
}
@:native('com$sun$tools$javap$ConstantWriter$StringValueVisitor') @:internal extern class ConstantWriter_StringValueVisitor implements com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<String, java.lang.Void>
{
	@:overload public function visit(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo) : String;
	
	@:overload public function visitClass(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Class_info, p : java.lang.Void) : String;
	
	@:overload public function visitDouble(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Double_info, p : java.lang.Void) : String;
	
	@:overload public function visitFieldref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Fieldref_info, p : java.lang.Void) : String;
	
	@:overload public function visitFloat(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Float_info, p : java.lang.Void) : String;
	
	@:overload public function visitInteger(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Integer_info, p : java.lang.Void) : String;
	
	@:overload public function visitInterfaceMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InterfaceMethodref_info, p : java.lang.Void) : String;
	
	@:overload public function visitInvokeDynamic(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InvokeDynamic_info, p : java.lang.Void) : String;
	
	@:overload public function visitLong(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Long_info, p : java.lang.Void) : String;
	
	@:overload public function visitNameAndType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_NameAndType_info, p : java.lang.Void) : String;
	
	@:overload public function visitMethodHandle(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodHandle_info, p : java.lang.Void) : String;
	
	@:overload public function visitMethodType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodType_info, p : java.lang.Void) : String;
	
	@:overload public function visitMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Methodref_info, p : java.lang.Void) : String;
	
	@:overload public function visitString(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_String_info, p : java.lang.Void) : String;
	
	@:overload public function visitUtf8(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Utf8_info, p : java.lang.Void) : String;
	
	
}

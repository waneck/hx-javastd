package com.sun.tools.classfile;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassTranslator implements com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo, java.util.Map<Dynamic, Dynamic>>
{
	/**
	* Create a new ClassFile from {@code cf}, such that for all entries
	* {@code k&nbsp;-\&gt;&nbsp;v} in {@code translations},
	* each occurrence of {@code k} in {@code cf} will be replaced by {@code v}.
	* in
	* @param cf the class file to be processed
	* @param translations the set of translations to be applied
	* @return a copy of {@code} with the values in {@code translations} substituted
	*/
	@:overload public function translate(cf : com.sun.tools.classfile.ClassFile, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ClassFile;
	
	@:overload public function visitClass(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Class_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitDouble(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Double_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitFieldref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Fieldref_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitFloat(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Float_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitInteger(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Integer_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitInterfaceMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InterfaceMethodref_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitInvokeDynamic(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InvokeDynamic_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitLong(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Long_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitNameAndType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_NameAndType_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Methodref_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitMethodHandle(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodHandle_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitMethodType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodType_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitString(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_String_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload public function visitUtf8(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Utf8_info, translations : java.util.Map<Dynamic, Dynamic>) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	
}

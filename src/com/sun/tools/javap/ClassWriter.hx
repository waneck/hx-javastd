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
*  The main javap class to write the contents of a class file as text.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class ClassWriter extends com.sun.tools.javap.BasicWriter
{
	@:overload @:protected private function new(context : com.sun.tools.javap.Context) : Void;
	
	@:overload @:protected private function getClassFile() : com.sun.tools.classfile.ClassFile;
	
	@:overload @:protected private function setClassFile(cf : com.sun.tools.classfile.ClassFile) : Void;
	
	@:overload @:protected private function getMethod() : com.sun.tools.classfile.Method;
	
	@:overload @:protected private function setMethod(m : com.sun.tools.classfile.Method) : Void;
	
	@:overload @:public public function write(cf : com.sun.tools.classfile.ClassFile) : Void;
	
	@:overload @:protected private function writeFields() : Void;
	
	@:overload @:protected private function writeField(f : com.sun.tools.classfile.Field) : Void;
	
	@:overload @:protected private function writeMethods() : Void;
	
	@:overload @:protected private function writeMethod(m : com.sun.tools.classfile.Method) : Void;
	
	
}
@:native('com$sun$tools$javap$ClassWriter$JavaTypePrinter') @:internal extern class ClassWriter_JavaTypePrinter implements com.sun.tools.classfile.Type.Type_Visitor<java.lang.StringBuilder, java.lang.StringBuilder>
{
	@:overload @:public public function visitSimpleType(type : com.sun.tools.classfile.Type.Type_SimpleType, sb : java.lang.StringBuilder) : java.lang.StringBuilder;
	
	@:overload @:public public function visitArrayType(type : com.sun.tools.classfile.Type.Type_ArrayType, sb : java.lang.StringBuilder) : java.lang.StringBuilder;
	
	@:overload @:public public function visitMethodType(type : com.sun.tools.classfile.Type.Type_MethodType, sb : java.lang.StringBuilder) : java.lang.StringBuilder;
	
	@:overload @:public public function visitClassSigType(type : com.sun.tools.classfile.Type.Type_ClassSigType, sb : java.lang.StringBuilder) : java.lang.StringBuilder;
	
	@:overload @:public public function visitClassType(type : com.sun.tools.classfile.Type.Type_ClassType, sb : java.lang.StringBuilder) : java.lang.StringBuilder;
	
	@:overload @:public public function visitTypeParamType(type : com.sun.tools.classfile.Type.Type_TypeParamType, sb : java.lang.StringBuilder) : java.lang.StringBuilder;
	
	@:overload @:public public function visitWildcardType(type : com.sun.tools.classfile.Type.Type_WildcardType, sb : java.lang.StringBuilder) : java.lang.StringBuilder;
	
	
}

package com.sun.tools.javap;
/*
* Copyright (c) 2007, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class JavapTask implements com.sun.tools.javap.DisassemblerTool.DisassemblerTool_DisassemblerTask implements com.sun.tools.javap.Messages
{
	@:overload public function new() : Void;
	
	@:overload public function new(out : java.io.Writer, fileManager : javax.tools.JavaFileManager, diagnosticListener : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>) : Void;
	
	@:overload public function new(out : java.io.Writer, fileManager : javax.tools.JavaFileManager, diagnosticListener : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>, options : java.lang.Iterable<String>, classes : java.lang.Iterable<String>) : Void;
	
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	@:overload public function setLog(log : java.io.PrintWriter) : Void;
	
	@:overload public function setLog(s : java.io.OutputStream) : Void;
	
	@:overload public function setDiagnosticListener(dl : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>) : Void;
	
	@:overload public function setDiagnosticListener(s : java.io.OutputStream) : Void;
	
	@:overload public function handleOptions(args : java.NativeArray<String>) : Void;
	
	@:overload public function call() : Null<Bool>;
	
	@:overload public function run() : Bool;
	
	@:overload private function writeClass(classWriter : com.sun.tools.classfile.ClassWriter, className : String) : Bool;
	
	@:overload private function open(className : String) : javax.tools.JavaFileObject;
	
	@:overload public function read(fo : javax.tools.JavaFileObject) : JavapTask_ClassFileInfo;
	
	@:overload public function write(info : JavapTask_ClassFileInfo) : Void;
	
	@:overload private function setClassFile(classFile : com.sun.tools.classfile.ClassFile) : Void;
	
	@:overload private function setMethod(enclosingMethod : com.sun.tools.classfile.Method) : Void;
	
	@:overload private function write(value : com.sun.tools.classfile.Attribute) : Void;
	
	@:overload private function write(attrs : com.sun.tools.classfile.Attributes) : Void;
	
	@:overload private function write(constant_pool : com.sun.tools.classfile.ConstantPool) : Void;
	
	@:overload private function write(constant_pool : com.sun.tools.classfile.ConstantPool, value : Int) : Void;
	
	@:overload private function write(value : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo) : Void;
	
	@:overload private function write(value : com.sun.tools.classfile.Field) : Void;
	
	@:overload private function write(value : com.sun.tools.classfile.Method) : Void;
	
	@:overload public function getMessage(key : String, args : java.NativeArray<Dynamic>) : String;
	
	@:overload public function getMessage(locale : java.util.Locale, key : String, args : java.NativeArray<Dynamic>) : String;
	
	private var context : com.sun.tools.javap.Context;
	
	private var attributeFactory : com.sun.tools.classfile.Attribute.Attribute_Factory;
	
	
}
/**
*  "Main" class for javap, normally accessed from the command line
*  via Main, or from JSR199 via DisassemblerTool.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
@:native('com$sun$tools$javap$JavapTask$BadArgs') extern class JavapTask_BadArgs extends java.lang.Exception
{
	
}
@:native('com$sun$tools$javap$JavapTask$Option') @:internal extern class JavapTask_Option
{
	
}
@:native('com$sun$tools$javap$JavapTask$ClassFileInfo') extern class JavapTask_ClassFileInfo
{
	public var fo(default, null) : javax.tools.JavaFileObject;
	
	public var cf(default, null) : com.sun.tools.classfile.ClassFile;
	
	public var digest(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	public var size(default, null) : Int;
	
	
}
@:native('com$sun$tools$javap$JavapTask$SizeInputStream') @:internal extern class JavapTask_SizeInputStream extends java.io.FilterInputStream
{
	@:overload override public function read(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Int;
	
	@:overload override public function read() : Int;
	
	
}

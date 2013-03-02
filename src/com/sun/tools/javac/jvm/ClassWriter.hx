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
extern class ClassWriter extends com.sun.tools.javac.jvm.ClassFile
{
	/** This class provides operations to map an internal symbol table graph
	*  rooted in a ClassSymbol into a classfile.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	private static var classWriterKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.jvm.ClassWriter>;
	
	/** Get the ClassWriter instance for this context. */
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.jvm.ClassWriter;
	
	/** Return flags as a string, separated by " ".
	*/
	@:overload public static function flagNames(flags : haxe.Int64) : String;
	
	/** Given a type t, return the extended class name of its erasure in
	*  external representation.
	*/
	@:overload public function xClassName(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.Name;
	
	/** Emit a class file for a given class.
	*  @param c      The class from which a class file is generated.
	*/
	@:overload public function writeClass(c : ClassSymbol) : javax.tools.JavaFileObject;
	
	/** Write class `c' to outstream `out'.
	*/
	@:overload public function writeClassFile(out : java.io.OutputStream, c : ClassSymbol) : Void;
	
	
}
/** Thrown when the constant pool is over full.
*/
@:native('com$sun$tools$javac$jvm$ClassWriter$PoolOverflow') extern class ClassWriter_PoolOverflow extends java.lang.Exception
{
	@:overload public function new() : Void;
	
	
}
@:native('com$sun$tools$javac$jvm$ClassWriter$StringOverflow') extern class ClassWriter_StringOverflow extends java.lang.Exception
{
	public var value(default, null) : String;
	
	@:overload public function new(s : String) : Void;
	
	
}
/** A visitor to write an attribute including its leading
*  single-character marker.
*/
@:native('com$sun$tools$javac$jvm$ClassWriter$AttributeWriter') @:internal extern class ClassWriter_AttributeWriter implements com.sun.tools.javac.code.Attribute.Attribute_Visitor
{
	@:overload public function visitConstant(_value : com.sun.tools.javac.code.Attribute.Attribute_Constant) : Void;
	
	@:overload public function visitEnum(e : com.sun.tools.javac.code.Attribute.Attribute_Enum) : Void;
	
	@:overload public function visitClass(clazz : com.sun.tools.javac.code.Attribute.Attribute_Class) : Void;
	
	@:overload public function visitCompound(compound : com.sun.tools.javac.code.Attribute.Attribute_Compound) : Void;
	
	@:overload public function visitError(x : com.sun.tools.javac.code.Attribute.Attribute_Error) : Void;
	
	@:overload public function visitArray(array : com.sun.tools.javac.code.Attribute.Attribute_Array) : Void;
	
	
}
/** An entry in the JSR202 StackMapTable */
@:native('com$sun$tools$javac$jvm$ClassWriter$StackMapTableFrame') @:internal extern class ClassWriter_StackMapTableFrame
{
	
}
@:native('com$sun$tools$javac$jvm$ClassWriter$StackMapTableFrame$SameFrame') @:internal extern class ClassWriter_StackMapTableFrame_SameFrame extends com.sun.tools.javac.jvm.ClassWriter.ClassWriter_StackMapTableFrame
{
	
}
@:native('com$sun$tools$javac$jvm$ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame') @:internal extern class ClassWriter_StackMapTableFrame_SameLocals1StackItemFrame extends com.sun.tools.javac.jvm.ClassWriter.ClassWriter_StackMapTableFrame
{
	
}
@:native('com$sun$tools$javac$jvm$ClassWriter$StackMapTableFrame$ChopFrame') @:internal extern class ClassWriter_StackMapTableFrame_ChopFrame extends com.sun.tools.javac.jvm.ClassWriter.ClassWriter_StackMapTableFrame
{
	
}
@:native('com$sun$tools$javac$jvm$ClassWriter$StackMapTableFrame$AppendFrame') @:internal extern class ClassWriter_StackMapTableFrame_AppendFrame extends com.sun.tools.javac.jvm.ClassWriter.ClassWriter_StackMapTableFrame
{
	
}
@:native('com$sun$tools$javac$jvm$ClassWriter$StackMapTableFrame$FullFrame') @:internal extern class ClassWriter_StackMapTableFrame_FullFrame extends com.sun.tools.javac.jvm.ClassWriter.ClassWriter_StackMapTableFrame
{
	
}

package com.sun.tools.classfile;
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
extern class Attribute
{
	/**
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	public static var AnnotationDefault(default, null) : String;
	
	public static var BootstrapMethods(default, null) : String;
	
	public static var CharacterRangeTable(default, null) : String;
	
	public static var Code(default, null) : String;
	
	public static var ConstantValue(default, null) : String;
	
	public static var CompilationID(default, null) : String;
	
	public static var Deprecated(default, null) : String;
	
	public static var EnclosingMethod(default, null) : String;
	
	public static var Exceptions(default, null) : String;
	
	public static var InnerClasses(default, null) : String;
	
	public static var LineNumberTable(default, null) : String;
	
	public static var LocalVariableTable(default, null) : String;
	
	public static var LocalVariableTypeTable(default, null) : String;
	
	public static var RuntimeVisibleAnnotations(default, null) : String;
	
	public static var RuntimeInvisibleAnnotations(default, null) : String;
	
	public static var RuntimeVisibleParameterAnnotations(default, null) : String;
	
	public static var RuntimeInvisibleParameterAnnotations(default, null) : String;
	
	public static var Signature(default, null) : String;
	
	public static var SourceDebugExtension(default, null) : String;
	
	public static var SourceFile(default, null) : String;
	
	public static var SourceID(default, null) : String;
	
	public static var StackMap(default, null) : String;
	
	public static var StackMapTable(default, null) : String;
	
	public static var Synthetic(default, null) : String;
	
	@:overload public static function read(cr : com.sun.tools.classfile.ClassReader) : Attribute;
	
	@:overload private function new(name_index : Int, length : Int) : Void;
	
	@:overload public function getName(constant_pool : com.sun.tools.classfile.ConstantPool) : String;
	
	@:overload @:abstract public function accept<R, D>(visitor : Attribute_Visitor<R, D>, data : D) : R;
	
	@:overload public function byteLength() : Int;
	
	public var attribute_name_index(default, null) : Int;
	
	public var attribute_length(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$Attribute$Factory') extern class Attribute_Factory
{
	@:overload public function new() : Void;
	
	@:overload public function setCompat(compat : Bool) : Void;
	
	@:overload public function createAttribute(cr : com.sun.tools.classfile.ClassReader, name_index : Int, data : java.NativeArray<java.StdTypes.Int8>) : Attribute;
	
	@:overload private function init() : Void;
	
	
}
@:native('com$sun$tools$classfile$Attribute$Visitor') extern interface Attribute_Visitor<R, P>
{
	@:overload public function visitBootstrapMethods(attr : com.sun.tools.classfile.BootstrapMethods_attribute, p : P) : R;
	
	@:overload public function visitDefault(attr : com.sun.tools.classfile.DefaultAttribute, p : P) : R;
	
	@:overload public function visitAnnotationDefault(attr : com.sun.tools.classfile.AnnotationDefault_attribute, p : P) : R;
	
	@:overload public function visitCharacterRangeTable(attr : com.sun.tools.classfile.CharacterRangeTable_attribute, p : P) : R;
	
	@:overload public function visitCode(attr : com.sun.tools.classfile.Code_attribute, p : P) : R;
	
	@:overload public function visitCompilationID(attr : com.sun.tools.classfile.CompilationID_attribute, p : P) : R;
	
	@:overload public function visitConstantValue(attr : com.sun.tools.classfile.ConstantValue_attribute, p : P) : R;
	
	@:overload public function visitDeprecated(attr : com.sun.tools.classfile.Deprecated_attribute, p : P) : R;
	
	@:overload public function visitEnclosingMethod(attr : com.sun.tools.classfile.EnclosingMethod_attribute, p : P) : R;
	
	@:overload public function visitExceptions(attr : com.sun.tools.classfile.Exceptions_attribute, p : P) : R;
	
	@:overload public function visitInnerClasses(attr : com.sun.tools.classfile.InnerClasses_attribute, p : P) : R;
	
	@:overload public function visitLineNumberTable(attr : com.sun.tools.classfile.LineNumberTable_attribute, p : P) : R;
	
	@:overload public function visitLocalVariableTable(attr : com.sun.tools.classfile.LocalVariableTable_attribute, p : P) : R;
	
	@:overload public function visitLocalVariableTypeTable(attr : com.sun.tools.classfile.LocalVariableTypeTable_attribute, p : P) : R;
	
	@:overload public function visitRuntimeVisibleAnnotations(attr : com.sun.tools.classfile.RuntimeVisibleAnnotations_attribute, p : P) : R;
	
	@:overload public function visitRuntimeInvisibleAnnotations(attr : com.sun.tools.classfile.RuntimeInvisibleAnnotations_attribute, p : P) : R;
	
	@:overload public function visitRuntimeVisibleParameterAnnotations(attr : com.sun.tools.classfile.RuntimeVisibleParameterAnnotations_attribute, p : P) : R;
	
	@:overload public function visitRuntimeInvisibleParameterAnnotations(attr : com.sun.tools.classfile.RuntimeInvisibleParameterAnnotations_attribute, p : P) : R;
	
	@:overload public function visitSignature(attr : com.sun.tools.classfile.Signature_attribute, p : P) : R;
	
	@:overload public function visitSourceDebugExtension(attr : com.sun.tools.classfile.SourceDebugExtension_attribute, p : P) : R;
	
	@:overload public function visitSourceFile(attr : com.sun.tools.classfile.SourceFile_attribute, p : P) : R;
	
	@:overload public function visitSourceID(attr : com.sun.tools.classfile.SourceID_attribute, p : P) : R;
	
	@:overload public function visitStackMap(attr : com.sun.tools.classfile.StackMap_attribute, p : P) : R;
	
	@:overload public function visitStackMapTable(attr : com.sun.tools.classfile.StackMapTable_attribute, p : P) : R;
	
	@:overload public function visitSynthetic(attr : com.sun.tools.classfile.Synthetic_attribute, p : P) : R;
	
	
}

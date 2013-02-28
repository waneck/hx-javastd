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
/**
* Write a ClassFile data structure to a file or stream.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class ClassWriter
{
	@:overload public function new() : Void;
	
	/**
	* Write a ClassFile data structure to a file.
	*/
	@:overload public function write(classFile : com.sun.tools.classfile.ClassFile, f : java.io.File) : Void;
	
	/**
	* Write a ClassFile data structure to a stream.
	*/
	@:overload public function write(classFile : com.sun.tools.classfile.ClassFile, s : java.io.OutputStream) : Void;
	
	@:overload private function write() : Void;
	
	@:overload private function writeHeader() : Void;
	
	@:overload private function writeAccessFlags(flags : com.sun.tools.classfile.AccessFlags) : Void;
	
	@:overload private function writeAttributes(attributes : com.sun.tools.classfile.Attributes) : Void;
	
	@:overload private function writeClassInfo() : Void;
	
	@:overload private function writeDescriptor(d : com.sun.tools.classfile.Descriptor) : Void;
	
	@:overload private function writeConstantPool() : Void;
	
	@:overload private function writeFields() : Void;
	
	@:overload private function writeField(f : com.sun.tools.classfile.Field) : Void;
	
	@:overload private function writeMethods() : Void;
	
	@:overload private function writeMethod(m : com.sun.tools.classfile.Method) : Void;
	
	private var classFile : com.sun.tools.classfile.ClassFile;
	
	private var out : ClassWriter_ClassOutputStream;
	
	private var attributeWriter : ClassWriter_AttributeWriter;
	
	private var constantPoolWriter : ClassWriter_ConstantPoolWriter;
	
	
}
/**
* Subtype of ByteArrayOutputStream with the convenience methods of
* a DataOutputStream. Since ByteArrayOutputStream does not throw
* IOException, there are no exceptions from the additional
* convenience methods either,
*/
@:native('com$sun$tools$classfile$ClassWriter$ClassOutputStream') extern class ClassWriter_ClassOutputStream extends java.io.ByteArrayOutputStream
{
	@:overload public function new() : Void;
	
	@:overload public function writeByte(value : Int) : Void;
	
	@:overload public function writeShort(value : Int) : Void;
	
	@:overload public function writeInt(value : Int) : Void;
	
	@:overload public function writeLong(value : haxe.Int64) : Void;
	
	@:overload public function writeFloat(value : Single) : Void;
	
	@:overload public function writeDouble(value : Float) : Void;
	
	@:overload public function writeUTF(value : String) : Void;
	
	@:overload public function writeTo(s : ClassWriter_ClassOutputStream) : Void;
	
	
}
/**
* Writer for the entries in the constant pool.
*/
@:native('com$sun$tools$classfile$ClassWriter$ConstantPoolWriter') extern class ClassWriter_ConstantPoolWriter implements com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<Null<Int>, ClassWriter_ClassOutputStream>
{
	@:overload private function write(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo, out : ClassWriter_ClassOutputStream) : Int;
	
	@:overload public function visitClass(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Class_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitDouble(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Double_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitFieldref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Fieldref_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitFloat(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Float_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitInteger(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Integer_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitInterfaceMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InterfaceMethodref_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitInvokeDynamic(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InvokeDynamic_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitLong(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Long_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitNameAndType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_NameAndType_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitMethodHandle(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodHandle_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitMethodType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodType_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Methodref_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitString(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_String_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload public function visitUtf8(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Utf8_info, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	@:overload private function writeRef(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CPRefInfo, out : ClassWriter_ClassOutputStream) : Null<Int>;
	
	
}
/**
* Writer for the different types of attribute.
*/
@:native('com$sun$tools$classfile$ClassWriter$AttributeWriter') extern class ClassWriter_AttributeWriter implements com.sun.tools.classfile.Attribute.Attribute_Visitor<java.lang.Void, ClassWriter_ClassOutputStream>
{
	@:overload public function write(attributes : com.sun.tools.classfile.Attributes, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function write(attr : com.sun.tools.classfile.Attribute, out : ClassWriter_ClassOutputStream) : Void;
	
	private var sharedOut : ClassWriter_ClassOutputStream;
	
	private var annotationWriter : ClassWriter_AnnotationWriter;
	
	@:overload public function visitDefault(attr : com.sun.tools.classfile.DefaultAttribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitAnnotationDefault(attr : com.sun.tools.classfile.AnnotationDefault_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitBootstrapMethods(attr : com.sun.tools.classfile.BootstrapMethods_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitCharacterRangeTable(attr : com.sun.tools.classfile.CharacterRangeTable_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload private function writeCharacterRangeTableEntry(entry : com.sun.tools.classfile.CharacterRangeTable_attribute.CharacterRangeTable_attribute_Entry, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function visitCode(attr : com.sun.tools.classfile.Code_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload private function writeExceptionTableEntry(exception_data : com.sun.tools.classfile.Code_attribute.Code_attribute_Exception_data, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function visitCompilationID(attr : com.sun.tools.classfile.CompilationID_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitConstantValue(attr : com.sun.tools.classfile.ConstantValue_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitDeprecated(attr : com.sun.tools.classfile.Deprecated_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitEnclosingMethod(attr : com.sun.tools.classfile.EnclosingMethod_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitExceptions(attr : com.sun.tools.classfile.Exceptions_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitInnerClasses(attr : com.sun.tools.classfile.InnerClasses_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload private function writeInnerClassesInfo(info : com.sun.tools.classfile.InnerClasses_attribute.InnerClasses_attribute_Info, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function visitLineNumberTable(attr : com.sun.tools.classfile.LineNumberTable_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload private function writeLineNumberTableEntry(entry : com.sun.tools.classfile.LineNumberTable_attribute.LineNumberTable_attribute_Entry, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function visitLocalVariableTable(attr : com.sun.tools.classfile.LocalVariableTable_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload private function writeLocalVariableTableEntry(entry : com.sun.tools.classfile.LocalVariableTable_attribute.LocalVariableTable_attribute_Entry, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function visitLocalVariableTypeTable(attr : com.sun.tools.classfile.LocalVariableTypeTable_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload private function writeLocalVariableTypeTableEntry(entry : com.sun.tools.classfile.LocalVariableTypeTable_attribute.LocalVariableTypeTable_attribute_Entry, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function visitRuntimeVisibleAnnotations(attr : com.sun.tools.classfile.RuntimeVisibleAnnotations_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitRuntimeInvisibleAnnotations(attr : com.sun.tools.classfile.RuntimeInvisibleAnnotations_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitRuntimeVisibleParameterAnnotations(attr : com.sun.tools.classfile.RuntimeVisibleParameterAnnotations_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitRuntimeInvisibleParameterAnnotations(attr : com.sun.tools.classfile.RuntimeInvisibleParameterAnnotations_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitSignature(attr : com.sun.tools.classfile.Signature_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitSourceDebugExtension(attr : com.sun.tools.classfile.SourceDebugExtension_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitSourceFile(attr : com.sun.tools.classfile.SourceFile_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitSourceID(attr : com.sun.tools.classfile.SourceID_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitStackMap(attr : com.sun.tools.classfile.StackMap_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitStackMapTable(attr : com.sun.tools.classfile.StackMapTable_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitSynthetic(attr : com.sun.tools.classfile.Synthetic_attribute, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload private function writeAccessFlags(flags : com.sun.tools.classfile.AccessFlags, p : ClassWriter_ClassOutputStream) : Void;
	
	private var stackMapWriter : ClassWriter_StackMapTableWriter;
	
	
}
/**
* Writer for the frames of StackMap and StackMapTable attributes.
*/
@:native('com$sun$tools$classfile$ClassWriter$StackMapTableWriter') extern class ClassWriter_StackMapTableWriter implements stack_map_frame.Visitor<java.lang.Void, ClassWriter_ClassOutputStream>
{
	@:overload public function write(frame : stack_map_frame, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function visit_same_frame(frame : same_frame, p : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visit_same_locals_1_stack_item_frame(frame : same_locals_1_stack_item_frame, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visit_same_locals_1_stack_item_frame_extended(frame : same_locals_1_stack_item_frame_extended, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visit_chop_frame(frame : chop_frame, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visit_same_frame_extended(frame : same_frame_extended, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visit_append_frame(frame : append_frame, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visit_full_frame(frame : full_frame, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload private function writeVerificationTypeInfo(info : verification_type_info, out : ClassWriter_ClassOutputStream) : Void;
	
	
}
/**
* Writer for annotations and the values they contain.
*/
@:native('com$sun$tools$classfile$ClassWriter$AnnotationWriter') extern class ClassWriter_AnnotationWriter implements com.sun.tools.classfile.Annotation.Annotation_element_value_Visitor<java.lang.Void, ClassWriter_ClassOutputStream>
{
	@:overload public function write(annos : java.NativeArray<com.sun.tools.classfile.Annotation>, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function write(anno : com.sun.tools.classfile.Annotation, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function write(pair : com.sun.tools.classfile.Annotation.Annotation_element_value_pair, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function write(ev : com.sun.tools.classfile.Annotation.Annotation_element_value, out : ClassWriter_ClassOutputStream) : Void;
	
	@:overload public function visitPrimitive(ev : com.sun.tools.classfile.Annotation.Annotation_Primitive_element_value, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitEnum(ev : com.sun.tools.classfile.Annotation.Annotation_Enum_element_value, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitClass(ev : com.sun.tools.classfile.Annotation.Annotation_Class_element_value, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitAnnotation(ev : com.sun.tools.classfile.Annotation.Annotation_Annotation_element_value, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	@:overload public function visitArray(ev : com.sun.tools.classfile.Annotation.Annotation_Array_element_value, out : ClassWriter_ClassOutputStream) : java.lang.Void;
	
	
}

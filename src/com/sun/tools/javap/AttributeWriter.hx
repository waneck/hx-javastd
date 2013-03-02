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
*  A writer for writing Attributes as text.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class AttributeWriter extends com.sun.tools.javap.BasicWriter implements com.sun.tools.classfile.Attribute.Attribute_Visitor<java.lang.Void, java.lang.Void>
{
	@:overload public static function instance(context : com.sun.tools.javap.Context) : com.sun.tools.javap.AttributeWriter;
	
	@:overload private function new(context : com.sun.tools.javap.Context) : Void;
	
	@:overload public function write(owner : Dynamic, attr : com.sun.tools.classfile.Attribute, constant_pool : com.sun.tools.classfile.ConstantPool) : Void;
	
	@:overload public function write(owner : Dynamic, attrs : com.sun.tools.classfile.Attributes, constant_pool : com.sun.tools.classfile.ConstantPool) : Void;
	
	@:overload public function visitDefault(attr : com.sun.tools.classfile.DefaultAttribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitAnnotationDefault(attr : com.sun.tools.classfile.AnnotationDefault_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitBootstrapMethods(attr : com.sun.tools.classfile.BootstrapMethods_attribute, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitCharacterRangeTable(attr : com.sun.tools.classfile.CharacterRangeTable_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitCode(attr : com.sun.tools.classfile.Code_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitCompilationID(attr : com.sun.tools.classfile.CompilationID_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitConstantValue(attr : com.sun.tools.classfile.ConstantValue_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitDeprecated(attr : com.sun.tools.classfile.Deprecated_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitEnclosingMethod(attr : com.sun.tools.classfile.EnclosingMethod_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitExceptions(attr : com.sun.tools.classfile.Exceptions_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitInnerClasses(attr : com.sun.tools.classfile.InnerClasses_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitLineNumberTable(attr : com.sun.tools.classfile.LineNumberTable_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitLocalVariableTable(attr : com.sun.tools.classfile.LocalVariableTable_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitLocalVariableTypeTable(attr : com.sun.tools.classfile.LocalVariableTypeTable_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitRuntimeVisibleAnnotations(attr : com.sun.tools.classfile.RuntimeVisibleAnnotations_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitRuntimeInvisibleAnnotations(attr : com.sun.tools.classfile.RuntimeInvisibleAnnotations_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitRuntimeVisibleParameterAnnotations(attr : com.sun.tools.classfile.RuntimeVisibleParameterAnnotations_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitRuntimeInvisibleParameterAnnotations(attr : com.sun.tools.classfile.RuntimeInvisibleParameterAnnotations_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitSignature(attr : com.sun.tools.classfile.Signature_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitSourceDebugExtension(attr : com.sun.tools.classfile.SourceDebugExtension_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitSourceFile(attr : com.sun.tools.classfile.SourceFile_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitSourceID(attr : com.sun.tools.classfile.SourceID_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitStackMap(attr : com.sun.tools.classfile.StackMap_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitStackMapTable(attr : com.sun.tools.classfile.StackMapTable_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	@:overload public function visitSynthetic(attr : com.sun.tools.classfile.Synthetic_attribute, ignore : java.lang.Void) : java.lang.Void;
	
	
}
@:native('com$sun$tools$javap$AttributeWriter$StackMapTableWriter') @:internal extern class AttributeWriter_StackMapTableWriter implements com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_stack_map_frame_Visitor<java.lang.Void, java.lang.Void>
{
	@:overload public function write(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_stack_map_frame) : Void;
	
	@:overload public function visit_same_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_same_frame, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visit_same_locals_1_stack_item_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_same_locals_1_stack_item_frame, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visit_same_locals_1_stack_item_frame_extended(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_same_locals_1_stack_item_frame_extended, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visit_chop_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_chop_frame, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visit_same_frame_extended(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_same_frame_extended, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visit_append_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_append_frame, p : java.lang.Void) : java.lang.Void;
	
	@:overload public function visit_full_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_full_frame, p : java.lang.Void) : java.lang.Void;
	
	
}

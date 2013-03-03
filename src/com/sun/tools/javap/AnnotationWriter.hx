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
extern class AnnotationWriter extends com.sun.tools.javap.BasicWriter
{
	@:overload @:protected private function new(context : com.sun.tools.javap.Context) : Void;
	
	@:overload @:public public function write(annot : com.sun.tools.classfile.Annotation) : Void;
	
	@:overload @:public public function write(annot : com.sun.tools.classfile.Annotation, resolveIndices : Bool) : Void;
	
	@:overload @:public public function write(pair : com.sun.tools.classfile.Annotation.Annotation_element_value_pair) : Void;
	
	@:overload @:public public function write(pair : com.sun.tools.classfile.Annotation.Annotation_element_value_pair, resolveIndices : Bool) : Void;
	
	@:overload @:public public function write(value : com.sun.tools.classfile.Annotation.Annotation_element_value) : Void;
	
	@:overload @:public public function write(value : com.sun.tools.classfile.Annotation.Annotation_element_value, resolveIndices : Bool) : Void;
	
	
}
@:native('com$sun$tools$javap$AnnotationWriter$element_value_Writer') @:internal extern class AnnotationWriter_element_value_Writer implements com.sun.tools.classfile.Annotation.Annotation_element_value_Visitor<java.lang.Void, Null<Bool>>
{
	@:overload @:public public function write(value : com.sun.tools.classfile.Annotation.Annotation_element_value, resolveIndices : Bool) : Void;
	
	@:overload @:public public function visitPrimitive(ev : com.sun.tools.classfile.Annotation.Annotation_Primitive_element_value, resolveIndices : Null<Bool>) : java.lang.Void;
	
	@:overload @:public public function visitEnum(ev : com.sun.tools.classfile.Annotation.Annotation_Enum_element_value, resolveIndices : Null<Bool>) : java.lang.Void;
	
	@:overload @:public public function visitClass(ev : com.sun.tools.classfile.Annotation.Annotation_Class_element_value, resolveIndices : Null<Bool>) : java.lang.Void;
	
	@:overload @:public public function visitAnnotation(ev : com.sun.tools.classfile.Annotation.Annotation_Annotation_element_value, resolveIndices : Null<Bool>) : java.lang.Void;
	
	@:overload @:public public function visitArray(ev : com.sun.tools.classfile.Annotation.Annotation_Array_element_value, resolveIndices : Null<Bool>) : java.lang.Void;
	
	
}

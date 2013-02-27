package com.sun.tools.classfile;
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
extern class Annotation
{
	@:overload public function new(constant_pool : com.sun.tools.classfile.ConstantPool, type_index : Int, element_value_pairs : java.NativeArray<Annotation_element_value_pair>) : Void;
	
	@:overload public function length() : Int;
	
	public var type_index(default, null) : Int;
	
	public var num_element_value_pairs(default, null) : Int;
	
	public var element_value_pairs(default, null) : java.NativeArray<Annotation_element_value_pair>;
	
	
}
/**
* See JVMS, section 4.8.16.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
@:native('com$sun$tools$classfile$Annotation$InvalidAnnotation') @:internal extern class Annotation_InvalidAnnotation extends com.sun.tools.classfile.AttributeException
{
	
}
/**
* See JVMS, section 4.8.16.1.
*/
@:native('com$sun$tools$classfile$Annotation$element_value') extern class Annotation_element_value
{
	@:overload public static function read(cr : com.sun.tools.classfile.ClassReader) : Annotation_element_value;
	
	@:overload private function new(tag : Int) : Void;
	
	@:overload @:abstract public function length() : Int;
	
	@:overload @:abstract public function accept<R, P>(visitor : Annotation_element_value_Visitor<R, P>, p : P) : R;
	
	public var tag(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$Annotation$element_value$Visitor') extern interface Annotation_element_value_Visitor<R, P>
{
	@:overload public function visitPrimitive(ev : Annotation_Primitive_element_value, p : P) : R;
	
	@:overload public function visitEnum(ev : Annotation_Enum_element_value, p : P) : R;
	
	@:overload public function visitClass(ev : Annotation_Class_element_value, p : P) : R;
	
	@:overload public function visitAnnotation(ev : Annotation_Annotation_element_value, p : P) : R;
	
	@:overload public function visitArray(ev : Annotation_Array_element_value, p : P) : R;
	
	
}
@:native('com$sun$tools$classfile$Annotation$Primitive_element_value') extern class Annotation_Primitive_element_value extends Annotation_element_value
{
	@:overload override public function length() : Int;
	
	@:overload override public function accept<R, P>(visitor : Annotation_element_value_Visitor<R, P>, p : P) : R;
	
	public var const_value_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$Annotation$Enum_element_value') extern class Annotation_Enum_element_value extends Annotation_element_value
{
	@:overload override public function length() : Int;
	
	@:overload override public function accept<R, P>(visitor : Annotation_element_value_Visitor<R, P>, p : P) : R;
	
	public var type_name_index(default, null) : Int;
	
	public var const_name_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$Annotation$Class_element_value') extern class Annotation_Class_element_value extends Annotation_element_value
{
	@:overload override public function length() : Int;
	
	@:overload override public function accept<R, P>(visitor : Annotation_element_value_Visitor<R, P>, p : P) : R;
	
	public var class_info_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$Annotation$Annotation_element_value') extern class Annotation_Annotation_element_value extends Annotation_element_value
{
	@:overload override public function length() : Int;
	
	@:overload override public function accept<R, P>(visitor : Annotation_element_value_Visitor<R, P>, p : P) : R;
	
	public var annotation_value(default, null) : Annotation;
	
	
}
@:native('com$sun$tools$classfile$Annotation$Array_element_value') extern class Annotation_Array_element_value extends Annotation_element_value
{
	@:overload override public function length() : Int;
	
	@:overload override public function accept<R, P>(visitor : Annotation_element_value_Visitor<R, P>, p : P) : R;
	
	public var num_values(default, null) : Int;
	
	public var values(default, null) : java.NativeArray<Annotation_element_value>;
	
	
}
@:native('com$sun$tools$classfile$Annotation$element_value_pair') extern class Annotation_element_value_pair
{
	@:overload public function length() : Int;
	
	public var element_name_index(default, null) : Int;
	
	public var value(default, null) : Annotation_element_value;
	
	
}

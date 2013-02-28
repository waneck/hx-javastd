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
extern class StackMapTable_attribute extends com.sun.tools.classfile.Attribute
{
	@:overload public function new(constant_pool : com.sun.tools.classfile.ConstantPool, entries : java.NativeArray<StackMapTable_attribute_stack_map_frame>) : Void;
	
	@:overload public function new(name_index : Int, entries : java.NativeArray<StackMapTable_attribute_stack_map_frame>) : Void;
	
	@:overload public function accept<R, D>(visitor : com.sun.tools.classfile.Attribute.Attribute_Visitor<R, D>, data : D) : R;
	
	public var number_of_entries(default, null) : Int;
	
	public var entries(default, null) : java.NativeArray<StackMapTable_attribute_stack_map_frame>;
	
	
}
/**
* See JVMS, section 4.8.4.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
@:native('com$sun$tools$classfile$StackMapTable_attribute$InvalidStackMap') @:internal extern class StackMapTable_attribute_InvalidStackMap extends com.sun.tools.classfile.AttributeException
{
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$stack_map_frame') extern class StackMapTable_attribute_stack_map_frame
{
	@:overload private function new(frame_type : Int) : Void;
	
	@:overload public function length() : Int;
	
	@:overload @:abstract public function getOffsetDelta() : Int;
	
	@:overload @:abstract public function accept<R, D>(visitor : com.sun.tools.classfile.Attribute.Attribute_Visitor<R, D>, data : D) : R;
	
	public var frame_type(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$stack_map_frame$Visitor') extern interface StackMapTable_attribute_stack_map_frame_Visitor<R, P>
{
	@:overload public function visit_same_frame(frame : StackMapTable_attribute_same_frame, p : P) : R;
	
	@:overload public function visit_same_locals_1_stack_item_frame(frame : StackMapTable_attribute_same_locals_1_stack_item_frame, p : P) : R;
	
	@:overload public function visit_same_locals_1_stack_item_frame_extended(frame : StackMapTable_attribute_same_locals_1_stack_item_frame_extended, p : P) : R;
	
	@:overload public function visit_chop_frame(frame : StackMapTable_attribute_chop_frame, p : P) : R;
	
	@:overload public function visit_same_frame_extended(frame : StackMapTable_attribute_same_frame_extended, p : P) : R;
	
	@:overload public function visit_append_frame(frame : StackMapTable_attribute_append_frame, p : P) : R;
	
	@:overload public function visit_full_frame(frame : StackMapTable_attribute_full_frame, p : P) : R;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$same_frame') extern class StackMapTable_attribute_same_frame extends StackMapTable_attribute_stack_map_frame
{
	@:overload public function accept<R, D>(visitor : StackMapTable_attribute_stack_map_frame_Visitor<R, D>, data : D) : R;
	
	@:overload override public function getOffsetDelta() : Int;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$same_locals_1_stack_item_frame') extern class StackMapTable_attribute_same_locals_1_stack_item_frame extends StackMapTable_attribute_stack_map_frame
{
	@:overload override public function length() : Int;
	
	@:overload public function accept<R, D>(visitor : StackMapTable_attribute_stack_map_frame_Visitor<R, D>, data : D) : R;
	
	@:overload override public function getOffsetDelta() : Int;
	
	public var stack(default, null) : java.NativeArray<StackMapTable_attribute_verification_type_info>;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$same_locals_1_stack_item_frame_extended') extern class StackMapTable_attribute_same_locals_1_stack_item_frame_extended extends StackMapTable_attribute_stack_map_frame
{
	@:overload override public function length() : Int;
	
	@:overload public function accept<R, D>(visitor : StackMapTable_attribute_stack_map_frame_Visitor<R, D>, data : D) : R;
	
	@:overload override public function getOffsetDelta() : Int;
	
	public var offset_delta(default, null) : Int;
	
	public var stack(default, null) : java.NativeArray<StackMapTable_attribute_verification_type_info>;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$chop_frame') extern class StackMapTable_attribute_chop_frame extends StackMapTable_attribute_stack_map_frame
{
	@:overload override public function length() : Int;
	
	@:overload public function accept<R, D>(visitor : StackMapTable_attribute_stack_map_frame_Visitor<R, D>, data : D) : R;
	
	@:overload override public function getOffsetDelta() : Int;
	
	public var offset_delta(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$same_frame_extended') extern class StackMapTable_attribute_same_frame_extended extends StackMapTable_attribute_stack_map_frame
{
	@:overload override public function length() : Int;
	
	@:overload public function accept<R, D>(visitor : StackMapTable_attribute_stack_map_frame_Visitor<R, D>, data : D) : R;
	
	@:overload override public function getOffsetDelta() : Int;
	
	public var offset_delta(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$append_frame') extern class StackMapTable_attribute_append_frame extends StackMapTable_attribute_stack_map_frame
{
	@:overload override public function length() : Int;
	
	@:overload public function accept<R, D>(visitor : StackMapTable_attribute_stack_map_frame_Visitor<R, D>, data : D) : R;
	
	@:overload override public function getOffsetDelta() : Int;
	
	public var offset_delta(default, null) : Int;
	
	public var locals(default, null) : java.NativeArray<StackMapTable_attribute_verification_type_info>;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$full_frame') extern class StackMapTable_attribute_full_frame extends StackMapTable_attribute_stack_map_frame
{
	@:overload override public function length() : Int;
	
	@:overload public function accept<R, D>(visitor : StackMapTable_attribute_stack_map_frame_Visitor<R, D>, data : D) : R;
	
	@:overload override public function getOffsetDelta() : Int;
	
	public var offset_delta(default, null) : Int;
	
	public var number_of_locals(default, null) : Int;
	
	public var locals(default, null) : java.NativeArray<StackMapTable_attribute_verification_type_info>;
	
	public var number_of_stack_items(default, null) : Int;
	
	public var stack(default, null) : java.NativeArray<StackMapTable_attribute_verification_type_info>;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$verification_type_info') extern class StackMapTable_attribute_verification_type_info
{
	public static var ITEM_Top(default, null) : Int;
	
	public static var ITEM_Integer(default, null) : Int;
	
	public static var ITEM_Float(default, null) : Int;
	
	public static var ITEM_Long(default, null) : Int;
	
	public static var ITEM_Double(default, null) : Int;
	
	public static var ITEM_Null(default, null) : Int;
	
	public static var ITEM_UninitializedThis(default, null) : Int;
	
	public static var ITEM_Object(default, null) : Int;
	
	public static var ITEM_Uninitialized(default, null) : Int;
	
	@:overload private function new(tag : Int) : Void;
	
	@:overload public function length() : Int;
	
	public var tag(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$Object_variable_info') extern class StackMapTable_attribute_Object_variable_info extends StackMapTable_attribute_verification_type_info
{
	@:overload override public function length() : Int;
	
	public var cpool_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$StackMapTable_attribute$Uninitialized_variable_info') extern class StackMapTable_attribute_Uninitialized_variable_info extends StackMapTable_attribute_verification_type_info
{
	@:overload override public function length() : Int;
	
	public var offset(default, null) : Int;
	
	
}

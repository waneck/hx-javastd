package com.sun.tools.javap;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
* Annotate instructions with stack map.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class StackMapWriter extends com.sun.tools.javap.InstructionDetailWriter
{
	@:overload @:protected private function new(context : com.sun.tools.javap.Context) : Void;
	
	@:overload @:public public function reset(attr : com.sun.tools.classfile.Code_attribute) : Void;
	
	@:overload @:public public function writeInitialDetails() : Void;
	
	@:overload @:public public function writeDetails(instr : com.sun.tools.classfile.Instruction) : Void;
	
	
}
@:native('com$sun$tools$javap$StackMapWriter$StackMapBuilder') @:internal extern class StackMapWriter_StackMapBuilder implements com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_stack_map_frame_Visitor<Null<Int>, Null<Int>>
{
	@:overload @:public public function visit_same_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_same_frame, pc : Null<Int>) : Null<Int>;
	
	@:overload @:public public function visit_same_locals_1_stack_item_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_same_locals_1_stack_item_frame, pc : Null<Int>) : Null<Int>;
	
	@:overload @:public public function visit_same_locals_1_stack_item_frame_extended(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_same_locals_1_stack_item_frame_extended, pc : Null<Int>) : Null<Int>;
	
	@:overload @:public public function visit_chop_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_chop_frame, pc : Null<Int>) : Null<Int>;
	
	@:overload @:public public function visit_same_frame_extended(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_same_frame_extended, pc : Null<Int>) : Null<Int>;
	
	@:overload @:public public function visit_append_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_append_frame, pc : Null<Int>) : Null<Int>;
	
	@:overload @:public public function visit_full_frame(frame : com.sun.tools.classfile.StackMapTable_attribute.StackMapTable_attribute_full_frame, pc : Null<Int>) : Null<Int>;
	
	
}
@:native('com$sun$tools$javap$StackMapWriter$StackMap') @:internal extern class StackMapWriter_StackMap
{
	
}
@:native('com$sun$tools$javap$StackMapWriter$CustomVerificationTypeInfo') @:internal extern class StackMapWriter_CustomVerificationTypeInfo extends verification_type_info
{
	@:overload @:public public function new(text : String) : Void;
	
	
}

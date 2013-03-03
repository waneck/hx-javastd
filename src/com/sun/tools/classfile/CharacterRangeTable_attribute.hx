package com.sun.tools.classfile;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class CharacterRangeTable_attribute extends com.sun.tools.classfile.Attribute
{
	/**
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:public @:static @:final public static var CRT_STATEMENT(default, null) : Int;
	
	@:public @:static @:final public static var CRT_BLOCK(default, null) : Int;
	
	@:public @:static @:final public static var CRT_ASSIGNMENT(default, null) : Int;
	
	@:public @:static @:final public static var CRT_FLOW_CONTROLLER(default, null) : Int;
	
	@:public @:static @:final public static var CRT_FLOW_TARGET(default, null) : Int;
	
	@:public @:static @:final public static var CRT_INVOKE(default, null) : Int;
	
	@:public @:static @:final public static var CRT_CREATE(default, null) : Int;
	
	@:public @:static @:final public static var CRT_BRANCH_TRUE(default, null) : Int;
	
	@:public @:static @:final public static var CRT_BRANCH_FALSE(default, null) : Int;
	
	@:overload @:public public function new(constant_pool : com.sun.tools.classfile.ConstantPool, character_range_table : java.NativeArray<com.sun.tools.classfile.CharacterRangeTable_attribute.CharacterRangeTable_attribute_Entry>) : Void;
	
	@:overload @:public public function new(name_index : Int, character_range_table : java.NativeArray<com.sun.tools.classfile.CharacterRangeTable_attribute.CharacterRangeTable_attribute_Entry>) : Void;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.Attribute.Attribute_Visitor<R, D>, data : D) : R;
	
	@:public @:final public var character_range_table(default, null) : java.NativeArray<com.sun.tools.classfile.CharacterRangeTable_attribute.CharacterRangeTable_attribute_Entry>;
	
	
}
@:native('com$sun$tools$classfile$CharacterRangeTable_attribute$Entry') extern class CharacterRangeTable_attribute_Entry
{
	@:overload @:public @:static public static function length() : Int;
	
	@:public @:final public var start_pc(default, null) : Int;
	
	@:public @:final public var end_pc(default, null) : Int;
	
	@:public @:final public var character_range_start(default, null) : Int;
	
	@:public @:final public var character_range_end(default, null) : Int;
	
	@:public @:final public var flags(default, null) : Int;
	
	
}

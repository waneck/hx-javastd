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
/**
* See JVMS, section 4.8.6.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class InnerClasses_attribute extends com.sun.tools.classfile.Attribute
{
	@:overload public function new(constant_pool : com.sun.tools.classfile.ConstantPool, classes : java.NativeArray<com.sun.tools.classfile.InnerClasses_attribute.InnerClasses_attribute_Info>) : Void;
	
	@:overload public function new(name_index : Int, classes : java.NativeArray<com.sun.tools.classfile.InnerClasses_attribute.InnerClasses_attribute_Info>) : Void;
	
	@:overload override public function accept<R, D>(visitor : com.sun.tools.classfile.Attribute.Attribute_Visitor<R, D>, data : D) : R;
	
	public var number_of_classes(default, null) : Int;
	
	public var classes(default, null) : java.NativeArray<com.sun.tools.classfile.InnerClasses_attribute.InnerClasses_attribute_Info>;
	
	
}
@:native('com$sun$tools$classfile$InnerClasses_attribute$Info') extern class InnerClasses_attribute_Info
{
	@:overload public function getInnerClassInfo(constant_pool : com.sun.tools.classfile.ConstantPool) : CONSTANT_Class_info;
	
	@:overload public function getOuterClassInfo(constant_pool : com.sun.tools.classfile.ConstantPool) : CONSTANT_Class_info;
	
	@:overload public function getInnerName(constant_pool : com.sun.tools.classfile.ConstantPool) : String;
	
	@:overload public static function length() : Int;
	
	public var inner_class_info_index(default, null) : Int;
	
	public var outer_class_info_index(default, null) : Int;
	
	public var inner_name_index(default, null) : Int;
	
	public var inner_class_access_flags(default, null) : com.sun.tools.classfile.AccessFlags;
	
	
}

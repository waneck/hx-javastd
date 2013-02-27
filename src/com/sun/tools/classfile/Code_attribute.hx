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
extern class Code_attribute extends com.sun.tools.classfile.Attribute
{
	@:overload public function getByte(offset : Int) : Int;
	
	@:overload public function getUnsignedByte(offset : Int) : Int;
	
	@:overload public function getShort(offset : Int) : Int;
	
	@:overload public function getUnsignedShort(offset : Int) : Int;
	
	@:overload public function getInt(offset : Int) : Int;
	
	@:overload public function accept<R, D>(visitor : Visitor<R, D>, data : D) : R;
	
	@:overload public function getInstructions() : java.lang.Iterable<com.sun.tools.classfile.Instruction>;
	
	public var max_stack(default, null) : Int;
	
	public var max_locals(default, null) : Int;
	
	public var code_length(default, null) : Int;
	
	public var code(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	public var exception_table_langth(default, null) : Int;
	
	public var exception_table(default, null) : java.NativeArray<Code_attribute_Exception_data>;
	
	public var attributes(default, null) : com.sun.tools.classfile.Attributes;
	
	
}
/**
* See JVMS, section 4.8.3.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
@:native('com$sun$tools$classfile$Code_attribute$InvalidIndex') extern class Code_attribute_InvalidIndex extends com.sun.tools.classfile.AttributeException
{
	@:overload override public function getMessage() : String;
	
	public var index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$Code_attribute$Exception_data') extern class Code_attribute_Exception_data
{
	public var start_pc(default, null) : Int;
	
	public var end_pc(default, null) : Int;
	
	public var handler_pc(default, null) : Int;
	
	public var catch_type(default, null) : Int;
	
	
}

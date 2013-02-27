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
extern class ConstantPool
{
	public static var CONSTANT_Utf8(default, null) : Int;
	
	public static var CONSTANT_Integer(default, null) : Int;
	
	public static var CONSTANT_Float(default, null) : Int;
	
	public static var CONSTANT_Long(default, null) : Int;
	
	public static var CONSTANT_Double(default, null) : Int;
	
	public static var CONSTANT_Class(default, null) : Int;
	
	public static var CONSTANT_String(default, null) : Int;
	
	public static var CONSTANT_Fieldref(default, null) : Int;
	
	public static var CONSTANT_Methodref(default, null) : Int;
	
	public static var CONSTANT_InterfaceMethodref(default, null) : Int;
	
	public static var CONSTANT_NameAndType(default, null) : Int;
	
	public static var CONSTANT_MethodHandle(default, null) : Int;
	
	public static var CONSTANT_MethodType(default, null) : Int;
	
	public static var CONSTANT_InvokeDynamic(default, null) : Int;
	
	@:overload public function new(pool : java.NativeArray<ConstantPool_CPInfo>) : Void;
	
	@:overload public function size() : Int;
	
	@:overload public function byteLength() : Int;
	
	@:overload public function get(index : Int) : ConstantPool_CPInfo;
	
	@:overload public function getUTF8Info(index : Int) : ConstantPool_CONSTANT_Utf8_info;
	
	@:overload public function getClassInfo(index : Int) : ConstantPool_CONSTANT_Class_info;
	
	@:overload public function getNameAndTypeInfo(index : Int) : ConstantPool_CONSTANT_NameAndType_info;
	
	@:overload public function getUTF8Value(index : Int) : String;
	
	@:overload public function getUTF8Index(value : String) : Int;
	
	@:overload public function entries() : java.lang.Iterable<ConstantPool_CPInfo>;
	
	
}
/**
* See JVMS, section 4.5.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
@:native('com$sun$tools$classfile$ConstantPool$InvalidIndex') extern class ConstantPool_InvalidIndex extends com.sun.tools.classfile.ConstantPoolException
{
	@:overload override public function getMessage() : String;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$UnexpectedEntry') extern class ConstantPool_UnexpectedEntry extends com.sun.tools.classfile.ConstantPoolException
{
	@:overload override public function getMessage() : String;
	
	public var expected_tag(default, null) : Int;
	
	public var found_tag(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$InvalidEntry') extern class ConstantPool_InvalidEntry extends com.sun.tools.classfile.ConstantPoolException
{
	@:overload override public function getMessage() : String;
	
	public var tag(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$EntryNotFound') extern class ConstantPool_EntryNotFound extends com.sun.tools.classfile.ConstantPoolException
{
	@:overload override public function getMessage() : String;
	
	public var value(default, null) : Dynamic;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$RefKind') extern enum ConstantPool_RefKind
{
	REF_getField;
	REF_getStatic;
	REF_putField;
	REF_putStatic;
	REF_invokeVirtual;
	REF_invokeStatic;
	REF_invokeSpecial;
	REF_newInvokeSpecial;
	REF_invokeInterface;
	
}

@:native('com$sun$tools$classfile$ConstantPool$Visitor') extern interface ConstantPool_Visitor<R, P>
{
	@:overload public function visitClass(info : ConstantPool_CONSTANT_Class_info, p : P) : R;
	
	@:overload public function visitDouble(info : ConstantPool_CONSTANT_Double_info, p : P) : R;
	
	@:overload public function visitFieldref(info : ConstantPool_CONSTANT_Fieldref_info, p : P) : R;
	
	@:overload public function visitFloat(info : ConstantPool_CONSTANT_Float_info, p : P) : R;
	
	@:overload public function visitInteger(info : ConstantPool_CONSTANT_Integer_info, p : P) : R;
	
	@:overload public function visitInterfaceMethodref(info : ConstantPool_CONSTANT_InterfaceMethodref_info, p : P) : R;
	
	@:overload public function visitInvokeDynamic(info : ConstantPool_CONSTANT_InvokeDynamic_info, p : P) : R;
	
	@:overload public function visitLong(info : ConstantPool_CONSTANT_Long_info, p : P) : R;
	
	@:overload public function visitNameAndType(info : ConstantPool_CONSTANT_NameAndType_info, p : P) : R;
	
	@:overload public function visitMethodref(info : ConstantPool_CONSTANT_Methodref_info, p : P) : R;
	
	@:overload public function visitMethodHandle(info : ConstantPool_CONSTANT_MethodHandle_info, p : P) : R;
	
	@:overload public function visitMethodType(info : ConstantPool_CONSTANT_MethodType_info, p : P) : R;
	
	@:overload public function visitString(info : ConstantPool_CONSTANT_String_info, p : P) : R;
	
	@:overload public function visitUtf8(info : ConstantPool_CONSTANT_Utf8_info, p : P) : R;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CPInfo') extern class ConstantPool_CPInfo
{
	@:overload @:abstract public function getTag() : Int;
	
	/** The number of slots in the constant pool used by this entry.
	* 2 for CONSTANT_Double and CONSTANT_Long; 1 for everything else. */
	@:overload public function size() : Int;
	
	@:overload @:abstract public function byteLength() : Int;
	
	@:overload @:abstract public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	private var cp(default, null) : ConstantPool;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CPRefInfo') extern class ConstantPool_CPRefInfo extends ConstantPool_CPInfo
{
	@:overload private function new(cp : ConstantPool, cr : com.sun.tools.classfile.ClassReader, tag : Int) : Void;
	
	@:overload private function new(cp : ConstantPool, tag : Int, class_index : Int, name_and_type_index : Int) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function getClassInfo() : ConstantPool_CONSTANT_Class_info;
	
	@:overload public function getClassName() : String;
	
	@:overload public function getNameAndTypeInfo() : ConstantPool_CONSTANT_NameAndType_info;
	
	public var tag(default, null) : Int;
	
	public var class_index(default, null) : Int;
	
	public var name_and_type_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Class_info') extern class ConstantPool_CONSTANT_Class_info extends ConstantPool_CPInfo
{
	@:overload public function new(cp : ConstantPool, name_index : Int) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	/**
	* Get the raw value of the class referenced by this constant pool entry.
	* This will either be the name of the class, in internal form, or a
	* descriptor for an array class.
	* @return the raw value of the class
	*/
	@:overload public function getName() : String;
	
	/**
	* If this constant pool entry identifies either a class or interface type,
	* or a possibly multi-dimensional array of a class of interface type,
	* return the name of the class or interface in internal form. Otherwise,
	* (i.e. if this is a possibly multi-dimensional array of a primitive type),
	* return null.
	* @return the base class or interface name
	*/
	@:overload public function getBaseName() : String;
	
	@:overload public function getDimensionCount() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	public var name_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Double_info') extern class ConstantPool_CONSTANT_Double_info extends ConstantPool_CPInfo
{
	@:overload public function new(value : Float) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload override public function size() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	public var value(default, null) : Float;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Fieldref_info') extern class ConstantPool_CONSTANT_Fieldref_info extends ConstantPool_CPRefInfo
{
	@:overload public function new(cp : ConstantPool, class_index : Int, name_and_type_index : Int) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Float_info') extern class ConstantPool_CONSTANT_Float_info extends ConstantPool_CPInfo
{
	@:overload public function new(value : Single) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	public var value(default, null) : Single;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Integer_info') extern class ConstantPool_CONSTANT_Integer_info extends ConstantPool_CPInfo
{
	@:overload public function new(value : Int) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	public var value(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_InterfaceMethodref_info') extern class ConstantPool_CONSTANT_InterfaceMethodref_info extends ConstantPool_CPRefInfo
{
	@:overload public function new(cp : ConstantPool, class_index : Int, name_and_type_index : Int) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_InvokeDynamic_info') extern class ConstantPool_CONSTANT_InvokeDynamic_info extends ConstantPool_CPInfo
{
	@:overload public function new(cp : ConstantPool, bootstrap_method_index : Int, name_and_type_index : Int) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload public function getNameAndTypeInfo() : ConstantPool_CONSTANT_NameAndType_info;
	
	public var bootstrap_method_attr_index(default, null) : Int;
	
	public var name_and_type_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Long_info') extern class ConstantPool_CONSTANT_Long_info extends ConstantPool_CPInfo
{
	@:overload public function new(value : haxe.Int64) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function size() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	public var value(default, null) : haxe.Int64;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_MethodHandle_info') extern class ConstantPool_CONSTANT_MethodHandle_info extends ConstantPool_CPInfo
{
	@:overload public function new(cp : ConstantPool, ref_kind : ConstantPool_RefKind, member_index : Int) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload public function getCPRefInfo() : ConstantPool_CPRefInfo;
	
	public var reference_kind(default, null) : ConstantPool_RefKind;
	
	public var reference_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_MethodType_info') extern class ConstantPool_CONSTANT_MethodType_info extends ConstantPool_CPInfo
{
	@:overload public function new(cp : ConstantPool, signature_index : Int) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload public function getType() : String;
	
	public var descriptor_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Methodref_info') extern class ConstantPool_CONSTANT_Methodref_info extends ConstantPool_CPRefInfo
{
	@:overload public function new(cp : ConstantPool, class_index : Int, name_and_type_index : Int) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_NameAndType_info') extern class ConstantPool_CONSTANT_NameAndType_info extends ConstantPool_CPInfo
{
	@:overload public function new(cp : ConstantPool, name_index : Int, type_index : Int) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function getName() : String;
	
	@:overload public function getType() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload public function toString() : String;
	
	public var name_index(default, null) : Int;
	
	public var type_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_String_info') extern class ConstantPool_CONSTANT_String_info extends ConstantPool_CPInfo
{
	@:overload public function new(cp : ConstantPool, string_index : Int) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function getString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload public function toString() : String;
	
	public var string_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Utf8_info') extern class ConstantPool_CONSTANT_Utf8_info extends ConstantPool_CPInfo
{
	@:overload public function new(value : String) : Void;
	
	@:overload override public function getTag() : Int;
	
	@:overload override public function byteLength() : Int;
	
	@:overload public function toString() : String;
	
	@:overload override public function accept<R, D>(visitor : ConstantPool_Visitor<R, D>, data : D) : R;
	
	public var value(default, null) : String;
	
	
}

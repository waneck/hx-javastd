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
	@:public @:static @:final public static var CONSTANT_Utf8(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_Integer(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_Float(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_Long(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_Double(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_Class(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_String(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_Fieldref(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_Methodref(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_InterfaceMethodref(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_NameAndType(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_MethodHandle(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_MethodType(default, null) : Int;
	
	@:public @:static @:final public static var CONSTANT_InvokeDynamic(default, null) : Int;
	
	@:overload @:public public function new(pool : java.NativeArray<com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo>) : Void;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function byteLength() : Int;
	
	@:overload @:public public function get(index : Int) : com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo;
	
	@:overload @:public public function getUTF8Info(index : Int) : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Utf8_info;
	
	@:overload @:public public function getClassInfo(index : Int) : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Class_info;
	
	@:overload @:public public function getNameAndTypeInfo(index : Int) : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_NameAndType_info;
	
	@:overload @:public public function getUTF8Value(index : Int) : String;
	
	@:overload @:public public function getUTF8Index(value : String) : Int;
	
	@:overload @:public public function entries() : java.lang.Iterable<com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo>;
	
	
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
	@:overload @:public override public function getMessage() : String;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$UnexpectedEntry') extern class ConstantPool_UnexpectedEntry extends com.sun.tools.classfile.ConstantPoolException
{
	@:overload @:public override public function getMessage() : String;
	
	@:public @:final public var expected_tag(default, null) : Int;
	
	@:public @:final public var found_tag(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$InvalidEntry') extern class ConstantPool_InvalidEntry extends com.sun.tools.classfile.ConstantPoolException
{
	@:overload @:public override public function getMessage() : String;
	
	@:public @:final public var tag(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$EntryNotFound') extern class ConstantPool_EntryNotFound extends com.sun.tools.classfile.ConstantPoolException
{
	@:overload @:public override public function getMessage() : String;
	
	@:public @:final public var value(default, null) : Dynamic;
	
	
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
	@:overload public function visitClass(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Class_info, p : P) : R;
	
	@:overload public function visitDouble(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Double_info, p : P) : R;
	
	@:overload public function visitFieldref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Fieldref_info, p : P) : R;
	
	@:overload public function visitFloat(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Float_info, p : P) : R;
	
	@:overload public function visitInteger(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Integer_info, p : P) : R;
	
	@:overload public function visitInterfaceMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InterfaceMethodref_info, p : P) : R;
	
	@:overload public function visitInvokeDynamic(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_InvokeDynamic_info, p : P) : R;
	
	@:overload public function visitLong(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Long_info, p : P) : R;
	
	@:overload public function visitNameAndType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_NameAndType_info, p : P) : R;
	
	@:overload public function visitMethodref(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Methodref_info, p : P) : R;
	
	@:overload public function visitMethodHandle(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodHandle_info, p : P) : R;
	
	@:overload public function visitMethodType(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_MethodType_info, p : P) : R;
	
	@:overload public function visitString(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_String_info, p : P) : R;
	
	@:overload public function visitUtf8(info : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Utf8_info, p : P) : R;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CPInfo') extern class ConstantPool_CPInfo
{
	@:overload @:public @:abstract public function getTag() : Int;
	
	/** The number of slots in the constant pool used by this entry.
	* 2 for CONSTANT_Double and CONSTANT_Long; 1 for everything else. */
	@:overload @:public public function size() : Int;
	
	@:overload @:public @:abstract public function byteLength() : Int;
	
	@:overload @:public @:abstract public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:protected @:final private var cp(default, null) : com.sun.tools.classfile.ConstantPool;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CPRefInfo') extern class ConstantPool_CPRefInfo extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:protected private function new(cp : com.sun.tools.classfile.ConstantPool, cr : com.sun.tools.classfile.ClassReader, tag : Int) : Void;
	
	@:overload @:protected private function new(cp : com.sun.tools.classfile.ConstantPool, tag : Int, class_index : Int, name_and_type_index : Int) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function getClassInfo() : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_Class_info;
	
	@:overload @:public public function getClassName() : String;
	
	@:overload @:public public function getNameAndTypeInfo() : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_NameAndType_info;
	
	@:public @:final public var tag(default, null) : Int;
	
	@:public @:final public var class_index(default, null) : Int;
	
	@:public @:final public var name_and_type_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Class_info') extern class ConstantPool_CONSTANT_Class_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, name_index : Int) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	/**
	* Get the raw value of the class referenced by this constant pool entry.
	* This will either be the name of the class, in internal form, or a
	* descriptor for an array class.
	* @return the raw value of the class
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* If this constant pool entry identifies either a class or interface type,
	* or a possibly multi-dimensional array of a class of interface type,
	* return the name of the class or interface in internal form. Otherwise,
	* (i.e. if this is a possibly multi-dimensional array of a primitive type),
	* return null.
	* @return the base class or interface name
	*/
	@:overload @:public public function getBaseName() : String;
	
	@:overload @:public public function getDimensionCount() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:public @:final public var name_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Double_info') extern class ConstantPool_CONSTANT_Double_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(value : Float) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:public @:final public var value(default, null) : Float;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Fieldref_info') extern class ConstantPool_CONSTANT_Fieldref_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPRefInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, class_index : Int, name_and_type_index : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Float_info') extern class ConstantPool_CONSTANT_Float_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(value : Single) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:public @:final public var value(default, null) : Single;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Integer_info') extern class ConstantPool_CONSTANT_Integer_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(value : Int) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:public @:final public var value(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_InterfaceMethodref_info') extern class ConstantPool_CONSTANT_InterfaceMethodref_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPRefInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, class_index : Int, name_and_type_index : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_InvokeDynamic_info') extern class ConstantPool_CONSTANT_InvokeDynamic_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, bootstrap_method_index : Int, name_and_type_index : Int) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload @:public public function getNameAndTypeInfo() : com.sun.tools.classfile.ConstantPool.ConstantPool_CONSTANT_NameAndType_info;
	
	@:public @:final public var bootstrap_method_attr_index(default, null) : Int;
	
	@:public @:final public var name_and_type_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Long_info') extern class ConstantPool_CONSTANT_Long_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(value : haxe.Int64) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:public @:final public var value(default, null) : haxe.Int64;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_MethodHandle_info') extern class ConstantPool_CONSTANT_MethodHandle_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, ref_kind : com.sun.tools.classfile.ConstantPool.ConstantPool_RefKind, member_index : Int) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload @:public public function getCPRefInfo() : com.sun.tools.classfile.ConstantPool.ConstantPool_CPRefInfo;
	
	@:public @:final public var reference_kind(default, null) : com.sun.tools.classfile.ConstantPool.ConstantPool_RefKind;
	
	@:public @:final public var reference_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_MethodType_info') extern class ConstantPool_CONSTANT_MethodType_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, signature_index : Int) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload @:public public function getType() : String;
	
	@:public @:final public var descriptor_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Methodref_info') extern class ConstantPool_CONSTANT_Methodref_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPRefInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, class_index : Int, name_and_type_index : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_NameAndType_info') extern class ConstantPool_CONSTANT_NameAndType_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, name_index : Int, type_index : Int) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getType() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload @:public public function toString() : String;
	
	@:public @:final public var name_index(default, null) : Int;
	
	@:public @:final public var type_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_String_info') extern class ConstantPool_CONSTANT_String_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(cp : com.sun.tools.classfile.ConstantPool, string_index : Int) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function getString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:overload @:public public function toString() : String;
	
	@:public @:final public var string_index(default, null) : Int;
	
	
}
@:native('com$sun$tools$classfile$ConstantPool$CONSTANT_Utf8_info') extern class ConstantPool_CONSTANT_Utf8_info extends com.sun.tools.classfile.ConstantPool.ConstantPool_CPInfo
{
	@:overload @:public public function new(value : String) : Void;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public override public function byteLength() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function accept<R, D>(visitor : com.sun.tools.classfile.ConstantPool.ConstantPool_Visitor<R, D>, data : D) : R;
	
	@:public @:final public var value(default, null) : String;
	
	
}

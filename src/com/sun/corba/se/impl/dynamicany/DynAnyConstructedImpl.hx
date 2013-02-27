package com.sun.corba.se.impl.dynamicany;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DynAnyConstructedImpl extends com.sun.corba.se.impl.dynamicany.DynAnyImpl
{
	private static var REPRESENTATION_NONE(default, null) : java.StdTypes.Int8;
	
	private static var REPRESENTATION_TYPECODE(default, null) : java.StdTypes.Int8;
	
	private static var REPRESENTATION_ANY(default, null) : java.StdTypes.Int8;
	
	private static var REPRESENTATION_COMPONENTS(default, null) : java.StdTypes.Int8;
	
	private static var RECURSIVE_UNDEF(default, null) : java.StdTypes.Int8;
	
	private static var RECURSIVE_NO(default, null) : java.StdTypes.Int8;
	
	private static var RECURSIVE_YES(default, null) : java.StdTypes.Int8;
	
	private static var emptyComponents(default, null) : java.NativeArray<org.omg.DynamicAny.DynAny>;
	
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, any : org.omg.CORBA.Any, copyValue : Bool) : Void;
	
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, typeCode : org.omg.CORBA.TypeCode) : Void;
	
	@:overload private function isRecursive() : Bool;
	
	@:overload override public function current_component() : org.omg.DynamicAny.DynAny;
	
	@:overload override public function component_count() : Int;
	
	@:overload override public function next() : Bool;
	
	@:overload override public function seek(newIndex : Int) : Bool;
	
	@:overload override public function rewind() : Void;
	
	@:overload override private function clearData() : Void;
	
	@:overload override private function writeAny(out : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload private function checkInitComponents() : Bool;
	
	@:overload private function checkInitAny() : Void;
	
	@:overload @:abstract private function initializeComponentsFromAny() : Bool;
	
	@:overload @:abstract private function initializeComponentsFromTypeCode() : Bool;
	
	@:overload private function initializeAnyFromComponents() : Bool;
	
	@:overload override public function assign(dyn_any : org.omg.DynamicAny.DynAny) : Void;
	
	@:overload override public function from_any(value : org.omg.CORBA.Any) : Void;
	
	@:overload override public function to_any() : org.omg.CORBA.Any;
	
	@:overload override public function equal(dyn_any : org.omg.DynamicAny.DynAny) : Bool;
	
	@:overload override public function destroy() : Void;
	
	@:overload override public function copy() : org.omg.DynamicAny.DynAny;
	
	@:overload override public function insert_boolean(value : Bool) : Void;
	
	@:overload override public function insert_octet(value : java.StdTypes.Int8) : Void;
	
	@:overload override public function insert_char(value : java.StdTypes.Char16) : Void;
	
	@:overload override public function insert_short(value : java.StdTypes.Int16) : Void;
	
	@:overload override public function insert_ushort(value : java.StdTypes.Int16) : Void;
	
	@:overload override public function insert_long(value : Int) : Void;
	
	@:overload override public function insert_ulong(value : Int) : Void;
	
	@:overload override public function insert_float(value : Single) : Void;
	
	@:overload override public function insert_double(value : Float) : Void;
	
	@:overload override public function insert_string(value : String) : Void;
	
	@:overload override public function insert_reference(value : org.omg.CORBA.Object) : Void;
	
	@:overload override public function insert_typecode(value : org.omg.CORBA.TypeCode) : Void;
	
	@:overload override public function insert_longlong(value : haxe.Int64) : Void;
	
	@:overload override public function insert_ulonglong(value : haxe.Int64) : Void;
	
	@:overload override public function insert_wchar(value : java.StdTypes.Char16) : Void;
	
	@:overload override public function insert_wstring(value : String) : Void;
	
	@:overload override public function insert_any(value : org.omg.CORBA.Any) : Void;
	
	@:overload override public function insert_dyn_any(value : org.omg.DynamicAny.DynAny) : Void;
	
	@:overload override public function insert_val(value : java.io.Serializable) : Void;
	
	@:overload override public function get_val() : java.io.Serializable;
	
	@:overload override public function get_boolean() : Bool;
	
	@:overload override public function get_octet() : java.StdTypes.Int8;
	
	@:overload override public function get_char() : java.StdTypes.Char16;
	
	@:overload override public function get_short() : java.StdTypes.Int16;
	
	@:overload override public function get_ushort() : java.StdTypes.Int16;
	
	@:overload override public function get_long() : Int;
	
	@:overload override public function get_ulong() : Int;
	
	@:overload override public function get_float() : Single;
	
	@:overload override public function get_double() : Float;
	
	@:overload override public function get_string() : String;
	
	@:overload override public function get_reference() : org.omg.CORBA.Object;
	
	@:overload override public function get_typecode() : org.omg.CORBA.TypeCode;
	
	@:overload override public function get_longlong() : haxe.Int64;
	
	@:overload override public function get_ulonglong() : haxe.Int64;
	
	@:overload override public function get_wchar() : java.StdTypes.Char16;
	
	@:overload override public function get_wstring() : String;
	
	@:overload override public function get_any() : org.omg.CORBA.Any;
	
	@:overload override public function get_dyn_any() : org.omg.DynamicAny.DynAny;
	
	
}

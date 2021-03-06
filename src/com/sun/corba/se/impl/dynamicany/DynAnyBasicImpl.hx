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
extern class DynAnyBasicImpl extends com.sun.corba.se.impl.dynamicany.DynAnyImpl
{
	@:overload @:protected private function new(orb : com.sun.corba.se.spi.orb.ORB, any : org.omg.CORBA.Any, copyValue : Bool) : Void;
	
	@:overload @:protected private function new(orb : com.sun.corba.se.spi.orb.ORB, typeCode : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:public override public function assign(dyn_any : org.omg.DynamicAny.DynAny) : Void;
	
	@:overload @:public override public function from_any(value : org.omg.CORBA.Any) : Void;
	
	@:overload @:public override public function to_any() : org.omg.CORBA.Any;
	
	@:overload @:public override public function equal(dyn_any : org.omg.DynamicAny.DynAny) : Bool;
	
	@:overload @:public override public function destroy() : Void;
	
	@:overload @:public override public function copy() : org.omg.DynamicAny.DynAny;
	
	@:overload @:public override public function current_component() : org.omg.DynamicAny.DynAny;
	
	@:overload @:public override public function component_count() : Int;
	
	@:overload @:public override public function next() : Bool;
	
	@:overload @:public override public function seek(index : Int) : Bool;
	
	@:overload @:public override public function rewind() : Void;
	
	@:overload @:public override public function insert_boolean(value : Bool) : Void;
	
	@:overload @:public override public function insert_octet(value : java.StdTypes.Int8) : Void;
	
	@:overload @:public override public function insert_char(value : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function insert_short(value : java.StdTypes.Int16) : Void;
	
	@:overload @:public override public function insert_ushort(value : java.StdTypes.Int16) : Void;
	
	@:overload @:public override public function insert_long(value : Int) : Void;
	
	@:overload @:public override public function insert_ulong(value : Int) : Void;
	
	@:overload @:public override public function insert_float(value : Single) : Void;
	
	@:overload @:public override public function insert_double(value : Float) : Void;
	
	@:overload @:public override public function insert_string(value : String) : Void;
	
	@:overload @:public override public function insert_reference(value : org.omg.CORBA.Object) : Void;
	
	@:overload @:public override public function insert_typecode(value : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:public override public function insert_longlong(value : haxe.Int64) : Void;
	
	@:overload @:public override public function insert_ulonglong(value : haxe.Int64) : Void;
	
	@:overload @:public override public function insert_wchar(value : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function insert_wstring(value : String) : Void;
	
	@:overload @:public override public function insert_any(value : org.omg.CORBA.Any) : Void;
	
	@:overload @:public override public function insert_dyn_any(value : org.omg.DynamicAny.DynAny) : Void;
	
	@:overload @:public override public function insert_val(value : java.io.Serializable) : Void;
	
	@:overload @:public override public function get_val() : java.io.Serializable;
	
	@:overload @:public override public function get_boolean() : Bool;
	
	@:overload @:public override public function get_octet() : java.StdTypes.Int8;
	
	@:overload @:public override public function get_char() : java.StdTypes.Char16;
	
	@:overload @:public override public function get_short() : java.StdTypes.Int16;
	
	@:overload @:public override public function get_ushort() : java.StdTypes.Int16;
	
	@:overload @:public override public function get_long() : Int;
	
	@:overload @:public override public function get_ulong() : Int;
	
	@:overload @:public override public function get_float() : Single;
	
	@:overload @:public override public function get_double() : Float;
	
	@:overload @:public override public function get_string() : String;
	
	@:overload @:public override public function get_reference() : org.omg.CORBA.Object;
	
	@:overload @:public override public function get_typecode() : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function get_longlong() : haxe.Int64;
	
	@:overload @:public override public function get_ulonglong() : haxe.Int64;
	
	@:overload @:public override public function get_wchar() : java.StdTypes.Char16;
	
	@:overload @:public override public function get_wstring() : String;
	
	@:overload @:public override public function get_any() : org.omg.CORBA.Any;
	
	@:overload @:public override public function get_dyn_any() : org.omg.DynamicAny.DynAny;
	
	
}

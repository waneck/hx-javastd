package com.sun.jmx.remote.protocol.iiop;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ProxyInputStream extends org.omg.CORBA_2_3.portable.InputStream
{
	@:overload public function new(_in : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function read_boolean() : Bool;
	
	@:overload public function read_char() : java.StdTypes.Char16;
	
	@:overload public function read_wchar() : java.StdTypes.Char16;
	
	@:overload public function read_octet() : java.StdTypes.Int8;
	
	@:overload public function read_short() : java.StdTypes.Int16;
	
	@:overload public function read_ushort() : java.StdTypes.Int16;
	
	@:overload public function read_long() : Int;
	
	@:overload public function read_ulong() : Int;
	
	@:overload public function read_longlong() : haxe.Int64;
	
	@:overload public function read_ulonglong() : haxe.Int64;
	
	@:overload public function read_float() : Single;
	
	@:overload public function read_double() : Float;
	
	@:overload public function read_string() : String;
	
	@:overload public function read_wstring() : String;
	
	@:overload public function read_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload public function read_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload public function read_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload public function read_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload public function read_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload public function read_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload public function read_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload public function read_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload public function read_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload public function read_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload public function read_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload public function read_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload public function read_Object() : org.omg.CORBA.Object;
	
	@:overload public function read_TypeCode() : org.omg.CORBA.TypeCode;
	
	@:overload public function read_any() : org.omg.CORBA.Any;
	
	/**
	* @deprecated
	*/
	@:overload public function read_Principal() : org.omg.CORBA.Principal;
	
	@:overload override public function read() : Int;
	
	@:overload public function read_fixed() : java.math.BigDecimal;
	
	@:overload public function read_Context() : org.omg.CORBA.Context;
	
	@:overload public function read_Object(clz : Class<Dynamic>) : org.omg.CORBA.Object;
	
	@:overload public function orb() : org.omg.CORBA.ORB;
	
	@:overload public function read_value() : java.io.Serializable;
	
	@:overload public function read_value(clz : Class<Dynamic>) : java.io.Serializable;
	
	@:overload public function read_value(factory : org.omg.CORBA.portable.BoxedValueHelper) : java.io.Serializable;
	
	@:overload public function read_value(rep_id : String) : java.io.Serializable;
	
	@:overload public function read_value(value : java.io.Serializable) : java.io.Serializable;
	
	@:overload public function read_abstract_interface() : Dynamic;
	
	@:overload public function read_abstract_interface(clz : Class<Dynamic>) : Dynamic;
	
	@:overload private function narrow() : org.omg.CORBA_2_3.portable.InputStream;
	
	@:overload public function getProxiedInputStream() : org.omg.CORBA.portable.InputStream;
	
	//private var _in(default, null) : org.omg.CORBA.portable.InputStream;
	
	
}

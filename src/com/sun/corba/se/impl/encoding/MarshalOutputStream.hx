package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface MarshalOutputStream
{
	@:overload @:public public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	@:overload @:public public function write_boolean(value : Bool) : Void;
	
	@:overload @:public public function write_char(value : java.StdTypes.Char16) : Void;
	
	@:overload @:public public function write_wchar(value : java.StdTypes.Char16) : Void;
	
	@:overload @:public public function write_octet(value : java.StdTypes.Int8) : Void;
	
	@:overload @:public public function write_short(value : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function write_ushort(value : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function write_long(value : Int) : Void;
	
	@:overload @:public public function write_ulong(value : Int) : Void;
	
	@:overload @:public public function write_longlong(value : haxe.Int64) : Void;
	
	@:overload @:public public function write_ulonglong(value : haxe.Int64) : Void;
	
	@:overload @:public public function write_float(value : Single) : Void;
	
	@:overload @:public public function write_double(value : Float) : Void;
	
	@:overload @:public public function write_string(value : String) : Void;
	
	@:overload @:public public function write_wstring(value : String) : Void;
	
	@:overload @:public public function write_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_Object(value : org.omg.CORBA.Object) : Void;
	
	@:overload @:public public function write_TypeCode(value : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:public public function write_any(value : org.omg.CORBA.Any) : Void;
	
	@:overload @:public public function write_Principal(value : org.omg.CORBA.Principal) : Void;
	
	/*
	* The methods necessary to support RMI
	*/
	@:overload @:public public function write_value(value : java.io.Serializable) : Void;
	
	@:overload @:public public function start_block() : Void;
	
	@:overload @:public public function end_block() : Void;
	
	/*
	* Additional Methods
	*/
	@:overload @:public public function putEndian() : Void;
	
	@:overload @:public public function writeTo(s : java.io.OutputStream) : Void;
	
	@:overload @:public public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	
}

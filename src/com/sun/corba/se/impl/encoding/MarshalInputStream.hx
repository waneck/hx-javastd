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
extern interface MarshalInputStream
{
	@:overload @:public public function read_boolean() : Bool;
	
	@:overload @:public public function read_char() : java.StdTypes.Char16;
	
	@:overload @:public public function read_wchar() : java.StdTypes.Char16;
	
	@:overload @:public public function read_octet() : java.StdTypes.Int8;
	
	@:overload @:public public function read_short() : java.StdTypes.Int16;
	
	@:overload @:public public function read_ushort() : java.StdTypes.Int16;
	
	@:overload @:public public function read_long() : Int;
	
	@:overload @:public public function read_ulong() : Int;
	
	@:overload @:public public function read_longlong() : haxe.Int64;
	
	@:overload @:public public function read_ulonglong() : haxe.Int64;
	
	@:overload @:public public function read_float() : Single;
	
	@:overload @:public public function read_double() : Float;
	
	@:overload @:public public function read_string() : String;
	
	@:overload @:public public function read_wstring() : String;
	
	@:overload @:public public function read_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function read_Object() : org.omg.CORBA.Object;
	
	@:overload @:public public function read_TypeCode() : org.omg.CORBA.TypeCode;
	
	@:overload @:public public function read_any() : org.omg.CORBA.Any;
	
	@:overload @:public public function read_Principal() : org.omg.CORBA.Principal;
	
	/*
	* The methods necessary to support RMI
	*/
	@:overload @:public public function read_Object(stubClass : Class<Dynamic>) : org.omg.CORBA.Object;
	
	@:overload @:public public function read_value() : java.io.Serializable;
	
	/*
	* Additional Methods
	*/
	@:overload @:public public function consumeEndian() : Void;
	
	@:overload @:public public function getPosition() : Int;
	
	@:overload @:public public function mark(readAheadLimit : Int) : Void;
	
	@:overload @:public public function reset() : Void;
	
	/**
	* This must be called once before unmarshaling valuetypes or anything
	* that uses repository IDs.  The ORB's version should be set
	* to the desired value prior to calling.
	*/
	@:overload @:public public function performORBVersionSpecificInit() : Void;
	
	/**
	* Tells the input stream to null any code set converter
	* references, forcing it to reacquire them if it needs
	* converters again.  This is used when the server
	* input stream needs to switch the connection's char code set
	* converter to something different after reading the
	* code set service context for the first time.  Initially,
	* we use ISO8859-1 to read the operation name (it can't
	* be more than ASCII).
	*/
	@:overload @:public public function resetCodeSetConverters() : Void;
	
	
}

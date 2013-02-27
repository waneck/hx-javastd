package org.omg.CORBA;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
/** Defines the methods used to write primitive data types to output streams
* for marshalling custom value types.  This interface is used by user
* written custom marshalling code for custom value types.
* @see org.omg.CORBA.DataInputStream
* @see org.omg.CORBA.CustomMarshal
*/
extern interface DataOutputStream extends org.omg.CORBA.portable.ValueBase
{
	/**
	* Writes the Any value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_any(value : org.omg.CORBA.Any) : Void;
	
	/**
	* Writes the boolean value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_boolean(value : Bool) : Void;
	
	/**
	* Writes the IDL character value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_char(value : java.StdTypes.Char16) : Void;
	
	/**
	* Writes the IDL wide character value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_wchar(value : java.StdTypes.Char16) : Void;
	
	/**
	* Writes the IDL octet value (represented as a Java byte) to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_octet(value : java.StdTypes.Int8) : Void;
	
	/**
	* Writes the IDL short value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_short(value : java.StdTypes.Int16) : Void;
	
	/**
	* Writes the IDL unsigned short value (represented as a Java short
	* value) to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_ushort(value : java.StdTypes.Int16) : Void;
	
	/**
	* Writes the IDL long value (represented as a Java int) to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_long(value : Int) : Void;
	
	/**
	* Writes the IDL unsigned long value (represented as a Java int) to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_ulong(value : Int) : Void;
	
	/**
	* Writes the IDL long long value (represented as a Java long) to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_longlong(value : haxe.Int64) : Void;
	
	/**
	* Writes the IDL unsigned long long value (represented as a Java long)
	* to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_ulonglong(value : haxe.Int64) : Void;
	
	/**
	* Writes the IDL float value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_float(value : Single) : Void;
	
	/**
	* Writes the IDL double value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_double(value : Float) : Void;
	
	/**
	* Writes the IDL string value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_string(value : String) : Void;
	
	/**
	* Writes the IDL wide string value (represented as a Java String) to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_wstring(value : String) : Void;
	
	/**
	* Writes the IDL CORBA::Object value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_Object(value : org.omg.CORBA.Object) : Void;
	
	/**
	* Writes the IDL Abstract interface type to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_Abstract(value : Dynamic) : Void;
	
	/**
	* Writes the IDL value type value to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_Value(value : java.io.Serializable) : Void;
	
	/**
	* Writes the typecode to the output stream.
	* @param value The value to be written.
	*/
	@:overload public function write_TypeCode(value : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Writes the array of IDL Anys from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_any_array(seq : java.NativeArray<org.omg.CORBA.Any>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL booleans from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_boolean_array(seq : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL characters from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_char_array(seq : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL wide characters from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_wchar_array(seq : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL octets from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_octet_array(seq : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL shorts from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_short_array(seq : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL unsigned shorts (represented as Java shorts)
	* from offset for length elements to the output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_ushort_array(seq : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL longs from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_long_array(seq : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL unsigned longs (represented as Java ints)
	* from offset for length elements to the output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_ulong_array(seq : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL unsigned long longs (represented as Java longs)
	* from offset for length elements to the output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_ulonglong_array(seq : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL long longs from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_longlong_array(seq : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL floats from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_float_array(seq : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	/**
	* Writes the array of IDL doubles from offset for length elements to the
	* output stream.
	* @param seq The array to be written.
	* @param offset The index into seq of the first element to write to the
	* output stream.
	* @param length The number of elements to write to the output stream.
	*/
	@:overload public function write_double_array(seq : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	
}

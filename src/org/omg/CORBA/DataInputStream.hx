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
/** Defines the methods used to read primitive data types from input streams
* for unmarshaling custom value types.  This interface is used by user
* written custom unmarshaling code for custom value types.
* @see org.omg.CORBA.DataOutputStream
* @see org.omg.CORBA.CustomMarshal
*/
extern interface DataInputStream extends org.omg.CORBA.portable.ValueBase
{
	/** Reads an IDL <code>Any</code> value from the input stream.
	* @return  the <code>Any</code> read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_any() : org.omg.CORBA.Any;
	
	/** Reads an IDL boolean value from the input stream.
	* @return  the boolean read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_boolean() : Bool;
	
	/** Reads an IDL character value from the input stream.
	* @return  the character read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_char() : java.StdTypes.Char16;
	
	/** Reads an IDL wide character value from the input stream.
	* @return  the wide character read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_wchar() : java.StdTypes.Char16;
	
	/** Reads an IDL octet value from the input stream.
	* @return  the octet value read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_octet() : java.StdTypes.Int8;
	
	/** Reads an IDL short from the input stream.
	* @return  the short read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_short() : java.StdTypes.Int16;
	
	/** Reads an IDL unsigned short from the input stream.
	* @return  the unsigned short read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_ushort() : java.StdTypes.Int16;
	
	/** Reads an IDL long from the input stream.
	* @return  the long read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_long() : Int;
	
	/** Reads an IDL unsigned long from the input stream.
	* @return  the unsigned long read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_ulong() : Int;
	
	/** Reads an IDL long long from the input stream.
	* @return  the long long read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_longlong() : haxe.Int64;
	
	/** Reads an unsigned IDL long long from the input stream.
	* @return  the unsigned long long read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_ulonglong() : haxe.Int64;
	
	/** Reads an IDL float from the input stream.
	* @return  the float read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_float() : Single;
	
	/** Reads an IDL double from the input stream.
	* @return  the double read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_double() : Float;
	
	/** Reads an IDL string from the input stream.
	* @return  the string read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_string() : String;
	
	/** Reads an IDL wide string from the input stream.
	* @return  the wide string read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_wstring() : String;
	
	/** Reads an IDL CORBA::Object from the input stream.
	* @return  the CORBA::Object read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_Object() : org.omg.CORBA.Object;
	
	/** Reads an IDL Abstract interface from the input stream.
	* @return  the Abstract interface read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_Abstract() : Dynamic;
	
	/** Reads an IDL value type from the input stream.
	* @return  the value type read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_Value() : java.io.Serializable;
	
	/** Reads an IDL typecode from the input stream.
	* @return  the typecode read.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_TypeCode() : org.omg.CORBA.TypeCode;
	
	/** Reads array of IDL Anys from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_any_array(seq : org.omg.CORBA.AnySeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL booleans from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_boolean_array(seq : org.omg.CORBA.BooleanSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL characters from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_char_array(seq : org.omg.CORBA.CharSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL wide characters from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_wchar_array(seq : org.omg.CORBA.WCharSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL octets from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_octet_array(seq : org.omg.CORBA.OctetSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL shorts from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_short_array(seq : org.omg.CORBA.ShortSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL unsigned shorts from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_ushort_array(seq : org.omg.CORBA.UShortSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL longs from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_long_array(seq : org.omg.CORBA.LongSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL unsigned longs from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_ulong_array(seq : org.omg.CORBA.ULongSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL unsigned long longs from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_ulonglong_array(seq : org.omg.CORBA.ULongLongSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL long longs from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_longlong_array(seq : org.omg.CORBA.LongLongSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL floats from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_float_array(seq : org.omg.CORBA.FloatSeqHolder, offset : Int, length : Int) : Void;
	
	/** Reads array of IDL doubles from offset for length elements from the
	* input stream.
	* @param seq The out parameter holder for the array to be read.
	* @param offset The index into seq of the first element to read from the
	* input stream.
	* @param length The number of elements to read from the input stream.
	* @throws <code>org.omg.CORBA.MARSHAL</code>
	* If an inconsistency is detected, including not having registered
	* a streaming policy, then the standard system exception MARSHAL is raised.
	*/
	@:overload public function read_double_array(seq : org.omg.CORBA.DoubleSeqHolder, offset : Int, length : Int) : Void;
	
	
}

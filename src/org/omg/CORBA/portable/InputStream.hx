package org.omg.CORBA.portable;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class InputStream extends java.io.InputStream
{
	/**
	* Reads a boolean value from this input stream.
	*
	* @return the <code>boolean</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_boolean() : Bool;
	
	/**
	* Reads a char value from this input stream.
	*
	* @return the <code>char</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_char() : java.StdTypes.Char16;
	
	/**
	* Reads a wide char value from this input stream.
	*
	* @return the <code>char</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_wchar() : java.StdTypes.Char16;
	
	/**
	* Reads an octet (that is, a byte) value from this input stream.
	*
	* @return the <code>byte</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_octet() : java.StdTypes.Int8;
	
	/**
	* Reads a short value from this input stream.
	*
	* @return the <code>short</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_short() : java.StdTypes.Int16;
	
	/**
	* Reads a unsigned short value from this input stream.
	*
	* @return the <code>short</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_ushort() : java.StdTypes.Int16;
	
	/**
	* Reads a CORBA long (that is, Java int) value from this input stream.
	*
	* @return the <code>int</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_long() : Int;
	
	/**
	* Reads an unsigned CORBA long (that is, Java int) value from this input
stream.
	*
	* @return the <code>int</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_ulong() : Int;
	
	/**
	* Reads a CORBA longlong (that is, Java long) value from this input stream.
	*
	* @return the <code>long</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_longlong() : haxe.Int64;
	
	/**
	* Reads a CORBA unsigned longlong (that is, Java long) value from this input
stream.
	*
	* @return the <code>long</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_ulonglong() : haxe.Int64;
	
	/**
	* Reads a float value from this input stream.
	*
	* @return the <code>float</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_float() : Single;
	
	/**
	* Reads a double value from this input stream.
	*
	* @return the <code>double</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_double() : Float;
	
	/**
	* Reads a string value from this input stream.
	*
	* @return the <code>String</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_string() : String;
	
	/**
	* Reads a wide string value from this input stream.
	*
	* @return the <code>String</code> value read from this input stream
	*/
	@:overload @:public @:abstract public function read_wstring() : String;
	
	/**
	* Reads an array of booleans from this input stream.
	* @param value returned array of booleans.
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of chars from this input stream.
	* @param value returned array of chars.
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of wide chars from this input stream.
	* @param value returned array of wide chars.
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of octets (that is, bytes) from this input stream.
	* @param value returned array of octets (that is, bytes).
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of shorts from this input stream.
	* @param value returned array of shorts.
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of unsigned shorts from this input stream.
	* @param value returned array of shorts.
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of CORBA longs (that is, Java ints) from this input stream.
	* @param value returned array of CORBA longs (that is, Java ints).
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of unsigned CORBA longs (that is, Java ints) from this input
stream.
	* @param value returned array of CORBA longs (that is, Java ints).
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of CORBA longlongs (that is, Java longs) from this input
stream.
	* @param value returned array of CORBA longs (that is, Java longs).
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of unsigned CORBA longlongs (that is, Java longs) from this
input stream.
	* @param value returned array of CORBA longs (that is, Java longs).
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of floats from this input stream.
	* @param value returned array of floats.
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	/**
	* Reads an array of doubles from this input stream.
	* @param value returned array of doubles.
	* @param offset offset on the stream.
	* @param length length of buffer to read.
	*/
	@:overload @:public @:abstract public function read_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	/**
	* Reads a CORBA object from this input stream.
	*
	* @return the <code>Object</code> instance read from this input stream.
	*/
	@:overload @:public @:abstract public function read_Object() : org.omg.CORBA.Object;
	
	/**
	* Reads a <code>TypeCode</code> from this input stream.
	*
	* @return the <code>TypeCode</code> instance read from this input stream.
	*/
	@:overload @:public @:abstract public function read_TypeCode() : org.omg.CORBA.TypeCode;
	
	/**
	* Reads an Any from this input stream.
	*
	* @return the <code>Any</code> instance read from this input stream.
	*/
	@:overload @:public @:abstract public function read_any() : org.omg.CORBA.Any;
	
	/**
	* Returns principal for invocation.
	* @return Principal for invocation.
	* @deprecated Deprecated by CORBA 2.2.
	*/
	@:overload @:public public function read_Principal() : org.omg.CORBA.Principal;
	
	/**
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Reads a BigDecimal number.
	* @return a java.math.BigDecimal number
	*/
	@:overload @:public public function read_fixed() : java.math.BigDecimal;
	
	/**
	* Reads a CORBA context from the stream.
	* @return a CORBA context
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function read_Context() : org.omg.CORBA.Context;
	
	/**
	* Unmarshals an object and returns a CORBA Object,
	* which is an instance of the class passed as its argument.
	* This class is the stub class of the expected type.
	*
	* @param clz  The Class object for the stub class which
	* corresponds to the type that is statistically expected, or
	* the Class object for the RMI/IDL interface type that
	* is statistically expected.
	* @return an Object instance of clz read from this stream
	*
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function read_Object(clz : Class<Dynamic>) : org.omg.CORBA.Object;
	
	/**
	* Returns the ORB that created this InputStream.
	*
	* @return the <code>ORB</code> object that created this stream
	*
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function orb() : org.omg.CORBA.ORB;
	
	
}

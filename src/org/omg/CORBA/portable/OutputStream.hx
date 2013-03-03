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
extern class OutputStream extends java.io.OutputStream
{
	/**
	* Returns an input stream with the same buffer.
	*@return an input stream with the same buffer.
	*/
	@:overload @:public @:abstract public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	/**
	* Writes a boolean value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_boolean(value : Bool) : Void;
	
	/**
	* Writes a char value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_char(value : java.StdTypes.Char16) : Void;
	
	/**
	* Writes a wide char value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_wchar(value : java.StdTypes.Char16) : Void;
	
	/**
	* Writes a CORBA octet (i.e. byte) value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_octet(value : java.StdTypes.Int8) : Void;
	
	/**
	* Writes a short value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_short(value : java.StdTypes.Int16) : Void;
	
	/**
	* Writes an unsigned short value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_ushort(value : java.StdTypes.Int16) : Void;
	
	/**
	* Writes a CORBA long (i.e. Java int) value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_long(value : Int) : Void;
	
	/**
	* Writes an unsigned CORBA long (i.e. Java int) value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_ulong(value : Int) : Void;
	
	/**
	* Writes a CORBA longlong (i.e. Java long) value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_longlong(value : haxe.Int64) : Void;
	
	/**
	* Writes an unsigned CORBA longlong (i.e. Java long) value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_ulonglong(value : haxe.Int64) : Void;
	
	/**
	* Writes a float value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_float(value : Single) : Void;
	
	/**
	* Writes a double value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_double(value : Float) : Void;
	
	/**
	* Writes a string value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_string(value : String) : Void;
	
	/**
	* Writes a wide string value to this stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_wstring(value : String) : Void;
	
	/**
	* Writes an array of booleans on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of chars on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of wide chars on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of CORBA octets (bytes) on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of shorts on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of unsigned shorts on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of CORBA longs (i.e. Java ints) on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of unsigned CORBA longs (i.e. Java ints) on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of CORBA longlongs (i.e. Java longs) on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of unsigned CORBA longlongs (i.e. Java ints) on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of floats on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	/**
	* Writes an array of doubles on this output stream.
	* @param value the array to be written.
	* @param offset offset on the stream.
	* @param length length of buffer to write.
	*/
	@:overload @:public @:abstract public function write_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	/**
	* Writes a CORBA Object on this output stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_Object(value : org.omg.CORBA.Object) : Void;
	
	/**
	* Writes a TypeCode on this output stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_TypeCode(value : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Writes an Any on this output stream.
	* @param value the value to be written.
	*/
	@:overload @:public @:abstract public function write_any(value : org.omg.CORBA.Any) : Void;
	
	/**
	* Writes a Principle on this output stream.
	* @param value the value to be written.
	* @deprecated Deprecated by CORBA 2.2.
	*/
	@:overload @:public public function write_Principal(value : org.omg.CORBA.Principal) : Void;
	
	/**
	* Writes an integer (length of arrays) onto this stream.
	* @param b the value to be written.
	* @throws java.io.IOException if there is an input/output error
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public override public function write(b : Int) : Void;
	
	/**
	* Writes a BigDecimal number.
	* @param value a BidDecimal--value to be written.
	*/
	@:overload @:public public function write_fixed(value : java.math.BigDecimal) : Void;
	
	/**
	* Writes a CORBA context on this stream. The
	* Context is marshaled as a sequence of strings.
	* Only those Context values specified in the contexts
	* parameter are actually written.
	* @param ctx a CORBA context
	* @param contexts a <code>ContextList</code> object containing the list of contexts
	*        to be written
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function write_Context(ctx : org.omg.CORBA.Context, contexts : org.omg.CORBA.ContextList) : Void;
	
	/**
	* Returns the ORB that created this OutputStream.
	* @return the ORB that created this OutputStream
	* @see <a href="package-summary.html#unimpl"><code>portable</code>
	* package comments for unimplemented features</a>
	*/
	@:overload @:public public function orb() : org.omg.CORBA.ORB;
	
	
}

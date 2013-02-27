package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CDRInputStreamBase extends java.io.InputStream
{
	/**
	* Describes CDRInputStream delegates and provides some
	* implementation.  Non-default constructors are avoided in
	* the delegation to separate instantiation from initialization,
	* so we use init methods.
	*/
	private var parent : com.sun.corba.se.impl.encoding.CDRInputStream;
	
	@:overload public function setParent(parent : com.sun.corba.se.impl.encoding.CDRInputStream) : Void;
	
	@:overload @:abstract public function init(orb : org.omg.CORBA.ORB, byteBuffer : java.nio.ByteBuffer, size : Int, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerRead) : Void;
	
	@:overload @:abstract public function read_boolean() : Bool;
	
	@:overload @:abstract public function read_char() : java.StdTypes.Char16;
	
	@:overload @:abstract public function read_wchar() : java.StdTypes.Char16;
	
	@:overload @:abstract public function read_octet() : java.StdTypes.Int8;
	
	@:overload @:abstract public function read_short() : java.StdTypes.Int16;
	
	@:overload @:abstract public function read_ushort() : java.StdTypes.Int16;
	
	@:overload @:abstract public function read_long() : Int;
	
	@:overload @:abstract public function read_ulong() : Int;
	
	@:overload @:abstract public function read_longlong() : haxe.Int64;
	
	@:overload @:abstract public function read_ulonglong() : haxe.Int64;
	
	@:overload @:abstract public function read_float() : Single;
	
	@:overload @:abstract public function read_double() : Float;
	
	@:overload @:abstract public function read_string() : String;
	
	@:overload @:abstract public function read_wstring() : String;
	
	@:overload @:abstract public function read_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_Object() : org.omg.CORBA.Object;
	
	@:overload @:abstract public function read_TypeCode() : org.omg.CORBA.TypeCode;
	
	@:overload @:abstract public function read_any() : org.omg.CORBA.Any;
	
	@:overload @:abstract public function read_Principal() : org.omg.CORBA.Principal;
	
	@:overload override public function read() : Int;
	
	@:overload @:abstract public function read_fixed() : java.math.BigDecimal;
	
	@:overload public function read_Context() : org.omg.CORBA.Context;
	
	@:overload @:abstract public function read_Object(clz : Class<Dynamic>) : org.omg.CORBA.Object;
	
	@:overload @:abstract public function orb() : org.omg.CORBA.ORB;
	
	@:overload @:abstract public function read_value() : java.io.Serializable;
	
	@:overload @:abstract public function read_value(clz : Class<Dynamic>) : java.io.Serializable;
	
	@:overload @:abstract public function read_value(factory : org.omg.CORBA.portable.BoxedValueHelper) : java.io.Serializable;
	
	@:overload @:abstract public function read_value(rep_id : String) : java.io.Serializable;
	
	@:overload @:abstract public function read_value(value : java.io.Serializable) : java.io.Serializable;
	
	@:overload @:abstract public function read_abstract_interface() : Dynamic;
	
	@:overload @:abstract public function read_abstract_interface(clz : Class<Dynamic>) : Dynamic;
	
	@:overload @:abstract public function consumeEndian() : Void;
	
	@:overload @:abstract public function getPosition() : Int;
	
	@:overload @:abstract public function read_Abstract() : Dynamic;
	
	@:overload @:abstract public function read_Value() : java.io.Serializable;
	
	@:overload @:abstract public function read_any_array(seq : org.omg.CORBA.AnySeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_boolean_array(seq : org.omg.CORBA.BooleanSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_char_array(seq : org.omg.CORBA.CharSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_wchar_array(seq : org.omg.CORBA.WCharSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_octet_array(seq : org.omg.CORBA.OctetSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_short_array(seq : org.omg.CORBA.ShortSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_ushort_array(seq : org.omg.CORBA.UShortSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_long_array(seq : org.omg.CORBA.LongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_ulong_array(seq : org.omg.CORBA.ULongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_ulonglong_array(seq : org.omg.CORBA.ULongLongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_longlong_array(seq : org.omg.CORBA.LongLongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_float_array(seq : org.omg.CORBA.FloatSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function read_double_array(seq : org.omg.CORBA.DoubleSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:abstract public function _truncatable_ids() : java.NativeArray<String>;
	
	@:overload @:abstract override public function mark(readlimit : Int) : Void;
	
	@:overload @:abstract override public function reset() : Void;
	
	@:overload override public function markSupported() : Bool;
	
	@:overload @:abstract public function dup() : CDRInputStreamBase;
	
	@:overload @:abstract public function read_fixed(digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : java.math.BigDecimal;
	
	@:overload @:abstract public function isLittleEndian() : Bool;
	
	@:overload @:abstract public function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload @:abstract public function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:abstract public function setByteBufferWithInfo(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:abstract public function getBufferLength() : Int;
	
	@:overload @:abstract public function setBufferLength(value : Int) : Void;
	
	@:overload @:abstract public function getIndex() : Int;
	
	@:overload @:abstract public function setIndex(value : Int) : Void;
	
	@:overload @:abstract public function orb(orb : org.omg.CORBA.ORB) : Void;
	
	@:overload @:abstract public function getBufferManager() : com.sun.corba.se.impl.encoding.BufferManagerRead;
	
	@:overload @:abstract public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:abstract public function resetCodeSetConverters() : Void;
	
	@:overload @:abstract public function start_value() : Void;
	
	@:overload @:abstract public function end_value() : Void;
	
	
}

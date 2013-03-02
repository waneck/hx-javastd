package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class CDROutputStream_1_0 extends com.sun.corba.se.impl.encoding.CDROutputStreamBase
{
	private var bufferManagerWrite : com.sun.corba.se.impl.encoding.BufferManagerWrite;
	
	private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	private var debug : Bool;
	
	private var blockSizeIndex : Int;
	
	private var blockSizePosition : Int;
	
	private var streamFormatVersion : java.StdTypes.Int8;
	
	private var inBlock : Bool;
	
	@:overload override public function init(orb : org.omg.CORBA.ORB, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8, usePooledByteBuffers : Bool) : Void;
	
	@:overload public function init(orb : org.omg.CORBA.ORB, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8) : Void;
	
	@:overload override public function getBufferManager() : com.sun.corba.se.impl.encoding.BufferManagerWrite;
	
	@:overload override public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload private function handleSpecialChunkBegin(requiredSize : Int) : Void;
	
	@:overload private function handleSpecialChunkEnd() : Void;
	
	@:overload @:final private function computeAlignment(align : Int) : Int;
	
	@:overload private function alignAndReserve(align : Int, n : Int) : Void;
	
	@:overload private function grow(align : Int, n : Int) : Void;
	
	@:overload @:final override public function putEndian() : Void;
	
	@:overload @:final public function littleEndian() : Bool;
	
	@:overload @:final public function write_longdouble(x : Float) : Void;
	
	@:overload override public function write_octet(x : java.StdTypes.Int8) : Void;
	
	@:overload @:final override public function write_boolean(x : Bool) : Void;
	
	@:overload override public function write_char(x : java.StdTypes.Char16) : Void;
	
	@:overload override public function write_wchar(x : java.StdTypes.Char16) : Void;
	
	@:overload override public function write_short(x : java.StdTypes.Int16) : Void;
	
	@:overload @:final override public function write_ushort(x : java.StdTypes.Int16) : Void;
	
	@:overload override public function write_long(x : Int) : Void;
	
	@:overload @:final override public function write_ulong(x : Int) : Void;
	
	@:overload override public function write_longlong(x : haxe.Int64) : Void;
	
	@:overload @:final override public function write_ulonglong(x : haxe.Int64) : Void;
	
	@:overload @:final override public function write_float(x : Single) : Void;
	
	@:overload @:final override public function write_double(x : Float) : Void;
	
	@:overload override public function write_string(value : String) : Void;
	
	@:overload private function writeString(value : String) : Int;
	
	@:overload override public function write_wstring(value : String) : Void;
	
	@:overload @:final override public function write_octet_array(b : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload override public function write_Principal(p : org.omg.CORBA.Principal) : Void;
	
	@:overload override public function write_any(any : org.omg.CORBA.Any) : Void;
	
	@:overload override public function write_TypeCode(tc : org.omg.CORBA.TypeCode) : Void;
	
	@:overload override public function write_Object(ref : org.omg.CORBA.Object) : Void;
	
	@:overload override public function write_abstract_interface(obj : Dynamic) : Void;
	
	@:overload override public function write_value(object : java.io.Serializable, clz : Class<Dynamic>) : Void;
	
	@:overload override public function write_value(object : java.io.Serializable, repository_id : String) : Void;
	
	@:overload override public function write_value(object : java.io.Serializable) : Void;
	
	@:overload override public function write_value(object : java.io.Serializable, factory : org.omg.CORBA.portable.BoxedValueHelper) : Void;
	
	@:overload public function get_offset() : Int;
	
	@:overload override public function start_block() : Void;
	
	@:overload private function writeLongWithoutAlign(x : Int) : Void;
	
	@:overload override public function end_block() : Void;
	
	@:overload override public function orb() : org.omg.CORBA.ORB;
	
	@:overload @:final override public function write_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload override public function write_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload public function write_string_array(value : java.NativeArray<String>, offset : Int, length : Int) : Void;
	
	@:overload public function write_wstring_array(value : java.NativeArray<String>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_any_array(value : java.NativeArray<org.omg.CORBA.Any>, offset : Int, length : Int) : Void;
	
	@:overload override public function writeTo(s : java.io.OutputStream) : Void;
	
	@:overload override public function writeOctetSequenceTo(s : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:final override public function getSize() : Int;
	
	@:overload override public function getIndex() : Int;
	
	@:overload override public function isLittleEndian() : Bool;
	
	@:overload override public function setIndex(value : Int) : Void;
	
	@:overload override public function getByteBufferWithInfo() : com.sun.corba.se.impl.encoding.ByteBufferWithInfo;
	
	@:overload override public function setByteBufferWithInfo(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload override public function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload override public function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	/* DataOutputStream methods */
	@:overload override public function write_Abstract(value : Dynamic) : Void;
	
	@:overload override public function write_Value(value : java.io.Serializable) : Void;
	
	@:overload override public function write_fixed(bigDecimal : java.math.BigDecimal, digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : Void;
	
	@:overload override public function write_fixed(bigDecimal : java.math.BigDecimal) : Void;
	
	@:overload public function write_fixed(string : String, signum : Int) : Void;
	
	@:overload override public function _truncatable_ids() : java.NativeArray<String>;
	
	/* for debugging */
	@:overload public function printBuffer() : Void;
	
	@:native('printBuffer') @:overload public static function _printBuffer(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload override public function writeIndirection(tag : Int, posIndirectedTo : Int) : Void;
	
	@:overload private function getCharConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload private function getWCharConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload private function dprint(msg : String) : Void;
	
	@:overload override public function start_value(rep_id : String) : Void;
	
	@:overload override public function end_value() : Void;
	
	@:overload override public function close() : Void;
	
	
}

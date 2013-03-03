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
	@:protected private var bufferManagerWrite : com.sun.corba.se.impl.encoding.BufferManagerWrite;
	
	@:protected private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:protected private var debug : Bool;
	
	@:protected private var blockSizeIndex : Int;
	
	@:protected private var blockSizePosition : Int;
	
	@:protected private var streamFormatVersion : java.StdTypes.Int8;
	
	@:protected private var inBlock : Bool;
	
	@:overload @:public override public function init(orb : org.omg.CORBA.ORB, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8, usePooledByteBuffers : Bool) : Void;
	
	@:overload @:public public function init(orb : org.omg.CORBA.ORB, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8) : Void;
	
	@:overload @:public override public function getBufferManager() : com.sun.corba.se.impl.encoding.BufferManagerWrite;
	
	@:overload @:public override public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:protected private function handleSpecialChunkBegin(requiredSize : Int) : Void;
	
	@:overload @:protected private function handleSpecialChunkEnd() : Void;
	
	@:overload @:protected @:final private function computeAlignment(align : Int) : Int;
	
	@:overload @:protected private function alignAndReserve(align : Int, n : Int) : Void;
	
	@:overload @:protected private function grow(align : Int, n : Int) : Void;
	
	@:overload @:public @:final override public function putEndian() : Void;
	
	@:overload @:public @:final public function littleEndian() : Bool;
	
	@:overload @:public @:final public function write_longdouble(x : Float) : Void;
	
	@:overload @:public override public function write_octet(x : java.StdTypes.Int8) : Void;
	
	@:overload @:public @:final override public function write_boolean(x : Bool) : Void;
	
	@:overload @:public override public function write_char(x : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function write_wchar(x : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function write_short(x : java.StdTypes.Int16) : Void;
	
	@:overload @:public @:final override public function write_ushort(x : java.StdTypes.Int16) : Void;
	
	@:overload @:public override public function write_long(x : Int) : Void;
	
	@:overload @:public @:final override public function write_ulong(x : Int) : Void;
	
	@:overload @:public override public function write_longlong(x : haxe.Int64) : Void;
	
	@:overload @:public @:final override public function write_ulonglong(x : haxe.Int64) : Void;
	
	@:overload @:public @:final override public function write_float(x : Single) : Void;
	
	@:overload @:public @:final override public function write_double(x : Float) : Void;
	
	@:overload @:public override public function write_string(value : String) : Void;
	
	@:overload @:protected private function writeString(value : String) : Int;
	
	@:overload @:public override public function write_wstring(value : String) : Void;
	
	@:overload @:public @:final override public function write_octet_array(b : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function write_Principal(p : org.omg.CORBA.Principal) : Void;
	
	@:overload @:public override public function write_any(any : org.omg.CORBA.Any) : Void;
	
	@:overload @:public override public function write_TypeCode(tc : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:public override public function write_Object(ref : org.omg.CORBA.Object) : Void;
	
	@:overload @:public override public function write_abstract_interface(obj : Dynamic) : Void;
	
	@:overload @:public override public function write_value(object : java.io.Serializable, clz : Class<Dynamic>) : Void;
	
	@:overload @:public override public function write_value(object : java.io.Serializable, repository_id : String) : Void;
	
	@:overload @:public override public function write_value(object : java.io.Serializable) : Void;
	
	@:overload @:public override public function write_value(object : java.io.Serializable, factory : org.omg.CORBA.portable.BoxedValueHelper) : Void;
	
	@:overload @:public public function get_offset() : Int;
	
	@:overload @:public override public function start_block() : Void;
	
	@:overload @:protected private function writeLongWithoutAlign(x : Int) : Void;
	
	@:overload @:public override public function end_block() : Void;
	
	@:overload @:public override public function orb() : org.omg.CORBA.ORB;
	
	@:overload @:public @:final override public function write_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function write_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_string_array(value : java.NativeArray<String>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function write_wstring_array(value : java.NativeArray<String>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_any_array(value : java.NativeArray<org.omg.CORBA.Any>, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function writeTo(s : java.io.OutputStream) : Void;
	
	@:overload @:public override public function writeOctetSequenceTo(s : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:public @:final override public function getSize() : Int;
	
	@:overload @:public override public function getIndex() : Int;
	
	@:overload @:public override public function isLittleEndian() : Bool;
	
	@:overload @:public override public function setIndex(value : Int) : Void;
	
	@:overload @:public override public function getByteBufferWithInfo() : com.sun.corba.se.impl.encoding.ByteBufferWithInfo;
	
	@:overload @:public override public function setByteBufferWithInfo(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:public override public function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload @:public override public function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	/* DataOutputStream methods */
	@:overload @:public override public function write_Abstract(value : Dynamic) : Void;
	
	@:overload @:public override public function write_Value(value : java.io.Serializable) : Void;
	
	@:overload @:public override public function write_fixed(bigDecimal : java.math.BigDecimal, digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : Void;
	
	@:overload @:public override public function write_fixed(bigDecimal : java.math.BigDecimal) : Void;
	
	@:overload @:public public function write_fixed(string : String, signum : Int) : Void;
	
	@:overload @:public override public function _truncatable_ids() : java.NativeArray<String>;
	
	/* for debugging */
	@:overload @:public public function printBuffer() : Void;
	
	@:native('printBuffer') @:overload @:public @:static public static function _printBuffer(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:public override public function writeIndirection(tag : Int, posIndirectedTo : Int) : Void;
	
	@:overload @:protected private function getCharConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload @:protected private function getWCharConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload @:protected private function dprint(msg : String) : Void;
	
	@:overload @:public override public function start_value(rep_id : String) : Void;
	
	@:overload @:public override public function end_value() : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}

package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CDROutputStream extends org.omg.CORBA_2_3.portable.OutputStream implements com.sun.corba.se.impl.encoding.MarshalOutputStream implements org.omg.CORBA.DataOutputStream implements org.omg.CORBA.portable.ValueOutputStream
{
	private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	private var corbaMessageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8, usePooledByteBuffers : Bool) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8) : Void;
	
	@:overload @:abstract override public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	@:overload @:final override public function write_boolean(value : Bool) : Void;
	
	@:overload @:final override public function write_char(value : java.StdTypes.Char16) : Void;
	
	@:overload @:final override public function write_wchar(value : java.StdTypes.Char16) : Void;
	
	@:overload @:final override public function write_octet(value : java.StdTypes.Int8) : Void;
	
	@:overload @:final override public function write_short(value : java.StdTypes.Int16) : Void;
	
	@:overload @:final override public function write_ushort(value : java.StdTypes.Int16) : Void;
	
	@:overload @:final override public function write_long(value : Int) : Void;
	
	@:overload @:final override public function write_ulong(value : Int) : Void;
	
	@:overload @:final override public function write_longlong(value : haxe.Int64) : Void;
	
	@:overload @:final override public function write_ulonglong(value : haxe.Int64) : Void;
	
	@:overload @:final override public function write_float(value : Single) : Void;
	
	@:overload @:final override public function write_double(value : Float) : Void;
	
	@:overload @:final override public function write_string(value : String) : Void;
	
	@:overload @:final override public function write_wstring(value : String) : Void;
	
	@:overload @:final override public function write_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function write_Object(value : org.omg.CORBA.Object) : Void;
	
	@:overload @:final override public function write_TypeCode(value : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:final override public function write_any(value : org.omg.CORBA.Any) : Void;
	
	@:overload @:final override public function write_Principal(value : org.omg.CORBA.Principal) : Void;
	
	@:overload @:final override public function write(b : Int) : Void;
	
	@:overload @:final override public function write_fixed(value : java.math.BigDecimal) : Void;
	
	@:overload @:final override public function write_Context(ctx : org.omg.CORBA.Context, contexts : org.omg.CORBA.ContextList) : Void;
	
	@:overload @:final override public function orb() : org.omg.CORBA.ORB;
	
	@:overload @:final override public function write_value(value : java.io.Serializable) : Void;
	
	@:overload @:final override public function write_value(value : java.io.Serializable, clz : Class<Dynamic>) : Void;
	
	@:overload @:final override public function write_value(value : java.io.Serializable, repository_id : String) : Void;
	
	@:overload @:final override public function write_value(value : java.io.Serializable, factory : org.omg.CORBA.portable.BoxedValueHelper) : Void;
	
	@:overload @:final override public function write_abstract_interface(obj : Dynamic) : Void;
	
	@:overload @:final override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:final override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:final override public function flush() : Void;
	
	@:overload @:final override public function close() : Void;
	
	@:overload @:final public function start_block() : Void;
	
	@:overload @:final public function end_block() : Void;
	
	@:overload @:final public function putEndian() : Void;
	
	@:overload public function writeTo(s : java.io.OutputStream) : Void;
	
	@:overload @:final public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:final public function write_Abstract(value : Dynamic) : Void;
	
	@:overload @:final public function write_Value(value : java.io.Serializable) : Void;
	
	@:overload @:final public function write_any_array(seq : java.NativeArray<org.omg.CORBA.Any>, offset : Int, length : Int) : Void;
	
	@:overload public function setMessageMediator(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload public function getMessageMediator() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:final public function _truncatable_ids() : java.NativeArray<String>;
	
	@:overload @:final private function getSize() : Int;
	
	@:overload @:final private function getIndex() : Int;
	
	@:overload private function getRealIndex(index : Int) : Int;
	
	@:overload @:final private function setIndex(value : Int) : Void;
	
	@:overload @:final private function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload @:final private function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	/**
	* return true if our ByteBuffer is sharing/equal to bb
	*/
	@:overload @:final private function isSharing(bb : java.nio.ByteBuffer) : Bool;
	
	@:overload @:final public function isLittleEndian() : Bool;
	
	@:overload public function getByteBufferWithInfo() : com.sun.corba.se.impl.encoding.ByteBufferWithInfo;
	
	@:overload private function setByteBufferWithInfo(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:final public function getBufferManager() : com.sun.corba.se.impl.encoding.BufferManagerWrite;
	
	@:overload @:final public function write_fixed(bigDecimal : java.math.BigDecimal, digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : Void;
	
	@:overload @:final public function writeOctetSequenceTo(s : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:final public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:final public function writeIndirection(tag : Int, posIndirectedTo : Int) : Void;
	
	@:overload private function createCharCTBConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload @:abstract private function createWCharCTBConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload @:final private function freeInternalCaches() : Void;
	
	@:overload public function alignOnBoundary(octetBoundary : Int) : Void;
	
	@:overload public function setHeaderPadding(headerPadding : Bool) : Void;
	
	@:overload public function start_value(rep_id : String) : Void;
	
	@:overload public function end_value() : Void;
	
	
}
@:native('com$sun$corba$se$impl$encoding$CDROutputStream$OutputStreamFactory') @:internal extern class CDROutputStream_OutputStreamFactory
{
	@:overload public static function newOutputStream(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8) : com.sun.corba.se.impl.encoding.CDROutputStreamBase;
	
	
}

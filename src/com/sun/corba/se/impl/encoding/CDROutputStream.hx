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
	@:protected private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:protected private var corbaMessageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8, usePooledByteBuffers : Bool) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8) : Void;
	
	@:overload @:public @:abstract override public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	@:overload @:public @:final override public function write_boolean(value : Bool) : Void;
	
	@:overload @:public @:final override public function write_char(value : java.StdTypes.Char16) : Void;
	
	@:overload @:public @:final override public function write_wchar(value : java.StdTypes.Char16) : Void;
	
	@:overload @:public @:final override public function write_octet(value : java.StdTypes.Int8) : Void;
	
	@:overload @:public @:final override public function write_short(value : java.StdTypes.Int16) : Void;
	
	@:overload @:public @:final override public function write_ushort(value : java.StdTypes.Int16) : Void;
	
	@:overload @:public @:final override public function write_long(value : Int) : Void;
	
	@:overload @:public @:final override public function write_ulong(value : Int) : Void;
	
	@:overload @:public @:final override public function write_longlong(value : haxe.Int64) : Void;
	
	@:overload @:public @:final override public function write_ulonglong(value : haxe.Int64) : Void;
	
	@:overload @:public @:final override public function write_float(value : Single) : Void;
	
	@:overload @:public @:final override public function write_double(value : Float) : Void;
	
	@:overload @:public @:final override public function write_string(value : String) : Void;
	
	@:overload @:public @:final override public function write_wstring(value : String) : Void;
	
	@:overload @:public @:final override public function write_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function write_Object(value : org.omg.CORBA.Object) : Void;
	
	@:overload @:public @:final override public function write_TypeCode(value : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:public @:final override public function write_any(value : org.omg.CORBA.Any) : Void;
	
	@:overload @:public @:final override public function write_Principal(value : org.omg.CORBA.Principal) : Void;
	
	@:overload @:public @:final override public function write(b : Int) : Void;
	
	@:overload @:public @:final override public function write_fixed(value : java.math.BigDecimal) : Void;
	
	@:overload @:public @:final override public function write_Context(ctx : org.omg.CORBA.Context, contexts : org.omg.CORBA.ContextList) : Void;
	
	@:overload @:public @:final override public function orb() : org.omg.CORBA.ORB;
	
	@:overload @:public @:final override public function write_value(value : java.io.Serializable) : Void;
	
	@:overload @:public @:final override public function write_value(value : java.io.Serializable, clz : Class<Dynamic>) : Void;
	
	@:overload @:public @:final override public function write_value(value : java.io.Serializable, repository_id : String) : Void;
	
	@:overload @:public @:final override public function write_value(value : java.io.Serializable, factory : org.omg.CORBA.portable.BoxedValueHelper) : Void;
	
	@:overload @:public @:final override public function write_abstract_interface(obj : Dynamic) : Void;
	
	@:overload @:public @:final override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:final override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public @:final override public function flush() : Void;
	
	@:overload @:public @:final override public function close() : Void;
	
	@:overload @:public @:final public function start_block() : Void;
	
	@:overload @:public @:final public function end_block() : Void;
	
	@:overload @:public @:final public function putEndian() : Void;
	
	@:overload @:public public function writeTo(s : java.io.OutputStream) : Void;
	
	@:overload @:public @:final public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function write_Abstract(value : Dynamic) : Void;
	
	@:overload @:public @:final public function write_Value(value : java.io.Serializable) : Void;
	
	@:overload @:public @:final public function write_any_array(seq : java.NativeArray<org.omg.CORBA.Any>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function setMessageMediator(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload @:public public function getMessageMediator() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:public @:final public function _truncatable_ids() : java.NativeArray<String>;
	
	@:overload @:protected @:final private function getSize() : Int;
	
	@:overload @:protected @:final private function getIndex() : Int;
	
	@:overload @:protected private function getRealIndex(index : Int) : Int;
	
	@:overload @:protected @:final private function setIndex(value : Int) : Void;
	
	@:overload @:protected @:final private function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload @:protected @:final private function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	/**
	* return true if our ByteBuffer is sharing/equal to bb
	*/
	@:overload @:protected @:final private function isSharing(bb : java.nio.ByteBuffer) : Bool;
	
	@:overload @:public @:final public function isLittleEndian() : Bool;
	
	@:overload @:public public function getByteBufferWithInfo() : com.sun.corba.se.impl.encoding.ByteBufferWithInfo;
	
	@:overload @:protected private function setByteBufferWithInfo(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:public @:final public function getBufferManager() : com.sun.corba.se.impl.encoding.BufferManagerWrite;
	
	@:overload @:public @:final public function write_fixed(bigDecimal : java.math.BigDecimal, digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : Void;
	
	@:overload @:public @:final public function writeOctetSequenceTo(s : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:public @:final public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:public @:final public function writeIndirection(tag : Int, posIndirectedTo : Int) : Void;
	
	@:overload @:protected private function createCharCTBConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload @:protected @:abstract private function createWCharCTBConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload @:protected @:final private function freeInternalCaches() : Void;
	
	@:overload @:public public function alignOnBoundary(octetBoundary : Int) : Void;
	
	@:overload @:public public function setHeaderPadding(headerPadding : Bool) : Void;
	
	@:overload @:public public function start_value(rep_id : String) : Void;
	
	@:overload @:public public function end_value() : Void;
	
	
}
@:native('com$sun$corba$se$impl$encoding$CDROutputStream$OutputStreamFactory') @:internal extern class CDROutputStream_OutputStreamFactory
{
	@:overload @:public @:static public static function newOutputStream(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8) : com.sun.corba.se.impl.encoding.CDROutputStreamBase;
	
	
}

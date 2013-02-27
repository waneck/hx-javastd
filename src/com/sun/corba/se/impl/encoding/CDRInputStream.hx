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
extern class CDRInputStream extends org.omg.CORBA_2_3.portable.InputStream implements com.sun.corba.se.impl.encoding.MarshalInputStream implements org.omg.CORBA.DataInputStream implements org.omg.CORBA.portable.ValueInputStream
{
	/**
	* This is delegates to the real implementation.
	*
	* NOTE:
	*
	* Before using the stream for valuetype unmarshaling, one must call
	* performORBVersionSpecificInit().
	*/
	private var messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function new() : Void;
	
	@:overload public function new(is : CDRInputStream) : Void;
	
	@:overload public function new(orb : org.omg.CORBA.ORB, byteBuffer : java.nio.ByteBuffer, size : Int, littleEndian : Bool, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, bufMgr : com.sun.corba.se.impl.encoding.BufferManagerRead) : Void;
	
	@:overload @:final override public function read_boolean() : Bool;
	
	@:overload @:final override public function read_char() : java.StdTypes.Char16;
	
	@:overload @:final override public function read_wchar() : java.StdTypes.Char16;
	
	@:overload @:final override public function read_octet() : java.StdTypes.Int8;
	
	@:overload @:final override public function read_short() : java.StdTypes.Int16;
	
	@:overload @:final override public function read_ushort() : java.StdTypes.Int16;
	
	@:overload @:final override public function read_long() : Int;
	
	@:overload @:final override public function read_ulong() : Int;
	
	@:overload @:final override public function read_longlong() : haxe.Int64;
	
	@:overload @:final override public function read_ulonglong() : haxe.Int64;
	
	@:overload @:final override public function read_float() : Single;
	
	@:overload @:final override public function read_double() : Float;
	
	@:overload @:final override public function read_string() : String;
	
	@:overload @:final override public function read_wstring() : String;
	
	@:overload @:final override public function read_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_octet_array(value : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload @:final override public function read_Object() : org.omg.CORBA.Object;
	
	@:overload @:final override public function read_TypeCode() : org.omg.CORBA.TypeCode;
	
	@:overload @:final override public function read_any() : org.omg.CORBA.Any;
	
	@:overload @:final override public function read_Principal() : org.omg.CORBA.Principal;
	
	@:overload @:final override public function read() : Int;
	
	@:overload @:final override public function read_fixed() : java.math.BigDecimal;
	
	@:overload @:final override public function read_Context() : org.omg.CORBA.Context;
	
	@:overload @:final override public function read_Object(clz : Class<Dynamic>) : org.omg.CORBA.Object;
	
	@:overload @:final override public function orb() : org.omg.CORBA.ORB;
	
	@:overload @:final override public function read_value() : java.io.Serializable;
	
	@:overload @:final override public function read_value(clz : Class<Dynamic>) : java.io.Serializable;
	
	@:overload @:final override public function read_value(factory : org.omg.CORBA.portable.BoxedValueHelper) : java.io.Serializable;
	
	@:overload @:final override public function read_value(rep_id : String) : java.io.Serializable;
	
	@:overload @:final override public function read_value(value : java.io.Serializable) : java.io.Serializable;
	
	@:overload @:final override public function read_abstract_interface() : Dynamic;
	
	@:overload @:final override public function read_abstract_interface(clz : Class<Dynamic>) : Dynamic;
	
	@:overload @:final public function consumeEndian() : Void;
	
	@:overload @:final public function getPosition() : Int;
	
	@:overload @:final public function read_Abstract() : Dynamic;
	
	@:overload @:final public function read_Value() : java.io.Serializable;
	
	@:overload @:final public function read_any_array(seq : org.omg.CORBA.AnySeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_boolean_array(seq : org.omg.CORBA.BooleanSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_char_array(seq : org.omg.CORBA.CharSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_wchar_array(seq : org.omg.CORBA.WCharSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_octet_array(seq : org.omg.CORBA.OctetSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_short_array(seq : org.omg.CORBA.ShortSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_ushort_array(seq : org.omg.CORBA.UShortSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_long_array(seq : org.omg.CORBA.LongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_ulong_array(seq : org.omg.CORBA.ULongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_ulonglong_array(seq : org.omg.CORBA.ULongLongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_longlong_array(seq : org.omg.CORBA.LongLongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_float_array(seq : org.omg.CORBA.FloatSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function read_double_array(seq : org.omg.CORBA.DoubleSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:final public function _truncatable_ids() : java.NativeArray<String>;
	
	@:overload @:final override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:final override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:final override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:final override public function available() : Int;
	
	@:overload @:final override public function close() : Void;
	
	@:overload @:final override public function mark(readlimit : Int) : Void;
	
	@:overload @:final override public function reset() : Void;
	
	@:overload @:final override public function markSupported() : Bool;
	
	@:overload @:abstract public function dup() : CDRInputStream;
	
	@:overload @:final public function read_fixed(digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : java.math.BigDecimal;
	
	@:overload @:final public function isLittleEndian() : Bool;
	
	@:overload @:final private function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload @:final private function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:final private function setByteBufferWithInfo(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	/**
	* return true if our ByteBuffer is sharing/equal to bb
	*/
	@:overload @:final private function isSharing(bb : java.nio.ByteBuffer) : Bool;
	
	@:overload @:final public function getBufferLength() : Int;
	
	@:overload @:final private function setBufferLength(value : Int) : Void;
	
	@:overload @:final private function getIndex() : Int;
	
	@:overload @:final private function setIndex(value : Int) : Void;
	
	@:overload @:final public function orb(orb : org.omg.CORBA.ORB) : Void;
	
	@:overload @:final public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:final public function getBufferManager() : com.sun.corba.se.impl.encoding.BufferManagerRead;
	
	@:overload public function getCodeBase() : com.sun.org.omg.SendingContext.CodeBase;
	
	@:overload private function createCharBTCConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	@:overload @:abstract private function createWCharBTCConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	/**
	* Aligns the current position on the given octet boundary
	* if there are enough bytes available to do so.  Otherwise,
	* it just returns.  This is used for some (but not all)
	* GIOP 1.2 message headers.
	*/
	@:overload public function alignOnBoundary(octetBoundary : Int) : Void;
	
	@:overload public function setHeaderPadding(headerPadding : Bool) : Void;
	
	/**
	* This must be called after determining the proper ORB version,
	* and setting it on the stream's ORB instance.  It can be called
	* after reading the service contexts, since that is the only place
	* we can get the ORB version info.
	*
	* Trying to unmarshal things requiring repository IDs before calling
	* this will result in NullPtrExceptions.
	*/
	@:overload public function performORBVersionSpecificInit() : Void;
	
	/**
	* Resets any internal references to code set converters.
	* This is useful for forcing the CDR stream to reacquire
	* converters (probably from its subclasses) when state
	* has changed.
	*/
	@:overload public function resetCodeSetConverters() : Void;
	
	@:overload public function setMessageMediator(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload public function getMessageMediator() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function start_value() : Void;
	
	@:overload public function end_value() : Void;
	
	
}
@:native('com$sun$corba$se$impl$encoding$CDRInputStream$InputStreamFactory') @:internal extern class CDRInputStream_InputStreamFactory
{
	@:overload public static function newInputStream(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8) : com.sun.corba.se.impl.encoding.CDRInputStreamBase;
	
	
}

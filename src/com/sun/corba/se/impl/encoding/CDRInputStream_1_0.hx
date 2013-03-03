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
extern class CDRInputStream_1_0 extends com.sun.corba.se.impl.encoding.CDRInputStreamBase implements com.sun.corba.se.impl.encoding.RestorableInputStream
{
	@:protected private var bufferManagerRead : com.sun.corba.se.impl.encoding.BufferManagerRead;
	
	@:protected private var bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo;
	
	@:protected private var littleEndian : Bool;
	
	@:protected private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:protected private var omgWrapper : com.sun.corba.se.impl.logging.OMGSystemException;
	
	@:protected private var valueHandler : javax.rmi.CORBA.ValueHandler;
	
	@:protected private var blockLength : Int;
	
	@:protected private var end_flag : Int;
	
	@:protected private var valueIndirection : Int;
	
	@:protected private var stringIndirection : Int;
	
	@:protected private var isChunked : Bool;
	
	@:overload @:public override public function dup() : com.sun.corba.se.impl.encoding.CDRInputStreamBase;
	
	/**
	* NOTE:  size passed to init means buffer size
	*/
	@:overload @:public override public function init(orb : org.omg.CORBA.ORB, byteBuffer : java.nio.ByteBuffer, size : Int, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerRead) : Void;
	
	@:overload @:public override public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:protected @:final private function computeAlignment(index : Int, align : Int) : Int;
	
	@:overload @:public public function getSize() : Int;
	
	@:overload @:protected private function checkBlockLength(align : Int, dataSize : Int) : Void;
	
	@:overload @:protected private function alignAndCheck(align : Int, n : Int) : Void;
	
	@:overload @:protected private function grow(align : Int, n : Int) : Void;
	
	@:overload @:public @:final override public function consumeEndian() : Void;
	
	@:overload @:public @:final public function read_longdouble() : Float;
	
	@:overload @:public @:final override public function read_boolean() : Bool;
	
	@:overload @:public @:final override public function read_char() : java.StdTypes.Char16;
	
	@:overload @:public override public function read_wchar() : java.StdTypes.Char16;
	
	@:overload @:public @:final override public function read_octet() : java.StdTypes.Int8;
	
	@:overload @:public @:final override public function read_short() : java.StdTypes.Int16;
	
	@:overload @:public @:final override public function read_ushort() : java.StdTypes.Int16;
	
	@:overload @:public @:final override public function read_long() : Int;
	
	@:overload @:public @:final override public function read_ulong() : Int;
	
	@:overload @:public @:final override public function read_longlong() : haxe.Int64;
	
	@:overload @:public @:final override public function read_ulonglong() : haxe.Int64;
	
	@:overload @:public @:final override public function read_float() : Single;
	
	@:overload @:public @:final override public function read_double() : Float;
	
	@:overload @:protected @:final private function checkForNegativeLength(length : Int) : Void;
	
	@:overload @:protected @:final private function readStringOrIndirection(allowIndirection : Bool) : String;
	
	@:overload @:public @:final override public function read_string() : String;
	
	@:overload @:public override public function read_wstring() : String;
	
	@:overload @:public @:final override public function read_octet_array(b : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_Principal() : org.omg.CORBA.Principal;
	
	@:overload @:public override public function read_TypeCode() : org.omg.CORBA.TypeCode;
	
	@:overload @:public override public function read_any() : org.omg.CORBA.Any;
	
	@:overload @:public override public function read_Object() : org.omg.CORBA.Object;
	
	@:overload @:public override public function read_Object(clz : Class<Dynamic>) : org.omg.CORBA.Object;
	
	/*
	* This is used as a general utility (e.g., the PortableInterceptor
	* implementation uses it.   If stubFactory is null, the ior's
	* IIOPProfile must support getServant.
	*/
	@:overload @:public @:static public static function internalIORToObject(ior : com.sun.corba.se.spi.ior.IOR, stubFactory : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactory, orb : com.sun.corba.se.spi.orb.ORB) : org.omg.CORBA.Object;
	
	@:overload @:public override public function read_abstract_interface() : Dynamic;
	
	@:overload @:public override public function read_abstract_interface(clz : Class<Dynamic>) : Dynamic;
	
	@:overload @:public override public function read_value() : java.io.Serializable;
	
	@:overload @:public override public function read_value(expectedType : Class<Dynamic>) : java.io.Serializable;
	
	@:overload @:public override public function read_value(factory : org.omg.CORBA.portable.BoxedValueHelper) : java.io.Serializable;
	
	@:overload @:public override public function read_value(value : java.io.Serializable) : java.io.Serializable;
	
	@:overload @:public override public function read_value(repositoryId : String) : java.io.Serializable;
	
	@:overload @:protected private function get_offset() : Int;
	
	@:overload @:public override public function orb() : org.omg.CORBA.ORB;
	
	@:overload @:public @:final override public function read_boolean_array(value : java.NativeArray<Bool>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_char_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_wchar_array(value : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_short_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_ushort_array(value : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_long_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_ulong_array(value : java.NativeArray<Int>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_longlong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_ulonglong_array(value : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_float_array(value : java.NativeArray<Single>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final override public function read_double_array(value : java.NativeArray<Float>, offset : Int, length : Int) : Void;
	
	@:overload @:public @:final public function read_any_array(value : java.NativeArray<org.omg.CORBA.Any>, offset : Int, length : Int) : Void;
	
	/* DataInputStream methods */
	@:overload @:public override public function read_Abstract() : Dynamic;
	
	@:overload @:public override public function read_Value() : java.io.Serializable;
	
	@:overload @:public override public function read_any_array(seq : org.omg.CORBA.AnySeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_boolean_array(seq : org.omg.CORBA.BooleanSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_char_array(seq : org.omg.CORBA.CharSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_wchar_array(seq : org.omg.CORBA.WCharSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_octet_array(seq : org.omg.CORBA.OctetSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_short_array(seq : org.omg.CORBA.ShortSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_ushort_array(seq : org.omg.CORBA.UShortSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_long_array(seq : org.omg.CORBA.LongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_ulong_array(seq : org.omg.CORBA.ULongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_ulonglong_array(seq : org.omg.CORBA.ULongLongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_longlong_array(seq : org.omg.CORBA.LongLongSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_float_array(seq : org.omg.CORBA.FloatSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_double_array(seq : org.omg.CORBA.DoubleSeqHolder, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function read_fixed(digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : java.math.BigDecimal;
	
	@:overload @:public override public function read_fixed() : java.math.BigDecimal;
	
	@:overload @:public override public function _truncatable_ids() : java.NativeArray<String>;
	
	/* for debugging */
	@:overload @:public public function printBuffer() : Void;
	
	@:native('printBuffer') @:overload @:public @:static public static function _printBuffer(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:public override public function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload @:public override public function getBufferLength() : Int;
	
	@:overload @:public override public function setBufferLength(value : Int) : Void;
	
	@:overload @:public override public function setByteBufferWithInfo(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:public override public function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:public override public function getIndex() : Int;
	
	@:overload @:public override public function setIndex(value : Int) : Void;
	
	@:overload @:public override public function isLittleEndian() : Bool;
	
	@:overload @:public override public function orb(orb : org.omg.CORBA.ORB) : Void;
	
	@:overload @:public override public function getBufferManager() : com.sun.corba.se.impl.encoding.BufferManagerRead;
	
	@:protected private var markAndResetHandler : com.sun.corba.se.impl.encoding.MarkAndResetHandler;
	
	@:overload @:public public function createStreamMemento() : Dynamic;
	
	@:overload @:public public function restoreInternalState(streamMemento : Dynamic) : Void;
	
	@:overload @:public override public function getPosition() : Int;
	
	@:overload @:public override public function mark(readlimit : Int) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	@:overload @:protected private function getCharConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	@:overload @:protected private function getWCharConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	@:overload @:protected private function dprintThrowable(t : java.lang.Throwable) : Void;
	
	@:overload @:protected private function dprint(msg : String) : Void;
	
	@:overload @:public override public function resetCodeSetConverters() : Void;
	
	@:overload @:public override public function start_value() : Void;
	
	@:overload @:public override public function end_value() : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}
@:native('com$sun$corba$se$impl$encoding$CDRInputStream_1_0$StreamMemento') extern class CDRInputStream_1_0_StreamMemento
{
	@:overload @:public public function new() : Void;
	
	
}

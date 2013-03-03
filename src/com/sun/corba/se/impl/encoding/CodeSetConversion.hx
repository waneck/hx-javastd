package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CodeSetConversion
{
	/**
	* CTB converter factory for single byte or variable length encodings.
	*/
	@:overload @:public public function getCTBConverter(codeset : com.sun.corba.se.impl.encoding.OSFCodeSetRegistry.OSFCodeSetRegistry_Entry) : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	/**
	* CTB converter factory for multibyte (mainly fixed) encodings.
	*
	* Because of the awkwardness with byte order markers and the possibility of
	* using UCS-2, you must specify both the endianness of the stream as well as
	* whether or not to use byte order markers if applicable.  UCS-2 has no byte
	* order markers.  UTF-16 has optional markers.
	*
	* If you select useByteOrderMarkers, there is no guarantee that the encoding
	* will use the endianness specified.
	*
	*/
	@:overload @:public public function getCTBConverter(codeset : com.sun.corba.se.impl.encoding.OSFCodeSetRegistry.OSFCodeSetRegistry_Entry, littleEndian : Bool, useByteOrderMarkers : Bool) : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	/**
	* BTCConverter factory for single byte or variable width encodings.
	*/
	@:overload @:public public function getBTCConverter(codeset : com.sun.corba.se.impl.encoding.OSFCodeSetRegistry.OSFCodeSetRegistry_Entry) : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	/**
	* BTCConverter factory for fixed width multibyte encodings.
	*/
	@:overload @:public public function getBTCConverter(codeset : com.sun.corba.se.impl.encoding.OSFCodeSetRegistry.OSFCodeSetRegistry_Entry, defaultToLittleEndian : Bool) : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	/**
	* Perform the code set negotiation algorithm and come up with
	* the two encodings to use.
	*/
	@:overload @:public public function negotiate(client : com.sun.corba.se.impl.encoding.CodeSetComponentInfo, server : com.sun.corba.se.impl.encoding.CodeSetComponentInfo) : com.sun.corba.se.impl.encoding.CodeSetComponentInfo.CodeSetComponentInfo_CodeSetContext;
	
	/**
	* CodeSetConversion is a singleton, and this is the access point.
	*/
	@:overload @:public @:final @:static public static function impl() : com.sun.corba.se.impl.encoding.CodeSetConversion;
	
	
}
/**
* Abstraction for char to byte conversion.
*
* Must be used in the proper sequence:
*
* 1)  convert
* 2)  Optional getNumBytes and/or getAlignment (if necessary)
* 3)  getBytes (see warning)
*/
@:native('com$sun$corba$se$impl$encoding$CodeSetConversion$CTBConverter') extern class CodeSetConversion_CTBConverter
{
	@:overload @:public @:abstract public function convert(chToConvert : java.StdTypes.Char16) : Void;
	
	@:overload @:public @:abstract public function convert(strToConvert : String) : Void;
	
	@:overload @:public @:abstract public function getNumBytes() : Int;
	
	@:overload @:public @:abstract public function getMaxBytesPerChar() : Single;
	
	@:overload @:public @:abstract public function isFixedWidthEncoding() : Bool;
	
	@:overload @:public @:abstract public function getAlignment() : Int;
	
	@:overload @:public @:abstract public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/**
* Abstraction for byte to char conversion.
*/
@:native('com$sun$corba$se$impl$encoding$CodeSetConversion$BTCConverter') extern class CodeSetConversion_BTCConverter
{
	@:overload @:public @:abstract public function isFixedWidthEncoding() : Bool;
	
	@:overload @:public @:abstract public function getFixedCharWidth() : Int;
	
	@:overload @:public @:abstract public function getNumChars() : Int;
	
	@:overload @:public @:abstract public function getChars(bytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	
}
/**
* Implementation of CTBConverter which uses a nio.Charset.CharsetEncoder
* to do the real work.  Handles translation of exceptions to the
* appropriate CORBA versions.
*/
@:native('com$sun$corba$se$impl$encoding$CodeSetConversion$JavaCTBConverter') @:internal extern class CodeSetConversion_JavaCTBConverter extends com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter
{
	@:overload @:public public function new(codeset : com.sun.corba.se.impl.encoding.OSFCodeSetRegistry.OSFCodeSetRegistry_Entry, alignmentForEncoding : Int) : Void;
	
	@:overload @:public @:final override public function getMaxBytesPerChar() : Single;
	
	@:overload @:public override public function convert(chToConvert : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function convert(strToConvert : String) : Void;
	
	@:overload @:public @:final override public function getNumBytes() : Int;
	
	@:overload @:public @:final override public function getAlignment() : Int;
	
	@:overload @:public @:final override public function isFixedWidthEncoding() : Bool;
	
	@:overload @:public override public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/**
* Special UTF16 converter which can either always write a BOM
* or use a specified byte order without one.
*/
@:native('com$sun$corba$se$impl$encoding$CodeSetConversion$UTF16CTBConverter') @:internal extern class CodeSetConversion_UTF16CTBConverter extends com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_JavaCTBConverter
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(littleEndian : Bool) : Void;
	
	
}
/**
* Implementation of BTCConverter which uses a sun.io.ByteToCharConverter
* for the real work.  Handles translation of exceptions to the
* appropriate CORBA versions.
*/
@:native('com$sun$corba$se$impl$encoding$CodeSetConversion$JavaBTCConverter') @:internal extern class CodeSetConversion_JavaBTCConverter extends com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter
{
	@:protected private var btc : java.nio.charset.CharsetDecoder;
	
	@:overload @:public public function new(codeset : com.sun.corba.se.impl.encoding.OSFCodeSetRegistry.OSFCodeSetRegistry_Entry) : Void;
	
	@:overload @:public @:final override public function isFixedWidthEncoding() : Bool;
	
	@:overload @:public @:final override public function getFixedCharWidth() : Int;
	
	@:overload @:public @:final override public function getNumChars() : Int;
	
	@:overload @:public override public function getChars(bytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, numBytes : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Utility method to find a CharsetDecoder in the
	* cache or create a new one if necessary.  Throws an
	* INTERNAL if the code set is unknown.
	*/
	@:overload @:protected private function getConverter(javaCodeSetName : String) : java.nio.charset.CharsetDecoder;
	
	
}
/**
* Special converter for UTF16 since it's required to optionally
* support a byte order marker while the internal Java converters
* either require it or require that it isn't there.
*
* The solution is to check for the byte order marker, and if we
* need to do something differently, switch internal converters.
*/
@:native('com$sun$corba$se$impl$encoding$CodeSetConversion$UTF16BTCConverter') @:internal extern class CodeSetConversion_UTF16BTCConverter extends com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_JavaBTCConverter
{
	@:overload @:public public function new(defaultToLittleEndian : Bool) : Void;
	
	@:overload @:public override public function getChars(bytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, numBytes : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	
}
@:native('com$sun$corba$se$impl$encoding$CodeSetConversion$CodeSetConversionHolder') @:internal extern class CodeSetConversion_CodeSetConversionHolder
{
	
}

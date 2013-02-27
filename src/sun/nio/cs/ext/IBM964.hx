package sun.nio.cs.ext;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
*/
extern class IBM964 extends java.nio.charset.Charset implements sun.nio.cs.HistoricallyNamedCharset
{
	@:overload public function new() : Void;
	
	@:overload public function historicalName() : String;
	
	@:overload public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	/**
	* These accessors are temporarily supplied while sun.io
	* converters co-exist with the sun.nio.cs.{ext} charset coders
	* These facilitate sharing of conversion tables between the
	* two co-existing implementations. When sun.io converters
	* are made extinct these will be unncessary and should be removed
	*/
	@:overload public function getDecoderSingleByteMappings() : String;
	
	@:overload public function getDecoderMappingTableG1() : String;
	
	@:overload public function getDecoderMappingTableG2a2() : String;
	
	@:overload public function getDecoderMappingTableG2ac() : String;
	
	@:overload public function getDecoderMappingTableG2ad() : String;
	
	@:overload public function getEncoderIndex1() : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload public function getEncoderIndex2() : String;
	
	@:overload public function getEncoderIndex2a() : String;
	
	@:overload public function getEncoderIndex2b() : String;
	
	@:overload public function getEncoderIndex2c() : String;
	
	
}
@:native('sun$nio$cs$ext$IBM964$Decoder') extern class IBM964_Decoder extends java.nio.charset.CharsetDecoder
{
	@:overload public function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$IBM964$Encoder') extern class IBM964_Encoder extends sun.nio.cs.ext.SimpleEUCEncoder
{
	@:overload public function new(cs : java.nio.charset.Charset) : Void;
	
	
}

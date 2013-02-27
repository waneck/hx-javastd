package sun.nio.cs;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UTF_8 extends sun.nio.cs.Unicode
{
	/* Legal UTF-8 Byte Sequences
	*
	* #    Code Points      Bits   Bit/Byte pattern
	* 1                     7      0xxxxxxx
	*      U+0000..U+007F          00..7F
	*
	* 2                     11     110xxxxx    10xxxxxx
	*      U+0080..U+07FF          C2..DF      80..BF
	*
	* 3                     16     1110xxxx    10xxxxxx    10xxxxxx
	*      U+0800..U+0FFF          E0          A0..BF      80..BF
	*      U+1000..U+FFFF          E1..EF      80..BF      80..BF
	*
	* 4                     21     11110xxx    10xxxxxx    10xxxxxx    10xxxxxx
	*     U+10000..U+3FFFF         F0          90..BF      80..BF      80..BF
	*     U+40000..U+FFFFF         F1..F3      80..BF      80..BF      80..BF
	*    U+100000..U10FFFF         F4          80..8F      80..BF      80..BF
	*
	*/
	@:overload public function new() : Void;
	
	@:overload override public function historicalName() : String;
	
	@:overload override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	
}
@:native('sun$nio$cs$UTF_8$Decoder') @:internal extern class UTF_8_Decoder extends java.nio.charset.CharsetDecoder implements sun.nio.cs.ArrayDecoder
{
	@:overload override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload public function decode(sa : java.NativeArray<java.StdTypes.Int8>, sp : Int, len : Int, da : java.NativeArray<java.StdTypes.Char16>) : Int;
	
	
}
@:native('sun$nio$cs$UTF_8$Encoder') @:internal extern class UTF_8_Encoder extends java.nio.charset.CharsetEncoder implements sun.nio.cs.ArrayEncoder
{
	@:overload override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload override public function isLegalReplacement(repl : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload @:final override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload public function encode(sa : java.NativeArray<java.StdTypes.Char16>, sp : Int, len : Int, da : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	
}

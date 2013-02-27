package sun.nio.cs.ext;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class EUC_JP_LINUX extends java.nio.charset.Charset implements sun.nio.cs.HistoricallyNamedCharset
{
	@:overload public function new() : Void;
	
	@:overload public function historicalName() : String;
	
	@:overload public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	
}
@:native('sun$nio$cs$ext$EUC_JP_LINUX$Decoder') @:internal extern class EUC_JP_LINUX_Decoder extends java.nio.charset.CharsetDecoder
{
	private var REPLACE_CHAR(default, null) : java.StdTypes.Char16;
	
	@:overload private function convSingleByte(b : Int) : java.StdTypes.Char16;
	
	@:overload private function decodeDouble(byte1 : Int, byte2 : Int) : java.StdTypes.Char16;
	
	@:overload override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$EUC_JP_LINUX$Encoder') @:internal extern class EUC_JP_LINUX_Encoder extends java.nio.charset.CharsetEncoder
{
	@:overload override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload private function encodeSingle(inputChar : java.StdTypes.Char16, outputByte : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload private function encodeDouble(ch : java.StdTypes.Char16) : Int;
	
	@:overload override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	
}

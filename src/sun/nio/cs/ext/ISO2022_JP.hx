package sun.nio.cs.ext;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ISO2022_JP extends java.nio.charset.Charset implements sun.nio.cs.HistoricallyNamedCharset
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected private function new(canonicalName : String, aliases : java.NativeArray<String>) : Void;
	
	@:overload @:public public function historicalName() : String;
	
	@:overload @:public override public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload @:public override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload @:public override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	@:overload @:protected private function getDecIndex1() : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload @:protected private function getDecIndex2() : java.NativeArray<String>;
	
	@:overload @:protected private function get0212Decoder() : sun.nio.cs.ext.DoubleByteDecoder;
	
	@:overload @:protected private function getEncIndex1() : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload @:protected private function getEncIndex2() : java.NativeArray<String>;
	
	@:overload @:protected private function get0212Encoder() : sun.nio.cs.ext.DoubleByteEncoder;
	
	@:overload @:protected private function doSBKANA() : Bool;
	
	
}
@:native('sun$nio$cs$ext$ISO2022_JP$Decoder') @:internal extern class ISO2022_JP_Decoder extends sun.nio.cs.ext.DoubleByteDecoder implements sun.nio.cs.ext.DelegatableDecoder
{
	@:overload @:protected private function new(cs : java.nio.charset.Charset, index1 : java.NativeArray<java.StdTypes.Int16>, index2 : java.NativeArray<String>, decoder0212 : sun.nio.cs.ext.DoubleByteDecoder) : Void;
	
	@:overload @:protected private function convSingleByte(b : Int) : java.StdTypes.Char16;
	
	@:overload @:public override public function implReset() : Void;
	
	@:overload @:public override public function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:public override public function implFlush(out : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$ISO2022_JP$Encoder') @:internal extern class ISO2022_JP_Encoder extends sun.nio.cs.ext.DoubleByteEncoder
{
	@:overload @:protected override private function encodeSingle(inputChar : java.StdTypes.Char16) : Int;
	
	@:overload @:protected override private function implReset() : Void;
	
	@:overload @:protected override private function implReplaceWith(newReplacement : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:protected override private function implFlush(out : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:public override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:protected override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	
}

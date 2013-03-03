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
extern class GB18030 extends java.nio.charset.Charset
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getDecoderIndex1() : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload @:public public function getDecoderIndex2() : java.NativeArray<String>;
	
	@:overload @:public public function getSubDecoderIndex1() : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload @:public public function getSubDecoderIndex2() : java.NativeArray<String>;
	
	@:overload @:public public function getEncoderIndex1() : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload @:public public function getEncoderIndex2() : java.NativeArray<String>;
	
	@:overload @:public override public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload @:public override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload @:public override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	
}
@:native('sun$nio$cs$ext$GB18030$Decoder') @:internal extern class GB18030_Decoder extends java.nio.charset.CharsetDecoder
{
	@:overload @:protected private function decodeDouble(byte1 : Int, byte2 : Int) : java.StdTypes.Char16;
	
	@:overload @:protected override private function implReset() : Void;
	
	@:overload @:protected override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$GB18030$Encoder') @:internal extern class GB18030_Encoder extends java.nio.charset.CharsetEncoder
{
	@:overload @:public override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:protected override private function implReset() : Void;
	
	@:overload @:protected override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	
}

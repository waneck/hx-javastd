package sun.nio.cs.ext;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class HKSCS
{
	
}
@:native('sun$nio$cs$ext$HKSCS$Decoder') extern class HKSCS_Decoder extends sun.nio.cs.ext.DoubleByte.DoubleByte_Decoder
{
	@:overload @:protected private function new(cs : java.nio.charset.Charset, big5Dec : sun.nio.cs.ext.DoubleByte.DoubleByte_Decoder, b2cBmp : java.NativeArray<java.NativeArray<java.StdTypes.Char16>>, b2cSupp : java.NativeArray<java.NativeArray<java.StdTypes.Char16>>) : Void;
	
	@:overload @:public override public function decodeSingle(b : Int) : java.StdTypes.Char16;
	
	@:overload @:public public function decodeBig5(b1 : Int, b2 : Int) : java.StdTypes.Char16;
	
	@:overload @:public override public function decodeDouble(b1 : Int, b2 : Int) : java.StdTypes.Char16;
	
	@:overload @:public public function decodeDoubleEx(b1 : Int, b2 : Int) : java.StdTypes.Char16;
	
	@:overload @:protected override private function decodeArrayLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:protected override private function decodeBufferLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:public override public function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$HKSCS$Encoder') extern class HKSCS_Encoder extends sun.nio.cs.ext.DoubleByte.DoubleByte_Encoder
{
	@:overload @:protected private function new(cs : java.nio.charset.Charset, big5Enc : sun.nio.cs.ext.DoubleByte.DoubleByte_Encoder, c2bBmp : java.NativeArray<java.NativeArray<java.StdTypes.Char16>>, c2bSupp : java.NativeArray<java.NativeArray<java.StdTypes.Char16>>) : Void;
	
	@:overload @:public public function encodeBig5(ch : java.StdTypes.Char16) : Int;
	
	@:overload @:public override public function encodeChar(ch : java.StdTypes.Char16) : Int;
	
	@:overload @:public public function encodeSupp(cp : Int) : Int;
	
	@:overload @:public override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:protected override private function encodeArrayLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:protected override private function encodeBufferLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:protected override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	
}

package sun.nio.cs;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SingleByte
{
	@:overload @:public @:static public static function initC2B(b2c : java.NativeArray<java.StdTypes.Char16>, c2bNR : java.NativeArray<java.StdTypes.Char16>, c2b : java.NativeArray<java.StdTypes.Char16>, c2bIndex : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	
}
@:native('sun$nio$cs$SingleByte$Decoder') extern class SingleByte_Decoder extends java.nio.charset.CharsetDecoder implements sun.nio.cs.ArrayDecoder
{
	@:overload @:public public function new(cs : java.nio.charset.Charset, b2c : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:protected override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:protected override private function implReplaceWith(newReplacement : String) : Void;
	
	@:overload @:public public function decode(src : java.NativeArray<java.StdTypes.Int8>, sp : Int, len : Int, dst : java.NativeArray<java.StdTypes.Char16>) : Int;
	
	
}
@:native('sun$nio$cs$SingleByte$Encoder') extern class SingleByte_Encoder extends java.nio.charset.CharsetEncoder implements sun.nio.cs.ArrayEncoder
{
	@:overload @:public public function new(cs : java.nio.charset.Charset, c2b : java.NativeArray<java.StdTypes.Char16>, c2bIndex : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:public override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:public override public function isLegalReplacement(repl : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload @:protected override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:protected override private function implReplaceWith(newReplacement : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function encode(src : java.NativeArray<java.StdTypes.Char16>, sp : Int, len : Int, dst : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	
}

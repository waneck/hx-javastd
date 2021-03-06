package sun.nio.cs.ext;
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
extern class MS932_0213 extends java.nio.charset.Charset
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload @:public override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload @:public override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	
}
@:native('sun$nio$cs$ext$MS932_0213$Decoder') extern class MS932_0213_Decoder extends sun.nio.cs.ext.SJIS_0213.SJIS_0213_Decoder
{
	@:overload @:protected override private function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload @:protected override private function decodeDouble(b1 : Int, b2 : Int) : java.StdTypes.Char16;
	
	
}
@:native('sun$nio$cs$ext$MS932_0213$Encoder') extern class MS932_0213_Encoder extends sun.nio.cs.ext.SJIS_0213.SJIS_0213_Encoder
{
	@:overload @:protected override private function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload @:protected override private function encodeChar(ch : java.StdTypes.Char16) : Int;
	
	
}

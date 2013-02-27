package sun.nio.cs.ext;
/*
* Copyright (c) 2008, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class SJIS_0213 extends java.nio.charset.Charset
{
	/*
	*  5 types of entry in SJIS_X_0213/Unicode mapping table
	*
	*  (1)Single-Byte
	*     JIS_X_0213 does not define single-byte character itself, the
	*     JIS_X_0201 entries are added in for sjis implementation.
	*
	*  (2)Double-Byte SJIS <-> BMP Unicode
	*     ex: 0x8140 U+3000    # IDEOGRAPHIC SPACE
	*
	*  (3)Double-Byte SJIS <-> Supplementary
	*     ex: 0xFCF0 U+2A61A   # <cjk> [2000] [Unicode3.1]
	*
	*  (4)Double-Byte SJIS <-> Composite
	*   ex: 0x83F6 U+31F7+309A # [2000]
	*
	*  (5)"Windows-only" special mapping entries
	*     are handled by MS932_0213.
	*/
	@:overload public function new() : Void;
	
	@:overload public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	
}
@:native('sun$nio$cs$ext$SJIS_0213$Decoder') extern class SJIS_0213_Decoder extends java.nio.charset.CharsetDecoder
{
	private static var UNMAPPABLE(default, null) : java.StdTypes.Char16;
	
	@:overload private function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload private function decodeSingle(b : Int) : java.StdTypes.Char16;
	
	@:overload private function decodeDouble(b1 : Int, b2 : Int) : java.StdTypes.Char16;
	
	@:overload private function decodeDoubleEx(b1 : Int, b2 : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	
}
@:native('sun$nio$cs$ext$SJIS_0213$Encoder') extern class SJIS_0213_Encoder extends java.nio.charset.CharsetEncoder
{
	private static var UNMAPPABLE(default, null) : Int;
	
	private static var MAX_SINGLEBYTE(default, null) : Int;
	
	@:overload private function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload private function encodeChar(ch : java.StdTypes.Char16) : Int;
	
	@:overload private function encodeSurrogate(hi : java.StdTypes.Char16, lo : java.StdTypes.Char16) : Int;
	
	@:overload private function encodeComposite(base : java.StdTypes.Char16, cc : java.StdTypes.Char16) : Int;
	
	@:overload private function isCompositeBase(ch : java.StdTypes.Char16) : Bool;
	
	@:overload private function encodeArrayLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload private function encodeBufferLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function implFlush(dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function implReset() : Void;
	
	
}

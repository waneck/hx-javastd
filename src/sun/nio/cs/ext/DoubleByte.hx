package sun.nio.cs.ext;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Four types of "DoubleByte" charsets are implemented in this class
* (1)DoubleByte
*    The "mostly widely used" multibyte charset, a combination of
*    a singlebyte character set (usually the ASCII charset) and a
*    doublebyte character set. The codepoint values of singlebyte
*    and doublebyte don't overlap. Microsoft's multibyte charsets
*    and IBM's "DBCS_ASCII" charsets, such as IBM1381, 942, 943,
*    948, 949 and 950 are such charsets.
*
* (2)DoubleByte_EBCDIC
*    IBM EBCDIC Mix multibyte charset. Use SO and SI to shift (switch)
*    in and out between the singlebyte character set and doublebyte
*    character set.
*
* (3)DoubleByte_SIMPLE_EUC
*    It's a "simple" form of EUC encoding scheme, only have the
*    singlebyte character set G0 and one doublebyte character set
*    G1 are defined, G2 (with SS2) and G3 (with SS3) are not used.
*    So it is actually the same as the "typical" type (1) mentioned
*    above, except it return "malformed" for the SS2 and SS3 when
*    decoding.
*
* (4)DoubleByte ONLY
*    A "pure" doublebyte only character set. From implementation
*    point of view, this is the type (1) with "decodeSingle" always
*    returns unmappable.
*
* For simplicity, all implementations share the same decoding and
* encoding data structure.
*
* Decoding:
*
*    char[][] b2c;
*    char[] b2cSB;
*    int b2Min, b2Max
*
*    public char decodeSingle(int b) {
*        return b2cSB.[b];
*    }
*
*    public char decodeDouble(int b1, int b2) {
*        if (b2 < b2Min || b2 > b2Max)
*            return UNMAPPABLE_DECODING;
*         return b2c[b1][b2 - b2Min];
*    }
*
*    (1)b2Min, b2Max are the corresponding min and max value of the
*       low-half of the double-byte.
*    (2)The high 8-bit/b1 of the double-byte are used to indexed into
*       b2c array.
*
* Encoding:
*
*    char[] c2b;
*    char[] c2bIndex;
*
*    public int encodeChar(char ch) {
*        return c2b[c2bIndex[ch >> 8] + (ch & 0xff)];
*    }
*
*/
extern class DoubleByte
{
	public static var B2C_UNMAPPABLE(default, null) : java.NativeArray<java.StdTypes.Char16>;
	
	
}
@:native('sun$nio$cs$ext$DoubleByte$Decoder') extern class DoubleByte_Decoder extends java.nio.charset.CharsetDecoder implements sun.nio.cs.ext.DelegatableDecoder
{
	@:overload private function crMalformedOrUnderFlow(b : Int) : java.nio.charset.CoderResult;
	
	@:overload private function crMalformedOrUnmappable(b : Int) : java.nio.charset.CoderResult;
	
	@:overload private function decodeArrayLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload private function decodeBufferLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload override public function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload override public function implReset() : Void;
	
	@:overload override public function implFlush(out : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload public function decodeSingle(b : Int) : java.StdTypes.Char16;
	
	@:overload public function decodeDouble(b1 : Int, b2 : Int) : java.StdTypes.Char16;
	
	
}
@:native('sun$nio$cs$ext$DoubleByte$Decoder_EBCDIC') extern class DoubleByte_Decoder_EBCDIC extends sun.nio.cs.ext.DoubleByte.DoubleByte_Decoder
{
	@:overload override public function implReset() : Void;
	
	@:overload override private function decodeArrayLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function decodeBufferLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$DoubleByte$Decoder_EBCDIC_DBCSONLY') extern class DoubleByte_Decoder_EBCDIC_DBCSONLY extends sun.nio.cs.ext.DoubleByte.DoubleByte_Decoder
{
	
}
@:native('sun$nio$cs$ext$DoubleByte$Decoder_EUC_SIM') extern class DoubleByte_Decoder_EUC_SIM extends sun.nio.cs.ext.DoubleByte.DoubleByte_Decoder
{
	@:overload override private function crMalformedOrUnderFlow(b : Int) : java.nio.charset.CoderResult;
	
	@:overload override private function crMalformedOrUnmappable(b : Int) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$DoubleByte$Encoder') extern class DoubleByte_Encoder extends java.nio.charset.CharsetEncoder
{
	@:overload private function new(cs : java.nio.charset.Charset, c2b : java.NativeArray<java.StdTypes.Char16>, c2bIndex : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload private function encodeArrayLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload private function encodeBufferLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload public function encodeChar(ch : java.StdTypes.Char16) : Int;
	
	
}
@:native('sun$nio$cs$ext$DoubleByte$Encoder_EBCDIC_DBCSONLY') extern class DoubleByte_Encoder_EBCDIC_DBCSONLY extends sun.nio.cs.ext.DoubleByte.DoubleByte_Encoder
{
	@:overload override public function encodeChar(ch : java.StdTypes.Char16) : Int;
	
	
}
@:native('sun$nio$cs$ext$DoubleByte$Encoder_EBCDIC') extern class DoubleByte_Encoder_EBCDIC extends sun.nio.cs.ext.DoubleByte.DoubleByte_Encoder
{
	private var currentState : Int;
	
	@:overload override private function implReset() : Void;
	
	@:overload override private function implFlush(out : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function encodeArrayLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function encodeBufferLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$DoubleByte$Encoder_EUC_SIM') extern class DoubleByte_Encoder_EUC_SIM extends sun.nio.cs.ext.DoubleByte.DoubleByte_Encoder
{
	
}

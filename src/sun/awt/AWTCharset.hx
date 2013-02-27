package sun.awt;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
////This class delegates all invokes to the charset "javaCs" if
////its subclasses do not provide their own en/decode solution.
extern class AWTCharset extends java.nio.charset.Charset
{
	private var awtCs : java.nio.charset.Charset;
	
	private var javaCs : java.nio.charset.Charset;
	
	@:overload public function new(awtCsName : String, javaCs : java.nio.charset.Charset) : Void;
	
	@:overload public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	@:overload override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	
}
@:native('sun$awt$AWTCharset$Encoder') extern class AWTCharset_Encoder extends java.nio.charset.CharsetEncoder
{
	private var enc : java.nio.charset.CharsetEncoder;
	
	@:overload private function new() : Void;
	
	@:overload private function new(enc : java.nio.charset.CharsetEncoder) : Void;
	
	@:overload override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload override public function canEncode(cs : java.lang.CharSequence) : Bool;
	
	@:overload override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function implFlush(out : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function implReset() : Void;
	
	@:overload override private function implReplaceWith(newReplacement : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload override private function implOnMalformedInput(newAction : java.nio.charset.CodingErrorAction) : Void;
	
	@:overload override private function implOnUnmappableCharacter(newAction : java.nio.charset.CodingErrorAction) : Void;
	
	@:overload override public function isLegalReplacement(repl : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	
}
@:native('sun$awt$AWTCharset$Decoder') extern class AWTCharset_Decoder extends java.nio.charset.CharsetDecoder
{
	private var dec : java.nio.charset.CharsetDecoder;
	
	@:overload private function new() : Void;
	
	@:overload private function new(dec : java.nio.charset.CharsetDecoder) : Void;
	
	@:overload override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function implFlush(out : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload override private function implReset() : Void;
	
	@:overload override private function implReplaceWith(newReplacement : String) : Void;
	
	@:overload override private function implOnMalformedInput(newAction : java.nio.charset.CodingErrorAction) : Void;
	
	@:overload override private function implOnUnmappableCharacter(newAction : java.nio.charset.CodingErrorAction) : Void;
	
	
}

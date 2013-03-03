package sun.nio.cs.ext;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JISAutoDetect extends java.nio.charset.Charset implements sun.nio.cs.HistoricallyNamedCharset
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function contains(cs : java.nio.charset.Charset) : Bool;
	
	@:overload @:public override public function canEncode() : Bool;
	
	@:overload @:public override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload @:public public function historicalName() : String;
	
	@:overload @:public override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	/**
	* accessor methods used to share byte masking tables
	* with the sun.io JISAutoDetect implementation
	*/
	@:overload @:public @:static public static function getByteMask1() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:static public static function getByteMask2() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final @:static public static function canBeSJIS1B(mask : Int) : Bool;
	
	@:overload @:public @:final @:static public static function canBeEUCJP(mask : Int) : Bool;
	
	@:overload @:public @:final @:static public static function canBeEUCKana(mask1 : Int, mask2 : Int) : Bool;
	
	
}
@:native('sun$nio$cs$ext$JISAutoDetect$Decoder') @:internal extern class JISAutoDetect_Decoder extends java.nio.charset.CharsetDecoder
{
	@:overload @:public public function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload @:protected override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:protected override private function implReset() : Void;
	
	@:overload @:protected override private function implFlush(out : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:public override public function isAutoDetecting() : Bool;
	
	@:overload @:public override public function isCharsetDetected() : Bool;
	
	@:overload @:public override public function detectedCharset() : java.nio.charset.Charset;
	
	
}

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
@:internal extern class ISO2022 extends java.nio.charset.Charset
{
	@:overload public function new(csname : String, aliases : java.NativeArray<String>) : Void;
	
	@:overload override public function newDecoder() : java.nio.charset.CharsetDecoder;
	
	@:overload override public function newEncoder() : java.nio.charset.CharsetEncoder;
	
	
}
@:native('sun$nio$cs$ext$ISO2022$Decoder') extern class ISO2022_Decoder extends java.nio.charset.CharsetDecoder
{
	private var SODesig : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	private var SS2Desig : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	private var SS3Desig : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	private var SODecoder : java.NativeArray<java.nio.charset.CharsetDecoder>;
	
	private var SS2Decoder : java.NativeArray<java.nio.charset.CharsetDecoder>;
	
	private var SS3Decoder : java.NativeArray<java.nio.charset.CharsetDecoder>;
	
	@:overload private function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload override private function implReset() : Void;
	
	@:overload override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	
}
@:native('sun$nio$cs$ext$ISO2022$Encoder') extern class ISO2022_Encoder extends java.nio.charset.CharsetEncoder
{
	public static var SS2(default, null) : java.StdTypes.Int8;
	
	public static var PLANE2(default, null) : java.StdTypes.Int8;
	
	public static var PLANE3(default, null) : java.StdTypes.Int8;
	
	private var maximumDesignatorLength(default, null) : java.StdTypes.Int8;
	
	private var SODesig : String;
	
	private var ISOEncoder : java.nio.charset.CharsetEncoder;
	
	@:overload private function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload override private function implReset() : Void;
	
	@:overload override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	
}
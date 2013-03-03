package sun.nio.cs;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UTF_32Coder
{
	@:protected @:static @:final private static var BOM_BIG(default, null) : Int;
	
	@:protected @:static @:final private static var BOM_LITTLE(default, null) : Int;
	
	@:protected @:static @:final private static var NONE(default, null) : Int;
	
	@:protected @:static @:final private static var BIG(default, null) : Int;
	
	@:protected @:static @:final private static var LITTLE(default, null) : Int;
	
	
}
@:native('sun$nio$cs$UTF_32Coder$Decoder') extern class UTF_32Coder_Decoder extends java.nio.charset.CharsetDecoder
{
	@:overload @:protected private function new(cs : java.nio.charset.Charset, bo : Int) : Void;
	
	@:overload @:protected override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:protected override private function implReset() : Void;
	
	
}
@:native('sun$nio$cs$UTF_32Coder$Encoder') extern class UTF_32Coder_Encoder extends java.nio.charset.CharsetEncoder
{
	@:overload @:protected private function put(cp : Int, dst : java.nio.ByteBuffer) : Void;
	
	@:overload @:protected private function new(cs : java.nio.charset.Charset, byteOrder : Int, doBOM : Bool) : Void;
	
	@:overload @:protected override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload @:protected override private function implReset() : Void;
	
	
}

package sun.nio.cs.ext;
/*
* Copyright (c) 2002, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DoubleByteDecoder extends java.nio.charset.CharsetDecoder
{
	@:protected private var start : Int;
	
	@:protected private var end : Int;
	
	@:protected @:static @:final private static var REPLACE_CHAR(default, null) : java.StdTypes.Char16;
	
	@:protected private var highSurrogate : java.StdTypes.Char16;
	
	@:protected private var lowSurrogate : java.StdTypes.Char16;
	
	@:overload @:protected private function new(cs : java.nio.charset.Charset, index1 : java.NativeArray<java.StdTypes.Int16>, index2 : java.NativeArray<String>, start : Int, end : Int) : Void;
	
	@:overload @:protected override private function decodeLoop(src : java.nio.ByteBuffer, dst : java.nio.CharBuffer) : java.nio.charset.CoderResult;
	
	/*
	* Can be changed by subclass
	*/
	@:overload @:protected private function decodeSingle(b : Int) : java.StdTypes.Char16;
	
	@:overload @:protected private function decodeDouble(byte1 : Int, byte2 : Int) : java.StdTypes.Char16;
	
	
}

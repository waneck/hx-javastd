package com.sun.xml.internal.fastinfoset.algorithm;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class FloatEncodingAlgorithm extends com.sun.xml.internal.fastinfoset.algorithm.IEEE754FloatingPointEncodingAlgorithm
{
	@:overload @:public @:final override public function getPrimtiveLengthFromOctetLength(octetLength : Int) : Int;
	
	@:overload @:public override public function getOctetLengthFromPrimitiveLength(primitiveLength : Int) : Int;
	
	@:overload @:public @:final override public function decodeFromBytes(b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Dynamic;
	
	@:overload @:public @:final override public function decodeFromInputStream(s : java.io.InputStream) : Dynamic;
	
	@:overload @:public override public function encodeToOutputStream(data : Dynamic, s : java.io.OutputStream) : Void;
	
	@:overload @:public @:final override public function convertFromCharacters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Dynamic;
	
	@:overload @:public @:final override public function convertToCharacters(data : Dynamic, s : java.lang.StringBuffer) : Void;
	
	@:overload @:public @:final public function decodeFromBytesToFloatArray(data : java.NativeArray<Single>, fstart : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	@:overload @:public @:final public function decodeFromInputStreamToFloatArray(s : java.io.InputStream) : java.NativeArray<Single>;
	
	@:overload @:public @:final public function encodeToOutputStreamFromFloatArray(fdata : java.NativeArray<Single>, s : java.io.OutputStream) : Void;
	
	@:overload @:public @:final override public function encodeToBytes(array : Dynamic, astart : Int, alength : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int) : Void;
	
	@:overload @:public @:final public function encodeToBytesFromFloatArray(fdata : java.NativeArray<Single>, fstart : Int, flength : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int) : Void;
	
	@:overload @:public @:final public function convertToCharactersFromFloatArray(fdata : java.NativeArray<Single>, s : java.lang.StringBuffer) : Void;
	
	@:overload @:public @:final public function generateArrayFromList(array : java.util.List<Dynamic>) : java.NativeArray<Single>;
	
	
}

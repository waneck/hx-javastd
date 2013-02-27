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
extern class DoubleEncodingAlgorithm extends com.sun.xml.internal.fastinfoset.algorithm.IEEE754FloatingPointEncodingAlgorithm
{
	@:overload @:final override public function getPrimtiveLengthFromOctetLength(octetLength : Int) : Int;
	
	@:overload override public function getOctetLengthFromPrimitiveLength(primitiveLength : Int) : Int;
	
	@:overload @:final override public function decodeFromBytes(b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Dynamic;
	
	@:overload @:final override public function decodeFromInputStream(s : java.io.InputStream) : Dynamic;
	
	@:overload override public function encodeToOutputStream(data : Dynamic, s : java.io.OutputStream) : Void;
	
	@:overload @:final override public function convertFromCharacters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Dynamic;
	
	@:overload @:final override public function convertToCharacters(data : Dynamic, s : java.lang.StringBuffer) : Void;
	
	@:overload @:final public function decodeFromBytesToDoubleArray(data : java.NativeArray<Float>, fstart : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	@:overload @:final public function decodeFromInputStreamToDoubleArray(s : java.io.InputStream) : java.NativeArray<Float>;
	
	@:overload @:final public function encodeToOutputStreamFromDoubleArray(fdata : java.NativeArray<Float>, s : java.io.OutputStream) : Void;
	
	@:overload @:final override public function encodeToBytes(array : Dynamic, astart : Int, alength : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int) : Void;
	
	@:overload @:final public function encodeToBytesFromDoubleArray(fdata : java.NativeArray<Float>, fstart : Int, flength : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int) : Void;
	
	@:overload @:final public function convertToCharactersFromDoubleArray(fdata : java.NativeArray<Float>, s : java.lang.StringBuffer) : Void;
	
	@:overload @:final public function generateArrayFromList(array : java.util.List<Dynamic>) : java.NativeArray<Float>;
	
	
}

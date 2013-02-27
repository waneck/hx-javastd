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
extern class BuiltInEncodingAlgorithm implements com.sun.xml.internal.org.jvnet.fastinfoset.EncodingAlgorithm
{
	private static var SPACE_PATTERN(default, null) : java.util.regex.Pattern;
	
	@:overload @:abstract public function getPrimtiveLengthFromOctetLength(octetLength : Int) : Int;
	
	@:overload @:abstract public function getOctetLengthFromPrimitiveLength(primitiveLength : Int) : Int;
	
	@:overload @:abstract public function encodeToBytes(array : Dynamic, astart : Int, alength : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int) : Void;
	
	@:overload public function matchWhiteSpaceDelimnatedWords(cb : java.nio.CharBuffer, wl : BuiltInEncodingAlgorithm_WordListener) : Void;
	
	@:overload public function removeWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : java.lang.StringBuffer;
	
	@:overload @:public public function convertToCharacters(data : Dynamic, s : java.lang.StringBuffer) : Void;
	
	@:overload @:public public function encodeToOutputStream(data : Dynamic, s : java.io.OutputStream) : Void;
	
	@:overload @:public public function decodeFromInputStream(s : java.io.InputStream) : Dynamic;
	
	@:overload @:public public function decodeFromBytes(b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Dynamic;
	
	@:overload @:public public function convertFromCharacters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Dynamic;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$algorithm$BuiltInEncodingAlgorithm$WordListener') extern interface BuiltInEncodingAlgorithm_WordListener
{
	@:overload public function word(start : Int, end : Int) : Void;
	
	
}

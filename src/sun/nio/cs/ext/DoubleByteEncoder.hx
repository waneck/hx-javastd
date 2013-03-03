package sun.nio.cs.ext;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DoubleByteEncoder extends java.nio.charset.CharsetEncoder
{
	@:overload @:protected private function new(cs : java.nio.charset.Charset, index1 : java.NativeArray<java.StdTypes.Int16>, index2 : java.NativeArray<String>) : Void;
	
	@:overload @:protected private function new(cs : java.nio.charset.Charset, index1 : java.NativeArray<java.StdTypes.Int16>, index2 : java.NativeArray<String>, avg : Single, max : Single) : Void;
	
	@:overload @:protected private function new(cs : java.nio.charset.Charset, index1 : java.NativeArray<java.StdTypes.Int16>, index2 : java.NativeArray<String>, repl : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:protected private function new(cs : java.nio.charset.Charset, index1 : java.NativeArray<java.StdTypes.Int16>, index2 : java.NativeArray<String>, repl : java.NativeArray<java.StdTypes.Int8>, avg : Single, max : Single) : Void;
	
	@:overload @:public override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:protected override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	/*
	* Can be changed by subclass
	*/
	@:overload @:protected private function encodeDouble(ch : java.StdTypes.Char16) : Int;
	
	/*
	* Can be changed by subclass
	*/
	@:overload @:protected private function encodeSingle(inputChar : java.StdTypes.Char16) : Int;
	
	/**
	*  Protected method which should be overridden by concrete DBCS
	*  CharsetEncoder classes which included supplementary characters
	*  within their mapping coverage.
	*  null return value indicates surrogate values could not be
	*  handled or encoded.
	*/
	@:overload @:protected private function encodeSurrogate(highSurrogate : java.StdTypes.Char16, lowSurrogate : java.StdTypes.Char16) : java.NativeArray<java.StdTypes.Int8>;
	
	
}

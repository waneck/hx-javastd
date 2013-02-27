package sun.nio.cs.ext;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SimpleEUCEncoder extends java.nio.charset.CharsetEncoder
{
	private var index1 : java.NativeArray<java.StdTypes.Int16>;
	
	private var index2 : String;
	
	private var index2a : String;
	
	private var index2b : String;
	
	private var index2c : String;
	
	private var mask1 : Int;
	
	private var mask2 : Int;
	
	private var shift : Int;
	
	@:overload private function new(cs : java.nio.charset.Charset) : Void;
	
	/**
	* Returns true if the given character can be converted to the
	* target character encoding.
	*/
	@:overload override public function canEncode(ch : java.StdTypes.Char16) : Bool;
	
	@:overload override private function encodeLoop(src : java.nio.CharBuffer, dst : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	@:overload public function encode(inputChar : java.StdTypes.Char16) : java.StdTypes.Int8;
	
	
}

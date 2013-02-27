package sun.io;
/*
* Copyright (c) 1996, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class CharToByteISO2022JP extends sun.io.CharToByteJIS0208
{
	/**
	* Bytes for substitute for unmappable input.
	*/
	private var subBytesEscape : java.NativeArray<java.StdTypes.Int8>;
	
	private var subBytesMode : Int;
	
	@:overload override public function flush(output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	@:overload override public function convert(input : java.NativeArray<java.StdTypes.Char16>, inOff : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Int8>, outOff : Int, outEnd : Int) : Int;
	
	@:overload override public function reset() : Void;
	
	/**
	* returns the maximum number of bytes needed to convert a char
	*/
	@:overload override public function getMaxBytesPerChar() : Int;
	
	@:overload override public function getCharacterEncoding() : String;
	
	
}

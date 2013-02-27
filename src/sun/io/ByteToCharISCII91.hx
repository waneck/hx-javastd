package sun.io;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class ByteToCharISCII91 extends sun.io.ByteToCharConverter
{
	/**
	* Converts ISCII91 characters to Unicode.
	* @see sun.io.ByteToCharConverter#convert
	*/
	@:overload override public function convert(input : java.NativeArray<java.StdTypes.Int8>, inStart : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Char16>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* @see sun.io.ByteToCharConverter#flush
	*/
	@:overload override public function flush(output : java.NativeArray<java.StdTypes.Char16>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Returns the character set id for the conversion.
	*/
	@:overload override public function getCharacterEncoding() : String;
	
	/**
	* @see sun.io.ByteToCharConverter#reset
	*/
	@:overload override public function reset() : Void;
	
	
}
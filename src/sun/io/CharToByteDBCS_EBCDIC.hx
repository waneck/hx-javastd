package sun.io;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class CharToByteDBCS_EBCDIC extends sun.io.CharToByteConverter
{
	@:overload @:public public function new(enc : sun.nio.cs.ext.DoubleByte.DoubleByte_Encoder) : Void;
	
	/**
	* flush out any residual data and reset the buffer state
	*/
	@:overload @:public override public function flush(output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Character conversion
	*/
	@:overload @:public override public function convert(input : java.NativeArray<java.StdTypes.Char16>, inOff : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Int8>, outOff : Int, outEnd : Int) : Int;
	
	/**
	* Resets converter to its initial state.
	*/
	@:overload @:public override public function reset() : Void;
	
	/**
	* Returns the maximum number of bytes needed to convert a char.
	*/
	@:overload @:public override public function getMaxBytesPerChar() : Int;
	
	/**
	* Sets the substitution bytes to use when the converter is in
	* substitution mode.  The given bytes should represent a valid
	* character in the target character encoding.
	*/
	@:overload @:public override public function setSubstitutionBytes(newSubBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns true if the given character can be converted to the
	* target character encoding.
	*/
	@:overload @:public override public function canConvert(c : java.StdTypes.Char16) : Bool;
	
	
}

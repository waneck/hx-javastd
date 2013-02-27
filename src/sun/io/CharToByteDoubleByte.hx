package sun.io;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
/**
* @author Limin Shi
*/
extern class CharToByteDoubleByte extends sun.io.CharToByteConverter
{
	/*
	* 1st level index, provided by subclass
	*/
	private var index1 : java.NativeArray<java.StdTypes.Int16>;
	
	/*
	* 2nd level index, provided by subclass
	*/
	private var index2 : java.NativeArray<String>;
	
	private var highHalfZoneCode : java.StdTypes.Char16;
	
	@:overload public function getIndex1() : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload public function getIndex2() : java.NativeArray<String>;
	
	@:overload override public function flush(output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Converts characters to sequences of bytes.
	* Conversions that result in Exceptions can be restarted by calling
	* convert again, with appropriately modified parameters.
	* @return the characters written to output.
	* @param input char array containing text in Unicode
	* @param inStart offset in input array
	* @param inEnd offset of last byte to be converted
	* @param output byte array to receive conversion result
	* @param outStart starting offset
	* @param outEnd offset of last byte to be written to
	* @throw UnsupportedCharacterException for any character
	* that cannot be converted to the external character set.
	*/
	@:overload override public function convert(input : java.NativeArray<java.StdTypes.Char16>, inOff : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Int8>, outOff : Int, outEnd : Int) : Int;
	
	/**
	* the maximum number of bytes needed to hold a converted char
	* @returns the maximum number of bytes needed for a converted char
	*/
	@:overload override public function getMaxBytesPerChar() : Int;
	
	/**
	*  Resets the converter.
	* Call this method to reset the converter to its initial state
	*/
	@:overload override public function reset() : Void;
	
	/**
	* Return whether a character is mappable or not
	* @return true if a character is mappable
	*/
	@:overload override public function canConvert(ch : java.StdTypes.Char16) : Bool;
	
	/*
	* Can be changed by subclass
	*/
	@:overload private function convSingleByte(inputChar : java.StdTypes.Char16, outputByte : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/*
	* Can be changed by subclass
	*/
	@:overload private function getNative(ch : java.StdTypes.Char16) : Int;
	
	
}

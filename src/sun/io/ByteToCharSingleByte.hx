package sun.io;
/*
* Copyright (c) 1996, 2002, Oracle and/or its affiliates. All rights reserved.
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
* A table driven conversion from byte to char for single byte  character sets.
* The needed data tables will reside in a character set specific subclass.
*
* @author Lloyd Honomichl
* @author Asmus Freytag
*/
extern class ByteToCharSingleByte extends sun.io.ByteToCharConverter
{
	/**
	* Mapping table. Values supplied by subclass
	*/
	@:protected private var byteToCharTable : String;
	
	@:overload @:public public function getByteToCharTable() : String;
	
	@:overload @:public override public function flush(output : java.NativeArray<java.StdTypes.Char16>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Converts bytes to characters according to the selected character
	* encoding.
	* Maintains internal state, so that conversions that result in
	* exceptions can be restarted by calling convert again, with
	* appropriately modified parameters.
	* Call reset before converting input that is not a continuation of
	* the previous call.
	* @return the number of characters written to output.
	* @param input byte array containing text in character set
	* @param inStart offset in input array
	* @param inEnd offset of last byte to be converted
	* @param output character array to receive conversion result
	* @param outStart starting offset
	* @param outEnd offset of last character to be written to
	* @throw MalformedInputException for any sequence of bytes that is
	* illegal for the input character set, including any partial multi-byte
	* sequence which occurs at the end of an input buffer.
	* @throw UnsupportedCharacterException for any sequence of bytes that
	* contain a character not supported in the current conversion.
	* @throw BufferFullException whenever the output buffer is full
	* before the input is exhausted.
	* @see #reset
	*/
	@:overload @:public override public function convert(input : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Char16>, outOff : Int, outEnd : Int) : Int;
	
	@:overload @:protected private function getUnicode(byteIndex : Int) : java.StdTypes.Char16;
	
	/**
	*  Resets the converter.
	*  Call this method to reset the converter to its initial state
	*/
	@:overload @:public override public function reset() : Void;
	
	
}

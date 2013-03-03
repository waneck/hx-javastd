package sun.io;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
* Class for converting bytes to characters for the EUC-JP encoding in
* linux. This converter supports the JIS0201 and the JIS0208 encoding and
* omits support for the JIS212 encoding.
*
* @author Naveen Sanjeeva
*/
extern class ByteToCharEUC_JP_LINUX extends sun.io.ByteToCharJIS0208
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function flush(output : java.NativeArray<java.StdTypes.Char16>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Resets the converter.
	* Call this method to reset the converter to its initial state
	*/
	@:overload @:public override public function reset() : Void;
	
	@:overload @:public override public function getCharacterEncoding() : String;
	
	@:overload @:protected override private function convSingleByte(b : Int) : java.StdTypes.Char16;
	
	@:overload @:protected override private function getUnicode(byte1 : Int, byte2 : Int) : java.StdTypes.Char16;
	
	/**
	* Converts sequences of bytes to characters.
	* Conversions that result in Exceptions can be restarted by calling
	* convert again, with appropriately modified parameters.
	* @return the characters written to output.
	* @param input byte array containing text in Double/single Byte
	* @param inStart offset in input array
	* @param inEnd offset of last byte to be converted
	* @param output character array to receive conversion result
	* @param outStart starting offset
	* @param outEnd offset of last byte to be written to
	* @throw UnsupportedCharacterException for any bytes
	* that cannot be converted to the external character set.
	*/
	@:overload @:public override public function convert(input : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Char16>, outOff : Int, outEnd : Int) : Int;
	
	
}

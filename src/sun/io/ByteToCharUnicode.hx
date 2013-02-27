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
/**
* Convert byte arrays containing Unicode characters into arrays of actual
* Unicode characters.  This class may be used directly, in which case it
* expects the input byte array to begin with a byte-order mark, or it may be
* subclassed in order to preset the byte order and mark behavior.
*
* <p> Whether or not a mark is expected, if a mark that does not match the
* established byte order is later discovered then a
* <tt>MalformedInputException</tt> will be thrown by the <tt>convert</tt>
* method.  If a correct mark is seen later in the input stream, it is passed
* through as a character.
*
* @see ByteToCharUnicodeLittle
* @see ByteToCharUnicodeLittleUnmarked
* @see ByteToCharUnicodeBig
* @see ByteToCharUnicodeBigUnmarked
*
* @author      Mark Reinhold
*/
extern class ByteToCharUnicode extends sun.io.ByteToCharConverter
{
	/**
	* Creates a Unicode byte-to-char converter that expects the first pair of
	* input bytes to be a byte-order mark, which will be interpreted and
	* discarded.  If the first pair of bytes is not such a mark then a
	* <tt>MalformedInputException</tt> will be thrown by the convert method.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a Unicode byte-to-char converter that uses the given byte order
	* and may or may not insist upon an initial byte-order mark.
	*/
	@:overload private function new(bo : Int, m : Bool) : Void;
	
	@:overload override public function getCharacterEncoding() : String;
	
	@:overload override public function convert(_in : java.NativeArray<java.StdTypes.Int8>, inOff : Int, inEnd : Int, out : java.NativeArray<java.StdTypes.Char16>, outOff : Int, outEnd : Int) : Int;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function flush(buf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	
}

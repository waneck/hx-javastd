package sun.misc;
/*
* Copyright (c) 1995, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class UCDecoder extends sun.misc.CharacterDecoder
{
	/** This class encodes two bytes per atom. */
	@:overload @:protected override private function bytesPerAtom() : Int;
	
	/** this class encodes 48 bytes per line */
	@:overload @:protected override private function bytesPerLine() : Int;
	
	/**
	* Decode one atom - reads the characters from the input stream, decodes
	* them, and checks for valid parity.
	*/
	@:overload @:protected override private function decodeAtom(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream, l : Int) : Void;
	
	/**
	* decodeBufferPrefix initializes the sequence number to zero.
	*/
	@:overload @:protected override private function decodeBufferPrefix(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream) : Void;
	
	/**
	* decodeLinePrefix reads the sequence number and the number of
	* encoded bytes from the line. If the sequence number is not the
	* previous sequence number + 1 then an exception is thrown.
	* UCE lines are line terminator immune, they all start with *
	* so the other thing this method does is scan for the next line
	* by looking for the * character.
	*
	* @exception CEFormatException out of sequence lines detected.
	*/
	@:overload @:protected override private function decodeLinePrefix(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream) : Int;
	
	/**
	* this method reads the CRC that is at the end of every line and
	* verifies that it matches the computed CRC.
	*
	* @exception CEFormatException if CRC check fails.
	*/
	@:overload @:protected override private function decodeLineSuffix(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream) : Void;
	
	
}

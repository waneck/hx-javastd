package sun.misc;
/*
* Copyright (c) 1995, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class UUDecoder extends sun.misc.CharacterDecoder
{
	/**
	* This string contains the name that was in the buffer being decoded.
	*/
	@:public public var bufferName : String;
	
	/**
	* Represents UNIX(tm) mode bits. Generally three octal digits
	* representing read, write, and execute permission of the owner,
	* group owner, and  others. They should be interpreted as the bit groups:
	* <pre>
	* (owner) (group) (others)
	*  rwx      rwx     rwx    (r = read, w = write, x = execute)
	*</pre>
	*
	*/
	@:public public var mode : Int;
	
	/**
	* UU encoding specifies 3 bytes per atom.
	*/
	@:overload @:protected override private function bytesPerAtom() : Int;
	
	/**
	* All UU lines have 45 bytes on them, for line length of 15*4+1 or 61
	* characters per line.
	*/
	@:overload @:protected override private function bytesPerLine() : Int;
	
	/**
	* Decode a UU atom. Note that if l is less than 3 we don't write
	* the extra bits, however the encoder always encodes 4 character
	* groups even when they are not needed.
	*/
	@:overload @:protected override private function decodeAtom(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream, l : Int) : Void;
	
	/**
	* For uuencoded buffers, the data begins with a line of the form:
	*          begin MODE FILENAME
	* This line always starts in column 1.
	*/
	@:overload @:protected override private function decodeBufferPrefix(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream) : Void;
	
	/**
	* In uuencoded buffers, encoded lines start with a character that
	* represents the number of bytes encoded in this line. The last
	* line of input is always a line that starts with a single space
	* character, which would be a zero length line.
	*/
	@:overload @:protected override private function decodeLinePrefix(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream) : Int;
	
	/**
	* Find the end of the line for the next operation.
	* The following sequences are recognized as end-of-line
	* CR, CR LF, or LF
	*/
	@:overload @:protected override private function decodeLineSuffix(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream) : Void;
	
	/**
	* UUencoded files have a buffer suffix which consists of the word
	* end. This line should immediately follow the line with a single
	* space in it.
	*/
	@:overload @:protected override private function decodeBufferSuffix(inStream : java.io.PushbackInputStream, outStream : java.io.OutputStream) : Void;
	
	
}

package sun.misc;
/*
* Copyright (c) 1995, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class UUEncoder extends sun.misc.CharacterEncoder
{
	/**
	* Default - buffer begin line will be:
	* <pre>
	*  begin 644 encoder.buf
	* </pre>
	*/
	@:overload public function new() : Void;
	
	/**
	* Specifies a name for the encoded buffer, begin line will be:
	* <pre>
	*  begin 644 [FNAME]
	* </pre>
	*/
	@:overload public function new(fname : String) : Void;
	
	/**
	* Specifies a name and mode for the encoded buffer, begin line will be:
	* <pre>
	*  begin [MODE] [FNAME]
	* </pre>
	*/
	@:overload public function new(fname : String, newMode : Int) : Void;
	
	/** number of bytes per atom in uuencoding is 3 */
	@:overload private function bytesPerAtom() : Int;
	
	/** number of bytes per line in uuencoding is 45 */
	@:overload private function bytesPerLine() : Int;
	
	/**
	* encodeAtom - take three bytes and encodes them into 4 characters
	* If len is less than 3 then remaining bytes are filled with '1'.
	* This insures that the last line won't end in spaces and potentiallly
	* be truncated.
	*/
	@:overload private function encodeAtom(outStream : java.io.OutputStream, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Encode the line prefix which consists of the single character. The
	* lenght is added to the value of ' ' (32 decimal) and printed.
	*/
	@:overload private function encodeLinePrefix(outStream : java.io.OutputStream, length : Int) : Void;
	
	/**
	* The line suffix for uuencoded files is simply a new line.
	*/
	@:overload private function encodeLineSuffix(outStream : java.io.OutputStream) : Void;
	
	/**
	* encodeBufferPrefix writes the begin line to the output stream.
	*/
	@:overload private function encodeBufferPrefix(a : java.io.OutputStream) : Void;
	
	/**
	* encodeBufferSuffix writes the single line containing space (' ') and
	* the line containing the word 'end' to the output stream.
	*/
	@:overload private function encodeBufferSuffix(a : java.io.OutputStream) : Void;
	
	
}

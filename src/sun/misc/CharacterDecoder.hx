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
extern class CharacterDecoder
{
	/** Return the number of bytes per atom of decoding */
	@:overload @:abstract private function bytesPerAtom() : Int;
	
	/** Return the maximum number of bytes that can be encoded per line */
	@:overload @:abstract private function bytesPerLine() : Int;
	
	/** decode the beginning of the buffer, by default this is a NOP. */
	@:overload private function decodeBufferPrefix(aStream : java.io.PushbackInputStream, bStream : java.io.OutputStream) : Void;
	
	/** decode the buffer suffix, again by default it is a NOP. */
	@:overload private function decodeBufferSuffix(aStream : java.io.PushbackInputStream, bStream : java.io.OutputStream) : Void;
	
	/**
	* This method should return, if it knows, the number of bytes
	* that will be decoded. Many formats such as uuencoding provide
	* this information. By default we return the maximum bytes that
	* could have been encoded on the line.
	*/
	@:overload private function decodeLinePrefix(aStream : java.io.PushbackInputStream, bStream : java.io.OutputStream) : Int;
	
	/**
	* This method post processes the line, if there are error detection
	* or correction codes in a line, they are generally processed by
	* this method. The simplest version of this method looks for the
	* (newline) character.
	*/
	@:overload private function decodeLineSuffix(aStream : java.io.PushbackInputStream, bStream : java.io.OutputStream) : Void;
	
	/**
	* This method does an actual decode. It takes the decoded bytes and
	* writes them to the OutputStream. The integer <i>l</i> tells the
	* method how many bytes are required. This is always <= bytesPerAtom().
	*/
	@:overload private function decodeAtom(aStream : java.io.PushbackInputStream, bStream : java.io.OutputStream, l : Int) : Void;
	
	/**
	* This method works around the bizarre semantics of BufferedInputStream's
	* read method.
	*/
	@:overload private function readFully(_in : java.io.InputStream, buffer : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	/**
	* Decode the text from the InputStream and write the decoded
	* octets to the OutputStream. This method runs until the stream
	* is exhausted.
	* @exception CEFormatException An error has occured while decoding
	* @exception CEStreamExhausted The input stream is unexpectedly out of data
	*/
	@:overload public function decodeBuffer(aStream : java.io.InputStream, bStream : java.io.OutputStream) : Void;
	
	/**
	* Alternate decode interface that takes a String containing the encoded
	* buffer and returns a byte array containing the data.
	* @exception CEFormatException An error has occured while decoding
	*/
	@:overload public function decodeBuffer(inputString : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decode the contents of the inputstream into a buffer.
	*/
	@:overload public function decodeBuffer(_in : java.io.InputStream) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decode the contents of the String into a ByteBuffer.
	*/
	@:overload public function decodeBufferToByteBuffer(inputString : String) : java.nio.ByteBuffer;
	
	/**
	* Decode the contents of the inputStream into a ByteBuffer.
	*/
	@:overload public function decodeBufferToByteBuffer(_in : java.io.InputStream) : java.nio.ByteBuffer;
	
	
}

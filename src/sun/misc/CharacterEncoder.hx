package sun.misc;
/*
* Copyright (c) 1995, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class CharacterEncoder
{
	/** Stream that understands "printing" */
	@:protected private var pStream : java.io.PrintStream;
	
	/** Return the number of bytes per atom of encoding */
	@:overload @:abstract @:protected private function bytesPerAtom() : Int;
	
	/** Return the number of bytes that can be encoded per line */
	@:overload @:abstract @:protected private function bytesPerLine() : Int;
	
	/**
	* Encode the prefix for the entire buffer. By default is simply
	* opens the PrintStream for use by the other functions.
	*/
	@:overload @:protected private function encodeBufferPrefix(aStream : java.io.OutputStream) : Void;
	
	/**
	* Encode the suffix for the entire buffer.
	*/
	@:overload @:protected private function encodeBufferSuffix(aStream : java.io.OutputStream) : Void;
	
	/**
	* Encode the prefix that starts every output line.
	*/
	@:overload @:protected private function encodeLinePrefix(aStream : java.io.OutputStream, aLength : Int) : Void;
	
	/**
	* Encode the suffix that ends every output line. By default
	* this method just prints a <newline> into the output stream.
	*/
	@:overload @:protected private function encodeLineSuffix(aStream : java.io.OutputStream) : Void;
	
	/** Encode one "atom" of information into characters. */
	@:overload @:abstract @:protected private function encodeAtom(aStream : java.io.OutputStream, someBytes : java.NativeArray<java.StdTypes.Int8>, anOffset : Int, aLength : Int) : Void;
	
	/**
	* This method works around the bizarre semantics of BufferedInputStream's
	* read method.
	*/
	@:overload @:protected private function readFully(_in : java.io.InputStream, buffer : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Encode bytes from the input stream, and write them as text characters
	* to the output stream. This method will run until it exhausts the
	* input stream, but does not print the line suffix for a final
	* line that is shorter than bytesPerLine().
	*/
	@:overload @:public public function encode(inStream : java.io.InputStream, outStream : java.io.OutputStream) : Void;
	
	/**
	* Encode the buffer in <i>aBuffer</i> and write the encoded
	* result to the OutputStream <i>aStream</i>.
	*/
	@:overload @:public public function encode(aBuffer : java.NativeArray<java.StdTypes.Int8>, aStream : java.io.OutputStream) : Void;
	
	/**
	* A 'streamless' version of encode that simply takes a buffer of
	* bytes and returns a string containing the encoded buffer.
	*/
	@:overload @:public public function encode(aBuffer : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* Encode the <i>aBuffer</i> ByteBuffer and write the encoded
	* result to the OutputStream <i>aStream</i>.
	* <P>
	* The ByteBuffer's position will be advanced to ByteBuffer's limit.
	*/
	@:overload @:public public function encode(aBuffer : java.nio.ByteBuffer, aStream : java.io.OutputStream) : Void;
	
	/**
	* A 'streamless' version of encode that simply takes a ByteBuffer
	* and returns a string containing the encoded buffer.
	* <P>
	* The ByteBuffer's position will be advanced to ByteBuffer's limit.
	*/
	@:overload @:public public function encode(aBuffer : java.nio.ByteBuffer) : String;
	
	/**
	* Encode bytes from the input stream, and write them as text characters
	* to the output stream. This method will run until it exhausts the
	* input stream. It differs from encode in that it will add the
	* line at the end of a final line that is shorter than bytesPerLine().
	*/
	@:overload @:public public function encodeBuffer(inStream : java.io.InputStream, outStream : java.io.OutputStream) : Void;
	
	/**
	* Encode the buffer in <i>aBuffer</i> and write the encoded
	* result to the OutputStream <i>aStream</i>.
	*/
	@:overload @:public public function encodeBuffer(aBuffer : java.NativeArray<java.StdTypes.Int8>, aStream : java.io.OutputStream) : Void;
	
	/**
	* A 'streamless' version of encode that simply takes a buffer of
	* bytes and returns a string containing the encoded buffer.
	*/
	@:overload @:public public function encodeBuffer(aBuffer : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* Encode the <i>aBuffer</i> ByteBuffer and write the encoded
	* result to the OutputStream <i>aStream</i>.
	* <P>
	* The ByteBuffer's position will be advanced to ByteBuffer's limit.
	*/
	@:overload @:public public function encodeBuffer(aBuffer : java.nio.ByteBuffer, aStream : java.io.OutputStream) : Void;
	
	/**
	* A 'streamless' version of encode that simply takes a ByteBuffer
	* and returns a string containing the encoded buffer.
	* <P>
	* The ByteBuffer's position will be advanced to ByteBuffer's limit.
	*/
	@:overload @:public public function encodeBuffer(aBuffer : java.nio.ByteBuffer) : String;
	
	
}

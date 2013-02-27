package java.io;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
* A character-stream reader that allows characters to be pushed back into the
* stream.
*
* @author      Mark Reinhold
* @since       JDK1.1
*/
@:require(java1) extern class PushbackReader extends java.io.FilterReader
{
	/**
	* Creates a new pushback reader with a pushback buffer of the given size.
	*
	* @param   in   The reader from which characters will be read
	* @param   size The size of the pushback buffer
	* @exception IllegalArgumentException if size is <= 0
	*/
	@:overload public function new(_in : java.io.Reader, size : Int) : Void;
	
	/**
	* Creates a new pushback reader with a one-character pushback buffer.
	*
	* @param   in  The reader from which characters will be read
	*/
	@:overload public function new(_in : java.io.Reader) : Void;
	
	/**
	* Reads a single character.
	*
	* @return     The character read, or -1 if the end of the stream has been
	*             reached
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function read() : Int;
	
	/**
	* Reads characters into a portion of an array.
	*
	* @param      cbuf  Destination buffer
	* @param      off   Offset at which to start writing characters
	* @param      len   Maximum number of characters to read
	*
	* @return     The number of characters read, or -1 if the end of the
	*             stream has been reached
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function read(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	/**
	* Pushes back a single character by copying it to the front of the
	* pushback buffer. After this method returns, the next character to be read
	* will have the value <code>(char)c</code>.
	*
	* @param  c  The int value representing a character to be pushed back
	*
	* @exception  IOException  If the pushback buffer is full,
	*                          or if some other I/O error occurs
	*/
	@:overload public function unread(c : Int) : Void;
	
	/**
	* Pushes back a portion of an array of characters by copying it to the
	* front of the pushback buffer.  After this method returns, the next
	* character to be read will have the value <code>cbuf[off]</code>, the
	* character after that will have the value <code>cbuf[off+1]</code>, and
	* so forth.
	*
	* @param  cbuf  Character array
	* @param  off   Offset of first character to push back
	* @param  len   Number of characters to push back
	*
	* @exception  IOException  If there is insufficient room in the pushback
	*                          buffer, or if some other I/O error occurs
	*/
	@:overload public function unread(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/**
	* Pushes back an array of characters by copying it to the front of the
	* pushback buffer.  After this method returns, the next character to be
	* read will have the value <code>cbuf[0]</code>, the character after that
	* will have the value <code>cbuf[1]</code>, and so forth.
	*
	* @param  cbuf  Character array to push back
	*
	* @exception  IOException  If there is insufficient room in the pushback
	*                          buffer, or if some other I/O error occurs
	*/
	@:overload public function unread(cbuf : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Tells whether this stream is ready to be read.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function ready() : Bool;
	
	/**
	* Marks the present position in the stream. The <code>mark</code>
	* for class <code>PushbackReader</code> always throws an exception.
	*
	* @exception  IOException  Always, since mark is not supported
	*/
	@:overload override public function mark(readAheadLimit : Int) : Void;
	
	/**
	* Resets the stream. The <code>reset</code> method of
	* <code>PushbackReader</code> always throws an exception.
	*
	* @exception  IOException  Always, since reset is not supported
	*/
	@:overload override public function reset() : Void;
	
	/**
	* Tells whether this stream supports the mark() operation, which it does
	* not.
	*/
	@:overload override public function markSupported() : Bool;
	
	/**
	* Closes the stream and releases any system resources associated with
	* it. Once the stream has been closed, further read(),
	* unread(), ready(), or skip() invocations will throw an IOException.
	* Closing a previously closed stream has no effect.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function close() : Void;
	
	/**
	* Skips characters.  This method will block until some characters are
	* available, an I/O error occurs, or the end of the stream is reached.
	*
	* @param  n  The number of characters to skip
	*
	* @return    The number of characters actually skipped
	*
	* @exception  IllegalArgumentException  If <code>n</code> is negative.
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	
}

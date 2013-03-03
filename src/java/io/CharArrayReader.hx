package java.io;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
* This class implements a character buffer that can be used as a
* character-input stream.
*
* @author      Herb Jellinek
* @since       JDK1.1
*/
@:require(java1) extern class CharArrayReader extends java.io.Reader
{
	/** The character buffer. */
	@:protected private var buf : java.NativeArray<java.StdTypes.Char16>;
	
	/** The current buffer position. */
	@:protected private var pos : Int;
	
	/** The position of mark in buffer. */
	@:protected private var markedPos : Int;
	
	/**
	*  The index of the end of this buffer.  There is not valid
	*  data at or beyond this index.
	*/
	@:protected private var count : Int;
	
	/**
	* Creates a CharArrayReader from the specified array of chars.
	* @param buf       Input buffer (not copied)
	*/
	@:overload @:public public function new(buf : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Creates a CharArrayReader from the specified array of chars.
	*
	* <p> The resulting reader will start reading at the given
	* <tt>offset</tt>.  The total number of <tt>char</tt> values that can be
	* read from this reader will be either <tt>length</tt> or
	* <tt>buf.length-offset</tt>, whichever is smaller.
	*
	* @throws IllegalArgumentException
	*         If <tt>offset</tt> is negative or greater than
	*         <tt>buf.length</tt>, or if <tt>length</tt> is negative, or if
	*         the sum of these two values is negative.
	*
	* @param buf       Input buffer (not copied)
	* @param offset    Offset of the first char to read
	* @param length    Number of chars to read
	*/
	@:overload @:public public function new(buf : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Reads a single character.
	*
	* @exception   IOException  If an I/O error occurs
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Reads characters into a portion of an array.
	* @param b  Destination buffer
	* @param off  Offset at which to start storing characters
	* @param len   Maximum number of characters to read
	* @return  The actual number of characters read, or -1 if
	*          the end of the stream has been reached
	*
	* @exception   IOException  If an I/O error occurs
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	/**
	* Skips characters.  Returns the number of characters that were skipped.
	*
	* <p>The <code>n</code> parameter may be negative, even though the
	* <code>skip</code> method of the {@link Reader} superclass throws
	* an exception in this case. If <code>n</code> is negative, then
	* this method does nothing and returns <code>0</code>.
	*
	* @param n The number of characters to skip
	* @return       The number of characters actually skipped
	* @exception  IOException If the stream is closed, or an I/O error occurs
	*/
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Tells whether this stream is ready to be read.  Character-array readers
	* are always ready to be read.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function ready() : Bool;
	
	/**
	* Tells whether this stream supports the mark() operation, which it does.
	*/
	@:overload @:public override public function markSupported() : Bool;
	
	/**
	* Marks the present position in the stream.  Subsequent calls to reset()
	* will reposition the stream to this point.
	*
	* @param  readAheadLimit  Limit on the number of characters that may be
	*                         read while still preserving the mark.  Because
	*                         the stream's input comes from a character array,
	*                         there is no actual limit; hence this argument is
	*                         ignored.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function mark(readAheadLimit : Int) : Void;
	
	/**
	* Resets the stream to the most recent mark, or to the beginning if it has
	* never been marked.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function reset() : Void;
	
	/**
	* Closes the stream and releases any system resources associated with
	* it.  Once the stream has been closed, further read(), ready(),
	* mark(), reset(), or skip() invocations will throw an IOException.
	* Closing a previously closed stream has no effect.
	*/
	@:overload @:public override public function close() : Void;
	
	
}

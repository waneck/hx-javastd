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
* Reads text from a character-input stream, buffering characters so as to
* provide for the efficient reading of characters, arrays, and lines.
*
* <p> The buffer size may be specified, or the default size may be used.  The
* default is large enough for most purposes.
*
* <p> In general, each read request made of a Reader causes a corresponding
* read request to be made of the underlying character or byte stream.  It is
* therefore advisable to wrap a BufferedReader around any Reader whose read()
* operations may be costly, such as FileReaders and InputStreamReaders.  For
* example,
*
* <pre>
* BufferedReader in
*   = new BufferedReader(new FileReader("foo.in"));
* </pre>
*
* will buffer the input from the specified file.  Without buffering, each
* invocation of read() or readLine() could cause bytes to be read from the
* file, converted into characters, and then returned, which can be very
* inefficient.
*
* <p> Programs that use DataInputStreams for textual input can be localized by
* replacing each DataInputStream with an appropriate BufferedReader.
*
* @see FileReader
* @see InputStreamReader
* @see java.nio.file.Files#newBufferedReader
*
* @author      Mark Reinhold
* @since       JDK1.1
*/
@:require(java1) extern class BufferedReader extends java.io.Reader
{
	/**
	* Creates a buffering character-input stream that uses an input buffer of
	* the specified size.
	*
	* @param  in   A Reader
	* @param  sz   Input-buffer size
	*
	* @exception  IllegalArgumentException  If sz is <= 0
	*/
	@:overload @:public public function new(_in : java.io.Reader, sz : Int) : Void;
	
	/**
	* Creates a buffering character-input stream that uses a default-sized
	* input buffer.
	*
	* @param  in   A Reader
	*/
	@:overload @:public public function new(_in : java.io.Reader) : Void;
	
	/**
	* Reads a single character.
	*
	* @return The character read, as an integer in the range
	*         0 to 65535 (<tt>0x00-0xffff</tt>), or -1 if the
	*         end of the stream has been reached
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Reads characters into a portion of an array.
	*
	* <p> This method implements the general contract of the corresponding
	* <code>{@link Reader#read(char[], int, int) read}</code> method of the
	* <code>{@link Reader}</code> class.  As an additional convenience, it
	* attempts to read as many characters as possible by repeatedly invoking
	* the <code>read</code> method of the underlying stream.  This iterated
	* <code>read</code> continues until one of the following conditions becomes
	* true: <ul>
	*
	*   <li> The specified number of characters have been read,
	*
	*   <li> The <code>read</code> method of the underlying stream returns
	*   <code>-1</code>, indicating end-of-file, or
	*
	*   <li> The <code>ready</code> method of the underlying stream
	*   returns <code>false</code>, indicating that further input requests
	*   would block.
	*
	* </ul> If the first <code>read</code> on the underlying stream returns
	* <code>-1</code> to indicate end-of-file then this method returns
	* <code>-1</code>.  Otherwise this method returns the number of characters
	* actually read.
	*
	* <p> Subclasses of this class are encouraged, but not required, to
	* attempt to read as many characters as possible in the same fashion.
	*
	* <p> Ordinarily this method takes characters from this stream's character
	* buffer, filling it from the underlying stream as necessary.  If,
	* however, the buffer is empty, the mark is not valid, and the requested
	* length is at least as large as the buffer, then this method will read
	* characters directly from the underlying stream into the given array.
	* Thus redundant <code>BufferedReader</code>s will not copy data
	* unnecessarily.
	*
	* @param      cbuf  Destination buffer
	* @param      off   Offset at which to start storing characters
	* @param      len   Maximum number of characters to read
	*
	* @return     The number of characters read, or -1 if the end of the
	*             stream has been reached
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function read(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	/**
	* Reads a line of text.  A line is considered to be terminated by any one
	* of a line feed ('\n'), a carriage return ('\r'), or a carriage return
	* followed immediately by a linefeed.
	*
	* @return     A String containing the contents of the line, not including
	*             any line-termination characters, or null if the end of the
	*             stream has been reached
	*
	* @exception  IOException  If an I/O error occurs
	*
	* @see java.nio.file.Files#readAllLines
	*/
	@:overload @:public public function readLine() : String;
	
	/**
	* Skips characters.
	*
	* @param  n  The number of characters to skip
	*
	* @return    The number of characters actually skipped
	*
	* @exception  IllegalArgumentException  If <code>n</code> is negative.
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Tells whether this stream is ready to be read.  A buffered character
	* stream is ready if the buffer is not empty, or if the underlying
	* character stream is ready.
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
	* will attempt to reposition the stream to this point.
	*
	* @param readAheadLimit   Limit on the number of characters that may be
	*                         read while still preserving the mark. An attempt
	*                         to reset the stream after reading characters
	*                         up to this limit or beyond may fail.
	*                         A limit value larger than the size of the input
	*                         buffer will cause a new buffer to be allocated
	*                         whose size is no smaller than limit.
	*                         Therefore large values should be used with care.
	*
	* @exception  IllegalArgumentException  If readAheadLimit is < 0
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function mark(readAheadLimit : Int) : Void;
	
	/**
	* Resets the stream to the most recent mark.
	*
	* @exception  IOException  If the stream has never been marked,
	*                          or if the mark has been invalidated
	*/
	@:overload @:public override public function reset() : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}

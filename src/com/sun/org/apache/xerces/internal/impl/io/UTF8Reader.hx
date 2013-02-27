package com.sun.org.apache.xerces.internal.impl.io;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class UTF8Reader extends java.io.Reader
{
	/** Default byte buffer size (2048). */
	public static var DEFAULT_BUFFER_SIZE(default, null) : Int;
	
	/** Input stream. */
	private var fInputStream : java.io.InputStream;
	
	/** Byte buffer. */
	private var fBuffer : java.NativeArray<java.StdTypes.Int8>;
	
	/** Offset into buffer. */
	private var fOffset : Int;
	
	/**
	* Constructs a UTF-8 reader from the specified input stream
	* using the default buffer size.  Primarily for testing.
	*
	* @param inputStream The input stream.
	*/
	@:overload public function new(inputStream : java.io.InputStream) : Void;
	
	/**
	* Constructs a UTF-8 reader from the specified input stream
	* using the default buffer size and the given MessageFormatter.
	*
	* @param inputStream The input stream.
	* @param messageFormatter  given MessageFormatter
	* @param locale    Locale to use for messages
	*/
	@:overload public function new(inputStream : java.io.InputStream, messageFormatter : com.sun.org.apache.xerces.internal.util.MessageFormatter, locale : java.util.Locale) : Void;
	
	/**
	* Constructs a UTF-8 reader from the specified input stream,
	* buffer size and MessageFormatter.
	*
	* @param inputStream The input stream.
	* @param size        The initial buffer size.
	* @param messageFormatter  the formatter for localizing/formatting errors.
	* @param locale    the Locale to use for messages
	*/
	@:overload public function new(inputStream : java.io.InputStream, size : Int, messageFormatter : com.sun.org.apache.xerces.internal.util.MessageFormatter, locale : java.util.Locale) : Void;
	
	/**
	* Read a single character.  This method will block until a character is
	* available, an I/O error occurs, or the end of the stream is reached.
	*
	* <p> Subclasses that intend to support efficient single-character input
	* should override this method.
	*
	* @return     The character read, as an integer in the range 0 to 16383
	*             (<tt>0x00-0xffff</tt>), or -1 if the end of the stream has
	*             been reached
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function read() : Int;
	
	/**
	* Read characters into a portion of an array.  This method will block
	* until some input is available, an I/O error occurs, or the end of the
	* stream is reached.
	*
	* @param      ch     Destination buffer
	* @param      offset Offset at which to start storing characters
	* @param      length Maximum number of characters to read
	*
	* @return     The number of characters read, or -1 if the end of the
	*             stream has been reached
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function read(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	/**
	* Skip characters.  This method will block until some characters are
	* available, an I/O error occurs, or the end of the stream is reached.
	*
	* @param  n  The number of characters to skip
	*
	* @return    The number of characters actually skipped
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Tell whether this stream is ready to be read.
	*
	* @return True if the next read() is guaranteed not to block for input,
	* false otherwise.  Note that returning false does not guarantee that the
	* next read will block.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function ready() : Bool;
	
	/**
	* Tell whether this stream supports the mark() operation.
	*/
	@:overload override public function markSupported() : Bool;
	
	/**
	* Mark the present position in the stream.  Subsequent calls to reset()
	* will attempt to reposition the stream to this point.  Not all
	* character-input streams support the mark() operation.
	*
	* @param  readAheadLimit  Limit on the number of characters that may be
	*                         read while still preserving the mark.  After
	*                         reading this many characters, attempting to
	*                         reset the stream may fail.
	*
	* @exception  IOException  If the stream does not support mark(),
	*                          or if some other I/O error occurs
	*/
	@:overload override public function mark(readAheadLimit : Int) : Void;
	
	/**
	* Reset the stream.  If the stream has been marked, then attempt to
	* reposition it at the mark.  If the stream has not been marked, then
	* attempt to reset it in some way appropriate to the particular stream,
	* for example by repositioning it to its starting point.  Not all
	* character-input streams support the reset() operation, and some support
	* reset() without supporting mark().
	*
	* @exception  IOException  If the stream has not been marked,
	*                          or if the mark has been invalidated,
	*                          or if the stream does not support reset(),
	*                          or if some other I/O error occurs
	*/
	@:overload override public function reset() : Void;
	
	/**
	* Close the stream.  Once a stream has been closed, further read(),
	* ready(), mark(), or reset() invocations will throw an IOException.
	* Closing a previously-closed stream, however, has no effect.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function close() : Void;
	
	
}

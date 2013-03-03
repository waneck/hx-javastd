package javax.sound.sampled;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class AudioInputStream extends java.io.InputStream
{
	/**
	* The format of the audio data contained in the stream.
	*/
	@:protected private var format : javax.sound.sampled.AudioFormat;
	
	/**
	* This stream's length, in sample frames.
	*/
	@:protected private var frameLength : haxe.Int64;
	
	/**
	* The size of each frame, in bytes.
	*/
	@:protected private var frameSize : Int;
	
	/**
	* The current position in this stream, in sample frames (zero-based).
	*/
	@:protected private var framePos : haxe.Int64;
	
	/**
	* Constructs an audio input stream that has the requested format and length in sample frames,
	* using audio data from the specified input stream.
	* @param stream the stream on which this <code>AudioInputStream</code>
	* object is based
	* @param format the format of this stream's audio data
	* @param length the length in sample frames of the data in this stream
	*/
	@:overload @:public public function new(stream : java.io.InputStream, format : javax.sound.sampled.AudioFormat, length : haxe.Int64) : Void;
	
	/**
	* Constructs an audio input stream that reads its data from the target
	* data line indicated.  The format of the stream is the same as that of
	* the target data line, and the length is AudioSystem#NOT_SPECIFIED.
	* @param line the target data line from which this stream obtains its data.
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload @:public public function new(line : javax.sound.sampled.TargetDataLine) : Void;
	
	/**
	* Obtains the audio format of the sound data in this audio input stream.
	* @return an audio format object describing this stream's format
	*/
	@:overload @:public public function getFormat() : javax.sound.sampled.AudioFormat;
	
	/**
	* Obtains the length of the stream, expressed in sample frames rather than bytes.
	* @return the length in sample frames
	*/
	@:overload @:public public function getFrameLength() : haxe.Int64;
	
	/**
	* Reads the next byte of data from the audio input stream.  The audio input
	* stream's frame size must be one byte, or an <code>IOException</code>
	* will be thrown.
	*
	* @return the next byte of data, or -1 if the end of the stream is reached
	* @throws IOException if an input or output error occurs
	* @see #read(byte[], int, int)
	* @see #read(byte[])
	* @see #available
	* <p>
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Reads some number of bytes from the audio input stream and stores them into
	* the buffer array <code>b</code>. The number of bytes actually read is
	* returned as an integer. This method blocks until input data is
	* available, the end of the stream is detected, or an exception is thrown.
	* <p>This method will always read an integral number of frames.
	* If the length of the array is not an integral number
	* of frames, a maximum of <code>b.length - (b.length % frameSize)
	* </code> bytes will be read.
	*
	* @param b the buffer into which the data is read
	* @return the total number of bytes read into the buffer, or -1 if there
	* is no more data because the end of the stream has been reached
	* @throws IOException if an input or output error occurs
	* @see #read(byte[], int, int)
	* @see #read()
	* @see #available
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Reads up to a specified maximum number of bytes of data from the audio
	* stream, putting them into the given byte array.
	* <p>This method will always read an integral number of frames.
	* If <code>len</code> does not specify an integral number
	* of frames, a maximum of <code>len - (len % frameSize)
	* </code> bytes will be read.
	*
	* @param b the buffer into which the data is read
	* @param off the offset, from the beginning of array <code>b</code>, at which
	* the data will be written
	* @param len the maximum number of bytes to read
	* @return the total number of bytes read into the buffer, or -1 if there
	* is no more data because the end of the stream has been reached
	* @throws IOException if an input or output error occurs
	* @see #read(byte[])
	* @see #read()
	* @see #skip
	* @see #available
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Skips over and discards a specified number of bytes from this
	* audio input stream.
	* @param n the requested number of bytes to be skipped
	* @return the actual number of bytes skipped
	* @throws IOException if an input or output error occurs
	* @see #read
	* @see #available
	*/
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns the maximum number of bytes that can be read (or skipped over) from this
	* audio input stream without blocking.  This limit applies only to the next invocation of
	* a <code>read</code> or <code>skip</code> method for this audio input stream; the limit
	* can vary each time these methods are invoked.
	* Depending on the underlying stream,an IOException may be thrown if this
	* stream is closed.
	* @return the number of bytes that can be read from this audio input stream without blocking
	* @throws IOException if an input or output error occurs
	* @see #read(byte[], int, int)
	* @see #read(byte[])
	* @see #read()
	* @see #skip
	*/
	@:overload @:public override public function available() : Int;
	
	/**
	* Closes this audio input stream and releases any system resources associated
	* with the stream.
	* @throws IOException if an input or output error occurs
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Marks the current position in this audio input stream.
	* @param readlimit the maximum number of bytes that can be read before
	* the mark position becomes invalid.
	* @see #reset
	* @see #markSupported
	*/
	@:overload @:public override public function mark(readlimit : Int) : Void;
	
	/**
	* Repositions this audio input stream to the position it had at the time its
	* <code>mark</code> method was last invoked.
	* @throws IOException if an input or output error occurs.
	* @see #mark
	* @see #markSupported
	*/
	@:overload @:public override public function reset() : Void;
	
	/**
	* Tests whether this audio input stream supports the <code>mark</code> and
	* <code>reset</code> methods.
	* @return <code>true</code> if this stream supports the <code>mark</code>
	* and <code>reset</code> methods; <code>false</code> otherwise
	* @see #mark
	* @see #reset
	*/
	@:overload @:public override public function markSupported() : Bool;
	
	
}
/**
* Private inner class that makes a TargetDataLine look like an InputStream.
*/
@:native('javax$sound$sampled$AudioInputStream$TargetDataLineInputStream') @:internal extern class AudioInputStream_TargetDataLineInputStream extends java.io.InputStream
{
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	
}

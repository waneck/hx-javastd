package java.nio.channels;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Channels
{
	/**
	* Constructs a stream that reads bytes from the given channel.
	*
	* <p> The <tt>read</tt> methods of the resulting stream will throw an
	* {@link IllegalBlockingModeException} if invoked while the underlying
	* channel is in non-blocking mode.  The stream will not be buffered, and
	* it will not support the {@link InputStream#mark mark} or {@link
	* InputStream#reset reset} methods.  The stream will be safe for access by
	* multiple concurrent threads.  Closing the stream will in turn cause the
	* channel to be closed.  </p>
	*
	* @param  ch
	*         The channel from which bytes will be read
	*
	* @return  A new input stream
	*/
	@:overload @:public @:static public static function newInputStream(ch : java.nio.channels.ReadableByteChannel) : java.io.InputStream;
	
	/**
	* Constructs a stream that writes bytes to the given channel.
	*
	* <p> The <tt>write</tt> methods of the resulting stream will throw an
	* {@link IllegalBlockingModeException} if invoked while the underlying
	* channel is in non-blocking mode.  The stream will not be buffered.  The
	* stream will be safe for access by multiple concurrent threads.  Closing
	* the stream will in turn cause the channel to be closed.  </p>
	*
	* @param  ch
	*         The channel to which bytes will be written
	*
	* @return  A new output stream
	*/
	@:overload @:public @:static public static function newOutputStream(ch : java.nio.channels.WritableByteChannel) : java.io.OutputStream;
	
	/**
	* Constructs a stream that reads bytes from the given channel.
	*
	* <p> The stream will not be buffered, and it will not support the {@link
	* InputStream#mark mark} or {@link InputStream#reset reset} methods.  The
	* stream will be safe for access by multiple concurrent threads.  Closing
	* the stream will in turn cause the channel to be closed.  </p>
	*
	* @param  ch
	*         The channel from which bytes will be read
	*
	* @return  A new input stream
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function newInputStream(ch : java.nio.channels.AsynchronousByteChannel) : java.io.InputStream;
	
	/**
	* Constructs a stream that writes bytes to the given channel.
	*
	* <p> The stream will not be buffered. The stream will be safe for access
	* by multiple concurrent threads.  Closing the stream will in turn cause
	* the channel to be closed.  </p>
	*
	* @param  ch
	*         The channel to which bytes will be written
	*
	* @return  A new output stream
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function newOutputStream(ch : java.nio.channels.AsynchronousByteChannel) : java.io.OutputStream;
	
	/**
	* Constructs a channel that reads bytes from the given stream.
	*
	* <p> The resulting channel will not be buffered; it will simply redirect
	* its I/O operations to the given stream.  Closing the channel will in
	* turn cause the stream to be closed.  </p>
	*
	* @param  in
	*         The stream from which bytes are to be read
	*
	* @return  A new readable byte channel
	*/
	@:overload @:public @:static public static function newChannel(_in : java.io.InputStream) : java.nio.channels.ReadableByteChannel;
	
	/**
	* Constructs a channel that writes bytes to the given stream.
	*
	* <p> The resulting channel will not be buffered; it will simply redirect
	* its I/O operations to the given stream.  Closing the channel will in
	* turn cause the stream to be closed.  </p>
	*
	* @param  out
	*         The stream to which bytes are to be written
	*
	* @return  A new writable byte channel
	*/
	@:overload @:public @:static public static function newChannel(out : java.io.OutputStream) : java.nio.channels.WritableByteChannel;
	
	/**
	* Constructs a reader that decodes bytes from the given channel using the
	* given decoder.
	*
	* <p> The resulting stream will contain an internal input buffer of at
	* least <tt>minBufferCap</tt> bytes.  The stream's <tt>read</tt> methods
	* will, as needed, fill the buffer by reading bytes from the underlying
	* channel; if the channel is in non-blocking mode when bytes are to be
	* read then an {@link IllegalBlockingModeException} will be thrown.  The
	* resulting stream will not otherwise be buffered, and it will not support
	* the {@link Reader#mark mark} or {@link Reader#reset reset} methods.
	* Closing the stream will in turn cause the channel to be closed.  </p>
	*
	* @param  ch
	*         The channel from which bytes will be read
	*
	* @param  dec
	*         The charset decoder to be used
	*
	* @param  minBufferCap
	*         The minimum capacity of the internal byte buffer,
	*         or <tt>-1</tt> if an implementation-dependent
	*         default capacity is to be used
	*
	* @return  A new reader
	*/
	@:overload @:public @:static public static function newReader(ch : java.nio.channels.ReadableByteChannel, dec : java.nio.charset.CharsetDecoder, minBufferCap : Int) : java.io.Reader;
	
	/**
	* Constructs a reader that decodes bytes from the given channel according
	* to the named charset.
	*
	* <p> An invocation of this method of the form
	*
	* <blockquote><pre>
	* Channels.newReader(ch, csname)</pre></blockquote>
	*
	* behaves in exactly the same way as the expression
	*
	* <blockquote><pre>
	* Channels.newReader(ch,
	*                    Charset.forName(csName)
	*                        .newDecoder(),
	*                    -1);</pre></blockquote>
	*
	* @param  ch
	*         The channel from which bytes will be read
	*
	* @param  csName
	*         The name of the charset to be used
	*
	* @return  A new reader
	*
	* @throws  UnsupportedCharsetException
	*          If no support for the named charset is available
	*          in this instance of the Java virtual machine
	*/
	@:overload @:public @:static public static function newReader(ch : java.nio.channels.ReadableByteChannel, csName : String) : java.io.Reader;
	
	/**
	* Constructs a writer that encodes characters using the given encoder and
	* writes the resulting bytes to the given channel.
	*
	* <p> The resulting stream will contain an internal output buffer of at
	* least <tt>minBufferCap</tt> bytes.  The stream's <tt>write</tt> methods
	* will, as needed, flush the buffer by writing bytes to the underlying
	* channel; if the channel is in non-blocking mode when bytes are to be
	* written then an {@link IllegalBlockingModeException} will be thrown.
	* The resulting stream will not otherwise be buffered.  Closing the stream
	* will in turn cause the channel to be closed.  </p>
	*
	* @param  ch
	*         The channel to which bytes will be written
	*
	* @param  enc
	*         The charset encoder to be used
	*
	* @param  minBufferCap
	*         The minimum capacity of the internal byte buffer,
	*         or <tt>-1</tt> if an implementation-dependent
	*         default capacity is to be used
	*
	* @return  A new writer
	*/
	@:overload @:public @:static public static function newWriter(ch : java.nio.channels.WritableByteChannel, enc : java.nio.charset.CharsetEncoder, minBufferCap : Int) : java.io.Writer;
	
	/**
	* Constructs a writer that encodes characters according to the named
	* charset and writes the resulting bytes to the given channel.
	*
	* <p> An invocation of this method of the form
	*
	* <blockquote><pre>
	* Channels.newWriter(ch, csname)</pre></blockquote>
	*
	* behaves in exactly the same way as the expression
	*
	* <blockquote><pre>
	* Channels.newWriter(ch,
	*                    Charset.forName(csName)
	*                        .newEncoder(),
	*                    -1);</pre></blockquote>
	*
	* @param  ch
	*         The channel to which bytes will be written
	*
	* @param  csName
	*         The name of the charset to be used
	*
	* @return  A new writer
	*
	* @throws  UnsupportedCharsetException
	*          If no support for the named charset is available
	*          in this instance of the Java virtual machine
	*/
	@:overload @:public @:static public static function newWriter(ch : java.nio.channels.WritableByteChannel, csName : String) : java.io.Writer;
	
	
}
@:native('java$nio$channels$Channels$ReadableByteChannelImpl') @:internal extern class Channels_ReadableByteChannelImpl extends java.nio.channels.spi.AbstractInterruptibleChannel implements java.nio.channels.ReadableByteChannel
{
	@:overload @:public public function read(dst : java.nio.ByteBuffer) : Int;
	
	@:overload @:protected override private function implCloseChannel() : Void;
	
	
}
@:native('java$nio$channels$Channels$WritableByteChannelImpl') @:internal extern class Channels_WritableByteChannelImpl extends java.nio.channels.spi.AbstractInterruptibleChannel implements java.nio.channels.WritableByteChannel
{
	@:overload @:public public function write(src : java.nio.ByteBuffer) : Int;
	
	@:overload @:protected override private function implCloseChannel() : Void;
	
	
}

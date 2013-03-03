package java.nio.channels;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
* A pair of channels that implements a unidirectional pipe.
*
* <p> A pipe consists of a pair of channels: A writable {@link
* Pipe.SinkChannel </code>sink<code>} channel and a readable {@link
* Pipe.SourceChannel </code>source<code>} channel.  Once some bytes are
* written to the sink channel they can be read from source channel in exactly
* the order in which they were written.
*
* <p> Whether or not a thread writing bytes to a pipe will block until another
* thread reads those bytes, or some previously-written bytes, from the pipe is
* system-dependent and therefore unspecified.  Many pipe implementations will
* buffer up to a certain number of bytes between the sink and source channels,
* but such buffering should not be assumed.  </p>
*
*
* @author Mark Reinhold
* @author JSR-51 Expert Group
* @since 1.4
*/
@:require(java4) extern class Pipe
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Returns this pipe's source channel.  </p>
	*
	* @return  This pipe's source channel
	*/
	@:overload @:public @:abstract public function source() : java.nio.channels.Pipe.Pipe_SourceChannel;
	
	/**
	* Returns this pipe's sink channel.  </p>
	*
	* @return  This pipe's sink channel
	*/
	@:overload @:public @:abstract public function sink() : java.nio.channels.Pipe.Pipe_SinkChannel;
	
	/**
	* Opens a pipe.
	*
	* <p> The new pipe is created by invoking the {@link
	* java.nio.channels.spi.SelectorProvider#openPipe openPipe} method of the
	* system-wide default {@link java.nio.channels.spi.SelectorProvider}
	* object.  </p>
	*
	* @return  A new pipe
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function open() : java.nio.channels.Pipe;
	
	
}
/**
* A channel representing the readable end of a {@link Pipe}.  </p>
*
* @since 1.4
*/
@:require(java4) @:native('java$nio$channels$Pipe$SourceChannel') extern class Pipe_SourceChannel extends java.nio.channels.spi.AbstractSelectableChannel implements java.nio.channels.ReadableByteChannel implements java.nio.channels.ScatteringByteChannel
{
	/**
	* Constructs a new instance of this class.
	*/
	@:overload @:protected private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Returns an operation set identifying this channel's supported
	* operations.
	*
	* <p> Pipe-source channels only support reading, so this method
	* returns {@link SelectionKey#OP_READ}.  </p>
	*
	* @return  The valid-operation set
	*/
	@:overload @:public @:final override public function validOps() : Int;
	
	/**
	* Reads a sequence of bytes from this channel into a subsequence of the
	* given buffers.
	*
	* <p> An invocation of this method attempts to read up to <i>r</i> bytes
	* from this channel, where <i>r</i> is the total number of bytes remaining
	* the specified subsequence of the given buffer array, that is,
	*
	* <blockquote><pre>
	* dsts[offset].remaining()
	*     + dsts[offset+1].remaining()
	*     + ... + dsts[offset+length-1].remaining()</pre></blockquote>
	*
	* at the moment that this method is invoked.
	*
	* <p> Suppose that a byte sequence of length <i>n</i> is read, where
	* <tt>0</tt>&nbsp;<tt>&lt;=</tt>&nbsp;<i>n</i>&nbsp;<tt>&lt;=</tt>&nbsp;<i>r</i>.
	* Up to the first <tt>dsts[offset].remaining()</tt> bytes of this sequence
	* are transferred into buffer <tt>dsts[offset]</tt>, up to the next
	* <tt>dsts[offset+1].remaining()</tt> bytes are transferred into buffer
	* <tt>dsts[offset+1]</tt>, and so forth, until the entire byte sequence
	* is transferred into the given buffers.  As many bytes as possible are
	* transferred into each buffer, hence the final position of each updated
	* buffer, except the last updated buffer, is guaranteed to be equal to
	* that buffer's limit.
	*
	* <p> This method may be invoked at any time.  If another thread has
	* already initiated a read operation upon this channel, however, then an
	* invocation of this method will block until the first operation is
	* complete. </p>
	*
	* @param  dsts
	*         The buffers into which bytes are to be transferred
	*
	* @param  offset
	*         The offset within the buffer array of the first buffer into
	*         which bytes are to be transferred; must be non-negative and no
	*         larger than <tt>dsts.length</tt>
	*
	* @param  length
	*         The maximum number of buffers to be accessed; must be
	*         non-negative and no larger than
	*         <tt>dsts.length</tt>&nbsp;-&nbsp;<tt>offset</tt>
	*
	* @return The number of bytes read, possibly zero,
	*         or <tt>-1</tt> if the channel has reached end-of-stream
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*
	* @throws  NonReadableChannelException
	*          If this channel was not opened for reading
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the read operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the read operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:public public function read(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	/**
	* Reads a sequence of bytes from this channel into the given buffer.
	*
	* <p> An attempt is made to read up to <i>r</i> bytes from the channel,
	* where <i>r</i> is the number of bytes remaining in the buffer, that is,
	* <tt>dst.remaining()</tt>, at the moment this method is invoked.
	*
	* <p> Suppose that a byte sequence of length <i>n</i> is read, where
	* <tt>0</tt>&nbsp;<tt>&lt;=</tt>&nbsp;<i>n</i>&nbsp;<tt>&lt;=</tt>&nbsp;<i>r</i>.
	* This byte sequence will be transferred into the buffer so that the first
	* byte in the sequence is at index <i>p</i> and the last byte is at index
	* <i>p</i>&nbsp;<tt>+</tt>&nbsp;<i>n</i>&nbsp;<tt>-</tt>&nbsp;<tt>1</tt>,
	* where <i>p</i> is the buffer's position at the moment this method is
	* invoked.  Upon return the buffer's position will be equal to
	* <i>p</i>&nbsp;<tt>+</tt>&nbsp;<i>n</i>; its limit will not have changed.
	*
	* <p> A read operation might not fill the buffer, and in fact it might not
	* read any bytes at all.  Whether or not it does so depends upon the
	* nature and state of the channel.  A socket channel in non-blocking mode,
	* for example, cannot read any more bytes than are immediately available
	* from the socket's input buffer; similarly, a file channel cannot read
	* any more bytes than remain in the file.  It is guaranteed, however, that
	* if a channel is in blocking mode and there is at least one byte
	* remaining in the buffer then this method will block until at least one
	* byte is read.
	*
	* <p> This method may be invoked at any time.  If another thread has
	* already initiated a read operation upon this channel, however, then an
	* invocation of this method will block until the first operation is
	* complete. </p>
	*
	* @param  dst
	*         The buffer into which bytes are to be transferred
	*
	* @return  The number of bytes read, possibly zero, or <tt>-1</tt> if the
	*          channel has reached end-of-stream
	*
	* @throws  NonReadableChannelException
	*          If this channel was not opened for reading
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the read operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the read operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:public public function read(dst : java.nio.ByteBuffer) : Int;
	
	/**
	* Tells whether or not this channel is open.  </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is open
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function isOpen() : Bool;
	
	/**
	* Reads a sequence of bytes from this channel into the given buffers.
	*
	* <p> An invocation of this method of the form <tt>c.read(dsts)</tt>
	* behaves in exactly the same manner as the invocation
	*
	* <blockquote><pre>
	* c.read(dsts, 0, dsts.length);</pre></blockquote>
	*
	* @param  dsts
	*         The buffers into which bytes are to be transferred
	*
	* @return The number of bytes read, possibly zero,
	*         or <tt>-1</tt> if the channel has reached end-of-stream
	*
	* @throws  NonReadableChannelException
	*          If this channel was not opened for reading
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the read operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the read operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:public public function read(dsts : java.NativeArray<java.nio.ByteBuffer>) : haxe.Int64;
	
	/**
	* Closes this channel.
	*
	* <p> After a channel is closed, any further attempt to invoke I/O
	* operations upon it will cause a {@link ClosedChannelException} to be
	* thrown.
	*
	* <p> If this channel is already closed then invoking this method has no
	* effect.
	*
	* <p> This method may be invoked at any time.  If some other thread has
	* already invoked it, however, then another invocation will block until
	* the first invocation is complete, after which it will return without
	* effect. </p>
	*
	* @throws  IOException  If an I/O error occurs
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function close() : Void;
	
	
}
/**
* A channel representing the writable end of a {@link Pipe}.  </p>
*
* @since 1.4
*/
@:require(java4) @:native('java$nio$channels$Pipe$SinkChannel') extern class Pipe_SinkChannel extends java.nio.channels.spi.AbstractSelectableChannel implements java.nio.channels.WritableByteChannel implements java.nio.channels.GatheringByteChannel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Returns an operation set identifying this channel's supported
	* operations.
	*
	* <p> Pipe-sink channels only support writing, so this method returns
	* {@link SelectionKey#OP_WRITE}.  </p>
	*
	* @return  The valid-operation set
	*/
	@:overload @:public @:final override public function validOps() : Int;
	
	/**
	* Writes a sequence of bytes to this channel from a subsequence of the
	* given buffers.
	*
	* <p> An attempt is made to write up to <i>r</i> bytes to this channel,
	* where <i>r</i> is the total number of bytes remaining in the specified
	* subsequence of the given buffer array, that is,
	*
	* <blockquote><pre>
	* srcs[offset].remaining()
	*     + srcs[offset+1].remaining()
	*     + ... + srcs[offset+length-1].remaining()</pre></blockquote>
	*
	* at the moment that this method is invoked.
	*
	* <p> Suppose that a byte sequence of length <i>n</i> is written, where
	* <tt>0</tt>&nbsp;<tt>&lt;=</tt>&nbsp;<i>n</i>&nbsp;<tt>&lt;=</tt>&nbsp;<i>r</i>.
	* Up to the first <tt>srcs[offset].remaining()</tt> bytes of this sequence
	* are written from buffer <tt>srcs[offset]</tt>, up to the next
	* <tt>srcs[offset+1].remaining()</tt> bytes are written from buffer
	* <tt>srcs[offset+1]</tt>, and so forth, until the entire byte sequence is
	* written.  As many bytes as possible are written from each buffer, hence
	* the final position of each updated buffer, except the last updated
	* buffer, is guaranteed to be equal to that buffer's limit.
	*
	* <p> Unless otherwise specified, a write operation will return only after
	* writing all of the <i>r</i> requested bytes.  Some types of channels,
	* depending upon their state, may write only some of the bytes or possibly
	* none at all.  A socket channel in non-blocking mode, for example, cannot
	* write any more bytes than are free in the socket's output buffer.
	*
	* <p> This method may be invoked at any time.  If another thread has
	* already initiated a write operation upon this channel, however, then an
	* invocation of this method will block until the first operation is
	* complete. </p>
	*
	* @param  srcs
	*         The buffers from which bytes are to be retrieved
	*
	* @param  offset
	*         The offset within the buffer array of the first buffer from
	*         which bytes are to be retrieved; must be non-negative and no
	*         larger than <tt>srcs.length</tt>
	*
	* @param  length
	*         The maximum number of buffers to be accessed; must be
	*         non-negative and no larger than
	*         <tt>srcs.length</tt>&nbsp;-&nbsp;<tt>offset</tt>
	*
	* @return  The number of bytes written, possibly zero
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*
	* @throws  NonWritableChannelException
	*          If this channel was not opened for writing
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the write operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the write operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:public public function write(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	/**
	* Writes a sequence of bytes to this channel from the given buffer.
	*
	* <p> An attempt is made to write up to <i>r</i> bytes to the channel,
	* where <i>r</i> is the number of bytes remaining in the buffer, that is,
	* <tt>src.remaining()</tt>, at the moment this method is invoked.
	*
	* <p> Suppose that a byte sequence of length <i>n</i> is written, where
	* <tt>0</tt>&nbsp;<tt>&lt;=</tt>&nbsp;<i>n</i>&nbsp;<tt>&lt;=</tt>&nbsp;<i>r</i>.
	* This byte sequence will be transferred from the buffer starting at index
	* <i>p</i>, where <i>p</i> is the buffer's position at the moment this
	* method is invoked; the index of the last byte written will be
	* <i>p</i>&nbsp;<tt>+</tt>&nbsp;<i>n</i>&nbsp;<tt>-</tt>&nbsp;<tt>1</tt>.
	* Upon return the buffer's position will be equal to
	* <i>p</i>&nbsp;<tt>+</tt>&nbsp;<i>n</i>; its limit will not have changed.
	*
	* <p> Unless otherwise specified, a write operation will return only after
	* writing all of the <i>r</i> requested bytes.  Some types of channels,
	* depending upon their state, may write only some of the bytes or possibly
	* none at all.  A socket channel in non-blocking mode, for example, cannot
	* write any more bytes than are free in the socket's output buffer.
	*
	* <p> This method may be invoked at any time.  If another thread has
	* already initiated a write operation upon this channel, however, then an
	* invocation of this method will block until the first operation is
	* complete. </p>
	*
	* @param  src
	*         The buffer from which bytes are to be retrieved
	*
	* @return The number of bytes written, possibly zero
	*
	* @throws  NonWritableChannelException
	*          If this channel was not opened for writing
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the write operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the write operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:public public function write(src : java.nio.ByteBuffer) : Int;
	
	/**
	* Writes a sequence of bytes to this channel from the given buffers.
	*
	* <p> An invocation of this method of the form <tt>c.write(srcs)</tt>
	* behaves in exactly the same manner as the invocation
	*
	* <blockquote><pre>
	* c.write(srcs, 0, srcs.length);</pre></blockquote>
	*
	* @param  srcs
	*         The buffers from which bytes are to be retrieved
	*
	* @return  The number of bytes written, possibly zero
	*
	* @throws  NonWritableChannelException
	*          If this channel was not opened for writing
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the write operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the write operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:public public function write(srcs : java.NativeArray<java.nio.ByteBuffer>) : haxe.Int64;
	
	/**
	* Tells whether or not this channel is open.  </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is open
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function isOpen() : Bool;
	
	/**
	* Closes this channel.
	*
	* <p> After a channel is closed, any further attempt to invoke I/O
	* operations upon it will cause a {@link ClosedChannelException} to be
	* thrown.
	*
	* <p> If this channel is already closed then invoking this method has no
	* effect.
	*
	* <p> This method may be invoked at any time.  If some other thread has
	* already invoked it, however, then another invocation will block until
	* the first invocation is complete, after which it will return without
	* effect. </p>
	*
	* @throws  IOException  If an I/O error occurs
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public override public function close() : Void;
	
	
}

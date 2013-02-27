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
extern interface ReadableByteChannel extends java.nio.channels.Channel
{
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
	@:overload @:public public function read(dst : java.nio.ByteBuffer) : Int;
	
	
}

package java.nio.channels;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AsynchronousSocketChannel implements java.nio.channels.AsynchronousByteChannel implements java.nio.channels.NetworkChannel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload private function new(provider : java.nio.channels.spi.AsynchronousChannelProvider) : Void;
	
	/**
	* Returns the provider that created this channel.
	*/
	@:overload @:final public function provider() : java.nio.channels.spi.AsynchronousChannelProvider;
	
	/**
	* Opens an asynchronous socket channel.
	*
	* <p> The new channel is created by invoking the {@link
	* AsynchronousChannelProvider#openAsynchronousSocketChannel
	* openAsynchronousSocketChannel} method on the {@link
	* AsynchronousChannelProvider} that created the group. If the group parameter
	* is {@code null} then the resulting channel is created by the system-wide
	* default provider, and bound to the <em>default group</em>.
	*
	* @param   group
	*          The group to which the newly constructed channel should be bound,
	*          or {@code null} for the default group
	*
	* @return  A new asynchronous socket channel
	*
	* @throws  ShutdownChannelGroupException
	*          If the channel group is shutdown
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public static function open(group : java.nio.channels.AsynchronousChannelGroup) : AsynchronousSocketChannel;
	
	/**
	* Opens an asynchronous socket channel.
	*
	* <p> This method returns an asynchronous socket channel that is bound to
	* the <em>default group</em>.This method is equivalent to evaluating the
	* expression:
	* <blockquote><pre>
	* open((AsynchronousChannelGroup)null);
	* </pre></blockquote>
	*
	* @return  A new asynchronous socket channel
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public static function open() : AsynchronousSocketChannel;
	
	/**
	* @throws  ConnectionPendingException
	*          If a connection operation is already in progress on this channel
	* @throws  AlreadyBoundException               {@inheritDoc}
	* @throws  UnsupportedAddressTypeException     {@inheritDoc}
	* @throws  ClosedChannelException              {@inheritDoc}
	* @throws  IOException                         {@inheritDoc}
	*/
	@:overload @:abstract public function bind(local : java.net.SocketAddress) : AsynchronousSocketChannel;
	
	/**
	* @throws  IllegalArgumentException                {@inheritDoc}
	* @throws  ClosedChannelException                  {@inheritDoc}
	* @throws  IOException                             {@inheritDoc}
	*/
	@:overload @:abstract public function setOption<T>(name : java.net.SocketOption<T>, value : T) : AsynchronousSocketChannel;
	
	/**
	* Shutdown the connection for reading without closing the channel.
	*
	* <p> Once shutdown for reading then further reads on the channel will
	* return {@code -1}, the end-of-stream indication. If the input side of the
	* connection is already shutdown then invoking this method has no effect.
	* The effect on an outstanding read operation is system dependent and
	* therefore not specified. The effect, if any, when there is data in the
	* socket receive buffer that has not been read, or data arrives subsequently,
	* is also system dependent.
	*
	* @return  The channel
	*
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:abstract public function shutdownInput() : AsynchronousSocketChannel;
	
	/**
	* Shutdown the connection for writing without closing the channel.
	*
	* <p> Once shutdown for writing then further attempts to write to the
	* channel will throw {@link ClosedChannelException}. If the output side of
	* the connection is already shutdown then invoking this method has no
	* effect. The effect on an outstanding write operation is system dependent
	* and therefore not specified.
	*
	* @return  The channel
	*
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:abstract public function shutdownOutput() : AsynchronousSocketChannel;
	
	/**
	* Returns the remote address to which this channel's socket is connected.
	*
	* <p> Where the channel is bound and connected to an Internet Protocol
	* socket address then the return value from this method is of type {@link
	* java.net.InetSocketAddress}.
	*
	* @return  The remote address; {@code null} if the channel's socket is not
	*          connected
	*
	* @throws  ClosedChannelException
	*          If the channel is closed
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:abstract public function getRemoteAddress() : java.net.SocketAddress;
	
	/**
	* Connects this channel.
	*
	* <p> This method initiates an operation to connect this channel. The
	* {@code handler} parameter is a completion handler that is invoked when
	* the connection is successfully established or connection cannot be
	* established. If the connection cannot be established then the channel is
	* closed.
	*
	* <p> This method performs exactly the same security checks as the {@link
	* java.net.Socket} class.  That is, if a security manager has been
	* installed then this method verifies that its {@link
	* java.lang.SecurityManager#checkConnect checkConnect} method permits
	* connecting to the address and port number of the given remote endpoint.
	*
	* @param   remote
	*          The remote address to which this channel is to be connected
	* @param   attachment
	*          The object to attach to the I/O operation; can be {@code null}
	* @param   handler
	*          The handler for consuming the result
	*
	* @throws  UnresolvedAddressException
	*          If the given remote address is not fully resolved
	* @throws  UnsupportedAddressTypeException
	*          If the type of the given remote address is not supported
	* @throws  AlreadyConnectedException
	*          If this channel is already connected
	* @throws  ConnectionPendingException
	*          If a connection operation is already in progress on this channel
	* @throws  ShutdownChannelGroupException
	*          If the channel group has terminated
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the given remote endpoint
	*
	* @see #getRemoteAddress
	*/
	@:overload @:abstract public function connect<A>(remote : java.net.SocketAddress, attachment : A, handler : java.nio.channels.CompletionHandler<java.lang.Void, A>) : Void;
	
	/**
	* Connects this channel.
	*
	* <p> This method initiates an operation to connect this channel. This
	* method behaves in exactly the same manner as the {@link
	* #connect(SocketAddress, Object, CompletionHandler)} method except that
	* instead of specifying a completion handler, this method returns a {@code
	* Future} representing the pending result. The {@code Future}'s {@link
	* Future#get() get} method returns {@code null} on successful completion.
	*
	* @param   remote
	*          The remote address to which this channel is to be connected
	*
	* @return  A {@code Future} object representing the pending result
	*
	* @throws  UnresolvedAddressException
	*          If the given remote address is not fully resolved
	* @throws  UnsupportedAddressTypeException
	*          If the type of the given remote address is not supported
	* @throws  AlreadyConnectedException
	*          If this channel is already connected
	* @throws  ConnectionPendingException
	*          If a connection operation is already in progress on this channel
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the given remote endpoint
	*/
	@:overload @:abstract public function connect(remote : java.net.SocketAddress) : java.util.concurrent.Future<java.lang.Void>;
	
	/**
	* Reads a sequence of bytes from this channel into the given buffer.
	*
	* <p> This method initiates an asynchronous read operation to read a
	* sequence of bytes from this channel into the given buffer. The {@code
	* handler} parameter is a completion handler that is invoked when the read
	* operation completes (or fails). The result passed to the completion
	* handler is the number of bytes read or {@code -1} if no bytes could be
	* read because the channel has reached end-of-stream.
	*
	* <p> If a timeout is specified and the timeout elapses before the operation
	* completes then the operation completes with the exception {@link
	* InterruptedByTimeoutException}. Where a timeout occurs, and the
	* implementation cannot guarantee that bytes have not been read, or will not
	* be read from the channel into the given buffer, then further attempts to
	* read from the channel will cause an unspecific runtime exception to be
	* thrown.
	*
	* <p> Otherwise this method works in the same manner as the {@link
	* AsynchronousByteChannel#read(ByteBuffer,Object,CompletionHandler)}
	* method.
	*
	* @param   dst
	*          The buffer into which bytes are to be transferred
	* @param   timeout
	*          The maximum time for the I/O operation to complete
	* @param   unit
	*          The time unit of the {@code timeout} argument
	* @param   attachment
	*          The object to attach to the I/O operation; can be {@code null}
	* @param   handler
	*          The handler for consuming the result
	*
	* @throws  IllegalArgumentException
	*          If the buffer is read-only
	* @throws  ReadPendingException
	*          If a read operation is already in progress on this channel
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ShutdownChannelGroupException
	*          If the channel group has terminated
	*/
	@:overload @:abstract public function read<A>(dst : java.nio.ByteBuffer, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit, attachment : A, handler : java.nio.channels.CompletionHandler<Null<Int>, A>) : Void;
	
	/**
	* @throws  IllegalArgumentException        {@inheritDoc}
	* @throws  ReadPendingException            {@inheritDoc}
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ShutdownChannelGroupException
	*          If the channel group has terminated
	*/
	@:overload @:final public function read<A>(dst : java.nio.ByteBuffer, attachment : A, handler : java.nio.channels.CompletionHandler<Null<Int>, A>) : Void;
	
	/**
	* @throws  IllegalArgumentException        {@inheritDoc}
	* @throws  ReadPendingException            {@inheritDoc}
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	*/
	@:overload @:abstract public function read(dst : java.nio.ByteBuffer) : java.util.concurrent.Future<Null<Int>>;
	
	/**
	* Reads a sequence of bytes from this channel into a subsequence of the
	* given buffers. This operation, sometimes called a <em>scattering read</em>,
	* is often useful when implementing network protocols that group data into
	* segments consisting of one or more fixed-length headers followed by a
	* variable-length body. The {@code handler} parameter is a completion
	* handler that is invoked when the read operation completes (or fails). The
	* result passed to the completion handler is the number of bytes read or
	* {@code -1} if no bytes could be read because the channel has reached
	* end-of-stream.
	*
	* <p> This method initiates a read of up to <i>r</i> bytes from this channel,
	* where <i>r</i> is the total number of bytes remaining in the specified
	* subsequence of the given buffer array, that is,
	*
	* <blockquote><pre>
	* dsts[offset].remaining()
	*     + dsts[offset+1].remaining()
	*     + ... + dsts[offset+length-1].remaining()</pre></blockquote>
	*
	* at the moment that the read is attempted.
	*
	* <p> Suppose that a byte sequence of length <i>n</i> is read, where
	* <tt>0</tt>&nbsp;<tt>&lt;</tt>&nbsp;<i>n</i>&nbsp;<tt>&lt;=</tt>&nbsp;<i>r</i>.
	* Up to the first <tt>dsts[offset].remaining()</tt> bytes of this sequence
	* are transferred into buffer <tt>dsts[offset]</tt>, up to the next
	* <tt>dsts[offset+1].remaining()</tt> bytes are transferred into buffer
	* <tt>dsts[offset+1]</tt>, and so forth, until the entire byte sequence
	* is transferred into the given buffers.  As many bytes as possible are
	* transferred into each buffer, hence the final position of each updated
	* buffer, except the last updated buffer, is guaranteed to be equal to
	* that buffer's limit. The underlying operating system may impose a limit
	* on the number of buffers that may be used in an I/O operation. Where the
	* number of buffers (with bytes remaining), exceeds this limit, then the
	* I/O operation is performed with the maximum number of buffers allowed by
	* the operating system.
	*
	* <p> If a timeout is specified and the timeout elapses before the operation
	* completes then it completes with the exception {@link
	* InterruptedByTimeoutException}. Where a timeout occurs, and the
	* implementation cannot guarantee that bytes have not been read, or will not
	* be read from the channel into the given buffers, then further attempts to
	* read from the channel will cause an unspecific runtime exception to be
	* thrown.
	*
	* @param   dsts
	*          The buffers into which bytes are to be transferred
	* @param   offset
	*          The offset within the buffer array of the first buffer into which
	*          bytes are to be transferred; must be non-negative and no larger than
	*          {@code dsts.length}
	* @param   length
	*          The maximum number of buffers to be accessed; must be non-negative
	*          and no larger than {@code dsts.length - offset}
	* @param   timeout
	*          The maximum time for the I/O operation to complete
	* @param   unit
	*          The time unit of the {@code timeout} argument
	* @param   attachment
	*          The object to attach to the I/O operation; can be {@code null}
	* @param   handler
	*          The handler for consuming the result
	*
	* @throws  IndexOutOfBoundsException
	*          If the pre-conditions for the {@code offset}  and {@code length}
	*          parameter aren't met
	* @throws  IllegalArgumentException
	*          If the buffer is read-only
	* @throws  ReadPendingException
	*          If a read operation is already in progress on this channel
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ShutdownChannelGroupException
	*          If the channel group has terminated
	*/
	@:overload @:abstract public function read<A>(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit, attachment : A, handler : java.nio.channels.CompletionHandler<Null<haxe.Int64>, A>) : Void;
	
	/**
	* Writes a sequence of bytes to this channel from the given buffer.
	*
	* <p> This method initiates an asynchronous write operation to write a
	* sequence of bytes to this channel from the given buffer. The {@code
	* handler} parameter is a completion handler that is invoked when the write
	* operation completes (or fails). The result passed to the completion
	* handler is the number of bytes written.
	*
	* <p> If a timeout is specified and the timeout elapses before the operation
	* completes then it completes with the exception {@link
	* InterruptedByTimeoutException}. Where a timeout occurs, and the
	* implementation cannot guarantee that bytes have not been written, or will
	* not be written to the channel from the given buffer, then further attempts
	* to write to the channel will cause an unspecific runtime exception to be
	* thrown.
	*
	* <p> Otherwise this method works in the same manner as the {@link
	* AsynchronousByteChannel#write(ByteBuffer,Object,CompletionHandler)}
	* method.
	*
	* @param   src
	*          The buffer from which bytes are to be retrieved
	* @param   timeout
	*          The maximum time for the I/O operation to complete
	* @param   unit
	*          The time unit of the {@code timeout} argument
	* @param   attachment
	*          The object to attach to the I/O operation; can be {@code null}
	* @param   handler
	*          The handler for consuming the result
	*
	* @throws  WritePendingException
	*          If a write operation is already in progress on this channel
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ShutdownChannelGroupException
	*          If the channel group has terminated
	*/
	@:overload @:abstract public function write<A>(src : java.nio.ByteBuffer, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit, attachment : A, handler : java.nio.channels.CompletionHandler<Null<Int>, A>) : Void;
	
	/**
	* @throws  WritePendingException          {@inheritDoc}
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ShutdownChannelGroupException
	*          If the channel group has terminated
	*/
	@:overload @:final public function write<A>(src : java.nio.ByteBuffer, attachment : A, handler : java.nio.channels.CompletionHandler<Null<Int>, A>) : Void;
	
	/**
	* @throws  WritePendingException       {@inheritDoc}
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	*/
	@:overload @:abstract public function write(src : java.nio.ByteBuffer) : java.util.concurrent.Future<Null<Int>>;
	
	/**
	* Writes a sequence of bytes to this channel from a subsequence of the given
	* buffers. This operation, sometimes called a <em>gathering write</em>, is
	* often useful when implementing network protocols that group data into
	* segments consisting of one or more fixed-length headers followed by a
	* variable-length body. The {@code handler} parameter is a completion
	* handler that is invoked when the write operation completes (or fails).
	* The result passed to the completion handler is the number of bytes written.
	*
	* <p> This method initiates a write of up to <i>r</i> bytes to this channel,
	* where <i>r</i> is the total number of bytes remaining in the specified
	* subsequence of the given buffer array, that is,
	*
	* <blockquote><pre>
	* srcs[offset].remaining()
	*     + srcs[offset+1].remaining()
	*     + ... + srcs[offset+length-1].remaining()</pre></blockquote>
	*
	* at the moment that the write is attempted.
	*
	* <p> Suppose that a byte sequence of length <i>n</i> is written, where
	* <tt>0</tt>&nbsp;<tt>&lt;</tt>&nbsp;<i>n</i>&nbsp;<tt>&lt;=</tt>&nbsp;<i>r</i>.
	* Up to the first <tt>srcs[offset].remaining()</tt> bytes of this sequence
	* are written from buffer <tt>srcs[offset]</tt>, up to the next
	* <tt>srcs[offset+1].remaining()</tt> bytes are written from buffer
	* <tt>srcs[offset+1]</tt>, and so forth, until the entire byte sequence is
	* written.  As many bytes as possible are written from each buffer, hence
	* the final position of each updated buffer, except the last updated
	* buffer, is guaranteed to be equal to that buffer's limit. The underlying
	* operating system may impose a limit on the number of buffers that may be
	* used in an I/O operation. Where the number of buffers (with bytes
	* remaining), exceeds this limit, then the I/O operation is performed with
	* the maximum number of buffers allowed by the operating system.
	*
	* <p> If a timeout is specified and the timeout elapses before the operation
	* completes then it completes with the exception {@link
	* InterruptedByTimeoutException}. Where a timeout occurs, and the
	* implementation cannot guarantee that bytes have not been written, or will
	* not be written to the channel from the given buffers, then further attempts
	* to write to the channel will cause an unspecific runtime exception to be
	* thrown.
	*
	* @param   srcs
	*          The buffers from which bytes are to be retrieved
	* @param   offset
	*          The offset within the buffer array of the first buffer from which
	*          bytes are to be retrieved; must be non-negative and no larger
	*          than {@code srcs.length}
	* @param   length
	*          The maximum number of buffers to be accessed; must be non-negative
	*          and no larger than {@code srcs.length - offset}
	* @param   timeout
	*          The maximum time for the I/O operation to complete
	* @param   unit
	*          The time unit of the {@code timeout} argument
	* @param   attachment
	*          The object to attach to the I/O operation; can be {@code null}
	* @param   handler
	*          The handler for consuming the result
	*
	* @throws  IndexOutOfBoundsException
	*          If the pre-conditions for the {@code offset}  and {@code length}
	*          parameter aren't met
	* @throws  WritePendingException
	*          If a write operation is already in progress on this channel
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ShutdownChannelGroupException
	*          If the channel group has terminated
	*/
	@:overload @:abstract public function write<A>(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int, timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit, attachment : A, handler : java.nio.channels.CompletionHandler<Null<haxe.Int64>, A>) : Void;
	
	/**
	* Returns the value of a socket option.
	*
	* @param   name
	*          The socket option
	*
	* @return  The value of the socket option. A value of {@code null} may be
	*          a valid value for some socket options.
	*
	* @throws  UnsupportedOperationException
	*          If the socket option is not supported by this channel
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see java.net.StandardSocketOptions
	*/
	@:overload @:public public function getOption<T>(name : java.net.SocketOption<T>) : T;
	
	/**
	* Returns a set of the socket options supported by this channel.
	*
	* <p> This method will continue to return the set of options even after the
	* channel has been closed.
	*
	* @return  A set of the socket options supported by this channel
	*/
	@:overload @:public public function supportedOptions() : java.util.Set<java.net.SocketOption<Dynamic>>;
	
	/**
	* Returns the socket address that this channel's socket is bound to, or
	* {@code null} if the socket is not bound.
	*
	* <p> Where the channel is {@link #bind bound} to an Internet Protocol
	* socket address then the return value from this method is of type {@link
	* java.net.InetSocketAddress}.
	*
	* @return  The socket address that the socket is bound to, or {@code null}
	*          if the channel's socket is not bound
	*
	* @throws  ClosedChannelException
	*          If the channel is closed
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public public function getLocalAddress() : java.net.SocketAddress;
	
	/**
	* Tells whether or not this channel is open.  </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is open
	*/
	@:overload @:public @:public @:public override public function isOpen() : Bool;
	
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
	@:overload @:public @:public @:public override public function close() : Void;
	
	
}

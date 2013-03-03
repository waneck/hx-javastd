package java.nio.channels;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SocketChannel extends java.nio.channels.spi.AbstractSelectableChannel implements java.nio.channels.ByteChannel implements java.nio.channels.ScatteringByteChannel implements java.nio.channels.GatheringByteChannel implements java.nio.channels.NetworkChannel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Opens a socket channel.
	*
	* <p> The new channel is created by invoking the {@link
	* java.nio.channels.spi.SelectorProvider#openSocketChannel
	* openSocketChannel} method of the system-wide default {@link
	* java.nio.channels.spi.SelectorProvider} object.  </p>
	*
	* @return  A new socket channel
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function open() : java.nio.channels.SocketChannel;
	
	/**
	* Opens a socket channel and connects it to a remote address.
	*
	* <p> This convenience method works as if by invoking the {@link #open()}
	* method, invoking the {@link #connect(SocketAddress) connect} method upon
	* the resulting socket channel, passing it <tt>remote</tt>, and then
	* returning that channel.  </p>
	*
	* @param  remote
	*         The remote address to which the new channel is to be connected
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the connect operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the connect operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  UnresolvedAddressException
	*          If the given remote address is not fully resolved
	*
	* @throws  UnsupportedAddressTypeException
	*          If the type of the given remote address is not supported
	*
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the given remote endpoint
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:static public static function open(remote : java.net.SocketAddress) : java.nio.channels.SocketChannel;
	
	/**
	* Returns an operation set identifying this channel's supported
	* operations.
	*
	* <p> Socket channels support connecting, reading, and writing, so this
	* method returns <tt>(</tt>{@link SelectionKey#OP_CONNECT}
	* <tt>|</tt>&nbsp;{@link SelectionKey#OP_READ} <tt>|</tt>&nbsp;{@link
	* SelectionKey#OP_WRITE}<tt>)</tt>.  </p>
	*
	* @return  The valid-operation set
	*/
	@:overload @:public @:final override public function validOps() : Int;
	
	/**
	* @throws  ConnectionPendingException
	*          If a non-blocking connect operation is already in progress on
	*          this channel
	* @throws  AlreadyBoundException               {@inheritDoc}
	* @throws  UnsupportedAddressTypeException     {@inheritDoc}
	* @throws  ClosedChannelException              {@inheritDoc}
	* @throws  IOException                         {@inheritDoc}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:abstract public function bind(local : java.net.SocketAddress) : java.nio.channels.SocketChannel;
	
	/**
	* @throws  UnsupportedOperationException           {@inheritDoc}
	* @throws  IllegalArgumentException                {@inheritDoc}
	* @throws  ClosedChannelException                  {@inheritDoc}
	* @throws  IOException                             {@inheritDoc}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:abstract public function setOption<T>(name : java.net.SocketOption<T>, value : T) : java.nio.channels.SocketChannel;
	
	/**
	* Shutdown the connection for reading without closing the channel.
	*
	* <p> Once shutdown for reading then further reads on the channel will
	* return {@code -1}, the end-of-stream indication. If the input side of the
	* connection is already shutdown then invoking this method has no effect.
	*
	* @return  The channel
	*
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:abstract public function shutdownInput() : java.nio.channels.SocketChannel;
	
	/**
	* Shutdown the connection for writing without closing the channel.
	*
	* <p> Once shutdown for writing then further attempts to write to the
	* channel will throw {@link ClosedChannelException}. If the output side of
	* the connection is already shutdown then invoking this method has no
	* effect.
	*
	* @return  The channel
	*
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:abstract public function shutdownOutput() : java.nio.channels.SocketChannel;
	
	/**
	* Retrieves a socket associated with this channel.
	*
	* <p> The returned object will not declare any public methods that are not
	* declared in the {@link java.net.Socket} class.  </p>
	*
	* @return  A socket associated with this channel
	*/
	@:overload @:public @:abstract public function socket() : java.net.Socket;
	
	/**
	* Tells whether or not this channel's network socket is connected.
	*
	* @return  <tt>true</tt> if, and only if, this channel's network socket
	*          is {@link #isOpen open} and connected
	*/
	@:overload @:public @:abstract public function isConnected() : Bool;
	
	/**
	* Tells whether or not a connection operation is in progress on this
	* channel.  </p>
	*
	* @return  <tt>true</tt> if, and only if, a connection operation has been
	*          initiated on this channel but not yet completed by invoking the
	*          {@link #finishConnect finishConnect} method
	*/
	@:overload @:public @:abstract public function isConnectionPending() : Bool;
	
	/**
	* Connects this channel's socket.
	*
	* <p> If this channel is in non-blocking mode then an invocation of this
	* method initiates a non-blocking connection operation.  If the connection
	* is established immediately, as can happen with a local connection, then
	* this method returns <tt>true</tt>.  Otherwise this method returns
	* <tt>false</tt> and the connection operation must later be completed by
	* invoking the {@link #finishConnect finishConnect} method.
	*
	* <p> If this channel is in blocking mode then an invocation of this
	* method will block until the connection is established or an I/O error
	* occurs.
	*
	* <p> This method performs exactly the same security checks as the {@link
	* java.net.Socket} class.  That is, if a security manager has been
	* installed then this method verifies that its {@link
	* java.lang.SecurityManager#checkConnect checkConnect} method permits
	* connecting to the address and port number of the given remote endpoint.
	*
	* <p> This method may be invoked at any time.  If a read or write
	* operation upon this channel is invoked while an invocation of this
	* method is in progress then that operation will first block until this
	* invocation is complete.  If a connection attempt is initiated but fails,
	* that is, if an invocation of this method throws a checked exception,
	* then the channel will be closed.  </p>
	*
	* @param  remote
	*         The remote address to which this channel is to be connected
	*
	* @return  <tt>true</tt> if a connection was established,
	*          <tt>false</tt> if this channel is in non-blocking mode
	*          and the connection operation is in progress
	*
	* @throws  AlreadyConnectedException
	*          If this channel is already connected
	*
	* @throws  ConnectionPendingException
	*          If a non-blocking connection operation is already in progress
	*          on this channel
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the connect operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the connect operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  UnresolvedAddressException
	*          If the given remote address is not fully resolved
	*
	* @throws  UnsupportedAddressTypeException
	*          If the type of the given remote address is not supported
	*
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the given remote endpoint
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function connect(remote : java.net.SocketAddress) : Bool;
	
	/**
	* Finishes the process of connecting a socket channel.
	*
	* <p> A non-blocking connection operation is initiated by placing a socket
	* channel in non-blocking mode and then invoking its {@link #connect
	* connect} method.  Once the connection is established, or the attempt has
	* failed, the socket channel will become connectable and this method may
	* be invoked to complete the connection sequence.  If the connection
	* operation failed then invoking this method will cause an appropriate
	* {@link java.io.IOException} to be thrown.
	*
	* <p> If this channel is already connected then this method will not block
	* and will immediately return <tt>true</tt>.  If this channel is in
	* non-blocking mode then this method will return <tt>false</tt> if the
	* connection process is not yet complete.  If this channel is in blocking
	* mode then this method will block until the connection either completes
	* or fails, and will always either return <tt>true</tt> or throw a checked
	* exception describing the failure.
	*
	* <p> This method may be invoked at any time.  If a read or write
	* operation upon this channel is invoked while an invocation of this
	* method is in progress then that operation will first block until this
	* invocation is complete.  If a connection attempt fails, that is, if an
	* invocation of this method throws a checked exception, then the channel
	* will be closed.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this channel's socket is now
	*          connected
	*
	* @throws  NoConnectionPendingException
	*          If this channel is not connected and a connection operation
	*          has not been initiated
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the connect operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the connect operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function finishConnect() : Bool;
	
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
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:abstract public function getRemoteAddress() : java.net.SocketAddress;
	
	/**
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	*/
	@:overload @:public @:abstract public function read(dst : java.nio.ByteBuffer) : Int;
	
	/**
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	*/
	@:overload @:public @:abstract public function read(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	/**
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	*/
	@:overload @:public @:final public function read(dsts : java.NativeArray<java.nio.ByteBuffer>) : haxe.Int64;
	
	/**
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	*/
	@:overload @:public @:abstract public function write(src : java.nio.ByteBuffer) : Int;
	
	/**
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	*/
	@:overload @:public @:abstract public function write(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	/**
	* @throws  NotYetConnectedException
	*          If this channel is not yet connected
	*/
	@:overload @:public @:final public function write(srcs : java.NativeArray<java.nio.ByteBuffer>) : haxe.Int64;
	
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
	@:overload @:public override public function isOpen() : Bool;
	
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
	@:overload @:public override public function close() : Void;
	
	
}

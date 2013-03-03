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
extern class ServerSocketChannel extends java.nio.channels.spi.AbstractSelectableChannel implements java.nio.channels.NetworkChannel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Opens a server-socket channel.
	*
	* <p> The new channel is created by invoking the {@link
	* java.nio.channels.spi.SelectorProvider#openServerSocketChannel
	* openServerSocketChannel} method of the system-wide default {@link
	* java.nio.channels.spi.SelectorProvider} object.
	*
	* <p> The new channel's socket is initially unbound; it must be bound to a
	* specific address via one of its socket's {@link
	* java.net.ServerSocket#bind(SocketAddress) bind} methods before
	* connections can be accepted.  </p>
	*
	* @return  A new socket channel
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function open() : java.nio.channels.ServerSocketChannel;
	
	/**
	* Returns an operation set identifying this channel's supported
	* operations.
	*
	* <p> Server-socket channels only support the accepting of new
	* connections, so this method returns {@link SelectionKey#OP_ACCEPT}.
	* </p>
	*
	* @return  The valid-operation set
	*/
	@:overload @:public @:final override public function validOps() : Int;
	
	/**
	* Binds the channel's socket to a local address and configures the socket
	* to listen for connections.
	*
	* <p> An invocation of this method is equivalent to the following:
	* <blockquote><pre>
	* bind(local, 0);
	* </pre></blockquote>
	*
	* @param   local
	*          The local address to bind the socket, or {@code null} to bind
	*          to an automatically assigned socket address
	*
	* @return  This channel
	*
	* @throws  AlreadyBoundException               {@inheritDoc}
	* @throws  UnsupportedAddressTypeException     {@inheritDoc}
	* @throws  ClosedChannelException              {@inheritDoc}
	* @throws  IOException                         {@inheritDoc}
	* @throws  SecurityException
	*          If a security manager has been installed and its {@link
	*          SecurityManager#checkListen checkListen} method denies the
	*          operation
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:final public function bind(local : java.net.SocketAddress) : java.nio.channels.ServerSocketChannel;
	
	/**
	* Binds the channel's socket to a local address and configures the socket to
	* listen for connections.
	*
	* <p> This method is used to establish an association between the socket and
	* a local address. Once an association is established then the socket remains
	* bound until the channel is closed.
	*
	* <p> The {@code backlog} parameter is the maximum number of pending
	* connections on the socket. Its exact semantics are implementation specific.
	* In particular, an implementation may impose a maximum length or may choose
	* to ignore the parameter altogther. If the {@code backlog} parameter has
	* the value {@code 0}, or a negative value, then an implementation specific
	* default is used.
	*
	* @param   local
	*          The address to bind the socket, or {@code null} to bind to an
	*          automatically assigned socket address
	* @param   backlog
	*          The maximum number of pending connections
	*
	* @return  This channel
	*
	* @throws  AlreadyBoundException
	*          If the socket is already bound
	* @throws  UnsupportedAddressTypeException
	*          If the type of the given address is not supported
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	* @throws  SecurityException
	*          If a security manager has been installed and its {@link
	*          SecurityManager#checkListen checkListen} method denies the
	*          operation
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:abstract public function bind(local : java.net.SocketAddress, backlog : Int) : java.nio.channels.ServerSocketChannel;
	
	/**
	* @throws  UnsupportedOperationException           {@inheritDoc}
	* @throws  IllegalArgumentException                {@inheritDoc}
	* @throws  ClosedChannelException                  {@inheritDoc}
	* @throws  IOException                             {@inheritDoc}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:abstract public function setOption<T>(name : java.net.SocketOption<T>, value : T) : java.nio.channels.ServerSocketChannel;
	
	/**
	* Retrieves a server socket associated with this channel.
	*
	* <p> The returned object will not declare any public methods that are not
	* declared in the {@link java.net.ServerSocket} class.  </p>
	*
	* @return  A server socket associated with this channel
	*/
	@:overload @:public @:abstract public function socket() : java.net.ServerSocket;
	
	/**
	* Accepts a connection made to this channel's socket.
	*
	* <p> If this channel is in non-blocking mode then this method will
	* immediately return <tt>null</tt> if there are no pending connections.
	* Otherwise it will block indefinitely until a new connection is available
	* or an I/O error occurs.
	*
	* <p> The socket channel returned by this method, if any, will be in
	* blocking mode regardless of the blocking mode of this channel.
	*
	* <p> This method performs exactly the same security checks as the {@link
	* java.net.ServerSocket#accept accept} method of the {@link
	* java.net.ServerSocket} class.  That is, if a security manager has been
	* installed then for each new connection this method verifies that the
	* address and port number of the connection's remote endpoint are
	* permitted by the security manager's {@link
	* java.lang.SecurityManager#checkAccept checkAccept} method.  </p>
	*
	* @return  The socket channel for the new connection,
	*          or <tt>null</tt> if this channel is in non-blocking mode
	*          and no connection is available to be accepted
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the accept operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the accept operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  NotYetBoundException
	*          If this channel's socket has not yet been bound
	*
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the remote endpoint
	*          of the new connection
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function accept() : java.nio.channels.SocketChannel;
	
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
	@:overload @:public @:public @:public @:public @:public public function getOption<T>(name : java.net.SocketOption<T>) : T;
	
	/**
	* Returns a set of the socket options supported by this channel.
	*
	* <p> This method will continue to return the set of options even after the
	* channel has been closed.
	*
	* @return  A set of the socket options supported by this channel
	*/
	@:overload @:public @:public @:public @:public @:public public function supportedOptions() : java.util.Set<java.net.SocketOption<Dynamic>>;
	
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
	@:overload @:public @:public @:public @:public @:public public function getLocalAddress() : java.net.SocketAddress;
	
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

package java.nio.channels;
/*
* Copyright (c) 2007, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class AsynchronousServerSocketChannel implements java.nio.channels.AsynchronousChannel implements java.nio.channels.NetworkChannel
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
	* Opens an asynchronous server-socket channel.
	*
	* <p> The new channel is created by invoking the {@link
	* java.nio.channels.spi.AsynchronousChannelProvider#openAsynchronousServerSocketChannel
	* openAsynchronousServerSocketChannel} method on the {@link
	* java.nio.channels.spi.AsynchronousChannelProvider} object that created
	* the given group. If the group parameter is <tt>null</tt> then the
	* resulting channel is created by the system-wide default provider, and
	* bound to the <em>default group</em>.
	*
	* @param   group
	*          The group to which the newly constructed channel should be bound,
	*          or <tt>null</tt> for the default group
	*
	* @return  A new asynchronous server socket channel
	*
	* @throws  ShutdownChannelGroupException
	*          If the channel group is shutdown
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public static function open(group : java.nio.channels.AsynchronousChannelGroup) : java.nio.channels.AsynchronousServerSocketChannel;
	
	/**
	* Opens an asynchronous server-socket channel.
	*
	* <p> This method returns an asynchronous server socket channel that is
	* bound to the <em>default group</em>. This method is equivalent to evaluating
	* the expression:
	* <blockquote><pre>
	* open((AsynchronousChannelGroup)null);
	* </pre></blockquote>
	*
	* @return  A new asynchronous server socket channel
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public static function open() : java.nio.channels.AsynchronousServerSocketChannel;
	
	/**
	* Binds the channel's socket to a local address and configures the socket to
	* listen for connections.
	*
	* <p> An invocation of this method is equivalent to the following:
	* <blockquote><pre>
	* bind(local, 0);
	* </pre></blockquote>
	*
	* @param   local
	*          The local address to bind the socket, or <tt>null</tt> to bind
	*          to an automatically assigned socket address
	*
	* @return  This channel
	*
	* @throws  AlreadyBoundException               {@inheritDoc}
	* @throws  UnsupportedAddressTypeException     {@inheritDoc}
	* @throws  SecurityException                   {@inheritDoc}
	* @throws  ClosedChannelException              {@inheritDoc}
	* @throws  IOException                         {@inheritDoc}
	*/
	@:overload @:final public function bind(local : java.net.SocketAddress) : java.nio.channels.AsynchronousServerSocketChannel;
	
	/**
	* Binds the channel's socket to a local address and configures the socket to
	* listen for connections.
	*
	* <p> This method is used to establish an association between the socket and
	* a local address. Once an association is established then the socket remains
	* bound until the associated channel is closed.
	*
	* <p> The {@code backlog} parameter is the maximum number of pending
	* connections on the socket. Its exact semantics are implementation specific.
	* In particular, an implementation may impose a maximum length or may choose
	* to ignore the parameter altogther. If the {@code backlog} parameter has
	* the value {@code 0}, or a negative value, then an implementation specific
	* default is used.
	*
	* @param   local
	*          The local address to bind the socket, or {@code null} to bind
	*          to an automatically assigned socket address
	* @param   backlog
	*          The maximum number of pending connections
	*
	* @return  This channel
	*
	* @throws  AlreadyBoundException
	*          If the socket is already bound
	* @throws  UnsupportedAddressTypeException
	*          If the type of the given address is not supported
	* @throws  SecurityException
	*          If a security manager has been installed and its {@link
	*          SecurityManager#checkListen checkListen} method denies the operation
	* @throws  ClosedChannelException
	*          If the channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:abstract public function bind(local : java.net.SocketAddress, backlog : Int) : java.nio.channels.AsynchronousServerSocketChannel;
	
	/**
	* @throws  IllegalArgumentException                {@inheritDoc}
	* @throws  ClosedChannelException                  {@inheritDoc}
	* @throws  IOException                             {@inheritDoc}
	*/
	@:overload @:abstract public function setOption<T>(name : java.net.SocketOption<T>, value : T) : java.nio.channels.AsynchronousServerSocketChannel;
	
	/**
	* Accepts a connection.
	*
	* <p> This method initiates an asynchronous operation to accept a
	* connection made to this channel's socket. The {@code handler} parameter is
	* a completion handler that is invoked when a connection is accepted (or
	* the operation fails). The result passed to the completion handler is
	* the {@link AsynchronousSocketChannel} to the new connection.
	*
	* <p> When a new connection is accepted then the resulting {@code
	* AsynchronousSocketChannel} will be bound to the same {@link
	* AsynchronousChannelGroup} as this channel. If the group is {@link
	* AsynchronousChannelGroup#isShutdown shutdown} and a connection is accepted,
	* then the connection is closed, and the operation completes with an {@code
	* IOException} and cause {@link ShutdownChannelGroupException}.
	*
	* <p> To allow for concurrent handling of new connections, the completion
	* handler is not invoked directly by the initiating thread when a new
	* connection is accepted immediately (see <a
	* href="AsynchronousChannelGroup.html#threading">Threading<a>).
	*
	* <p> If a security manager has been installed then it verifies that the
	* address and port number of the connection's remote endpoint are permitted
	* by the security manager's {@link SecurityManager#checkAccept checkAccept}
	* method. The permission check is performed with privileges that are restricted
	* by the calling context of this method. If the permission check fails then
	* the connection is closed and the operation completes with a {@link
	* SecurityException}.
	*
	* @param   attachment
	*          The object to attach to the I/O operation; can be {@code null}
	* @param   handler
	*          The handler for consuming the result
	*
	* @throws  AcceptPendingException
	*          If an accept operation is already in progress on this channel
	* @throws  NotYetBoundException
	*          If this channel's socket has not yet been bound
	* @throws  ShutdownChannelGroupException
	*          If the channel group has terminated
	*/
	@:overload @:abstract public function accept<A>(attachment : A, handler : java.nio.channels.CompletionHandler<java.nio.channels.AsynchronousSocketChannel, A>) : Void;
	
	/**
	* Accepts a connection.
	*
	* <p> This method initiates an asynchronous operation to accept a
	* connection made to this channel's socket. The method behaves in exactly
	* the same manner as the {@link #accept(Object, CompletionHandler)} method
	* except that instead of specifying a completion handler, this method
	* returns a {@code Future} representing the pending result. The {@code
	* Future}'s {@link Future#get() get} method returns the {@link
	* AsynchronousSocketChannel} to the new connection on successful completion.
	*
	* @return  a {@code Future} object representing the pending result
	*
	* @throws  AcceptPendingException
	*          If an accept operation is already in progress on this channel
	* @throws  NotYetBoundException
	*          If this channel's socket has not yet been bound
	*/
	@:overload @:abstract public function accept() : java.util.concurrent.Future<java.nio.channels.AsynchronousSocketChannel>;
	
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
	@:overload public function getOption<T>(name : java.net.SocketOption<T>) : T;
	
	/**
	* Returns a set of the socket options supported by this channel.
	*
	* <p> This method will continue to return the set of options even after the
	* channel has been closed.
	*
	* @return  A set of the socket options supported by this channel
	*/
	@:overload public function supportedOptions() : java.util.Set<java.net.SocketOption<Dynamic>>;
	
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
	@:overload public function getLocalAddress() : java.net.SocketAddress;
	
	/**
	* Tells whether or not this channel is open.  </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is open
	*/
	@:overload @:public @:public @:public public function isOpen() : Bool;
	
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
	@:overload @:public @:public @:public public function close() : Void;
	
	
}

package com.sun.nio.sctp;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class SctpServerChannel extends java.nio.channels.spi.AbstractSelectableChannel
{
	/**
	* Initializes a new instance of this class.
	*
	* @param  provider
	*         The selector provider for this channel
	*/
	@:overload private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Opens an SCTP server channel.
	*
	* <P> The new channel's socket is initially unbound; it must be bound
	* to a specific address via one of its socket's {@link #bind bind}
	* methods before associations can be accepted.
	*
	* @return  A new SCTP server channel
	*
	* @throws  UnsupportedOperationException
	*          If the SCTP protocol is not supported
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:native('open') @:overload public static function _open() : SctpServerChannel;
	
	/**
	* Accepts an association on this channel's socket.
	*
	* <P> If this channel is in non-blocking mode then this method will
	* immediately return {@code null} if there are no pending associations.
	* Otherwise it will block indefinitely until a new association is
	* available or an I/O error occurs.
	*
	* <P> The {@code SCTPChannel} returned by this method, if any, will be in
	*  blocking mode regardless of the blocking mode of this channel.
	*
	* <P> If a security manager has been installed then for each new
	* association this method verifies that the address and port number of the
	* assocaitions's remote peer are permitted by the security manager's {@link
	* java.lang.SecurityManager#checkAccept(String,int) checkAccept} method.
	*
	* @return  The SCTP channel for the new association, or {@code null}
	*          if this channel is in non-blocking mode and no association is
	*          available to be accepted
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.AsynchronousCloseException
	*          If another thread closes this channel
	*          while the accept operation is in progress
	*
	* @throws  java.nio.channels.ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the accept operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  java.nio.channels.NotYetBoundException
	*          If this channel's socket has not yet been bound
	*
	* @throws  SecurityException
	*          If a security manager has been installed and it does not permit
	*          access to the remote peer of the new association
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:abstract public function accept() : com.sun.nio.sctp.SctpChannel;
	
	/**
	* Binds the channel's socket to a local address and configures the socket
	* to listen for associations.
	*
	* <P> This method works as if invoking it were equivalent to evaluating the
	* expression:
	* <blockquote><pre>
	* bind(local, 0);
	* </pre></blockquote>
	*
	* @param  local
	*         The local address to bind the socket, or {@code null} to
	*         bind the socket to an automatically assigned socket address
	*
	* @return  This channel
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.AlreadyBoundException
	*          If this channel is already bound
	*
	* @throws  java.nio.channels.UnsupportedAddressTypeException
	*          If the type of the given address is not supported
	*
	* @throws  SecurityException
	*          If a security manager has been installed and its {@link
	*          java.lang.SecurityManager#checkListen(int) checkListen} method
	*          denies the operation
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:final public function bind(local : java.net.SocketAddress) : SctpServerChannel;
	
	/**
	* Binds the channel's socket to a local address and configures the socket
	* to listen for associations.
	*
	* <P> This method is used to establish a relationship between the socket
	* and the local address. Once a relationship is established then
	* the socket remains bound until the channel is closed. This relationship
	* may not necesssarily be with the address {@code local} as it may be
	* removed by {@link #unbindAddress unbindAddress}, but there will always be
	* at least one local address bound to the channel's socket once an
	* invocation of this method successfully completes.
	*
	* <P> Once the channel's socket has been successfully bound to a specific
	* address, that is not automatically assigned, more addresses
	* may be bound to it using {@link #bindAddress bindAddress}, or removed
	* using {@link #unbindAddress unbindAddress}.
	*
	* <P> The backlog parameter is the maximum number of pending associations
	* on the socket. Its exact semantics are implementation specific. An
	* implementation may impose an implementation specific maximum length or
	* may choose to ignore the parameter. If the backlog parameter has the
	* value {@code 0}, or a negative value, then an implementation specific
	* default is used.
	*
	* @param  local
	*         The local address to bind the socket, or {@code null} to
	*         bind the socket to an automatically assigned socket address
	*
	* @param  backlog
	*         The maximum number number of pending associations
	*
	* @return  This channel
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.AlreadyBoundException
	*          If this channel is already bound
	*
	* @throws  java.nio.channels.UnsupportedAddressTypeException
	*          If the type of the given address is not supported
	*
	* @throws  SecurityException
	*          If a security manager has been installed and its {@link
	*          java.lang.SecurityManager#checkListen(int) checkListen} method
	*          denies the operation
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:abstract public function bind(local : java.net.SocketAddress, backlog : Int) : SctpServerChannel;
	
	/**
	* Adds the given address to the bound addresses for the channel's
	* socket.
	*
	* <P> The given address must not be the {@link
	* java.net.InetAddress#isAnyLocalAddress wildcard} address.
	* The channel must be first bound using {@link #bind bind} before
	* invoking this method, otherwise {@link
	* java.nio.channels.NotYetBoundException} is thrown. The {@link #bind bind}
	* method takes a {@code SocketAddress} as its argument which typically
	* contains a port number as well as an address. Addresses subquently bound
	* using this method are simply addresses as the SCTP port number remains
	* the same for the lifetime of the channel.
	*
	* <P> New associations accepted after this method successfully completes
	* will be associated with the given address.
	*
	* @param  address
	*         The address to add to the bound addresses for the socket
	*
	* @return  This channel
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.NotYetBoundException
	*          If this channel is not yet bound
	*
	* @throws  java.nio.channels.AlreadyBoundException
	*          If this channel is already bound to the given address
	*
	* @throws  IllegalArgumentException
	*          If address is {@code null} or the {@link
	*          java.net.InetAddress#isAnyLocalAddress wildcard} address
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:abstract public function bindAddress(address : java.net.InetAddress) : SctpServerChannel;
	
	/**
	* Removes the given address from the bound addresses for the channel's
	* socket.
	*
	* <P> The given address must not be the {@link
	* java.net.InetAddress#isAnyLocalAddress wildcard} address.
	* The channel must be first bound using {@link #bind bind} before
	* invoking this method, otherwise
	* {@link java.nio.channels.NotYetBoundException} is thrown.
	* If this method is invoked on a channel that does not have
	* {@code address} as one of its bound addresses, or that has only one
	* local address bound to it, then this method throws {@link
	* IllegalUnbindException}.
	* The initial address that the channel's socket is bound to using
	* {@link #bind bind} may be removed from the bound addresses for the
	* channel's socket.
	*
	* <P> New associations accepted after this method successfully completes
	* will not be associated with the given address.
	*
	* @param  address
	*         The address to remove from the bound addresses for the socket
	*
	* @return  This channel
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.NotYetBoundException
	*          If this channel is not yet bound
	*
	* @throws  IllegalArgumentException
	*          If address is {@code null} or the {@link
	*          java.net.InetAddress#isAnyLocalAddress wildcard} address
	*
	* @throws  IllegalUnbindException
	*          If the implementation does not support removing addresses from a
	*          listening socket, {@code address} is not bound to the channel's
	*          socket, or the channel has only one address bound to it
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:abstract public function unbindAddress(address : java.net.InetAddress) : SctpServerChannel;
	
	/**
	* Returns all of the socket addresses to which this channel's socket is
	* bound.
	*
	* @return  All the socket addresses that this channel's socket is
	*          bound to, or an empty {@code Set} if the channel's socket is not
	*          bound
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If the channel is closed
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:abstract public function getAllLocalAddresses() : java.util.Set<java.net.SocketAddress>;
	
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
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see SctpStandardSocketOptions
	*/
	@:overload @:abstract public function getOption<T>(name : com.sun.nio.sctp.SctpSocketOption<T>) : T;
	
	/**
	* Sets the value of a socket option.
	*
	* @param   name
	*          The socket option
	*
	* @param   value
	*          The value of the socket option. A value of {@code null} may be
	*          a valid value for some socket options.
	*
	* @return  This channel
	*
	* @throws  UnsupportedOperationException
	*          If the socket option is not supported by this channel
	*
	* @throws  IllegalArgumentException
	*          If the value is not a valid value for this socket option
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see SctpStandardSocketOptions
	*/
	@:overload @:abstract public function setOption<T>(name : com.sun.nio.sctp.SctpSocketOption<T>, value : T) : SctpServerChannel;
	
	/**
	* Returns a set of the socket options supported by this channel.
	*
	* <P> This method will continue to return the set of options even after the
	* channel has been closed.
	*
	* @return  A set of the socket options supported by this channel
	*/
	@:overload @:abstract public function supportedOptions() : java.util.Set<com.sun.nio.sctp.SctpSocketOption<Dynamic>>;
	
	/**
	* Returns an operation set identifying this channel's supported
	* operations.
	*
	* <P> SCTP server channels only support the accepting of new
	* associations, so this method returns
	* {@link java.nio.channels.SelectionKey#OP_ACCEPT}.
	*
	* @return  The valid-operation set
	*/
	@:overload @:final override public function validOps() : Int;
	
	
}

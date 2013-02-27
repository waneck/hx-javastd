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
extern interface NetworkChannel extends java.nio.channels.Channel
{
	/**
	* Binds the channel's socket to a local address.
	*
	* <p> This method is used to establish an association between the socket and
	* a local address. Once an association is established then the socket remains
	* bound until the channel is closed. If the {@code local} parameter has the
	* value {@code null} then the socket will be bound to an address that is
	* assigned automatically.
	*
	* @param   local
	*          The address to bind the socket, or {@code null} to bind the socket
	*          to an automatically assigned socket address
	*
	* @return  This channel
	*
	* @throws  AlreadyBoundException
	*          If the socket is already bound
	* @throws  UnsupportedAddressTypeException
	*          If the type of the given address is not supported
	* @throws  ClosedChannelException
	*          If the channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	* @throws  SecurityException
	*          If a security manager is installed and it denies an unspecified
	*          permission. An implementation of this interface should specify
	*          any required permissions.
	*
	* @see #getLocalAddress
	*/
	@:overload public function bind(local : java.net.SocketAddress) : NetworkChannel;
	
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
	* Sets the value of a socket option.
	*
	* @param   name
	*          The socket option
	* @param   value
	*          The value of the socket option. A value of {@code null} may be
	*          a valid value for some socket options.
	*
	* @return  This channel
	*
	* @throws  UnsupportedOperationException
	*          If the socket option is not supported by this channel
	* @throws  IllegalArgumentException
	*          If the value is not a valid value for this socket option
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see java.net.StandardSocketOptions
	*/
	@:overload public function setOption<T>(name : java.net.SocketOption<T>, value : T) : NetworkChannel;
	
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
	
	
}

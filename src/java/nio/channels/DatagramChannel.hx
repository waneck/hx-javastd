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
extern class DatagramChannel extends java.nio.channels.spi.AbstractSelectableChannel implements java.nio.channels.ByteChannel implements java.nio.channels.ScatteringByteChannel implements java.nio.channels.GatheringByteChannel implements java.nio.channels.MulticastChannel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Opens a datagram channel.
	*
	* <p> The new channel is created by invoking the {@link
	* java.nio.channels.spi.SelectorProvider#openDatagramChannel()
	* openDatagramChannel} method of the system-wide default {@link
	* java.nio.channels.spi.SelectorProvider} object.  The channel will not be
	* connected.
	*
	* <p> The {@link ProtocolFamily ProtocolFamily} of the channel's socket
	* is platform (and possibly configuration) dependent and therefore unspecified.
	* The {@link #open(ProtocolFamily) open} allows the protocol family to be
	* selected when opening a datagram channel, and should be used to open
	* datagram channels that are intended for Internet Protocol multicasting.
	*
	* @return  A new datagram channel
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function open() : java.nio.channels.DatagramChannel;
	
	/**
	* Opens a datagram channel.
	*
	* <p> The {@code family} parameter is used to specify the {@link
	* ProtocolFamily}. If the datagram channel is to be used for IP multicasing
	* then this should correspond to the address type of the multicast groups
	* that this channel will join.
	*
	* <p> The new channel is created by invoking the {@link
	* java.nio.channels.spi.SelectorProvider#openDatagramChannel(ProtocolFamily)
	* openDatagramChannel} method of the system-wide default {@link
	* java.nio.channels.spi.SelectorProvider} object.  The channel will not be
	* connected.
	*
	* @param   family
	*          The protocol family
	*
	* @return  A new datagram channel
	*
	* @throws  UnsupportedOperationException
	*          If the specified protocol family is not supported. For example,
	*          suppose the parameter is specified as {@link
	*          java.net.StandardProtocolFamily#INET6 StandardProtocolFamily.INET6}
	*          but IPv6 is not enabled on the platform.
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @since   1.7
	*/
	@:require(java7) @:overload @:public @:static public static function open(family : java.net.ProtocolFamily) : java.nio.channels.DatagramChannel;
	
	/**
	* Returns an operation set identifying this channel's supported
	* operations.
	*
	* <p> Datagram channels support reading and writing, so this method
	* returns <tt>(</tt>{@link SelectionKey#OP_READ} <tt>|</tt>&nbsp;{@link
	* SelectionKey#OP_WRITE}<tt>)</tt>.  </p>
	*
	* @return  The valid-operation set
	*/
	@:overload @:public @:final override public function validOps() : Int;
	
	/**
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
	@:require(java7) @:overload @:public @:abstract public function bind(local : java.net.SocketAddress) : java.nio.channels.DatagramChannel;
	
	/**
	* @throws  UnsupportedOperationException           {@inheritDoc}
	* @throws  IllegalArgumentException                {@inheritDoc}
	* @throws  ClosedChannelException                  {@inheritDoc}
	* @throws  IOException                             {@inheritDoc}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:abstract public function setOption<T>(name : java.net.SocketOption<T>, value : T) : java.nio.channels.DatagramChannel;
	
	/**
	* Retrieves a datagram socket associated with this channel.
	*
	* <p> The returned object will not declare any public methods that are not
	* declared in the {@link java.net.DatagramSocket} class.  </p>
	*
	* @return  A datagram socket associated with this channel
	*/
	@:overload @:public @:abstract public function socket() : java.net.DatagramSocket;
	
	/**
	* Tells whether or not this channel's socket is connected.
	*
	* @return  {@code true} if, and only if, this channel's socket
	*          is {@link #isOpen open} and connected
	*/
	@:overload @:public @:abstract public function isConnected() : Bool;
	
	/**
	* Connects this channel's socket.
	*
	* <p> The channel's socket is configured so that it only receives
	* datagrams from, and sends datagrams to, the given remote <i>peer</i>
	* address.  Once connected, datagrams may not be received from or sent to
	* any other address.  A datagram socket remains connected until it is
	* explicitly disconnected or until it is closed.
	*
	* <p> This method performs exactly the same security checks as the {@link
	* java.net.DatagramSocket#connect connect} method of the {@link
	* java.net.DatagramSocket} class.  That is, if a security manager has been
	* installed then this method verifies that its {@link
	* java.lang.SecurityManager#checkAccept checkAccept} and {@link
	* java.lang.SecurityManager#checkConnect checkConnect} methods permit
	* datagrams to be received from and sent to, respectively, the given
	* remote address.
	*
	* <p> This method may be invoked at any time.  It will not have any effect
	* on read or write operations that are already in progress at the moment
	* that it is invoked. If this channel's socket is not bound then this method
	* will first cause the socket to be bound to an address that is assigned
	* automatically, as if invoking the {@link #bind bind} method with a
	* parameter of {@code null}. </p>
	*
	* @param  remote
	*         The remote address to which this channel is to be connected
	*
	* @return  This datagram channel
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
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the given remote address
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function connect(remote : java.net.SocketAddress) : java.nio.channels.DatagramChannel;
	
	/**
	* Disconnects this channel's socket.
	*
	* <p> The channel's socket is configured so that it can receive datagrams
	* from, and sends datagrams to, any remote address so long as the security
	* manager, if installed, permits it.
	*
	* <p> This method may be invoked at any time.  It will not have any effect
	* on read or write operations that are already in progress at the moment
	* that it is invoked.
	*
	* <p> If this channel's socket is not connected, or if the channel is
	* closed, then invoking this method has no effect.  </p>
	*
	* @return  This datagram channel
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function disconnect() : java.nio.channels.DatagramChannel;
	
	/**
	* Returns the remote address to which this channel's socket is connected.
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
	* Receives a datagram via this channel.
	*
	* <p> If a datagram is immediately available, or if this channel is in
	* blocking mode and one eventually becomes available, then the datagram is
	* copied into the given byte buffer and its source address is returned.
	* If this channel is in non-blocking mode and a datagram is not
	* immediately available then this method immediately returns
	* <tt>null</tt>.
	*
	* <p> The datagram is transferred into the given byte buffer starting at
	* its current position, as if by a regular {@link
	* ReadableByteChannel#read(java.nio.ByteBuffer) read} operation.  If there
	* are fewer bytes remaining in the buffer than are required to hold the
	* datagram then the remainder of the datagram is silently discarded.
	*
	* <p> This method performs exactly the same security checks as the {@link
	* java.net.DatagramSocket#receive receive} method of the {@link
	* java.net.DatagramSocket} class.  That is, if the socket is not connected
	* to a specific remote address and a security manager has been installed
	* then for each datagram received this method verifies that the source's
	* address and port number are permitted by the security manager's {@link
	* java.lang.SecurityManager#checkAccept checkAccept} method.  The overhead
	* of this security check can be avoided by first connecting the socket via
	* the {@link #connect connect} method.
	*
	* <p> This method may be invoked at any time.  If another thread has
	* already initiated a read operation upon this channel, however, then an
	* invocation of this method will block until the first operation is
	* complete. If this channel's socket is not bound then this method will
	* first cause the socket to be bound to an address that is assigned
	* automatically, as if invoking the {@link #bind bind} method with a
	* parameter of {@code null}. </p>
	*
	* @param  dst
	*         The buffer into which the datagram is to be transferred
	*
	* @return  The datagram's source address,
	*          or <tt>null</tt> if this channel is in non-blocking mode
	*          and no datagram was immediately available
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
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit datagrams to be accepted
	*          from the datagram's sender
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function receive(dst : java.nio.ByteBuffer) : java.net.SocketAddress;
	
	/**
	* Sends a datagram via this channel.
	*
	* <p> If this channel is in non-blocking mode and there is sufficient room
	* in the underlying output buffer, or if this channel is in blocking mode
	* and sufficient room becomes available, then the remaining bytes in the
	* given buffer are transmitted as a single datagram to the given target
	* address.
	*
	* <p> The datagram is transferred from the byte buffer as if by a regular
	* {@link WritableByteChannel#write(java.nio.ByteBuffer) write} operation.
	*
	* <p> This method performs exactly the same security checks as the {@link
	* java.net.DatagramSocket#send send} method of the {@link
	* java.net.DatagramSocket} class.  That is, if the socket is not connected
	* to a specific remote address and a security manager has been installed
	* then for each datagram sent this method verifies that the target address
	* and port number are permitted by the security manager's {@link
	* java.lang.SecurityManager#checkConnect checkConnect} method.  The
	* overhead of this security check can be avoided by first connecting the
	* socket via the {@link #connect connect} method.
	*
	* <p> This method may be invoked at any time.  If another thread has
	* already initiated a write operation upon this channel, however, then an
	* invocation of this method will block until the first operation is
	* complete. If this channel's socket is not bound then this method will
	* first cause the socket to be bound to an address that is assigned
	* automatically, as if by invoking the {@link #bind bind} method with a
	* parameter of {@code null}. </p>
	*
	* @param  src
	*         The buffer containing the datagram to be sent
	*
	* @param  target
	*         The address to which the datagram is to be sent
	*
	* @return   The number of bytes sent, which will be either the number
	*           of bytes that were remaining in the source buffer when this
	*           method was invoked or, if this channel is non-blocking, may be
	*           zero if there was insufficient room for the datagram in the
	*           underlying output buffer
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
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit datagrams to be sent
	*          to the given address
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function send(src : java.nio.ByteBuffer, target : java.net.SocketAddress) : Int;
	
	/**
	* Reads a datagram from this channel.
	*
	* <p> This method may only be invoked if this channel's socket is
	* connected, and it only accepts datagrams from the socket's peer.  If
	* there are more bytes in the datagram than remain in the given buffer
	* then the remainder of the datagram is silently discarded.  Otherwise
	* this method behaves exactly as specified in the {@link
	* ReadableByteChannel} interface.  </p>
	*
	* @throws  NotYetConnectedException
	*          If this channel's socket is not connected
	*/
	@:overload @:public @:abstract public function read(dst : java.nio.ByteBuffer) : Int;
	
	/**
	* Reads a datagram from this channel.
	*
	* <p> This method may only be invoked if this channel's socket is
	* connected, and it only accepts datagrams from the socket's peer.  If
	* there are more bytes in the datagram than remain in the given buffers
	* then the remainder of the datagram is silently discarded.  Otherwise
	* this method behaves exactly as specified in the {@link
	* ScatteringByteChannel} interface.  </p>
	*
	* @throws  NotYetConnectedException
	*          If this channel's socket is not connected
	*/
	@:overload @:public @:abstract public function read(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	/**
	* Reads a datagram from this channel.
	*
	* <p> This method may only be invoked if this channel's socket is
	* connected, and it only accepts datagrams from the socket's peer.  If
	* there are more bytes in the datagram than remain in the given buffers
	* then the remainder of the datagram is silently discarded.  Otherwise
	* this method behaves exactly as specified in the {@link
	* ScatteringByteChannel} interface.  </p>
	*
	* @throws  NotYetConnectedException
	*          If this channel's socket is not connected
	*/
	@:overload @:public @:final public function read(dsts : java.NativeArray<java.nio.ByteBuffer>) : haxe.Int64;
	
	/**
	* Writes a datagram to this channel.
	*
	* <p> This method may only be invoked if this channel's socket is
	* connected, in which case it sends datagrams directly to the socket's
	* peer.  Otherwise it behaves exactly as specified in the {@link
	* WritableByteChannel} interface.  </p>
	*
	* @throws  NotYetConnectedException
	*          If this channel's socket is not connected
	*/
	@:overload @:public @:abstract public function write(src : java.nio.ByteBuffer) : Int;
	
	/**
	* Writes a datagram to this channel.
	*
	* <p> This method may only be invoked if this channel's socket is
	* connected, in which case it sends datagrams directly to the socket's
	* peer.  Otherwise it behaves exactly as specified in the {@link
	* GatheringByteChannel} interface.  </p>
	*
	* @return   The number of bytes sent, which will be either the number
	*           of bytes that were remaining in the source buffer when this
	*           method was invoked or, if this channel is non-blocking, may be
	*           zero if there was insufficient room for the datagram in the
	*           underlying output buffer
	*
	* @throws  NotYetConnectedException
	*          If this channel's socket is not connected
	*/
	@:overload @:public @:abstract public function write(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	/**
	* Writes a datagram to this channel.
	*
	* <p> This method may only be invoked if this channel's socket is
	* connected, in which case it sends datagrams directly to the socket's
	* peer.  Otherwise it behaves exactly as specified in the {@link
	* GatheringByteChannel} interface.  </p>
	*
	* @return   The number of bytes sent, which will be either the number
	*           of bytes that were remaining in the source buffer when this
	*           method was invoked or, if this channel is non-blocking, may be
	*           zero if there was insufficient room for the datagram in the
	*           underlying output buffer
	*
	* @throws  NotYetConnectedException
	*          If this channel's socket is not connected
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
	* Joins a multicast group to begin receiving datagrams sent to the group
	* from a given source address.
	*
	* <p> If this channel is currently a member of the group on the given
	* interface to receive datagrams from the given source address then the
	* membership key, representing that membership, is returned. Otherwise this
	* channel joins the group and the resulting new membership key is returned.
	* The resulting membership key is {@link MembershipKey#sourceAddress
	* source-specific}.
	*
	* <p> Membership is <em>cumulative</em> and this method may be invoked
	* again with the same group and interface to allow receiving datagrams sent
	* by other source addresses to the group.
	*
	* @param   group
	*          The multicast address to join
	* @param   interf
	*          The network interface on which to join the group
	* @param   source
	*          The source address
	*
	* @return  The membership key
	*
	* @throws  IllegalArgumentException
	*          If the group parameter is not a {@link
	*          InetAddress#isMulticastAddress multicast} address, the
	*          source parameter is not a unicast address, the group
	*          parameter is an address type that is not supported by this channel,
	*          or the source parameter is not the same address type as the group
	* @throws  IllegalStateException
	*          If the channel is currently a member of the group on the given
	*          interface to receive all datagrams
	* @throws  UnsupportedOperationException
	*          If the channel's socket is not an Internet Protocol socket or
	*          source filtering is not supported
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If an I/O error occurs
	* @throws  SecurityException
	*          If a security manager is set, and its
	*          {@link SecurityManager#checkMulticast(InetAddress) checkMulticast}
	*          method denies access to the multiast group
	*/
	@:overload @:public public function join(group : java.net.InetAddress, interf : java.net.NetworkInterface, source : java.net.InetAddress) : java.nio.channels.MembershipKey;
	
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
	* Closes this channel.
	*
	* <p> If the channel is a member of a multicast group then the membership
	* is {@link MembershipKey#drop dropped}. Upon return, the {@link
	* MembershipKey membership-key} will be {@link MembershipKey#isValid
	* invalid}.
	*
	* <p> This method otherwise behaves exactly as specified by the {@link
	* Channel} interface.
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Tells whether or not this channel is open.  </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is open
	*/
	@:overload @:public override public function isOpen() : Bool;
	
	/**
	* Joins a multicast group to begin receiving all datagrams sent to the group,
	* returning a membership key.
	*
	* <p> If this channel is currently a member of the group on the given
	* interface to receive all datagrams then the membership key, representing
	* that membership, is returned. Otherwise this channel joins the group and
	* the resulting new membership key is returned. The resulting membership key
	* is not {@link MembershipKey#sourceAddress source-specific}.
	*
	* <p> A multicast channel may join several multicast groups, including
	* the same group on more than one interface. An implementation may impose a
	* limit on the number of groups that may be joined at the same time.
	*
	* @param   group
	*          The multicast address to join
	* @param   interf
	*          The network interface on which to join the group
	*
	* @return  The membership key
	*
	* @throws  IllegalArgumentException
	*          If the group parameter is not a {@link InetAddress#isMulticastAddress
	*          multicast} address, or the group parameter is an address type
	*          that is not supported by this channel
	* @throws  IllegalStateException
	*          If the channel already has source-specific membership of the
	*          group on the interface
	* @throws  UnsupportedOperationException
	*          If the channel's socket is not an Internet Protocol socket
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If an I/O error occurs
	* @throws  SecurityException
	*          If a security manager is set, and its
	*          {@link SecurityManager#checkMulticast(InetAddress) checkMulticast}
	*          method denies access to the multiast group
	*/
	@:overload @:public public function join(group : java.net.InetAddress, interf : java.net.NetworkInterface) : java.nio.channels.MembershipKey;
	
	
}

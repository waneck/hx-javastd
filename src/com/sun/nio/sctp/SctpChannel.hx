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
extern class SctpChannel extends java.nio.channels.spi.AbstractSelectableChannel
{
	/**
	* Initializes a new instance of this class.
	*
	* @param  provider
	*         The selector provider for this channel
	*/
	@:overload @:protected private function new(provider : java.nio.channels.spi.SelectorProvider) : Void;
	
	/**
	* Opens an SCTP channel.
	*
	* <P> The new channel is unbound and unconnected.
	*
	* @return  A new SCTP channel
	*
	* @throws  UnsupportedOperationException
	*          If the SCTP protocol is not supported
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:static public static function open() : com.sun.nio.sctp.SctpChannel;
	
	/**
	* Opens an SCTP channel and connects it to a remote address.
	*
	* <P> This is a convenience method and is equivalent to evaluating the
	* following expression:
	* <blockquote><pre>
	* open().connect(remote, maxOutStreams, maxInStreams);
	* </pre></blockquote>
	*
	* @param  remote
	*         The remote address to which the new channel is to be connected
	*
	* @param  maxOutStreams
	*         The number of streams that the application wishes to be able
	*         to send to. Must be non negative and no larger than {@code 65536}.
	*         {@code 0} to use the endpoints default value.
	*
	* @param  maxInStreams
	*         The maximum number of inbound streams the application is prepared
	*         to support. Must be non negative and no larger than {@code 65536}.
	*         {@code 0} to use the endpoints default value.
	*
	* @return  A new SCTP channel connected to the given address
	*
	* @throws  java.nio.channels.AsynchronousCloseException
	*          If another thread closes this channel
	*          while the connect operation is in progress
	*
	* @throws  java.nio.channels.ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the connect operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  java.nio.channels.UnresolvedAddressException
	*          If the given remote address is not fully resolved
	*
	* @throws  java.nio.channels.UnsupportedAddressTypeException
	*          If the type of the given remote address is not supported
	*
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the given remote peer
	*
	* @throws  UnsupportedOperationException
	*          If the SCTP protocol is not supported
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:static public static function open(remote : java.net.SocketAddress, maxOutStreams : Int, maxInStreams : Int) : com.sun.nio.sctp.SctpChannel;
	
	/**
	* Returns the association on this channel's socket.
	*
	* @return  the association, or {@code null} if the channel's socket is not
	*          connected.
	*
	* @throws  ClosedChannelException
	*          If the channel is closed
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function association() : com.sun.nio.sctp.Association;
	
	/**
	* Binds the channel's socket to a local address.
	*
	* <P> This method is used to establish a relationship between the socket
	* and the local addresses. Once a relationship is established then
	* the socket remains bound until the channel is closed. This relationship
	* may not necesssarily be with the address {@code local} as it may be removed
	* by {@link #unbindAddress unbindAddress}, but there will always be at least
	* one local address bound to the channel's socket once an invocation of
	* this method successfully completes.
	*
	* <P> Once the channel's socket has been successfully bound to a specific
	* address, that is not automatically assigned, more addresses
	* may be bound to it using {@link #bindAddress bindAddress}, or removed
	* using {@link #unbindAddress unbindAddress}.
	*
	* @param  local
	*         The local address to bind the socket, or {@code null} to
	*         bind the socket to an automatically assigned socket address
	*
	* @return  This channel
	*
	* @throws  java.nio.channels.AlreadyConnectedException
	*          If this channel is already connected
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.ConnectionPendingException
	*          If a non-blocking connection operation is already in progress on this channel
	*
	* @throws  java.nio.channels.AlreadyBoundException
	*          If this channel is already bound
	*
	* @throws  java.nio.channels.UnsupportedAddressTypeException
	*          If the type of the given address is not supported
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function bind(local : java.net.SocketAddress) : com.sun.nio.sctp.SctpChannel;
	
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
	* <P> Adding addresses to a connected association is optional functionality.
	* If the endpoint supports dynamic address reconfiguration then it may
	* send the appropriate message to the peer to change the peers address
	* lists.
	*
	* @param  address
	*         The address to add to the bound addresses for the socket
	*
	* @return  This channel
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.ConnectionPendingException
	*          If a non-blocking connection operation is already in progress on
	*          this channel
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
	@:overload @:public @:abstract public function bindAddress(address : java.net.InetAddress) : com.sun.nio.sctp.SctpChannel;
	
	/**
	* Removes the given address from the bound addresses for the channel's
	* socket.
	*
	* <P> The given address must not be the {@link
	* java.net.InetAddress#isAnyLocalAddress wildcard} address.
	* The channel must be first bound using {@link #bind bind} before
	* invoking this method, otherwise {@link java.nio.channels.NotYetBoundException}
	* is thrown. If this method is invoked on a channel that does not have
	* {@code address} as one of its bound addresses or that has only one
	* local address bound to it, then this method throws
	* {@link IllegalUnbindException}.
	* The initial address that the channel's socket is bound to using {@link
	* #bind bind} may be removed from the bound addresses for the channel's socket.
	*
	* <P> Removing addresses from a connected association is optional
	* functionality. If the endpoint supports dynamic address reconfiguration
	* then it may send the appropriate message to the peer to change the peers
	* address lists.
	*
	* @param  address
	*         The address to remove from the bound addresses for the socket
	*
	* @return  This channel
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.ConnectionPendingException
	*          If a non-blocking connection operation is already in progress on
	*          this channel
	*
	* @throws  java.nio.channels.NotYetBoundException
	*          If this channel is not yet bound
	*
	* @throws  IllegalArgumentException
	*          If address is {@code null} or the {@link
	*          java.net.InetAddress#isAnyLocalAddress wildcard} address
	*
	* @throws  IllegalUnbindException
	*          If {@code address} is not bound to the channel's socket. or
	*          the channel has only one address bound to it
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function unbindAddress(address : java.net.InetAddress) : com.sun.nio.sctp.SctpChannel;
	
	/**
	* Connects this channel's socket.
	*
	* <P> If this channel is in non-blocking mode then an invocation of this
	* method initiates a non-blocking connection operation.  If the connection
	* is established immediately, as can happen with a local connection, then
	* this method returns {@code true}.  Otherwise this method returns
	* {@code false} and the connection operation must later be completed by
	* invoking the {@link #finishConnect finishConnect} method.
	*
	* <P> If this channel is in blocking mode then an invocation of this
	* method will block until the connection is established or an I/O error
	* occurs.
	*
	* <P> If a security manager has been installed then this method verifies
	* that its {@link java.lang.SecurityManager#checkConnect checkConnect}
	* method permits connecting to the address and port number of the given
	* remote peer.
	*
	* <p> This method may be invoked at any time. If a {@link #send send} or
	* {@link #receive receive} operation upon this channel is invoked while an
	* invocation of this method is in progress then that operation will first
	* block until this invocation is complete.  If a connection attempt is
	* initiated but fails, that is, if an invocation of this method throws a
	* checked exception, then the channel will be closed.
	*
	* @param  remote
	*         The remote peer to which this channel is to be connected
	*
	* @return  {@code true} if a connection was established, {@code false} if
	*          this channel is in non-blocking mode and the connection
	*          operation is in progress
	*
	* @throws  java.nio.channels.AlreadyConnectedException
	*          If this channel is already connected
	*
	* @throws  java.nio.channels.ConnectionPendingException
	*          If a non-blocking connection operation is already in progress on
	*          this channel
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.AsynchronousCloseException
	*          If another thread closes this channel
	*          while the connect operation is in progress
	*
	* @throws  java.nio.channels.ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the connect operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  java.nio.channels.UnresolvedAddressException
	*          If the given remote address is not fully resolved
	*
	* @throws  java.nio.channels.UnsupportedAddressTypeException
	*          If the type of the given remote address is not supported
	*
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the given remote peer
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function connect(remote : java.net.SocketAddress) : Bool;
	
	/**
	* Connects this channel's socket.
	*
	* <P> This is a convience method and is equivalent to evaluating the
	* following expression:
	* <blockquote><pre>
	* setOption(SctpStandardSocketOptions.SCTP_INIT_MAXSTREAMS, SctpStandardSocketOption.InitMaxStreams.create(maxInStreams, maxOutStreams))
	*  .connect(remote);
	* </pre></blockquote>
	*
	* <P> The {@code maxOutStreams} and {@code maxInStreams} parameters
	* represent the maximum number of streams that the application wishes to be
	* able to send to and receive from. They are negotiated with the remote
	* peer and may be limited by the operating system.
	*
	* @param  remote
	*         The remote peer to which this channel is to be connected
	*
	* @param  maxOutStreams
	*         Must be non negative and no larger than {@code 65536}.
	*         {@code 0} to use the endpoints default value.
	*
	* @param  maxInStreams
	*         Must be non negative and no larger than {@code 65536}.
	*         {@code 0} to use the endpoints default value.
	*
	* @return  {@code true} if a connection was established, {@code false} if
	*          this channel is in non-blocking mode and the connection operation
	*          is in progress
	*
	* @throws  java.nio.channels.AlreadyConnectedException
	*          If this channel is already connected
	*
	* @throws  java.nio.channels.ConnectionPendingException
	*          If a non-blocking connection operation is already in progress on
	*          this channel
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.AsynchronousCloseException
	*          If another thread closes this channel
	*          while the connect operation is in progress
	*
	* @throws  java.nio.channels.ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the connect operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  java.nio.channels.UnresolvedAddressException
	*          If the given remote address is not fully resolved
	*
	* @throws  java.nio.channels.UnsupportedAddressTypeException
	*          If the type of the given remote address is not supported
	*
	* @throws  SecurityException
	*          If a security manager has been installed
	*          and it does not permit access to the given remote peer
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function connect(remote : java.net.SocketAddress, maxOutStreams : Int, maxInStreams : Int) : Bool;
	
	/**
	* Tells whether or not a connection operation is in progress on this channel.
	*
	* @return  {@code true} if, and only if, a connection operation has been initiated
	*          on this channel but not yet completed by invoking the
	*          {@link #finishConnect} method
	*/
	@:overload @:public @:abstract public function isConnectionPending() : Bool;
	
	/**
	* Finishes the process of connecting an SCTP channel.
	*
	* <P> A non-blocking connection operation is initiated by placing a socket
	* channel in non-blocking mode and then invoking one of its {@link #connect
	* connect} methods.  Once the connection is established, or the attempt has
	* failed, the channel will become connectable and this method may
	* be invoked to complete the connection sequence.  If the connection
	* operation failed then invoking this method will cause an appropriate
	* {@link java.io.IOException} to be thrown.
	*
	* <P> If this channel is already connected then this method will not block
	* and will immediately return <tt>true</tt>.  If this channel is in
	* non-blocking mode then this method will return <tt>false</tt> if the
	* connection process is not yet complete.  If this channel is in blocking
	* mode then this method will block until the connection either completes
	* or fails, and will always either return <tt>true</tt> or throw a checked
	* exception describing the failure.
	*
	* <P> This method may be invoked at any time. If a {@link #send send} or {@link #receive receive}
	* operation upon this channel is invoked while an invocation of this
	* method is in progress then that operation will first block until this
	* invocation is complete.  If a connection attempt fails, that is, if an
	* invocation of this method throws a checked exception, then the channel
	* will be closed.
	*
	* @return  {@code true} if, and only if, this channel's socket is now
	*          connected
	*
	* @throws  java.nio.channels.NoConnectionPendingException
	*          If this channel is not connected and a connection operation
	*          has not been initiated
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.AsynchronousCloseException
	*          If another thread closes this channel
	*          while the connect operation is in progress
	*
	* @throws  java.nio.channels.ClosedByInterruptException
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
	* Returns all of the socket addresses to which this channel's socket is
	* bound.
	*
	* @return  All the socket addresses that this channel's socket is
	*          bound to, or an empty {@code Set} if the channel's socket is not
	*          bound
	*
	* @throws  ClosedChannelException
	*          If the channel is closed
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:abstract public function getAllLocalAddresses() : java.util.Set<java.net.SocketAddress>;
	
	/**
	* Returns all of the remote addresses to which this channel's socket
	* is connected.
	*
	* <P> If the channel is connected to a remote peer that is bound to
	* multiple addresses then it is these addresses that the channel's socket
	* is connected.
	*
	* @return  All of the remote addresses to which this channel's socket
	*          is connected, or an empty {@code Set} if the channel's socket is
	*          not connected
	*
	* @throws  ClosedChannelException
	*          If the channel is closed
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:public @:abstract public function getRemoteAddresses() : java.util.Set<java.net.SocketAddress>;
	
	/**
	* Shutdown a connection without closing the channel.
	*
	* <P> Sends a shutdown command to the remote peer, effectively preventing
	* any new data from being written to the socket by either peer. Further
	* sends will throw {@link java.nio.channels.ClosedChannelException}. The
	* channel remains open to allow the for any data (and notifications) to be
	* received that may have been sent by the peer before it received the
	* shutdown command. If the channel is already shutdown then invoking this
	* method has no effect.
	*
	* @return  This channel
	*
	* @throws  java.nio.channels.NotYetConnectedException
	*          If this channel is not yet connected
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function shutdown() : com.sun.nio.sctp.SctpChannel;
	
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
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see SctpStandardSocketOptions
	*/
	@:overload @:public @:abstract public function getOption<T>(name : com.sun.nio.sctp.SctpSocketOption<T>) : T;
	
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
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see SctpStandardSocketOptions
	*/
	@:overload @:public @:abstract public function setOption<T>(name : com.sun.nio.sctp.SctpSocketOption<T>, value : T) : com.sun.nio.sctp.SctpChannel;
	
	/**
	* Returns a set of the socket options supported by this channel.
	*
	* <P> This method will continue to return the set of options even after the
	* channel has been closed.
	*
	* @return  A set of the socket options supported by this channel
	*/
	@:overload @:public @:abstract public function supportedOptions() : java.util.Set<com.sun.nio.sctp.SctpSocketOption<Dynamic>>;
	
	/**
	* Returns an operation set identifying this channel's supported operations.
	*
	* <P> SCTP channels support connecting, reading, and writing, so this
	* method returns <tt>(</tt>{@link SelectionKey#OP_CONNECT}
	* <tt>|</tt>&nbsp;{@link SelectionKey#OP_READ} <tt>|</tt>&nbsp;{@link
	* SelectionKey#OP_WRITE}<tt>)</tt>.  </p>
	*
	* @return  The valid-operation set
	*/
	@:overload @:public @:final override public function validOps() : Int;
	
	/**
	* Receives a message into the given buffer and/or handles a notification.
	*
	* <P> If a message or notification is immediately available, or if this
	* channel is in blocking mode and one eventually becomes available, then
	* the message or notification is returned or handled, respectively. If this
	* channel is in non-blocking mode and a message or notification is not
	* immediately available then this method immediately returns {@code null}.
	*
	* <P> If this method receives a message it is copied into the given byte
	* buffer. The message is transferred into the given byte buffer starting at
	* its current position and the buffers position is incremented by the
	* number of bytes read. If there are fewer bytes remaining in the buffer
	* than are required to hold the message, or the underlying input buffer
	* does not contain the complete message, then an invocation of {@link
	* MessageInfo#isComplete isComplete} on the returned {@code
	* MessageInfo} will return {@code false}, and more invocations of this
	* method will be necessary to completely consume the messgae. Only
	* one message at a time will be partially delivered in any stream. The
	* socket option {@link SctpStandardSocketOptions#SCTP_FRAGMENT_INTERLEAVE
	* SCTP_FRAGMENT_INTERLEAVE} controls various aspects of what interlacing of
	* messages occurs.
	*
	* <P> If this method receives a notification then the appropriate method of
	* the given handler, if there is one, is invoked. If the handler returns
	* {@link HandlerResult#CONTINUE CONTINUE} then this method will try to
	* receive another message/notification, otherwise, if {@link
	* HandlerResult#RETURN RETURN} is returned this method will return {@code
	* null}. If an uncaught exception is thrown by the handler it will be
	* propagated up the stack through this method.
	*
	* <P> This method may be invoked at any time. If another thread has
	* already initiated a receive operation upon this channel, then an
	* invocation of this method will block until the first operation is
	* complete. The given handler is invoked without holding any locks used
	* to enforce the above synchronization policy, that way handlers
	* will not stall other threads from receiving. A handler should not invoke
	* the {@code receive} method of this channel, if it does an
	* {@link IllegalReceiveException} will be thrown.
	*
	* @param  dst
	*         The buffer into which message bytes are to be transferred
	*
	* @param  attachment
	*         The object to attach to the receive operation; can be
	*         {@code null}
	*
	* @param  handler
	*         A handler to handle notifications from the SCTP stack, or {@code
	*         null} to ignore any notifications.
	*
	* @return  The {@code MessageInfo}, {@code null} if this channel is in
	*          non-blocking mode and no messages are immediately available or
	*          the notification handler returns {@link HandlerResult#RETURN
	*          RETURN} after handling a notification
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.AsynchronousCloseException
	*          If another thread closes this channel
	*          while the read operation is in progress
	*
	* @throws  java.nio.channels.ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the read operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  java.nio.channels.NotYetConnectedException
	*          If this channel is not yet connected
	*
	* @throws  IllegalReceiveException
	*          If the given handler invokes the {@code receive} method of this
	*          channel
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function receive<T>(dst : java.nio.ByteBuffer, attachment : T, handler : com.sun.nio.sctp.NotificationHandler<T>) : com.sun.nio.sctp.MessageInfo;
	
	/**
	* Sends a message via this channel.
	*
	* <P> If this channel is in non-blocking mode and there is sufficient room
	* in the underlying output buffer, or if this channel is in blocking mode
	* and sufficient room becomes available, then the remaining bytes in the
	* given byte buffer are transmitted as a single message. Sending a message
	* is atomic unless explicit message completion {@link
	* SctpStandardSocketOptions#SCTP_EXPLICIT_COMPLETE SCTP_EXPLICIT_COMPLETE}
	* socket option is enabled on this channel's socket.
	*
	* <P> The message is transferred from the byte buffer as if by a regular
	* {@link java.nio.channels.WritableByteChannel#write(java.nio.ByteBuffer)
	* write} operation.
	*
	* <P> The bytes will be written to the stream number that is specified by
	* {@link MessageInfo#streamNumber streamNumber} in the given {@code
	* messageInfo}.
	*
	* <P> This method may be invoked at any time. If another thread has already
	* initiated a send operation upon this channel, then an invocation of
	* this method will block until the first operation is complete.
	*
	* @param  src
	*         The buffer containing the message to be sent
	*
	* @param  messageInfo
	*         Ancillary data about the message to be sent
	*
	* @return  The number of bytes sent, which will be either the number of
	*          bytes that were remaining in the messages buffer when this method
	*          was invoked or, if this channel is non-blocking, may be zero if
	*          there was insufficient room for the message in the underlying
	*          output buffer
	*
	* @throws  InvalidStreamExcepton
	*          If {@code streamNumner} is negative or greater than or equal to
	*          the maximum number of outgoing streams
	*
	* @throws  java.nio.channels.ClosedChannelException
	*          If this channel is closed
	*
	* @throws  java.nio.channels.AsynchronousCloseException
	*          If another thread closes this channel
	*          while the read operation is in progress
	*
	* @throws  java.nio.channels.ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the read operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  java.nio.channels.NotYetConnectedException
	*          If this channel is not yet connected
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function send(src : java.nio.ByteBuffer, messageInfo : com.sun.nio.sctp.MessageInfo) : Int;
	
	
}

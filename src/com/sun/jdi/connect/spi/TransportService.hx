package com.sun.jdi.connect.spi;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class TransportService
{
	/**
	* Returns a name to identify the transport service.
	*
	* @return  The name of the transport service
	*/
	@:overload @:public @:abstract public function name() : String;
	
	/**
	* Returns a description of the transport service.
	*
	* @return  The description of the transport service
	*/
	@:overload @:public @:abstract public function description() : String;
	
	/**
	* Returns the capabilities of the transport service.
	*
	* @return  the transport service capabilities
	*/
	@:overload @:public @:abstract public function capabilities() : com.sun.jdi.connect.spi.TransportService.TransportService_Capabilities;
	
	/**
	* Attaches to the specified address.
	*
	* <p> Attaches to the specified address and returns a connection
	* representing the bi-directional communication channel to the
	* target VM.
	*
	* <p> Attaching to the target VM involves two steps:
	* First, a connection is established to specified address. This
	* is followed by a handshake to ensure that the connection is
	* to a target VM. The handshake involves the exchange
	* of a string <i>JDWP-Handshake</i> as specified in the <a
	* href="../../../../../../../../../technotes/guides/jpda/jdwp-spec.html">
	* Java Debug Wire Protocol</a> specification.
	*
	* @param   address
	*          The address of the target VM.
	*
	* @param   attachTimeout
	*          If this transport service supports an attach timeout,
	*          and if <tt>attachTimeout</tt> is positive, then it specifies
	*          the timeout, in milliseconds (more or less), to use
	*          when attaching to the target VM.  If the transport service
	*          does not support an attach timeout, or if <tt>attachTimeout</tt>
	*          is specified as zero then attach without any timeout.
	*
	* @param   handshakeTimeout
	*          If this transport service supports a handshake timeout,
	*          and if <tt>handshakeTimeout</tt> is positive, then it
	*          specifies the timeout, in milliseconds (more or less), to
	*          use when handshaking with the target VM. The exact
	*          usage of the timeout are specific to the transport service.
	*          A transport service may, for example, use the handshake
	*          timeout as the inter-character timeout while waiting for
	*          the <i>JDWP-Handshake</i> message from the target VM.
	*          Alternatively, a transport service may, for example,
	*          use the handshakeTimeout as a timeout for the duration of the
	*          handshake exchange.
	*          If the transport service does not support a handshake
	*          timeout, or if <tt>handshakeTimeout</tt> is specified
	*          as zero then the handshake does not timeout if there
	*          isn't a response from the target VM.
	*
	* @return  The Connection representing the bi-directional
	*          communication channel to the target VM.
	*
	* @throws  TransportTimeoutException
	*          If a timeout occurs while establishing the connection.
	*
	* @throws  IOException
	*          If an I/O error occurs (including a timeout when
	*          handshaking).
	*
	* @throws  IllegalArgumentException
	*          If the address is invalid or the value of the
	*          attach timeout or handshake timeout is negative.
	*
	* @see TransportService.Capabilities#supportsAttachTimeout()
	*/
	@:overload @:public @:abstract public function attach(address : String, attachTimeout : haxe.Int64, handshakeTimeout : haxe.Int64) : com.sun.jdi.connect.spi.Connection;
	
	/**
	* Listens on the specified address for inbound connections.
	*
	* <p> This method starts the transport service listening on
	* the specified address so that it can subsequently accept
	* an inbound connection. It does not wait until an inbound
	* connection is established.
	*
	* @param   address
	*          The address to start listening for connections,
	*          or <tt>null</tt> to listen on an address choosen
	*          by the transport service.
	*
	* @return  a listen key to be used in subsequent calls to be
	*          {@link #accept accept} or {@link #stopListening
	*          stopListening} methods.
	*
	* @throws  IOException
	*          If an I/O error occurs.
	*
	* @throws  IllegalArgumentException
	*          If the specific address is invalid
	*/
	@:overload @:public @:abstract public function startListening(address : String) : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey;
	
	/**
	* Listens on an address choosen by the transport service.
	*
	* <p> This convenience method works as if by invoking {@link
	* #startListening(String) startListening(<tt>null</tt>)}. </p>
	*
	* @return  a listen key to be used in subsequent calls to be
	*          {@link #accept accept} or {@link #stopListening
	*          stopListening} methods.
	*
	* @throws  IOException
	*          If an I/O error occurs.
	*/
	@:overload @:public @:abstract public function startListening() : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey;
	
	/**
	* Stop listening for inbound connections.
	*
	* <p> Invoking this method while another thread is blocked
	* in {@link #accept accept}, with the same listen key,
	* waiting to accept a connection will cause that thread to
	* throw an IOException. If the thread blocked in accept
	* has already accepted a connection from a target VM and
	* is in the process of handshaking with the target VM then
	* invoking this method will not cause the thread to throw
	* an exception.
	*
	* @param   listenKey
	*          The listen key obtained from a previous call to {@link
	*          #startListening(String)} or {@link #startListening()}.
	*
	* @throws  IllegalArgumentException
	*          If the listen key is invalid
	*
	* @throws  IOException
	*          If an I/O error occurs.
	*/
	@:overload @:public @:abstract public function stopListening(listenKey : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey) : Void;
	
	/**
	* Accept a connection from a target VM.
	*
	* <p> Waits (indefinitely or with timeout) to accept a connection
	* from a target VM. Returns a connection representing the
	* bi-directional communication channel to the target VM.
	*
	* <p> Accepting a connection from a target VM involves two
	* steps. First, the transport service waits to accept
	* the connection from the target VM. Once the connection is
	* established a handshake is performed to ensure that the
	* connection is indeed to a target VM. The handshake involves
	* the exchange of a string <i>JDWP-Handshake</i> as specified
	* in the <a
	* href="../../../../../../../../../technotes/guides/jpda/jdwp-spec.html">
	* Java Debug Wire Protocol</a> specification.
	*
	* @param   listenKey
	*          A listen key obtained from a previous call to {@link
	*          #startListening(String)} or {@link #startListening()}.
	*
	* @param   acceptTimeout
	*          if this transport service supports an accept timeout, and
	*          if <tt>acceptTimeout</tt> is positive then block for up to
	*          <tt>acceptTimeout</tt> milliseconds, more or less, while waiting
	*          for the target VM to connect.
	*          If the transport service does not support an accept timeout
	*          or if <tt>acceptTimeout</tt> is zero then block indefinitely
	*          for a target VM to connect.
	*
	* @param   handshakeTimeout
	*          If this transport service supports a handshake timeout,
	*          and if <tt>handshakeTimeout</tt> is positive, then it
	*          specifies the timeout, in milliseconds (more or less), to
	*          use when handshaking with the target VM. The exact
	*          usage of the timeout is specific to the transport service.
	*          A transport service may, for example, use the handshake
	*          timeout as the inter-character timeout while waiting for
	*          the <i>JDWP-Handshake</i> message from the target VM.
	*          Alternatively, a transport service may, for example,
	*          use the timeout as a timeout for the duration of the
	*          handshake exchange.
	*          If the transport service does not support a handshake
	*          timeout, of if <tt>handshakeTimeout</tt> is specified
	*          as zero then the handshake does not timeout if there
	*          isn't a response from the target VM.
	*
	* @return  The Connection representing the bi-directional
	*          communication channel to the target VM.
	*
	* @throws  TransportTimeoutException
	*          If a timeout occurs while waiting for a target VM
	*          to connect.
	*
	* @throws  IOException
	*          If an I/O error occurs (including a timeout when
	*          handshaking).
	*
	* @throws  IllegalArgumentException
	*          If the value of the acceptTimeout argument, or
	*          handshakeTimeout is negative, or an invalid listen key
	*          is provided.
	*
	* @throws  IllegalStateException
	*          If {@link #stopListening stopListening} has already been
	*          called with this listen key and the transport service
	*          is no longer listening for inbound connections.
	*
	* @see TransportService.Capabilities#supportsAcceptTimeout()
	*/
	@:overload @:public @:abstract public function accept(listenKey : com.sun.jdi.connect.spi.TransportService.TransportService_ListenKey, acceptTimeout : haxe.Int64, handshakeTimeout : haxe.Int64) : com.sun.jdi.connect.spi.Connection;
	
	
}
/**
* The transport service capabilities.
*/
@:native('com$sun$jdi$connect$spi$TransportService$Capabilities') extern class TransportService_Capabilities
{
	/**
	* Tells whether or not this transport service can support
	* multiple concurrent connections to a single address that
	* it is listening on.
	*
	* @return  <tt>true</tt> if, and only if, this transport
	*          service supports multiple connections.
	*/
	@:overload @:public @:abstract public function supportsMultipleConnections() : Bool;
	
	/**
	* Tell whether or not this transport service supports a timeout
	* when attaching to a target VM.
	*
	* @return      <tt>true</tt> if, and only if, this transport
	*              service supports attaching with a timeout.
	*
	* @see #attach(String,long,long)
	*/
	@:overload @:public @:abstract public function supportsAttachTimeout() : Bool;
	
	/**
	* Tell whether or not this transport service supports a
	* timeout while waiting for a target VM to connect.
	*
	* @return  <tt>true</tt> if, and only if, this transport
	*          service supports timeout while waiting for
	*          a target VM to connect.
	*
	* @see #accept(TransportService.ListenKey,long,long)
	*/
	@:overload @:public @:abstract public function supportsAcceptTimeout() : Bool;
	
	/**
	* Tells whether or not this transport service supports a
	* timeout when handshaking with the target VM.
	*
	* @return  <tt>true</tt> if, and only if, this transport
	*          service supports a timeout while handshaking
	*          with the target VM.
	*
	* @see #attach(String,long,long)
	* @see #accept(TransportService.ListenKey,long,long)
	*/
	@:overload @:public @:abstract public function supportsHandshakeTimeout() : Bool;
	
	
}
/**
* A <i>listen key</i>.
*
* <p> A <tt>TransportService</tt> may listen on multiple, yet
* different, addresses at the same time. To uniquely identify
* each <tt>listener</tt> a listen key is created each time that
* {@link #startListening startListening} is called. The listen
* key is used in calls to the {@link #accept accept} method
* to accept inbound connections to that listener. A listen
* key is valid until it is used as an argument to {@link
* #stopListening stopListening} to stop the transport
* service from listening on an address.
*/
@:native('com$sun$jdi$connect$spi$TransportService$ListenKey') extern class TransportService_ListenKey
{
	/**
	* Returns a string representation of the listen key.
	*/
	@:overload @:public @:abstract public function address() : String;
	
	
}

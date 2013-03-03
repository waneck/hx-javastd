package sun.security.ssl;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* Abstract base class for SSLSocketImpl. Its purpose is to house code with
* no SSL related logic (or no logic at all). This makes SSLSocketImpl shorter
* and easier to read. It contains a few constants and static methods plus
* overridden java.net.Socket methods.
*
* Methods are defined final to ensure that they are not accidentally
* overridden in SSLSocketImpl.
*
* @see javax.net.ssl.SSLSocket
* @see SSLSocketImpl
*
*/
@:internal extern class BaseSSLSocketImpl extends javax.net.ssl.SSLSocket
{
	/**
	* Returns the unique {@link java.nio.SocketChannel SocketChannel} object
	* associated with this socket, if any.
	* @see java.net.Socket#getChannel
	*/
	@:overload @:public @:final override public function getChannel() : java.nio.channels.SocketChannel;
	
	/**
	* Binds the address to the socket.
	* @see java.net.Socket#bind
	*/
	@:overload @:public override public function bind(bindpoint : java.net.SocketAddress) : Void;
	
	/**
	* Returns the address of the endpoint this socket is connected to
	* @see java.net.Socket#getLocalSocketAddress
	*/
	@:overload @:public override public function getLocalSocketAddress() : java.net.SocketAddress;
	
	/**
	* Returns the address of the endpoint this socket is connected to
	* @see java.net.Socket#getRemoteSocketAddress
	*/
	@:overload @:public override public function getRemoteSocketAddress() : java.net.SocketAddress;
	
	/**
	* Connects this socket to the server.
	*
	* This method is either called on an unconnected SSLSocketImpl by the
	* application, or it is called in the constructor of a regular
	* SSLSocketImpl. If we are layering on top on another socket, then
	* this method should not be called, because we assume that the
	* underlying socket is already connected by the time it is passed to
	* us.
	*
	* @param   endpoint the <code>SocketAddress</code>
	* @throws  IOException if an error occurs during the connection
	*/
	@:overload @:public @:final override public function connect(endpoint : java.net.SocketAddress) : Void;
	
	/**
	* Returns the connection state of the socket.
	* @see java.net.Socket#isConnected
	*/
	@:overload @:public @:final override public function isConnected() : Bool;
	
	/**
	* Returns the binding state of the socket.
	* @see java.net.Socket#isBound
	*/
	@:overload @:public @:final override public function isBound() : Bool;
	
	/**
	* The semantics of shutdownInput is not supported in TLS 1.0
	* spec. Thus when the method is called on an SSL socket, an
	* UnsupportedOperationException will be thrown.
	*
	* @throws UnsupportedOperationException
	*/
	@:overload @:public @:final override public function shutdownInput() : Void;
	
	/**
	* The semantics of shutdownOutput is not supported in TLS 1.0
	* spec. Thus when the method is called on an SSL socket, an
	* UnsupportedOperationException will be thrown.
	*
	* @throws UnsupportedOperationException
	*/
	@:overload @:public @:final override public function shutdownOutput() : Void;
	
	/**
	* Returns the input state of the socket
	* @see java.net.Socket#isInputShutdown
	*/
	@:overload @:public @:final override public function isInputShutdown() : Bool;
	
	/**
	* Returns the output state of the socket
	* @see java.net.Socket#isOutputShutdown
	*/
	@:overload @:public @:final override public function isOutputShutdown() : Bool;
	
	/**
	* Ensures that the SSL connection is closed down as cleanly
	* as possible, in case the application forgets to do so.
	* This allows SSL connections to be implicitly reclaimed,
	* rather than forcing them to be explicitly reclaimed at
	* the penalty of prematurly killing SSL sessions.
	*/
	@:overload @:protected @:final private function finalize() : Void;
	
	/**
	* Returns the address of the remote peer for this connection.
	*/
	@:overload @:public @:final override public function getInetAddress() : java.net.InetAddress;
	
	/**
	* Gets the local address to which the socket is bound.
	*
	* @return the local address to which the socket is bound.
	* @since   JDK1.1
	*/
	@:require(java1) @:overload @:public @:final override public function getLocalAddress() : java.net.InetAddress;
	
	/**
	* Returns the number of the remote port that this connection uses.
	*/
	@:overload @:public @:final override public function getPort() : Int;
	
	/**
	* Returns the number of the local port that this connection uses.
	*/
	@:overload @:public @:final override public function getLocalPort() : Int;
	
	/**
	* Enables or disables the Nagle optimization.
	* @see java.net.Socket#setTcpNoDelay
	*/
	@:overload @:public @:final override public function setTcpNoDelay(value : Bool) : Void;
	
	/**
	* Returns true if the Nagle optimization is disabled.  This
	* relates to low-level buffering of TCP traffic, delaying the
	* traffic to promote better throughput.
	*
	* @see java.net.Socket#getTcpNoDelay
	*/
	@:overload @:public @:final override public function getTcpNoDelay() : Bool;
	
	/**
	* Assigns the socket's linger timeout.
	* @see java.net.Socket#setSoLinger
	*/
	@:overload @:public @:final override public function setSoLinger(flag : Bool, linger : Int) : Void;
	
	/**
	* Returns the socket's linger timeout.
	* @see java.net.Socket#getSoLinger
	*/
	@:overload @:public @:final override public function getSoLinger() : Int;
	
	/**
	* Send one byte of urgent data on the socket.
	* @see java.net.Socket#sendUrgentData
	* At this point, there seems to be no specific requirement to support
	* this for an SSLSocket. An implementation can be provided if a need
	* arises in future.
	*/
	@:overload @:public @:final override public function sendUrgentData(data : Int) : Void;
	
	/**
	* Enable/disable OOBINLINE (receipt of TCP urgent data) By default, this
	* option is disabled and TCP urgent data received on a socket is silently
	* discarded.
	* @see java.net.Socket#setOOBInline
	* Setting OOBInline does not have any effect on SSLSocket,
	* since currently we don't support sending urgent data.
	*/
	@:overload @:public @:final override public function setOOBInline(on : Bool) : Void;
	
	/**
	* Tests if OOBINLINE is enabled.
	* @see java.net.Socket#getOOBInline
	*/
	@:overload @:public @:final override public function getOOBInline() : Bool;
	
	/**
	* Returns the socket timeout.
	* @see java.net.Socket#getSoTimeout
	*/
	@:overload @:public @:final override public function getSoTimeout() : Int;
	
	@:overload @:public @:final override public function setSendBufferSize(size : Int) : Void;
	
	@:overload @:public @:final override public function getSendBufferSize() : Int;
	
	@:overload @:public @:final override public function setReceiveBufferSize(size : Int) : Void;
	
	@:overload @:public @:final override public function getReceiveBufferSize() : Int;
	
	/**
	* Enable/disable SO_KEEPALIVE.
	* @see java.net.Socket#setKeepAlive
	*/
	@:overload @:public @:final override public function setKeepAlive(on : Bool) : Void;
	
	/**
	* Tests if SO_KEEPALIVE is enabled.
	* @see java.net.Socket#getKeepAlive
	*/
	@:overload @:public @:final override public function getKeepAlive() : Bool;
	
	/**
	* Sets traffic class or type-of-service octet in the IP header for
	* packets sent from this Socket.
	* @see java.net.Socket#setTrafficClass
	*/
	@:overload @:public @:final override public function setTrafficClass(tc : Int) : Void;
	
	/**
	* Gets traffic class or type-of-service in the IP header for packets
	* sent from this Socket.
	* @see java.net.Socket#getTrafficClass
	*/
	@:overload @:public @:final override public function getTrafficClass() : Int;
	
	/**
	* Enable/disable SO_REUSEADDR.
	* @see java.net.Socket#setReuseAddress
	*/
	@:overload @:public @:final override public function setReuseAddress(on : Bool) : Void;
	
	/**
	* Tests if SO_REUSEADDR is enabled.
	* @see java.net.Socket#getReuseAddress
	*/
	@:overload @:public @:final override public function getReuseAddress() : Bool;
	
	/**
	* Sets performance preferences for this socket.
	*
	* @see java.net.Socket#setPerformancePreferences(int, int, int)
	*/
	@:overload @:public override public function setPerformancePreferences(connectionTime : Int, latency : Int, bandwidth : Int) : Void;
	
	
}

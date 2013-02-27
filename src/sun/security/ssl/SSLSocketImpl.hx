package sun.security.ssl;
/*
* Copyright (c) 1996, 2013, Oracle and/or its affiliates. All rights reserved.
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
extern class SSLSocketImpl extends sun.security.ssl.BaseSSLSocketImpl
{
	/**
	* Connects this socket to the server with a specified timeout
	* value.
	*
	* This method is either called on an unconnected SSLSocketImpl by the
	* application, or it is called in the constructor of a regular
	* SSLSocketImpl. If we are layering on top on another socket, then
	* this method should not be called, because we assume that the
	* underlying socket is already connected by the time it is passed to
	* us.
	*
	* @param   endpoint the <code>SocketAddress</code>
	* @param   timeout  the timeout value to be used, 0 is no timeout
	* @throws  IOException if an error occurs during the connection
	* @throws  SocketTimeoutException if timeout expires before connecting
	*/
	@:overload override public function connect(endpoint : java.net.SocketAddress, timeout : Int) : Void;
	
	/**
	* Starts an SSL handshake on this connection.
	*/
	@:overload override public function startHandshake() : Void;
	
	/**
	* Return whether the socket has been explicitly closed by the application.
	*/
	@:overload override public function isClosed() : Bool;
	
	@:overload private function closeSocket() : Void;
	
	/**
	* Closes the SSL connection.  SSL includes an application level
	* shutdown handshake; you should close SSL sockets explicitly
	* rather than leaving it for finalization, so that your remote
	* peer does not experience a protocol error.
	*/
	@:overload override public function close() : Void;
	
	@:overload @:synchronized public function setHost(host : String) : Void;
	
	/**
	* Gets an input stream to read from the peer on the other side.
	* Data read from this stream was always integrity protected in
	* transit, and will usually have been confidentiality protected.
	*/
	@:overload @:synchronized override public function getInputStream() : java.io.InputStream;
	
	/**
	* Gets an output stream to write to the peer on the other side.
	* Data written on this stream is always integrity protected, and
	* will usually be confidentiality protected.
	*/
	@:overload @:synchronized override public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Returns the the SSL Session in use by this connection.  These can
	* be long lived, and frequently correspond to an entire login session
	* for some user.
	*/
	@:overload override public function getSession() : javax.net.ssl.SSLSession;
	
	@:overload @:synchronized override public function getHandshakeSession() : javax.net.ssl.SSLSession;
	
	/**
	* Controls whether new connections may cause creation of new SSL
	* sessions.
	*
	* As long as handshaking has not started, we can change
	* whether we enable session creations.  Otherwise,
	* we will need to wait for the next handshake.
	*/
	@:overload @:synchronized override public function setEnableSessionCreation(flag : Bool) : Void;
	
	/**
	* Returns true if new connections may cause creation of new SSL
	* sessions.
	*/
	@:overload @:synchronized override public function getEnableSessionCreation() : Bool;
	
	/**
	* Sets the flag controlling whether a server mode socket
	* *REQUIRES* SSL client authentication.
	*
	* As long as handshaking has not started, we can change
	* whether client authentication is needed.  Otherwise,
	* we will need to wait for the next handshake.
	*/
	@:overload @:synchronized override public function setNeedClientAuth(flag : Bool) : Void;
	
	@:overload @:synchronized override public function getNeedClientAuth() : Bool;
	
	/**
	* Sets the flag controlling whether a server mode socket
	* *REQUESTS* SSL client authentication.
	*
	* As long as handshaking has not started, we can change
	* whether client authentication is requested.  Otherwise,
	* we will need to wait for the next handshake.
	*/
	@:overload @:synchronized override public function setWantClientAuth(flag : Bool) : Void;
	
	@:overload @:synchronized override public function getWantClientAuth() : Bool;
	
	/**
	* Sets the flag controlling whether the socket is in SSL
	* client or server mode.  Must be called before any SSL
	* traffic has started.
	*/
	@:overload @:synchronized override public function setUseClientMode(flag : Bool) : Void;
	
	@:overload @:synchronized override public function getUseClientMode() : Bool;
	
	/**
	* Returns the names of the cipher suites which could be enabled for use
	* on an SSL connection.  Normally, only a subset of these will actually
	* be enabled by default, since this list may include cipher suites which
	* do not support the mutual authentication of servers and clients, or
	* which do not protect data confidentiality.  Servers may also need
	* certain kinds of certificates to use certain cipher suites.
	*
	* @return an array of cipher suite names
	*/
	@:overload override public function getSupportedCipherSuites() : java.NativeArray<String>;
	
	/**
	* Controls which particular cipher suites are enabled for use on
	* this connection.  The cipher suites must have been listed by
	* getCipherSuites() as being supported.  Even if a suite has been
	* enabled, it might never be used if no peer supports it or the
	* requisite certificates (and private keys) are not available.
	*
	* @param suites Names of all the cipher suites to enable.
	*/
	@:overload @:synchronized override public function setEnabledCipherSuites(suites : java.NativeArray<String>) : Void;
	
	/**
	* Returns the names of the SSL cipher suites which are currently enabled
	* for use on this connection.  When an SSL socket is first created,
	* all enabled cipher suites <em>(a)</em> protect data confidentiality,
	* by traffic encryption, and <em>(b)</em> can mutually authenticate
	* both clients and servers.  Thus, in some environments, this value
	* might be empty.
	*
	* @return an array of cipher suite names
	*/
	@:overload @:synchronized override public function getEnabledCipherSuites() : java.NativeArray<String>;
	
	/**
	* Returns the protocols that are supported by this implementation.
	* A subset of the supported protocols may be enabled for this connection
	* @return an array of protocol names.
	*/
	@:overload override public function getSupportedProtocols() : java.NativeArray<String>;
	
	/**
	* Controls which protocols are enabled for use on
	* this connection.  The protocols must have been listed by
	* getSupportedProtocols() as being supported.
	*
	* @param protocols protocols to enable.
	* @exception IllegalArgumentException when one of the protocols
	*  named by the parameter is not supported.
	*/
	@:overload @:synchronized override public function setEnabledProtocols(protocols : java.NativeArray<String>) : Void;
	
	@:overload @:synchronized override public function getEnabledProtocols() : java.NativeArray<String>;
	
	/**
	* Assigns the socket timeout.
	* @see java.net.Socket#setSoTimeout
	*/
	@:overload override public function setSoTimeout(timeout : Int) : Void;
	
	/**
	* Registers an event listener to receive notifications that an
	* SSL handshake has completed on this connection.
	*/
	@:overload @:synchronized override public function addHandshakeCompletedListener(listener : javax.net.ssl.HandshakeCompletedListener) : Void;
	
	/**
	* Removes a previously registered handshake completion listener.
	*/
	@:overload @:synchronized override public function removeHandshakeCompletedListener(listener : javax.net.ssl.HandshakeCompletedListener) : Void;
	
	/**
	* Returns the SSLParameters in effect for this SSLSocket.
	*/
	@:overload @:synchronized override public function getSSLParameters() : javax.net.ssl.SSLParameters;
	
	/**
	* Applies SSLParameters to this socket.
	*/
	@:overload @:synchronized override public function setSSLParameters(params : javax.net.ssl.SSLParameters) : Void;
	
	/**
	* Returns a printable representation of this end of the connection.
	*/
	@:overload override public function toString() : String;
	
	
}
@:native('sun$security$ssl$SSLSocketImpl$NotifyHandshakeThread') @:internal extern class SSLSocketImpl_NotifyHandshakeThread extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	
}

package sun.security.ssl;
/*
* Copyright (c) 2003, 2013, Oracle and/or its affiliates. All rights reserved.
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
extern class SSLEngineImpl extends javax.net.ssl.SSLEngine
{
	/*
	* Is a handshake currently underway?
	*/
	@:overload @:public override public function getHandshakeStatus() : javax.net.ssl.SSLEngineResult.SSLEngineResult_HandshakeStatus;
	
	/*
	* Start a SSLEngine handshake
	*/
	@:overload @:public override public function beginHandshake() : Void;
	
	/**
	* Unwraps a buffer.  Does a variety of checks before grabbing
	* the unwrapLock, which blocks multiple unwraps from occuring.
	*/
	@:overload @:public override public function unwrap(netData : java.nio.ByteBuffer, appData : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : javax.net.ssl.SSLEngineResult;
	
	/**
	* Wraps a buffer.  Does a variety of checks before grabbing
	* the wrapLock, which blocks multiple wraps from occuring.
	*/
	@:overload @:public override public function wrap(appData : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int, netData : java.nio.ByteBuffer) : javax.net.ssl.SSLEngineResult;
	
	@:overload @:synchronized @:public override public function closeOutbound() : Void;
	
	/**
	* Returns the outbound application data closure state
	*/
	@:overload @:public override public function isOutboundDone() : Bool;
	
	/*
	* Close the inbound side of the connection.  We grab the
	* lock here, and do the real work in the internal verison.
	* We do check for truncation attacks.
	*/
	@:overload @:synchronized @:public override public function closeInbound() : Void;
	
	/**
	* Returns the network inbound data closure state
	*/
	@:overload @:synchronized @:public override public function isInboundDone() : Bool;
	
	/**
	* Returns the current <code>SSLSession</code> for this
	* <code>SSLEngine</code>
	* <P>
	* These can be long lived, and frequently correspond to an
	* entire login session for some user.
	*/
	@:overload @:synchronized @:public override public function getSession() : javax.net.ssl.SSLSession;
	
	@:overload @:synchronized @:public override public function getHandshakeSession() : javax.net.ssl.SSLSession;
	
	/**
	* Returns a delegated <code>Runnable</code> task for
	* this <code>SSLEngine</code>.
	*/
	@:overload @:synchronized @:public override public function getDelegatedTask() : java.lang.Runnable;
	
	/**
	* Controls whether new connections may cause creation of new SSL
	* sessions.
	*
	* As long as handshaking has not started, we can change
	* whether we enable session creations.  Otherwise,
	* we will need to wait for the next handshake.
	*/
	@:overload @:synchronized @:public override public function setEnableSessionCreation(flag : Bool) : Void;
	
	/**
	* Returns true if new connections may cause creation of new SSL
	* sessions.
	*/
	@:overload @:synchronized @:public override public function getEnableSessionCreation() : Bool;
	
	/**
	* Sets the flag controlling whether a server mode engine
	* *REQUIRES* SSL client authentication.
	*
	* As long as handshaking has not started, we can change
	* whether client authentication is needed.  Otherwise,
	* we will need to wait for the next handshake.
	*/
	@:overload @:synchronized @:public override public function setNeedClientAuth(flag : Bool) : Void;
	
	@:overload @:synchronized @:public override public function getNeedClientAuth() : Bool;
	
	/**
	* Sets the flag controlling whether a server mode engine
	* *REQUESTS* SSL client authentication.
	*
	* As long as handshaking has not started, we can change
	* whether client authentication is requested.  Otherwise,
	* we will need to wait for the next handshake.
	*/
	@:overload @:synchronized @:public override public function setWantClientAuth(flag : Bool) : Void;
	
	@:overload @:synchronized @:public override public function getWantClientAuth() : Bool;
	
	/**
	* Sets the flag controlling whether the engine is in SSL
	* client or server mode.  Must be called before any SSL
	* traffic has started.
	*/
	@:overload @:synchronized @:public override public function setUseClientMode(flag : Bool) : Void;
	
	@:overload @:synchronized @:public override public function getUseClientMode() : Bool;
	
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
	@:overload @:public override public function getSupportedCipherSuites() : java.NativeArray<String>;
	
	/**
	* Controls which particular cipher suites are enabled for use on
	* this connection.  The cipher suites must have been listed by
	* getCipherSuites() as being supported.  Even if a suite has been
	* enabled, it might never be used if no peer supports it or the
	* requisite certificates (and private keys) are not available.
	*
	* @param suites Names of all the cipher suites to enable.
	*/
	@:overload @:synchronized @:public override public function setEnabledCipherSuites(suites : java.NativeArray<String>) : Void;
	
	/**
	* Returns the names of the SSL cipher suites which are currently enabled
	* for use on this connection.  When an SSL engine is first created,
	* all enabled cipher suites <em>(a)</em> protect data confidentiality,
	* by traffic encryption, and <em>(b)</em> can mutually authenticate
	* both clients and servers.  Thus, in some environments, this value
	* might be empty.
	*
	* @return an array of cipher suite names
	*/
	@:overload @:synchronized @:public override public function getEnabledCipherSuites() : java.NativeArray<String>;
	
	/**
	* Returns the protocols that are supported by this implementation.
	* A subset of the supported protocols may be enabled for this connection
	* @return an array of protocol names.
	*/
	@:overload @:public override public function getSupportedProtocols() : java.NativeArray<String>;
	
	/**
	* Controls which protocols are enabled for use on
	* this connection.  The protocols must have been listed by
	* getSupportedProtocols() as being supported.
	*
	* @param protocols protocols to enable.
	* @exception IllegalArgumentException when one of the protocols
	*  named by the parameter is not supported.
	*/
	@:overload @:synchronized @:public override public function setEnabledProtocols(protocols : java.NativeArray<String>) : Void;
	
	@:overload @:synchronized @:public override public function getEnabledProtocols() : java.NativeArray<String>;
	
	/**
	* Returns the SSLParameters in effect for this SSLEngine.
	*/
	@:overload @:synchronized @:public override public function getSSLParameters() : javax.net.ssl.SSLParameters;
	
	/**
	* Applies SSLParameters to this engine.
	*/
	@:overload @:synchronized @:public override public function setSSLParameters(params : javax.net.ssl.SSLParameters) : Void;
	
	/**
	* Returns a printable representation of this end of the connection.
	*/
	@:overload @:public public function toString() : String;
	
	
}

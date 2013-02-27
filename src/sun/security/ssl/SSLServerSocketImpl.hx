package sun.security.ssl;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SSLServerSocketImpl extends javax.net.ssl.SSLServerSocket
{
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
	* Returns the list of cipher suites which are currently enabled
	* for use by newly accepted connections.  A null return indicates
	* that the system defaults are in effect.
	*/
	@:overload @:synchronized override public function getEnabledCipherSuites() : java.NativeArray<String>;
	
	/**
	* Controls which particular SSL cipher suites are enabled for use
	* by accepted connections.
	*
	* @param suites Names of all the cipher suites to enable; null
	*  means to accept system defaults.
	*/
	@:overload @:synchronized override public function setEnabledCipherSuites(suites : java.NativeArray<String>) : Void;
	
	@:overload override public function getSupportedProtocols() : java.NativeArray<String>;
	
	/**
	* Controls which protocols are enabled for use.
	* The protocols must have been listed by
	* getSupportedProtocols() as being supported.
	*
	* @param protocols protocols to enable.
	* @exception IllegalArgumentException when one of the protocols
	*  named by the parameter is not supported.
	*/
	@:overload @:synchronized override public function setEnabledProtocols(protocols : java.NativeArray<String>) : Void;
	
	@:overload @:synchronized override public function getEnabledProtocols() : java.NativeArray<String>;
	
	/**
	* Controls whether the connections which are accepted must include
	* client authentication.
	*/
	@:overload override public function setNeedClientAuth(flag : Bool) : Void;
	
	@:overload override public function getNeedClientAuth() : Bool;
	
	/**
	* Controls whether the connections which are accepted should request
	* client authentication.
	*/
	@:overload override public function setWantClientAuth(flag : Bool) : Void;
	
	@:overload override public function getWantClientAuth() : Bool;
	
	/**
	* Makes the returned sockets act in SSL "client" mode, not the usual
	* server mode.  The canonical example of why this is needed is for
	* FTP clients, which accept connections from servers and should be
	* rejoining the already-negotiated SSL connection.
	*/
	@:overload override public function setUseClientMode(flag : Bool) : Void;
	
	@:overload override public function getUseClientMode() : Bool;
	
	/**
	* Controls whether new connections may cause creation of new SSL
	* sessions.
	*/
	@:overload override public function setEnableSessionCreation(flag : Bool) : Void;
	
	/**
	* Returns true if new connections may cause creation of new SSL
	* sessions.
	*/
	@:overload override public function getEnableSessionCreation() : Bool;
	
	/**
	* Returns the SSLParameters in effect for newly accepted connections.
	*/
	@:overload @:synchronized override public function getSSLParameters() : javax.net.ssl.SSLParameters;
	
	/**
	* Applies SSLParameters to newly accepted connections.
	*/
	@:overload @:synchronized override public function setSSLParameters(params : javax.net.ssl.SSLParameters) : Void;
	
	/**
	* Accept a new SSL connection.  This server identifies itself with
	* information provided in the authentication context which was
	* presented during construction.
	*/
	@:overload override public function accept() : java.net.Socket;
	
	/**
	* Provides a brief description of this SSL socket.
	*/
	@:overload override public function toString() : String;
	
	
}

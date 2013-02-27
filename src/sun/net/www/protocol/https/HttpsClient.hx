package sun.net.www.protocol.https;
/*
* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class HttpsClient extends sun.net.www.http.HttpClient implements javax.net.ssl.HandshakeCompletedListener
{
	/** Returns the default HTTPS port (443) */
	@:overload override private function getDefaultPort() : Int;
	
	/**
	* The following method, createSocket, is defined in NetworkClient
	* and overridden here so that the socket facroty is used to create
	* new sockets.
	*/
	@:overload override private function createSocket() : java.net.Socket;
	
	@:overload override public function needsTunneling() : Bool;
	
	@:overload override public function afterConnect() : Void;
	
	@:overload override private function putInKeepAliveCache() : Void;
	
	/*
	* Close an idle connection to this URL (if it exists in the cache).
	*/
	@:overload override public function closeIdleConnection() : Void;
	
	/**
	* Returns the certificate chain the client sent to the
	* server, or null if the client did not authenticate.
	*/
	@:overload public function getLocalCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* This method implements the SSL HandshakeCompleted callback,
	* remembering the resulting session so that it may be queried
	* for the current cipher suite and peer certificates.  Servers
	* sometimes re-initiate handshaking, so the session in use on
	* a given connection may change.  When sessions change, so may
	* peer identities and cipher suites.
	*/
	@:overload public function handshakeCompleted(event : javax.net.ssl.HandshakeCompletedEvent) : Void;
	
	/**
	* @return the proxy host being used for this client, or null
	*          if we're not going through a proxy
	*/
	@:overload override public function getProxyHostUsed() : String;
	
	/**
	* @return the proxy port being used for this client.  Meaningless
	*          if getProxyHostUsed() gives null.
	*/
	@:overload override public function getProxyPortUsed() : Int;
	
	
}

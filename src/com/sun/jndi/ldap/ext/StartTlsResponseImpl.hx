package com.sun.jndi.ldap.ext;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class StartTlsResponseImpl extends javax.naming.ldap.StartTlsResponse
{
	@:overload public function new() : Void;
	
	/**
	* Overrides the default list of cipher suites enabled for use on the
	* TLS connection. The cipher suites must have already been listed by
	* <tt>SSLSocketFactory.getSupportedCipherSuites()</tt> as being supported.
	* Even if a suite has been enabled, it still might not be used because
	* the peer does not support it, or because the requisite certificates
	* (and private keys) are not available.
	*
	* @param suites The non-null list of names of all the cipher suites to
	* enable.
	* @see #negotiate
	*/
	@:overload public function setEnabledCipherSuites(suites : java.NativeArray<String>) : Void;
	
	/**
	* Overrides the default hostname verifier used by <tt>negotiate()</tt>
	* after the TLS handshake has completed. If
	* <tt>setHostnameVerifier()</tt> has not been called before
	* <tt>negotiate()</tt> is invoked, <tt>negotiate()</tt>
	* will perform a simple case ignore match. If called after
	* <tt>negotiate()</tt>, this method does not do anything.
	*
	* @param verifier The non-null hostname verifier callback.
	* @see #negotiate
	*/
	@:overload public function setHostnameVerifier(verifier : javax.net.ssl.HostnameVerifier) : Void;
	
	/**
	* Negotiates a TLS session using the default SSL socket factory.
	* <p>
	* This method is equivalent to <tt>negotiate(null)</tt>.
	*
	* @return The negotiated SSL session
	* @throw IOException If an IO error was encountered while establishing
	* the TLS session.
	* @see #setEnabledCipherSuites
	* @see #setHostnameVerifier
	*/
	@:overload public function negotiate() : javax.net.ssl.SSLSession;
	
	/**
	* Negotiates a TLS session using an SSL socket factory.
	* <p>
	* Creates an SSL socket using the supplied SSL socket factory and
	* attaches it to the existing connection. Performs the TLS handshake
	* and returns the negotiated session information.
	* <p>
	* If cipher suites have been set via <tt>setEnabledCipherSuites</tt>
	* then they are enabled before the TLS handshake begins.
	* <p>
	* Hostname verification is performed after the TLS handshake completes.
	* The default check performs a case insensitive match of the server's
	* hostname against that in the server's certificate. The server's
	* hostname is extracted from the subjectAltName in the server's
	* certificate (if present). Otherwise the value of the common name
	* attribute of the subject name is used. If a callback has
	* been set via <tt>setHostnameVerifier</tt> then that verifier is used if
	* the default check fails.
	* <p>
	* If an error occurs then the SSL socket is closed and an IOException
	* is thrown. The underlying connection remains intact.
	*
	* @param factory The possibly null SSL socket factory to use.
	* If null, the default SSL socket factory is used.
	* @return The negotiated SSL session
	* @throw IOException If an IO error was encountered while establishing
	* the TLS session.
	* @see #setEnabledCipherSuites
	* @see #setHostnameVerifier
	*/
	@:overload public function negotiate(factory : javax.net.ssl.SSLSocketFactory) : javax.net.ssl.SSLSession;
	
	/**
	* Closes the TLS connection gracefully and reverts back to the underlying
	* connection.
	*
	* @throw IOException If an IO error was encountered while closing the
	* TLS connection
	*/
	@:overload public function close() : Void;
	
	/**
	* Sets the connection for TLS to use. The TLS connection will be attached
	* to this connection.
	*
	* @param ldapConnection The non-null connection to use.
	* @param hostname The server's hostname. If null, the hostname used to
	* open the connection will be used instead.
	*/
	@:overload public function setConnection(ldapConnection : com.sun.jndi.ldap.Connection, hostname : String) : Void;
	
	
}

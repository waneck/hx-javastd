package javax.net.ssl;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpsURLConnection extends java.net.HttpURLConnection
{
	/**
	* Creates an <code>HttpsURLConnection</code> using the
	* URL specified.
	*
	* @param url the URL
	*/
	@:overload @:protected private function new(url : java.net.URL) : Void;
	
	/**
	* Returns the cipher suite in use on this connection.
	*
	* @return the cipher suite
	* @throws IllegalStateException if this method is called before
	*          the connection has been established.
	*/
	@:overload @:public @:abstract public function getCipherSuite() : String;
	
	/**
	* Returns the certificate(s) that were sent to the server during
	* handshaking.
	* <P>
	* Note: This method is useful only when using certificate-based
	* cipher suites.
	* <P>
	* When multiple certificates are available for use in a
	* handshake, the implementation chooses what it considers the
	* "best" certificate chain available, and transmits that to
	* the other side.  This method allows the caller to know
	* which certificate chain was actually sent.
	*
	* @return an ordered array of certificates,
	*          with the client's own certificate first followed by any
	*          certificate authorities.  If no certificates were sent,
	*          then null is returned.
	* @throws IllegalStateException if this method is called before
	*          the connection has been established.
	* @see #getLocalPrincipal()
	*/
	@:overload @:public @:abstract public function getLocalCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the server's certificate chain which was established
	* as part of defining the session.
	* <P>
	* Note: This method can be used only when using certificate-based
	* cipher suites; using it with non-certificate-based cipher suites,
	* such as Kerberos, will throw an SSLPeerUnverifiedException.
	*
	* @return an ordered array of server certificates,
	*          with the peer's own certificate first followed by
	*          any certificate authorities.
	* @throws SSLPeerUnverifiedException if the peer is not verified.
	* @throws IllegalStateException if this method is called before
	*          the connection has been established.
	* @see #getPeerPrincipal()
	*/
	@:overload @:public @:abstract public function getServerCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the server's principal which was established as part of
	* defining the session.
	* <P>
	* Note: Subclasses should override this method. If not overridden, it
	* will default to returning the X500Principal of the server's end-entity
	* certificate for certificate-based ciphersuites, or throw an
	* SSLPeerUnverifiedException for non-certificate based ciphersuites,
	* such as Kerberos.
	*
	* @return the server's principal. Returns an X500Principal of the
	* end-entity certiticate for X509-based cipher suites, and
	* KerberosPrincipal for Kerberos cipher suites.
	*
	* @throws SSLPeerUnverifiedException if the peer was not verified
	* @throws IllegalStateException if this method is called before
	*          the connection has been established.
	*
	* @see #getServerCertificates()
	* @see #getLocalPrincipal()
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getPeerPrincipal() : java.security.Principal;
	
	/**
	* Returns the principal that was sent to the server during handshaking.
	* <P>
	* Note: Subclasses should override this method. If not overridden, it
	* will default to returning the X500Principal of the end-entity certificate
	* that was sent to the server for certificate-based ciphersuites or,
	* return null for non-certificate based ciphersuites, such as Kerberos.
	*
	* @return the principal sent to the server. Returns an X500Principal
	* of the end-entity certificate for X509-based cipher suites, and
	* KerberosPrincipal for Kerberos cipher suites. If no principal was
	* sent, then null is returned.
	*
	* @throws IllegalStateException if this method is called before
	*          the connection has been established.
	*
	* @see #getLocalCertificates()
	* @see #getPeerPrincipal()
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getLocalPrincipal() : java.security.Principal;
	
	/**
	* The <code>hostnameVerifier</code> for this object.
	*/
	@:protected private var hostnameVerifier : javax.net.ssl.HostnameVerifier;
	
	/**
	* Sets the default <code>HostnameVerifier</code> inherited by a
	* new instance of this class.
	* <P>
	* If this method is not called, the default
	* <code>HostnameVerifier</code> assumes the connection should not
	* be permitted.
	*
	* @param v the default host name verifier
	* @throws IllegalArgumentException if the <code>HostnameVerifier</code>
	*          parameter is null.
	* @throws SecurityException if a security manager exists and its
	*         <code>checkPermission</code> method does not allow
	*         <code>SSLPermission("setHostnameVerifier")</code>
	* @see #getDefaultHostnameVerifier()
	*/
	@:overload @:public @:static public static function setDefaultHostnameVerifier(v : javax.net.ssl.HostnameVerifier) : Void;
	
	/**
	* Gets the default <code>HostnameVerifier</code> that is inherited
	* by new instances of this class.
	*
	* @return the default host name verifier
	* @see #setDefaultHostnameVerifier(HostnameVerifier)
	*/
	@:overload @:public @:static public static function getDefaultHostnameVerifier() : javax.net.ssl.HostnameVerifier;
	
	/**
	* Sets the <code>HostnameVerifier</code> for this instance.
	* <P>
	* New instances of this class inherit the default static hostname
	* verifier set by {@link #setDefaultHostnameVerifier(HostnameVerifier)
	* setDefaultHostnameVerifier}.  Calls to this method replace
	* this object's <code>HostnameVerifier</code>.
	*
	* @param v the host name verifier
	* @throws IllegalArgumentException if the <code>HostnameVerifier</code>
	*  parameter is null.
	* @see #getHostnameVerifier()
	* @see #setDefaultHostnameVerifier(HostnameVerifier)
	*/
	@:overload @:public public function setHostnameVerifier(v : javax.net.ssl.HostnameVerifier) : Void;
	
	/**
	* Gets the <code>HostnameVerifier</code> in place on this instance.
	*
	* @return the host name verifier
	* @see #setHostnameVerifier(HostnameVerifier)
	* @see #setDefaultHostnameVerifier(HostnameVerifier)
	*/
	@:overload @:public public function getHostnameVerifier() : javax.net.ssl.HostnameVerifier;
	
	/**
	* Sets the default <code>SSLSocketFactory</code> inherited by new
	* instances of this class.
	* <P>
	* The socket factories are used when creating sockets for secure
	* https URL connections.
	*
	* @param sf the default SSL socket factory
	* @throws IllegalArgumentException if the SSLSocketFactory
	*          parameter is null.
	* @throws SecurityException if a security manager exists and its
	*         <code>checkSetFactory</code> method does not allow
	*         a socket factory to be specified.
	* @see #getDefaultSSLSocketFactory()
	*/
	@:overload @:public @:static public static function setDefaultSSLSocketFactory(sf : javax.net.ssl.SSLSocketFactory) : Void;
	
	/**
	* Gets the default static <code>SSLSocketFactory</code> that is
	* inherited by new instances of this class.
	* <P>
	* The socket factories are used when creating sockets for secure
	* https URL connections.
	*
	* @return the default <code>SSLSocketFactory</code>
	* @see #setDefaultSSLSocketFactory(SSLSocketFactory)
	*/
	@:overload @:public @:static public static function getDefaultSSLSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	/**
	* Sets the <code>SSLSocketFactory</code> to be used when this instance
	* creates sockets for secure https URL connections.
	* <P>
	* New instances of this class inherit the default static
	* <code>SSLSocketFactory</code> set by
	* {@link #setDefaultSSLSocketFactory(SSLSocketFactory)
	* setDefaultSSLSocketFactory}.  Calls to this method replace
	* this object's <code>SSLSocketFactory</code>.
	*
	* @param sf the SSL socket factory
	* @throws IllegalArgumentException if the <code>SSLSocketFactory</code>
	*          parameter is null.
	* @see #getSSLSocketFactory()
	*/
	@:overload @:public public function setSSLSocketFactory(sf : javax.net.ssl.SSLSocketFactory) : Void;
	
	/**
	* Gets the SSL socket factory to be used when creating sockets
	* for secure https URL connections.
	*
	* @return the <code>SSLSocketFactory</code>
	* @see #setSSLSocketFactory(SSLSocketFactory)
	*/
	@:overload @:public public function getSSLSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	
}
/*
* The initial default <code>HostnameVerifier</code>.  Should be
* updated for another other type of <code>HostnameVerifier</code>
* that are created.
*/
@:native('javax$net$ssl$HttpsURLConnection$DefaultHostnameVerifier') @:internal extern class HttpsURLConnection_DefaultHostnameVerifier implements javax.net.ssl.HostnameVerifier
{
	@:overload @:public public function verify(hostname : String, session : javax.net.ssl.SSLSession) : Bool;
	
	
}

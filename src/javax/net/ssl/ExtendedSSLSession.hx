package javax.net.ssl;
/*
* Copyright (c) 2010, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Extends the <code>SSLSession</code> interface to support additional
* session attributes.
*
* @since 1.7
*/
@:require(java7) extern class ExtendedSSLSession implements javax.net.ssl.SSLSession
{
	/**
	* Obtains an array of supported signature algorithms that the local side
	* is willing to use.
	* <p>
	* Note: this method is used to indicate to the peer which signature
	* algorithms may be used for digital signatures in TLS 1.2. It is
	* not meaningful for TLS versions prior to 1.2.
	* <p>
	* The signature algorithm name must be a standard Java Security
	* name (such as "SHA1withRSA", "SHA256withECDSA", and so on).
	* See Appendix A in the <a href=
	* "{@docRoot}/../technotes/guides/security/crypto/CryptoSpec.html#AppA">
	* Java Cryptography Architecture API Specification &amp; Reference </a>
	* for information about standard algorithm names.
	* <p>
	* Note: the local supported signature algorithms should conform to
	* the algorithm constraints specified by
	* {@link SSLParameters#getAlgorithmConstraints getAlgorithmConstraints()}
	* method in <code>SSLParameters</code>.
	*
	* @return An array of supported signature algorithms, in descending
	*     order of preference.  The return value is an empty array if
	*     no signature algorithm is supported.
	*
	* @see SSLParameters#getAlgorithmConstraints
	*/
	@:overload @:public @:abstract public function getLocalSupportedSignatureAlgorithms() : java.NativeArray<String>;
	
	/**
	* Obtains an array of supported signature algorithms that the peer is
	* able to use.
	* <p>
	* Note: this method is used to indicate to the local side which signature
	* algorithms may be used for digital signatures in TLS 1.2. It is
	* not meaningful for TLS versions prior to 1.2.
	* <p>
	* The signature algorithm name must be a standard Java Security
	* name (such as "SHA1withRSA", "SHA256withECDSA", and so on).
	* See Appendix A in the <a href=
	* "{@docRoot}/../technotes/guides/security/crypto/CryptoSpec.html#AppA">
	* Java Cryptography Architecture API Specification &amp; Reference </a>
	* for information about standard algorithm names.
	*
	* @return An array of supported signature algorithms, in descending
	*     order of preference.  The return value is an empty array if
	*     the peer has not sent the supported signature algorithms.
	*
	* @see X509KeyManager
	* @see X509ExtendedKeyManager
	*/
	@:overload @:public @:abstract public function getPeerSupportedSignatureAlgorithms() : java.NativeArray<String>;
	
	/**
	* Removes the object bound to the given name in the session's
	* application layer data.  Does nothing if there is no object
	* bound to the given name.  If the bound existing object
	* implements the <code>SessionBindingListener</code> interface,
	* it is notified appropriately.
	* <p>
	* For security reasons, the same named values may not be
	* visible across different access control contexts.
	*
	* @param name the name of the object to remove visible
	*          across different access control contexts
	* @throws IllegalArgumentException if the argument is null.
	*/
	@:overload @:public public function removeValue(name : String) : Void;
	
	/**
	* Returns the identity of the peer which was identified as part
	* of defining the session.
	* <P>
	* Note: This method can be used only when using certificate-based
	* cipher suites; using it with non-certificate-based cipher suites,
	* such as Kerberos, will throw an SSLPeerUnverifiedException.
	*
	* <p><em>Note: this method exists for compatibility with previous
	* releases. New applications should use
	* {@link #getPeerCertificates} instead.</em></p>
	*
	* @return an ordered array of peer X.509 certificates,
	*          with the peer's own certificate first followed by any
	*          certificate authorities.  (The certificates are in
	*          the original JSSE certificate
	*          {@link javax.security.cert.X509Certificate} format.)
	* @exception SSLPeerUnverifiedException if the peer's identity
	*          has not been verified
	* @see #getPeerPrincipal()
	*/
	@:overload @:public public function getPeerCertificateChain() : java.NativeArray<javax.security.cert.X509Certificate>;
	
	/**
	* Returns the certificate(s) that were sent to the peer during
	* handshaking.
	* <P>
	* Note: This method is useful only when using certificate-based
	* cipher suites.
	* <P>
	* When multiple certificates are available for use in a
	* handshake, the implementation chooses what it considers the
	* "best" certificate chain available, and transmits that to
	* the other side.  This method allows the caller to know
	* which certificate chain was actually used.
	*
	* @return an ordered array of certificates,
	* with the local certificate first followed by any
	* certificate authorities.  If no certificates were sent,
	* then null is returned.
	*
	* @see #getLocalPrincipal()
	*/
	@:overload @:public public function getLocalCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the name of the SSL cipher suite which is used for all
	* connections in the session.
	*
	* <P> This defines the level of protection
	* provided to the data sent on the connection, including the kind
	* of encryption used and most aspects of how authentication is done.
	*
	* @return the name of the session's cipher suite
	*/
	@:overload @:public public function getCipherSuite() : String;
	
	/**
	* Returns the last time this Session representation was accessed by the
	* session level infrastructure, in milliseconds since
	* midnight, January 1, 1970 UTC.
	* <P>
	* Access indicates a new connection being established using session data.
	* Application level operations, such as getting or setting a value
	* associated with the session, are not reflected in this access time.
	*
	* <P> This information is particularly useful in session management
	* policies.  For example, a session manager thread could leave all
	* sessions in a given context which haven't been used in a long time;
	* or, the sessions might be sorted according to age to optimize some task.
	*
	* @return the last time this Session was accessed
	*/
	@:overload @:public public function getLastAccessedTime() : haxe.Int64;
	
	/**
	* Returns whether this session is valid and available for resuming or
	* joining.
	*
	* @return true if this session may be rejoined.
	* @see #invalidate()
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isValid() : Bool;
	
	/**
	*
	* Binds the specified <code>value</code> object into the
	* session's application layer data
	* with the given <code>name</code>.
	* <P>
	* Any existing binding using the same <code>name</code> is
	* replaced.  If the new (or existing) <code>value</code> implements the
	* <code>SSLSessionBindingListener</code> interface, the object
	* represented by <code>value</code> is notified appropriately.
	* <p>
	* For security reasons, the same named values may not be
	* visible across different access control contexts.
	*
	* @param name the name to which the data object will be bound.
	*          This may not be null.
	* @param value the data object to be bound. This may not be null.
	* @throws IllegalArgumentException if either argument is null.
	*/
	@:overload @:public public function putValue(name : String, value : Dynamic) : Void;
	
	/**
	* Returns the port number of the peer in this session.
	* <P>
	* For the server, this is the client's port number;  and for
	* the client, it is the server's port number.
	* <P>
	* This value is not authenticated and should not be relied upon.
	* It is mainly used as a hint for <code>SSLSession</code> caching
	* strategies.
	*
	* @return  the port number of the peer host, or -1 if no information
	*          is available.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getPeerPort() : Int;
	
	/**
	* Gets the current size of the largest SSL/TLS packet that is expected
	* when using this session.
	* <P>
	* A <code>SSLEngine</code> using this session may generate SSL/TLS
	* packets of any size up to and including the value returned by this
	* method. All <code>SSLEngine</code> network buffers should be sized
	* at least this large to avoid insufficient space problems when
	* performing <code>wrap</code> and <code>unwrap</code> calls.
	*
	* @return  the current maximum expected network packet size
	*
	* @see SSLEngine#wrap(ByteBuffer, ByteBuffer)
	* @see SSLEngine#unwrap(ByteBuffer, ByteBuffer)
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getPacketBufferSize() : Int;
	
	/**
	* Returns the identifier assigned to this Session.
	*
	* @return the Session identifier
	*/
	@:overload @:public public function getId() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the context in which this session is bound.
	* <P>
	* This context may be unavailable in some environments,
	* in which case this method returns null.
	* <P>
	* If the context is available and there is a
	* security manager installed, the caller may require
	* permission to access it or a security exception may be thrown.
	* In a Java environment, the security manager's
	* <code>checkPermission</code> method is called with a
	* <code>SSLPermission("getSSLSessionContext")</code> permission.
	*
	* @throws SecurityException if the calling thread does not have
	*         permission to get SSL session context.
	* @return the session context used for this session, or null
	* if the context is unavailable.
	*/
	@:overload @:public public function getSessionContext() : javax.net.ssl.SSLSessionContext;
	
	/**
	* Returns the identity of the peer which was established as part of
	* defining the session.
	*
	* @return the peer's principal. Returns an X500Principal of the
	* end-entity certiticate for X509-based cipher suites, and
	* KerberosPrincipal for Kerberos cipher suites.
	*
	* @throws SSLPeerUnverifiedException if the peer's identity has not
	*          been verified
	*
	* @see #getPeerCertificates()
	* @see #getLocalPrincipal()
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getPeerPrincipal() : java.security.Principal;
	
	/**
	* Returns the host name of the peer in this session.
	* <P>
	* For the server, this is the client's host;  and for
	* the client, it is the server's host. The name may not be
	* a fully qualified host name or even a host name at all as
	* it may represent a string encoding of the peer's network address.
	* If such a name is desired, it might
	* be resolved through a name service based on the value returned
	* by this method.
	* <P>
	* This value is not authenticated and should not be relied upon.
	* It is mainly used as a hint for <code>SSLSession</code> caching
	* strategies.
	*
	* @return  the host name of the peer host, or null if no information
	*          is available.
	*/
	@:overload @:public public function getPeerHost() : String;
	
	/**
	* Returns an array of the names of all the application layer
	* data objects bound into the Session.
	* <p>
	* For security reasons, the same named values may not be
	* visible across different access control contexts.
	*
	* @return a non-null (possibly empty) array of names of the objects
	*  bound to this Session.
	*/
	@:overload @:public public function getValueNames() : java.NativeArray<String>;
	
	/**
	* Gets the current size of the largest application data that is
	* expected when using this session.
	* <P>
	* <code>SSLEngine</code> application data buffers must be large
	* enough to hold the application data from any inbound network
	* application data packet received.  Typically, outbound
	* application data buffers can be of any size.
	*
	* @return  the current maximum expected application packet size
	*
	* @see SSLEngine#wrap(ByteBuffer, ByteBuffer)
	* @see SSLEngine#unwrap(ByteBuffer, ByteBuffer)
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getApplicationBufferSize() : Int;
	
	/**
	* Returns the time at which this Session representation was created,
	* in milliseconds since midnight, January 1, 1970 UTC.
	*
	* @return the time this Session was created
	*/
	@:overload @:public public function getCreationTime() : haxe.Int64;
	
	/**
	* Returns the object bound to the given name in the session's
	* application layer data.  Returns null if there is no such binding.
	* <p>
	* For security reasons, the same named values may not be
	* visible across different access control contexts.
	*
	* @param name the name of the binding to find.
	* @return the value bound to that name, or null if the binding does
	*          not exist.
	* @throws IllegalArgumentException if the argument is null.
	*/
	@:overload @:public public function getValue(name : String) : Dynamic;
	
	/**
	* Returns the identity of the peer which was established as part
	* of defining the session.
	* <P>
	* Note: This method can be used only when using certificate-based
	* cipher suites; using it with non-certificate-based cipher suites,
	* such as Kerberos, will throw an SSLPeerUnverifiedException.
	*
	* @return an ordered array of peer certificates,
	*          with the peer's own certificate first followed by any
	*          certificate authorities.
	* @exception SSLPeerUnverifiedException if the peer's identity has not
	*          been verified
	* @see #getPeerPrincipal()
	*/
	@:overload @:public public function getPeerCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the standard name of the protocol used for all
	* connections in the session.
	*
	* <P> This defines the protocol used in the connection.
	*
	* @return the standard name of the protocol used for all
	* connections in the session.
	*/
	@:overload @:public public function getProtocol() : String;
	
	/**
	* Invalidates the session.
	* <P>
	* Future connections will not be able to
	* resume or join this session.  However, any existing connection
	* using this session can continue to use the session until the
	* connection is closed.
	*
	* @see #isValid()
	*/
	@:overload @:public public function invalidate() : Void;
	
	/**
	* Returns the principal that was sent to the peer during handshaking.
	*
	* @return the principal sent to the peer. Returns an X500Principal
	* of the end-entity certificate for X509-based cipher suites, and
	* KerberosPrincipal for Kerberos cipher suites. If no principal was
	* sent, then null is returned.
	*
	* @see #getLocalCertificates()
	* @see #getPeerPrincipal()
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getLocalPrincipal() : java.security.Principal;
	
	
}

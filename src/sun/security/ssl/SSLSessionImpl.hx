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
/**
* Implements the SSL session interface, and exposes the session context
* which is maintained by SSL servers.
*
* <P> Servers have the ability to manage the sessions associated with
* their authentication context(s).  They can do this by enumerating the
* IDs of the sessions which are cached, examining those sessions, and then
* perhaps invalidating a given session so that it can't be used again.
* If servers do not explicitly manage the cache, sessions will linger
* until memory is low enough that the runtime environment purges cache
* entries automatically to reclaim space.
*
* <P><em> The only reason this class is not package-private is that
* there's no other public way to get at the server session context which
* is associated with any given authentication context. </em>
*
* @author David Brownell
*/
@:internal extern class SSLSessionImpl extends javax.net.ssl.ExtendedSSLSession
{
	@:overload @:public @:synchronized override public function isValid() : Bool;
	
	/**
	* Returns the ID for this session.  The ID is fixed for the
	* duration of the session; neither it, nor its value, changes.
	*/
	@:overload @:public override public function getId() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* For server sessions, this returns the set of sessions which
	* are currently valid in this process.  For client sessions,
	* this returns null.
	*/
	@:overload @:public override public function getSessionContext() : javax.net.ssl.SSLSessionContext;
	
	/**
	* Returns the name of the cipher suite in use on this session
	*/
	@:overload @:public override public function getCipherSuite() : String;
	
	/**
	* Returns the standard name of the protocol in use on this session
	*/
	@:overload @:public override public function getProtocol() : String;
	
	/**
	* Returns the hashcode for this session
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns true if sessions have same ids, false otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return the cert chain presented by the peer in the
	* java.security.cert format.
	* Note: This method can be used only when using certificate-based
	* cipher suites; using it with non-certificate-based cipher suites,
	* such as Kerberos, will throw an SSLPeerUnverifiedException.
	*
	* @return array of peer X.509 certs, with the peer's own cert
	*  first in the chain, and with the "root" CA last.
	*/
	@:overload @:public override public function getPeerCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Return the cert chain presented to the peer in the
	* java.security.cert format.
	* Note: This method is useful only when using certificate-based
	* cipher suites.
	*
	* @return array of peer X.509 certs, with the peer's own cert
	*  first in the chain, and with the "root" CA last.
	*/
	@:overload @:public override public function getLocalCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Return the cert chain presented by the peer in the
	* javax.security.cert format.
	* Note: This method can be used only when using certificate-based
	* cipher suites; using it with non-certificate-based cipher suites,
	* such as Kerberos, will throw an SSLPeerUnverifiedException.
	*
	* @return array of peer X.509 certs, with the peer's own cert
	*  first in the chain, and with the "root" CA last.
	*/
	@:overload @:public override public function getPeerCertificateChain() : java.NativeArray<javax.security.cert.X509Certificate>;
	
	/**
	* Return the cert chain presented by the peer.
	* Note: This method can be used only when using certificate-based
	* cipher suites; using it with non-certificate-based cipher suites,
	* such as Kerberos, will throw an SSLPeerUnverifiedException.
	*
	* @return array of peer X.509 certs, with the peer's own cert
	*  first in the chain, and with the "root" CA last.
	*/
	@:overload @:public public function getCertificateChain() : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Returns the identity of the peer which was established as part of
	* defining the session.
	*
	* @return the peer's principal. Returns an X500Principal of the
	* end-entity certificate for X509-based cipher suites, and
	* Principal for Kerberos cipher suites.
	*
	* @throws SSLPeerUnverifiedException if the peer's identity has not
	*          been verified
	*/
	@:overload @:public override public function getPeerPrincipal() : java.security.Principal;
	
	/**
	* Returns the principal that was sent to the peer during handshaking.
	*
	* @return the principal sent to the peer. Returns an X500Principal
	* of the end-entity certificate for X509-based cipher suites, and
	* Principal for Kerberos cipher suites. If no principal was
	* sent, then null is returned.
	*/
	@:overload @:public override public function getLocalPrincipal() : java.security.Principal;
	
	/**
	* Returns the time this session was created.
	*/
	@:overload @:public override public function getCreationTime() : haxe.Int64;
	
	/**
	* Returns the last time this session was used to initialize
	* a connection.
	*/
	@:overload @:public override public function getLastAccessedTime() : haxe.Int64;
	
	/**
	* Returns the network address of the session's peer.  This
	* implementation does not insist that connections between
	* different ports on the same host must necessarily belong
	* to different sessions, though that is of course allowed.
	*/
	@:overload @:public public function getPeerAddress() : java.net.InetAddress;
	
	@:overload @:public override public function getPeerHost() : String;
	
	/**
	* Need to provide the port info for caching sessions based on
	* host and port. Accessed by SSLSessionContextImpl
	*/
	@:overload @:public override public function getPeerPort() : Int;
	
	/**
	* Invalidate a session.  Active connections may still exist, but
	* no connections will be able to rejoin this session.
	*/
	@:overload @:synchronized @:public override public function invalidate() : Void;
	
	/**
	* Assigns a session value.  Session change events are given if
	* appropriate, to any original value as well as the new value.
	*/
	@:overload @:public override public function putValue(key : String, value : Dynamic) : Void;
	
	/**
	* Returns the specified session value.
	*/
	@:overload @:public override public function getValue(key : String) : Dynamic;
	
	/**
	* Removes the specified session value, delivering a session changed
	* event as appropriate.
	*/
	@:overload @:public override public function removeValue(key : String) : Void;
	
	/**
	* Lists the names of the session values.
	*/
	@:overload @:public override public function getValueNames() : java.NativeArray<String>;
	
	/**
	* Expand the buffer size of both SSL/TLS network packet and
	* application data.
	*/
	@:overload @:protected @:synchronized private function expandBufferSizes() : Void;
	
	/**
	* Gets the current size of the largest SSL/TLS packet that is expected
	* when using this session.
	*/
	@:overload @:public @:synchronized override public function getPacketBufferSize() : Int;
	
	/**
	* Gets the current size of the largest application data that is
	* expected when using this session.
	*/
	@:overload @:public @:synchronized override public function getApplicationBufferSize() : Int;
	
	/**
	* Gets an array of supported signature algorithms that the local side is
	* willing to verify.
	*/
	@:overload @:public override public function getLocalSupportedSignatureAlgorithms() : java.NativeArray<String>;
	
	/**
	* Gets an array of supported signature algorithms that the peer is
	* able to verify.
	*/
	@:overload @:public override public function getPeerSupportedSignatureAlgorithms() : java.NativeArray<String>;
	
	/** Returns a string representation of this SSL session */
	@:overload @:public public function toString() : String;
	
	/**
	* When SSL sessions are finalized, all values bound to
	* them are removed.
	*/
	@:overload @:public public function finalize() : Void;
	
	
}
@:internal extern class SecureKey
{
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	
}

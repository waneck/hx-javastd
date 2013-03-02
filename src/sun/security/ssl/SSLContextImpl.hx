package sun.security.ssl;
/*
* Copyright (c) 1999, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class SSLContextImpl extends javax.net.ssl.SSLContextSpi
{
	@:overload private function engineInit(km : java.NativeArray<javax.net.ssl.KeyManager>, tm : java.NativeArray<javax.net.ssl.TrustManager>, sr : java.security.SecureRandom) : Void;
	
	@:overload private function engineGetSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	@:overload private function engineGetServerSocketFactory() : javax.net.ssl.SSLServerSocketFactory;
	
	@:overload private function engineCreateSSLEngine() : javax.net.ssl.SSLEngine;
	
	@:overload private function engineCreateSSLEngine(host : String, port : Int) : javax.net.ssl.SSLEngine;
	
	@:overload private function engineGetClientSessionContext() : javax.net.ssl.SSLSessionContext;
	
	@:overload private function engineGetServerSessionContext() : javax.net.ssl.SSLSessionContext;
	
	
}
/*
* The conservative SSLContext implementation for TLS, SSL, SSLv3 and
* TLS10 algorithm.
*
* This is a super class of DefaultSSLContext and TLS10Context.
*
* @see SSLContext
*/
@:native('sun$security$ssl$SSLContextImpl$ConservativeSSLContext') @:internal extern class SSLContextImpl_ConservativeSSLContext extends sun.security.ssl.SSLContextImpl
{
	
}
/*
* The SSLContext implementation for default algorithm
*
* @see SSLContext
*/
@:native('sun$security$ssl$SSLContextImpl$DefaultSSLContext') extern class SSLContextImpl_DefaultSSLContext extends sun.security.ssl.SSLContextImpl.SSLContextImpl_ConservativeSSLContext
{
	@:overload public function new() : Void;
	
	@:overload override private function engineInit(km : java.NativeArray<javax.net.ssl.KeyManager>, tm : java.NativeArray<javax.net.ssl.TrustManager>, sr : java.security.SecureRandom) : Void;
	
	
}
/*
* The SSLContext implementation for TLS, SSL, SSLv3 and TLS10 algorithm
*
* @see SSLContext
*/
@:native('sun$security$ssl$SSLContextImpl$TLS10Context') extern class SSLContextImpl_TLS10Context extends sun.security.ssl.SSLContextImpl.SSLContextImpl_ConservativeSSLContext
{
	
}
/*
* The SSLContext implementation for TLS11 algorithm
*
* @see SSLContext
*/
@:native('sun$security$ssl$SSLContextImpl$TLS11Context') extern class SSLContextImpl_TLS11Context extends sun.security.ssl.SSLContextImpl
{
	
}
/*
* The SSLContext implementation for TLS12 algorithm
*
* @see SSLContext
*/
@:native('sun$security$ssl$SSLContextImpl$TLS12Context') extern class SSLContextImpl_TLS12Context extends sun.security.ssl.SSLContextImpl
{
	
}
@:internal extern class AbstractTrustManagerWrapper extends javax.net.ssl.X509ExtendedTrustManager implements javax.net.ssl.X509TrustManager
{
	@:overload override public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String) : Void;
	
	@:overload override public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String) : Void;
	
	@:overload override public function getAcceptedIssuers() : java.NativeArray<java.security.cert.X509Certificate>;
	
	@:overload override public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, socket : java.net.Socket) : Void;
	
	@:overload override public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, socket : java.net.Socket) : Void;
	
	@:overload override public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, engine : javax.net.ssl.SSLEngine) : Void;
	
	@:overload override public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, engine : javax.net.ssl.SSLEngine) : Void;
	
	
}
@:internal extern class DummyX509TrustManager extends javax.net.ssl.X509ExtendedTrustManager implements javax.net.ssl.X509TrustManager
{
	/*
	* Given the partial or complete certificate chain
	* provided by the peer, build a certificate path
	* to a trusted root and return if it can be
	* validated and is trusted for client SSL authentication.
	* If not, it throws an exception.
	*/
	@:overload override public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String) : Void;
	
	/*
	* Given the partial or complete certificate chain
	* provided by the peer, build a certificate path
	* to a trusted root and return if it can be
	* validated and is trusted for server SSL authentication.
	* If not, it throws an exception.
	*/
	@:overload override public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String) : Void;
	
	/*
	* Return an array of issuer certificates which are trusted
	* for authenticating peers.
	*/
	@:overload override public function getAcceptedIssuers() : java.NativeArray<java.security.cert.X509Certificate>;
	
	@:overload override public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, socket : java.net.Socket) : Void;
	
	@:overload override public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, socket : java.net.Socket) : Void;
	
	@:overload override public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, engine : javax.net.ssl.SSLEngine) : Void;
	
	@:overload override public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, engine : javax.net.ssl.SSLEngine) : Void;
	
	
}
@:internal extern class AbstractKeyManagerWrapper extends javax.net.ssl.X509ExtendedKeyManager
{
	@:overload public function getClientAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	@:overload public function chooseClientAlias(keyType : java.NativeArray<String>, issuers : java.NativeArray<java.security.Principal>, socket : java.net.Socket) : String;
	
	@:overload public function getServerAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	@:overload public function chooseServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>, socket : java.net.Socket) : String;
	
	@:overload public function getCertificateChain(alias : String) : java.NativeArray<java.security.cert.X509Certificate>;
	
	@:overload public function getPrivateKey(alias : String) : java.security.PrivateKey;
	
	
}
@:internal extern class DummyX509KeyManager extends javax.net.ssl.X509ExtendedKeyManager
{
	/*
	* Get the matching aliases for authenticating the client side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload public function getClientAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	/*
	* Choose an alias to authenticate the client side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload public function chooseClientAlias(keyTypes : java.NativeArray<String>, issuers : java.NativeArray<java.security.Principal>, socket : java.net.Socket) : String;
	
	/*
	* Choose an alias to authenticate the client side of an
	* engine given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload public function chooseEngineClientAlias(keyTypes : java.NativeArray<String>, issuers : java.NativeArray<java.security.Principal>, engine : javax.net.ssl.SSLEngine) : String;
	
	/*
	* Get the matching aliases for authenticating the server side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload public function getServerAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	/*
	* Choose an alias to authenticate the server side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload public function chooseServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>, socket : java.net.Socket) : String;
	
	/*
	* Choose an alias to authenticate the server side of an engine
	* given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload public function chooseEngineServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>, engine : javax.net.ssl.SSLEngine) : String;
	
	/**
	* Returns the certificate chain associated with the given alias.
	*
	* @param alias the alias name
	*
	* @return the certificate chain (ordered with the user's certificate first
	* and the root certificate authority last)
	*/
	@:overload public function getCertificateChain(alias : String) : java.NativeArray<java.security.cert.X509Certificate>;
	
	/*
	* Returns the key associated with the given alias, using the given
	* password to recover it.
	*
	* @param alias the alias name
	*
	* @return the requested key
	*/
	@:overload public function getPrivateKey(alias : String) : java.security.PrivateKey;
	
	
}

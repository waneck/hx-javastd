package com.sun.net.ssl.internal.ssl;
/*
* Copyright (c) 2005, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class X509ExtendedTrustManager implements javax.net.ssl.X509TrustManager
{
	/**
	* Constructor used by subclasses only.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Given the partial or complete certificate chain provided by the
	* peer, check its identity and build a certificate path to a trusted
	* root, return if it can be validated and is trusted for client SSL
	* authentication based on the authentication type.
	* <p>
	* The authentication type is determined by the actual certificate
	* used. For instance, if RSAPublicKey is used, the authType
	* should be "RSA". Checking is case-sensitive.
	* <p>
	* The algorithm parameter specifies the client identification protocol
	* to use. If the algorithm and the peer hostname are available, the
	* peer hostname is checked against the peer's identity presented in
	* the X509 certificate, in order to prevent masquerade attacks.
	*
	* @param chain the peer certificate chain
	* @param authType the authentication type based on the client certificate
	* @param hostname the peer hostname
	* @param algorithm the identification algorithm
	* @throws IllegalArgumentException if null or zero-length chain
	*         is passed in for the chain parameter or if null or zero-length
	*         string is passed in for the  authType parameter
	* @throws CertificateException if the certificate chain is not trusted
	*         by this TrustManager.
	*/
	@:overload @:public @:abstract public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, hostname : String, algorithm : String) : Void;
	
	/**
	* Given the partial or complete certificate chain provided by the
	* peer, check its identity and build a certificate path to a trusted
	* root, return if it can be validated and is trusted for server SSL
	* authentication based on the authentication type.
	* <p>
	* The authentication type is the key exchange algorithm portion
	* of the cipher suites represented as a String, such as "RSA",
	* "DHE_DSS". Checking is case-sensitive.
	* <p>
	* The algorithm parameter specifies the server identification protocol
	* to use. If the algorithm and the peer hostname are available, the
	* peer hostname is checked against the peer's identity presented in
	* the X509 certificate, in order to prevent masquerade attacks.
	*
	* @param chain the peer certificate chain
	* @param authType the key exchange algorithm used
	* @param hostname the peer hostname
	* @param algorithm the identification algorithm
	* @throws IllegalArgumentException if null or zero-length chain
	*         is passed in for the chain parameter or if null or zero-length
	*         string is passed in for the  authType parameter
	* @throws CertificateException if the certificate chain is not trusted
	*         by this TrustManager.
	*/
	@:overload @:public @:abstract public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String, hostname : String, algorithm : String) : Void;
	
	/**
	* Return an array of certificate authority certificates
	* which are trusted for authenticating peers.
	*
	* @return a non-null (possibly empty) array of acceptable
	*          CA issuer certificates.
	*/
	@:overload @:public public function getAcceptedIssuers() : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Given the partial or complete certificate chain provided by the
	* peer, build a certificate path to a trusted root and return if
	* it can be validated and is trusted for server SSL
	* authentication based on the authentication type.
	* <p>
	* The authentication type is the key exchange algorithm portion
	* of the cipher suites represented as a String, such as "RSA",
	* "DHE_DSS". Note: for some exportable cipher suites, the key
	* exchange algorithm is determined at run time during the
	* handshake. For instance, for TLS_RSA_EXPORT_WITH_RC4_40_MD5,
	* the authType should be RSA_EXPORT when an ephemeral RSA key is
	* used for the key exchange, and RSA when the key from the server
	* certificate is used. Checking is case-sensitive.
	*
	* @param chain the peer certificate chain
	* @param authType the key exchange algorithm used
	* @throws IllegalArgumentException if null or zero-length chain
	*         is passed in for the chain parameter or if null or zero-length
	*         string is passed in for the  authType parameter
	* @throws CertificateException if the certificate chain is not trusted
	*         by this TrustManager.
	*/
	@:overload @:public public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String) : Void;
	
	/**
	* Given the partial or complete certificate chain provided by the
	* peer, build a certificate path to a trusted root and return if
	* it can be validated and is trusted for client SSL
	* authentication based on the authentication type.
	* <p>
	* The authentication type is determined by the actual certificate
	* used. For instance, if RSAPublicKey is used, the authType
	* should be "RSA". Checking is case-sensitive.
	*
	* @param chain the peer certificate chain
	* @param authType the authentication type based on the client certificate
	* @throws IllegalArgumentException if null or zero-length chain
	*         is passed in for the chain parameter or if null or zero-length
	*         string is passed in for the  authType parameter
	* @throws CertificateException if the certificate chain is not trusted
	*         by this TrustManager.
	*/
	@:overload @:public public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String) : Void;
	
	
}

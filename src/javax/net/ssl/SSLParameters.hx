package javax.net.ssl;
/*
* Copyright (c) 2005, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class SSLParameters
{
	/**
	* Constructs SSLParameters.
	* <p>
	* The cipherSuites and protocols values are set to <code>null</code>,
	* wantClientAuth and needClientAuth are set to <code>false</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs SSLParameters from the specified array of ciphersuites.
	* <p>
	* Calling this constructor is equivalent to calling the no-args
	* constructor followed by
	* <code>setCipherSuites(cipherSuites);</code>.
	*
	* @param cipherSuites the array of ciphersuites (or null)
	*/
	@:overload public function new(cipherSuites : java.NativeArray<String>) : Void;
	
	/**
	* Constructs SSLParameters from the specified array of ciphersuites
	* and protocols.
	* <p>
	* Calling this constructor is equivalent to calling the no-args
	* constructor followed by
	* <code>setCipherSuites(cipherSuites); setProtocols(protocols);</code>.
	*
	* @param cipherSuites the array of ciphersuites (or null)
	* @param protocols the array of protocols (or null)
	*/
	@:overload public function new(cipherSuites : java.NativeArray<String>, protocols : java.NativeArray<String>) : Void;
	
	/**
	* Returns a copy of the array of ciphersuites or null if none
	* have been set.
	*
	* @return a copy of the array of ciphersuites or null if none
	* have been set.
	*/
	@:overload public function getCipherSuites() : java.NativeArray<String>;
	
	/**
	* Sets the array of ciphersuites.
	*
	* @param cipherSuites the array of ciphersuites (or null)
	*/
	@:overload public function setCipherSuites(cipherSuites : java.NativeArray<String>) : Void;
	
	/**
	* Returns a copy of the array of protocols or null if none
	* have been set.
	*
	* @return a copy of the array of protocols or null if none
	* have been set.
	*/
	@:overload public function getProtocols() : java.NativeArray<String>;
	
	/**
	* Sets the array of protocols.
	*
	* @param protocols the array of protocols (or null)
	*/
	@:overload public function setProtocols(protocols : java.NativeArray<String>) : Void;
	
	/**
	* Returns whether client authentication should be requested.
	*
	* @return whether client authentication should be requested.
	*/
	@:overload public function getWantClientAuth() : Bool;
	
	/**
	* Sets whether client authentication should be requested. Calling
	* this method clears the <code>needClientAuth</code> flag.
	*
	* @param wantClientAuth whether client authentication should be requested
	*/
	@:overload public function setWantClientAuth(wantClientAuth : Bool) : Void;
	
	/**
	* Returns whether client authentication should be required.
	*
	* @return whether client authentication should be required.
	*/
	@:overload public function getNeedClientAuth() : Bool;
	
	/**
	* Sets whether client authentication should be required. Calling
	* this method clears the <code>wantClientAuth</code> flag.
	*
	* @param needClientAuth whether client authentication should be required
	*/
	@:overload public function setNeedClientAuth(needClientAuth : Bool) : Void;
	
	/**
	* Returns the cryptographic algorithm constraints.
	*
	* @return the cryptographic algorithm constraints, or null if the
	*     constraints have not been set
	*
	* @see #setAlgorithmConstraints(AlgorithmConstraints)
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function getAlgorithmConstraints() : java.security.AlgorithmConstraints;
	
	/**
	* Sets the cryptographic algorithm constraints, which will be used
	* in addition to any configured by the runtime environment.
	* <p>
	* If the <code>constraints</code> parameter is non-null, every
	* cryptographic algorithm, key and algorithm parameters used in the
	* SSL/TLS handshake must be permitted by the constraints.
	*
	* @param constraints the algorithm constraints (or null)
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function setAlgorithmConstraints(constraints : java.security.AlgorithmConstraints) : Void;
	
	/**
	* Gets the endpoint identification algorithm.
	*
	* @return the endpoint identification algorithm, or null if none
	* has been set.
	*
	* @see X509ExtendedTrustManager
	* @see #setEndpointIdentificationAlgorithm(String)
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function getEndpointIdentificationAlgorithm() : String;
	
	/**
	* Sets the endpoint identification algorithm.
	* <p>
	* If the <code>algorithm</code> parameter is non-null or non-empty, the
	* endpoint identification/verification procedures must be handled during
	* SSL/TLS handshaking.  This is to prevent man-in-the-middle attacks.
	*
	* @param algorithm The standard string name of the endpoint
	*     identification algorithm (or null).  See Appendix A in the <a href=
	*   "{@docRoot}/../technotes/guides/security/crypto/CryptoSpec.html#AppA">
	*     Java Cryptography Architecture API Specification &amp; Reference </a>
	*     for information about standard algorithm names.
	*
	* @see X509ExtendedTrustManager
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function setEndpointIdentificationAlgorithm(algorithm : String) : Void;
	
	
}

package javax.net.ssl;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class TrustManagerFactory
{
	/**
	* Obtains the default TrustManagerFactory algorithm name.
	*
	* <p>The default TrustManager can be changed at runtime by setting
	* the value of the "ssl.TrustManagerFactory.algorithm" security
	* property (set in the Java security properties file or by calling
	* {@link java.security.Security#setProperty(String, String) })
	* to the desired algorithm name.
	*
	* @return the default algorithm name as specified in the
	* Java security properties, or an implementation-specific default
	* if no such property exists.
	*/
	@:overload @:public @:final @:static public static function getDefaultAlgorithm() : String;
	
	/**
	* Creates a TrustManagerFactory object.
	*
	* @param factorySpi the delegate
	* @param provider the provider
	* @param algorithm the algorithm
	*/
	@:overload @:protected private function new(factorySpi : javax.net.ssl.TrustManagerFactorySpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns the algorithm name of this <code>TrustManagerFactory</code>
	* object.
	*
	* <p>This is the same name that was specified in one of the
	* <code>getInstance</code> calls that created this
	* <code>TrustManagerFactory</code> object.
	*
	* @return the algorithm name of this <code>TrustManagerFactory</code>
	*          object
	*/
	@:overload @:public @:final public function getAlgorithm() : String;
	
	/**
	* Returns a <code>TrustManagerFactory</code> object that acts as a
	* factory for trust managers.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new TrustManagerFactory object encapsulating the
	* TrustManagerFactorySpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested trust management
	*          algorithm.  See the <a href=
	*  "{@docRoot}/../technotes/guides/security/jsse/JSSERefGuide.html">
	*          Java Secure Socket Extension Reference Guide </a>
	*          for information about standard algorithm names.
	*
	* @return the new <code>TrustManagerFactory</code> object.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          TrustManagerFactorySpi implementation for the
	*          specified algorithm.
	* @exception NullPointerException if algorithm is null.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static @:final public static function getInstance(algorithm : String) : javax.net.ssl.TrustManagerFactory;
	
	/**
	* Returns a <code>TrustManagerFactory</code> object that acts as a
	* factory for trust managers.
	*
	* <p> A new KeyManagerFactory object encapsulating the
	* KeyManagerFactorySpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested trust management
	*          algorithm.  See the <a href=
	*  "{@docRoot}/../technotes/guides/security/jsse/JSSERefGuide.html">
	*          Java Secure Socket Extension Reference Guide </a>
	*          for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new <code>TrustManagerFactory</code> object
	*
	* @throws NoSuchAlgorithmException if a TrustManagerFactorySpi
	*          implementation for the specified algorithm is not
	*          available from the specified provider.
	*
	* @throws NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @throws IllegalArgumentException if the provider name is null or empty.
	* @throws NullPointerException if algorithm is null.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static @:final public static function getInstance(algorithm : String, provider : String) : javax.net.ssl.TrustManagerFactory;
	
	/**
	* Returns a <code>TrustManagerFactory</code> object that acts as a
	* factory for trust managers.
	*
	* <p> A new TrustManagerFactory object encapsulating the
	* TrustManagerFactorySpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the standard name of the requested trust management
	*          algorithm.  See the <a href=
	*  "{@docRoot}/../technotes/guides/security/jsse/JSSERefGuide.html">
	*          Java Secure Socket Extension Reference Guide </a>
	*          for information about standard algorithm names.
	*
	* @param provider an instance of the provider.
	*
	* @return the new <code>TrustManagerFactory</code> object.
	*
	* @throws NoSuchAlgorithmException if a TrustManagerFactorySpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @throws IllegalArgumentException if the provider is null.
	* @throws NullPointerException if algorithm is null.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static @:final public static function getInstance(algorithm : String, provider : java.security.Provider) : javax.net.ssl.TrustManagerFactory;
	
	/**
	* Returns the provider of this <code>TrustManagerFactory</code> object.
	*
	* @return the provider of this <code>TrustManagerFactory</code> object
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this factory with a source of certificate
	* authorities and related trust material.
	* <P>
	* The provider typically uses a KeyStore as a basis for making
	* trust decisions.
	* <P>
	* For more flexible initialization, please see
	* {@link #init(ManagerFactoryParameters)}.
	*
	* @param ks the key store, or null
	* @throws KeyStoreException if this operation fails
	*/
	@:overload @:public @:final public function init(ks : java.security.KeyStore) : Void;
	
	/**
	* Initializes this factory with a source of provider-specific
	* trust material.
	* <P>
	* In some cases, initialization parameters other than a keystore
	* may be needed by a provider.  Users of that particular provider
	* are expected to pass an implementation of the appropriate
	* <CODE>ManagerFactoryParameters</CODE> as defined by the
	* provider.  The provider can then call the specified methods in
	* the <CODE>ManagerFactoryParameters</CODE> implementation to obtain the
	* needed information.
	*
	* @param spec an implementation of a provider-specific parameter
	*          specification
	* @throws InvalidAlgorithmParameterException if an error is
	*          encountered
	*/
	@:overload @:public @:final public function init(spec : javax.net.ssl.ManagerFactoryParameters) : Void;
	
	/**
	* Returns one trust manager for each type of trust material.
	*
	* @throws IllegalStateException if the factory is not initialized.
	*
	* @return the trust managers
	*/
	@:overload @:public @:final public function getTrustManagers() : java.NativeArray<javax.net.ssl.TrustManager>;
	
	
}

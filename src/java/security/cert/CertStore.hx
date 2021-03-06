package java.security.cert;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CertStore
{
	/**
	* Creates a <code>CertStore</code> object of the given type, and
	* encapsulates the given provider implementation (SPI object) in it.
	*
	* @param storeSpi the provider implementation
	* @param provider the provider
	* @param type the type
	* @param params the initialization parameters (may be <code>null</code>)
	*/
	@:overload @:protected private function new(storeSpi : java.security.cert.CertStoreSpi, provider : java.security.Provider, type : String, params : java.security.cert.CertStoreParameters) : Void;
	
	/**
	* Returns a <code>Collection</code> of <code>Certificate</code>s that
	* match the specified selector. If no <code>Certificate</code>s
	* match the selector, an empty <code>Collection</code> will be returned.
	* <p>
	* For some <code>CertStore</code> types, the resulting
	* <code>Collection</code> may not contain <b>all</b> of the
	* <code>Certificate</code>s that match the selector. For instance,
	* an LDAP <code>CertStore</code> may not search all entries in the
	* directory. Instead, it may just search entries that are likely to
	* contain the <code>Certificate</code>s it is looking for.
	* <p>
	* Some <code>CertStore</code> implementations (especially LDAP
	* <code>CertStore</code>s) may throw a <code>CertStoreException</code>
	* unless a non-null <code>CertSelector</code> is provided that
	* includes specific criteria that can be used to find the certificates.
	* Issuer and/or subject names are especially useful criteria.
	*
	* @param selector A <code>CertSelector</code> used to select which
	*  <code>Certificate</code>s should be returned. Specify <code>null</code>
	*  to return all <code>Certificate</code>s (if supported).
	* @return A <code>Collection</code> of <code>Certificate</code>s that
	*         match the specified selector (never <code>null</code>)
	* @throws CertStoreException if an exception occurs
	*/
	@:overload @:public @:final public function getCertificates(selector : java.security.cert.CertSelector) : java.util.Collection<java.security.cert.Certificate>;
	
	/**
	* Returns a <code>Collection</code> of <code>CRL</code>s that
	* match the specified selector. If no <code>CRL</code>s
	* match the selector, an empty <code>Collection</code> will be returned.
	* <p>
	* For some <code>CertStore</code> types, the resulting
	* <code>Collection</code> may not contain <b>all</b> of the
	* <code>CRL</code>s that match the selector. For instance,
	* an LDAP <code>CertStore</code> may not search all entries in the
	* directory. Instead, it may just search entries that are likely to
	* contain the <code>CRL</code>s it is looking for.
	* <p>
	* Some <code>CertStore</code> implementations (especially LDAP
	* <code>CertStore</code>s) may throw a <code>CertStoreException</code>
	* unless a non-null <code>CRLSelector</code> is provided that
	* includes specific criteria that can be used to find the CRLs.
	* Issuer names and/or the certificate to be checked are especially useful.
	*
	* @param selector A <code>CRLSelector</code> used to select which
	*  <code>CRL</code>s should be returned. Specify <code>null</code>
	*  to return all <code>CRL</code>s (if supported).
	* @return A <code>Collection</code> of <code>CRL</code>s that
	*         match the specified selector (never <code>null</code>)
	* @throws CertStoreException if an exception occurs
	*/
	@:overload @:public @:final public function getCRLs(selector : java.security.cert.CRLSelector) : java.util.Collection<java.security.cert.CRL>;
	
	/**
	* Returns a <code>CertStore</code> object that implements the specified
	* <code>CertStore</code> type and is initialized with the specified
	* parameters.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new CertStore object encapsulating the
	* CertStoreSpi implementation from the first
	* Provider that supports the specified type is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* <p>The <code>CertStore</code> that is returned is initialized with the
	* specified <code>CertStoreParameters</code>. The type of parameters
	* needed may vary between different types of <code>CertStore</code>s.
	* Note that the specified <code>CertStoreParameters</code> object is
	* cloned.
	*
	* @param type the name of the requested <code>CertStore</code> type.
	* See the CertStore section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertStore">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard types.
	*
	* @param params the initialization parameters (may be <code>null</code>).
	*
	* @return a <code>CertStore</code> object that implements the specified
	*          <code>CertStore</code> type.
	*
	* @throws NoSuchAlgorithmException if no Provider supports a
	*          CertStoreSpi implementation for the specified type.
	*
	* @throws InvalidAlgorithmParameterException if the specified
	*          initialization parameters are inappropriate for this
	*          <code>CertStore</code>.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static public static function getInstance(type : String, params : java.security.cert.CertStoreParameters) : java.security.cert.CertStore;
	
	/**
	* Returns a <code>CertStore</code> object that implements the specified
	* <code>CertStore</code> type.
	*
	* <p> A new CertStore object encapsulating the
	* CertStoreSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* <p>The <code>CertStore</code> that is returned is initialized with the
	* specified <code>CertStoreParameters</code>. The type of parameters
	* needed may vary between different types of <code>CertStore</code>s.
	* Note that the specified <code>CertStoreParameters</code> object is
	* cloned.
	*
	* @param type the requested <code>CertStore</code> type.
	* See the CertStore section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertStore">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard types.
	*
	* @param params the initialization parameters (may be <code>null</code>).
	*
	* @param provider the name of the provider.
	*
	* @return a <code>CertStore</code> object that implements the
	*          specified type.
	*
	* @throws NoSuchAlgorithmException if a CertStoreSpi
	*          implementation for the specified type is not
	*          available from the specified provider.
	*
	* @throws InvalidAlgorithmParameterException if the specified
	*          initialization parameters are inappropriate for this
	*          <code>CertStore</code>.
	*
	* @throws NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the <code>provider</code> is
	*          null or empty.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static public static function getInstance(type : String, params : java.security.cert.CertStoreParameters, provider : String) : java.security.cert.CertStore;
	
	/**
	* Returns a <code>CertStore</code> object that implements the specified
	* <code>CertStore</code> type.
	*
	* <p> A new CertStore object encapsulating the
	* CertStoreSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* <p>The <code>CertStore</code> that is returned is initialized with the
	* specified <code>CertStoreParameters</code>. The type of parameters
	* needed may vary between different types of <code>CertStore</code>s.
	* Note that the specified <code>CertStoreParameters</code> object is
	* cloned.
	*
	* @param type the requested <code>CertStore</code> type.
	* See the CertStore section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertStore">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard types.
	*
	* @param params the initialization parameters (may be <code>null</code>).
	*
	* @param provider the provider.
	*
	* @return a <code>CertStore</code> object that implements the
	*          specified type.
	*
	* @exception NoSuchAlgorithmException if a CertStoreSpi
	*          implementation for the specified type is not available
	*          from the specified Provider object.
	*
	* @throws InvalidAlgorithmParameterException if the specified
	*          initialization parameters are inappropriate for this
	*          <code>CertStore</code>
	*
	* @exception IllegalArgumentException if the <code>provider</code> is
	*          null.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static public static function getInstance(type : String, params : java.security.cert.CertStoreParameters, provider : java.security.Provider) : java.security.cert.CertStore;
	
	/**
	* Returns the parameters used to initialize this <code>CertStore</code>.
	* Note that the <code>CertStoreParameters</code> object is cloned before
	* it is returned.
	*
	* @return the parameters used to initialize this <code>CertStore</code>
	* (may be <code>null</code>)
	*/
	@:overload @:public @:final public function getCertStoreParameters() : java.security.cert.CertStoreParameters;
	
	/**
	* Returns the type of this <code>CertStore</code>.
	*
	* @return the type of this <code>CertStore</code>
	*/
	@:overload @:public @:final public function getType() : String;
	
	/**
	* Returns the provider of this <code>CertStore</code>.
	*
	* @return the provider of this <code>CertStore</code>
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Returns the default <code>CertStore</code> type as specified in the
	* Java security properties file, or the string &quot;LDAP&quot; if no
	* such property exists. The Java security properties file is located in
	* the file named &lt;JAVA_HOME&gt;/lib/security/java.security.
	* &lt;JAVA_HOME&gt; refers to the value of the java.home system property,
	* and specifies the directory where the JRE is installed.
	*
	* <p>The default <code>CertStore</code> type can be used by applications
	* that do not want to use a hard-coded type when calling one of the
	* <code>getInstance</code> methods, and want to provide a default
	* <code>CertStore</code> type in case a user does not specify its own.
	*
	* <p>The default <code>CertStore</code> type can be changed by setting
	* the value of the "certstore.type" security property (in the Java
	* security properties file) to the desired type.
	*
	* @return the default <code>CertStore</code> type as specified in the
	* Java security properties file, or the string &quot;LDAP&quot;
	* if no such property exists.
	*/
	@:overload @:public @:final @:static public static function getDefaultType() : String;
	
	
}

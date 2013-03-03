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
extern class CertPathValidator
{
	/**
	* Creates a <code>CertPathValidator</code> object of the given algorithm,
	* and encapsulates the given provider implementation (SPI object) in it.
	*
	* @param validatorSpi the provider implementation
	* @param provider the provider
	* @param algorithm the algorithm name
	*/
	@:overload @:protected private function new(validatorSpi : java.security.cert.CertPathValidatorSpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns a <code>CertPathValidator</code> object that implements the
	* specified algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new CertPathValidator object encapsulating the
	* CertPathValidatorSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the requested <code>CertPathValidator</code>
	*  algorithm. See the CertPathValidator section in the <a href=
	*  "{@docRoot}/../technotes/guides/security/StandardNames.html#CertPathValidator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return a <code>CertPathValidator</code> object that implements the
	*          specified algorithm.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          CertPathValidatorSpi implementation for the
	*          specified algorithm.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static public static function getInstance(algorithm : String) : java.security.cert.CertPathValidator;
	
	/**
	* Returns a <code>CertPathValidator</code> object that implements the
	* specified algorithm.
	*
	* <p> A new CertPathValidator object encapsulating the
	* CertPathValidatorSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the requested <code>CertPathValidator</code>
	*  algorithm. See the CertPathValidator section in the <a href=
	*  "{@docRoot}/../technotes/guides/security/StandardNames.html#CertPathValidator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return a <code>CertPathValidator</code> object that implements the
	*          specified algorithm.
	*
	* @exception NoSuchAlgorithmException if a CertPathValidatorSpi
	*          implementation for the specified algorithm is not
	*          available from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the <code>provider</code> is
	*          null or empty.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static public static function getInstance(algorithm : String, provider : String) : java.security.cert.CertPathValidator;
	
	/**
	* Returns a <code>CertPathValidator</code> object that implements the
	* specified algorithm.
	*
	* <p> A new CertPathValidator object encapsulating the
	* CertPathValidatorSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the name of the requested <code>CertPathValidator</code>
	* algorithm. See the CertPathValidator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#CertPathValidator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return a <code>CertPathValidator</code> object that implements the
	*          specified algorithm.
	*
	* @exception NoSuchAlgorithmException if a CertPathValidatorSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the <code>provider</code> is
	*          null.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static public static function getInstance(algorithm : String, provider : java.security.Provider) : java.security.cert.CertPathValidator;
	
	/**
	* Returns the <code>Provider</code> of this
	* <code>CertPathValidator</code>.
	*
	* @return the <code>Provider</code> of this <code>CertPathValidator</code>
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Returns the algorithm name of this <code>CertPathValidator</code>.
	*
	* @return the algorithm name of this <code>CertPathValidator</code>
	*/
	@:overload @:public @:final public function getAlgorithm() : String;
	
	/**
	* Validates the specified certification path using the specified
	* algorithm parameter set.
	* <p>
	* The <code>CertPath</code> specified must be of a type that is
	* supported by the validation algorithm, otherwise an
	* <code>InvalidAlgorithmParameterException</code> will be thrown. For
	* example, a <code>CertPathValidator</code> that implements the PKIX
	* algorithm validates <code>CertPath</code> objects of type X.509.
	*
	* @param certPath the <code>CertPath</code> to be validated
	* @param params the algorithm parameters
	* @return the result of the validation algorithm
	* @exception CertPathValidatorException if the <code>CertPath</code>
	* does not validate
	* @exception InvalidAlgorithmParameterException if the specified
	* parameters or the type of the specified <code>CertPath</code> are
	* inappropriate for this <code>CertPathValidator</code>
	*/
	@:overload @:public @:final public function validate(certPath : java.security.cert.CertPath, params : java.security.cert.CertPathParameters) : java.security.cert.CertPathValidatorResult;
	
	/**
	* Returns the default <code>CertPathValidator</code> type as specified in
	* the Java security properties file, or the string &quot;PKIX&quot;
	* if no such property exists. The Java security properties file is
	* located in the file named &lt;JAVA_HOME&gt;/lib/security/java.security.
	* &lt;JAVA_HOME&gt; refers to the value of the java.home system property,
	* and specifies the directory where the JRE is installed.
	*
	* <p>The default <code>CertPathValidator</code> type can be used by
	* applications that do not want to use a hard-coded type when calling one
	* of the <code>getInstance</code> methods, and want to provide a default
	* type in case a user does not specify its own.
	*
	* <p>The default <code>CertPathValidator</code> type can be changed by
	* setting the value of the "certpathvalidator.type" security property
	* (in the Java security properties file) to the desired type.
	*
	* @return the default <code>CertPathValidator</code> type as specified
	* in the Java security properties file, or the string &quot;PKIX&quot;
	* if no such property exists.
	*/
	@:overload @:public @:final @:static public static function getDefaultType() : String;
	
	
}

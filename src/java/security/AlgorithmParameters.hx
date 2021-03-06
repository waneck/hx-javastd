package java.security;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AlgorithmParameters
{
	/**
	* Creates an AlgorithmParameters object.
	*
	* @param paramSpi the delegate
	* @param provider the provider
	* @param algorithm the algorithm
	*/
	@:overload @:protected private function new(paramSpi : java.security.AlgorithmParametersSpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns the name of the algorithm associated with this parameter object.
	*
	* @return the algorithm name.
	*/
	@:overload @:public @:final public function getAlgorithm() : String;
	
	/**
	* Returns a parameter object for the specified algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new AlgorithmParameters object encapsulating the
	* AlgorithmParametersSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* <p> The returned parameter object must be initialized via a call to
	* <code>init</code>, using an appropriate parameter specification or
	* parameter encoding.
	*
	* @param algorithm the name of the algorithm requested.
	* See the AlgorithmParameters section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#AlgorithmParameters">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the new parameter object.
	*
	* @exception NoSuchAlgorithmException if no Provider supports an
	*          AlgorithmParametersSpi implementation for the
	*          specified algorithm.
	*
	* @see Provider
	*/
	@:overload @:public @:static public static function getInstance(algorithm : String) : java.security.AlgorithmParameters;
	
	/**
	* Returns a parameter object for the specified algorithm.
	*
	* <p> A new AlgorithmParameters object encapsulating the
	* AlgorithmParametersSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* <p>The returned parameter object must be initialized via a call to
	* <code>init</code>, using an appropriate parameter specification or
	* parameter encoding.
	*
	* @param algorithm the name of the algorithm requested.
	* See the AlgorithmParameters section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#AlgorithmParameters">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new parameter object.
	*
	* @exception NoSuchAlgorithmException if an AlgorithmParametersSpi
	*          implementation for the specified algorithm is not
	*          available from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the provider name is null
	*          or empty.
	*
	* @see Provider
	*/
	@:overload @:public @:static public static function getInstance(algorithm : String, provider : String) : java.security.AlgorithmParameters;
	
	/**
	* Returns a parameter object for the specified algorithm.
	*
	* <p> A new AlgorithmParameters object encapsulating the
	* AlgorithmParametersSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* <p>The returned parameter object must be initialized via a call to
	* <code>init</code>, using an appropriate parameter specification or
	* parameter encoding.
	*
	* @param algorithm the name of the algorithm requested.
	* See the AlgorithmParameters section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#AlgorithmParameters">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new parameter object.
	*
	* @exception NoSuchAlgorithmException if an AlgorithmParameterGeneratorSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the provider is null.
	*
	* @see Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function getInstance(algorithm : String, provider : java.security.Provider) : java.security.AlgorithmParameters;
	
	/**
	* Returns the provider of this parameter object.
	*
	* @return the provider of this parameter object
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this parameter object using the parameters
	* specified in <code>paramSpec</code>.
	*
	* @param paramSpec the parameter specification.
	*
	* @exception InvalidParameterSpecException if the given parameter
	* specification is inappropriate for the initialization of this parameter
	* object, or if this parameter object has already been initialized.
	*/
	@:overload @:public @:final public function init(paramSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Imports the specified parameters and decodes them according to the
	* primary decoding format for parameters. The primary decoding
	* format for parameters is ASN.1, if an ASN.1 specification for this type
	* of parameters exists.
	*
	* @param params the encoded parameters.
	*
	* @exception IOException on decoding errors, or if this parameter object
	* has already been initialized.
	*/
	@:overload @:public @:final public function init(params : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Imports the parameters from <code>params</code> and decodes them
	* according to the specified decoding scheme.
	* If <code>format</code> is null, the
	* primary decoding format for parameters is used. The primary decoding
	* format is ASN.1, if an ASN.1 specification for these parameters
	* exists.
	*
	* @param params the encoded parameters.
	*
	* @param format the name of the decoding scheme.
	*
	* @exception IOException on decoding errors, or if this parameter object
	* has already been initialized.
	*/
	@:overload @:public @:final public function init(params : java.NativeArray<java.StdTypes.Int8>, format : String) : Void;
	
	/**
	* Returns a (transparent) specification of this parameter object.
	* <code>paramSpec</code> identifies the specification class in which
	* the parameters should be returned. It could, for example, be
	* <code>DSAParameterSpec.class</code>, to indicate that the
	* parameters should be returned in an instance of the
	* <code>DSAParameterSpec</code> class.
	*
	* @param paramSpec the specification class in which
	* the parameters should be returned.
	*
	* @return the parameter specification.
	*
	* @exception InvalidParameterSpecException if the requested parameter
	* specification is inappropriate for this parameter object, or if this
	* parameter object has not been initialized.
	*/
	@:overload @:public @:final public function getParameterSpec<T : java.security.spec.AlgorithmParameterSpec>(paramSpec : Class<T>) : T;
	
	/**
	* Returns the parameters in their primary encoding format.
	* The primary encoding format for parameters is ASN.1, if an ASN.1
	* specification for this type of parameters exists.
	*
	* @return the parameters encoded using their primary encoding format.
	*
	* @exception IOException on encoding errors, or if this parameter object
	* has not been initialized.
	*/
	@:overload @:public @:final public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the parameters encoded in the specified scheme.
	* If <code>format</code> is null, the
	* primary encoding format for parameters is used. The primary encoding
	* format is ASN.1, if an ASN.1 specification for these parameters
	* exists.
	*
	* @param format the name of the encoding format.
	*
	* @return the parameters encoded using the specified encoding scheme.
	*
	* @exception IOException on encoding errors, or if this parameter object
	* has not been initialized.
	*/
	@:overload @:public @:final public function getEncoded(format : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a formatted string describing the parameters.
	*
	* @return a formatted string describing the parameters, or null if this
	* parameter object has not been initialized.
	*/
	@:overload @:public @:final public function toString() : String;
	
	
}

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
extern class AlgorithmParameterGenerator
{
	/**
	* Creates an AlgorithmParameterGenerator object.
	*
	* @param paramGenSpi the delegate
	* @param provider the provider
	* @param algorithm the algorithm
	*/
	@:overload private function new(paramGenSpi : java.security.AlgorithmParameterGeneratorSpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns the standard name of the algorithm this parameter
	* generator is associated with.
	*
	* @return the string name of the algorithm.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Returns an AlgorithmParameterGenerator object for generating
	* a set of parameters to be used with the specified algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new AlgorithmParameterGenerator object encapsulating the
	* AlgorithmParameterGeneratorSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the algorithm this
	* parameter generator is associated with.
	* See the AlgorithmParameterGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#AlgorithmParameterGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the new AlgorithmParameterGenerator object.
	*
	* @exception NoSuchAlgorithmException if no Provider supports an
	*          AlgorithmParameterGeneratorSpi implementation for the
	*          specified algorithm.
	*
	* @see Provider
	*/
	@:overload public static function getInstance(algorithm : String) : AlgorithmParameterGenerator;
	
	/**
	* Returns an AlgorithmParameterGenerator object for generating
	* a set of parameters to be used with the specified algorithm.
	*
	* <p> A new AlgorithmParameterGenerator object encapsulating the
	* AlgorithmParameterGeneratorSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the algorithm this
	* parameter generator is associated with.
	* See the AlgorithmParameterGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#AlgorithmParameterGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the string name of the Provider.
	*
	* @return the new AlgorithmParameterGenerator object.
	*
	* @exception NoSuchAlgorithmException if an AlgorithmParameterGeneratorSpi
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
	@:overload public static function getInstance(algorithm : String, provider : String) : AlgorithmParameterGenerator;
	
	/**
	* Returns an AlgorithmParameterGenerator object for generating
	* a set of parameters to be used with the specified algorithm.
	*
	* <p> A new AlgorithmParameterGenerator object encapsulating the
	* AlgorithmParameterGeneratorSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the string name of the algorithm this
	* parameter generator is associated with.
	* See the AlgorithmParameterGenerator section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#AlgorithmParameterGenerator">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the Provider object.
	*
	* @return the new AlgorithmParameterGenerator object.
	*
	* @exception NoSuchAlgorithmException if an AlgorithmParameterGeneratorSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the specified provider is null.
	*
	* @see Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getInstance(algorithm : String, provider : java.security.Provider) : AlgorithmParameterGenerator;
	
	/**
	* Returns the provider of this algorithm parameter generator object.
	*
	* @return the provider of this algorithm parameter generator object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this parameter generator for a certain size.
	* To create the parameters, the <code>SecureRandom</code>
	* implementation of the highest-priority installed provider is used as
	* the source of randomness.
	* (If none of the installed providers supply an implementation of
	* <code>SecureRandom</code>, a system-provided source of randomness is
	* used.)
	*
	* @param size the size (number of bits).
	*/
	@:overload @:final public function init(size : Int) : Void;
	
	/**
	* Initializes this parameter generator for a certain size and source
	* of randomness.
	*
	* @param size the size (number of bits).
	* @param random the source of randomness.
	*/
	@:overload @:final public function init(size : Int, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this parameter generator with a set of algorithm-specific
	* parameter generation values.
	* To generate the parameters, the <code>SecureRandom</code>
	* implementation of the highest-priority installed provider is used as
	* the source of randomness.
	* (If none of the installed providers supply an implementation of
	* <code>SecureRandom</code>, a system-provided source of randomness is
	* used.)
	*
	* @param genParamSpec the set of algorithm-specific parameter generation values.
	*
	* @exception InvalidAlgorithmParameterException if the given parameter
	* generation values are inappropriate for this parameter generator.
	*/
	@:overload @:final public function init(genParamSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Initializes this parameter generator with a set of algorithm-specific
	* parameter generation values.
	*
	* @param genParamSpec the set of algorithm-specific parameter generation values.
	* @param random the source of randomness.
	*
	* @exception InvalidAlgorithmParameterException if the given parameter
	* generation values are inappropriate for this parameter generator.
	*/
	@:overload @:final public function init(genParamSpec : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Generates the parameters.
	*
	* @return the new AlgorithmParameters object.
	*/
	@:overload @:final public function generateParameters() : java.security.AlgorithmParameters;
	
	
}

package java.security;
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
extern class SecureRandom extends java.util.Random
{
	/**
	* Constructs a secure random number generator (RNG) implementing the
	* default random number algorithm.
	*
	* <p> This constructor traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new SecureRandom object encapsulating the
	* SecureRandomSpi implementation from the first
	* Provider that supports a SecureRandom (RNG) algorithm is returned.
	* If none of the Providers support a RNG algorithm,
	* then an implementation-specific default is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* <p> See the SecureRandom section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#SecureRandom">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard RNG algorithm names.
	*
	* <p> The returned SecureRandom object has not been seeded.  To seed the
	* returned object, call the <code>setSeed</code> method.
	* If <code>setSeed</code> is not called, the first call to
	* <code>nextBytes</code> will force the SecureRandom object to seed itself.
	* This self-seeding will not occur if <code>setSeed</code> was
	* previously called.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a secure random number generator (RNG) implementing the
	* default random number algorithm.
	* The SecureRandom instance is seeded with the specified seed bytes.
	*
	* <p> This constructor traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new SecureRandom object encapsulating the
	* SecureRandomSpi implementation from the first
	* Provider that supports a SecureRandom (RNG) algorithm is returned.
	* If none of the Providers support a RNG algorithm,
	* then an implementation-specific default is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* <p> See the SecureRandom section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#SecureRandom">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard RNG algorithm names.
	*
	* @param seed the seed.
	*/
	@:overload public function new(seed : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Creates a SecureRandom object.
	*
	* @param secureRandomSpi the SecureRandom implementation.
	* @param provider the provider.
	*/
	@:overload private function new(secureRandomSpi : java.security.SecureRandomSpi, provider : java.security.Provider) : Void;
	
	/**
	* Returns a SecureRandom object that implements the specified
	* Random Number Generator (RNG) algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new SecureRandom object encapsulating the
	* SecureRandomSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* <p> The returned SecureRandom object has not been seeded.  To seed the
	* returned object, call the <code>setSeed</code> method.
	* If <code>setSeed</code> is not called, the first call to
	* <code>nextBytes</code> will force the SecureRandom object to seed itself.
	* This self-seeding will not occur if <code>setSeed</code> was
	* previously called.
	*
	* @param algorithm the name of the RNG algorithm.
	* See the SecureRandom section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#SecureRandom">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard RNG algorithm names.
	*
	* @return the new SecureRandom object.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          SecureRandomSpi implementation for the
	*          specified algorithm.
	*
	* @see Provider
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public static function getInstance(algorithm : String) : java.security.SecureRandom;
	
	/**
	* Returns a SecureRandom object that implements the specified
	* Random Number Generator (RNG) algorithm.
	*
	* <p> A new SecureRandom object encapsulating the
	* SecureRandomSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* <p> The returned SecureRandom object has not been seeded.  To seed the
	* returned object, call the <code>setSeed</code> method.
	* If <code>setSeed</code> is not called, the first call to
	* <code>nextBytes</code> will force the SecureRandom object to seed itself.
	* This self-seeding will not occur if <code>setSeed</code> was
	* previously called.
	*
	* @param algorithm the name of the RNG algorithm.
	* See the SecureRandom section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#SecureRandom">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard RNG algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new SecureRandom object.
	*
	* @exception NoSuchAlgorithmException if a SecureRandomSpi
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
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public static function getInstance(algorithm : String, provider : String) : java.security.SecureRandom;
	
	/**
	* Returns a SecureRandom object that implements the specified
	* Random Number Generator (RNG) algorithm.
	*
	* <p> A new SecureRandom object encapsulating the
	* SecureRandomSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* <p> The returned SecureRandom object has not been seeded.  To seed the
	* returned object, call the <code>setSeed</code> method.
	* If <code>setSeed</code> is not called, the first call to
	* <code>nextBytes</code> will force the SecureRandom object to seed itself.
	* This self-seeding will not occur if <code>setSeed</code> was
	* previously called.
	*
	* @param algorithm the name of the RNG algorithm.
	* See the SecureRandom section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#SecureRandom">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard RNG algorithm names.
	*
	* @param provider the provider.
	*
	* @return the new SecureRandom object.
	*
	* @exception NoSuchAlgorithmException if a SecureRandomSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the specified provider is null.
	*
	* @see Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getInstance(algorithm : String, provider : java.security.Provider) : java.security.SecureRandom;
	
	/**
	* Returns the provider of this SecureRandom object.
	*
	* @return the provider of this SecureRandom object.
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Returns the name of the algorithm implemented by this SecureRandom
	* object.
	*
	* @return the name of the algorithm or <code>unknown</code>
	*          if the algorithm name cannot be determined.
	* @since 1.5
	*/
	@:require(java5) @:overload public function getAlgorithm() : String;
	
	/**
	* Reseeds this random object. The given seed supplements, rather than
	* replaces, the existing seed. Thus, repeated calls are guaranteed
	* never to reduce randomness.
	*
	* @param seed the seed.
	*
	* @see #getSeed
	*/
	@:overload @:synchronized public function setSeed(seed : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Reseeds this random object, using the eight bytes contained
	* in the given <code>long seed</code>. The given seed supplements,
	* rather than replaces, the existing seed. Thus, repeated calls
	* are guaranteed never to reduce randomness.
	*
	* <p>This method is defined for compatibility with
	* <code>java.util.Random</code>.
	*
	* @param seed the seed.
	*
	* @see #getSeed
	*/
	@:overload public function setSeed(seed : haxe.Int64) : Void;
	
	/**
	* Generates a user-specified number of random bytes.
	*
	* <p> If a call to <code>setSeed</code> had not occurred previously,
	* the first call to this method forces this SecureRandom object
	* to seed itself.  This self-seeding will not occur if
	* <code>setSeed</code> was previously called.
	*
	* @param bytes the array to be filled in with random bytes.
	*/
	@:overload @:synchronized public function nextBytes(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Generates an integer containing the user-specified number of
	* pseudo-random bits (right justified, with leading zeros).  This
	* method overrides a <code>java.util.Random</code> method, and serves
	* to provide a source of random bits to all of the methods inherited
	* from that class (for example, <code>nextInt</code>,
	* <code>nextLong</code>, and <code>nextFloat</code>).
	*
	* @param numBits number of pseudo-random bits to be generated, where
	* 0 <= <code>numBits</code> <= 32.
	*
	* @return an <code>int</code> containing the user-specified number
	* of pseudo-random bits (right justified, with leading zeros).
	*/
	@:overload @:final private function next(numBits : Int) : Int;
	
	/**
	* Returns the given number of seed bytes, computed using the seed
	* generation algorithm that this class uses to seed itself.  This
	* call may be used to seed other random number generators.
	*
	* <p>This method is only included for backwards compatibility.
	* The caller is encouraged to use one of the alternative
	* <code>getInstance</code> methods to obtain a SecureRandom object, and
	* then call the <code>generateSeed</code> method to obtain seed bytes
	* from that object.
	*
	* @param numBytes the number of seed bytes to generate.
	*
	* @return the seed bytes.
	*
	* @see #setSeed
	*/
	@:overload public static function getSeed(numBytes : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the given number of seed bytes, computed using the seed
	* generation algorithm that this class uses to seed itself.  This
	* call may be used to seed other random number generators.
	*
	* @param numBytes the number of seed bytes to generate.
	*
	* @return the seed bytes.
	*/
	@:overload public function generateSeed(numBytes : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}

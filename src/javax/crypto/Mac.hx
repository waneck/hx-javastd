package javax.crypto;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Mac implements java.lang.Cloneable
{
	/**
	* Creates a MAC object.
	*
	* @param macSpi the delegate
	* @param provider the provider
	* @param algorithm the algorithm
	*/
	@:overload @:protected private function new(macSpi : javax.crypto.MacSpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns the algorithm name of this <code>Mac</code> object.
	*
	* <p>This is the same name that was specified in one of the
	* <code>getInstance</code> calls that created this
	* <code>Mac</code> object.
	*
	* @return the algorithm name of this <code>Mac</code> object.
	*/
	@:overload @:public @:final public function getAlgorithm() : String;
	
	/**
	* Returns a <code>Mac</code> object that implements the
	* specified MAC algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new Mac object encapsulating the
	* MacSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested MAC algorithm.
	* See the Mac section in the <a href=
	*   "{@docRoot}/../technotes/guides/security/StandardNames.html#Mac">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the new <code>Mac</code> object.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          MacSpi implementation for the
	*          specified algorithm.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static @:final public static function getInstance(algorithm : String) : javax.crypto.Mac;
	
	/**
	* Returns a <code>Mac</code> object that implements the
	* specified MAC algorithm.
	*
	* <p> A new Mac object encapsulating the
	* MacSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the standard name of the requested MAC algorithm.
	* See the Mac section in the <a href=
	*   "{@docRoot}/../technotes/guides/security/StandardNames.html#Mac">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return the new <code>Mac</code> object.
	*
	* @exception NoSuchAlgorithmException if a MacSpi
	*          implementation for the specified algorithm is not
	*          available from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null or empty.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static @:final public static function getInstance(algorithm : String, provider : String) : javax.crypto.Mac;
	
	/**
	* Returns a <code>Mac</code> object that implements the
	* specified MAC algorithm.
	*
	* <p> A new Mac object encapsulating the
	* MacSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the standard name of the requested MAC algorithm.
	* See the Mac section in the <a href=
	*   "{@docRoot}/../technotes/guides/security/StandardNames.html#Mac">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return the new <code>Mac</code> object.
	*
	* @exception NoSuchAlgorithmException if a MacSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the <code>provider</code>
	*          is null.
	*
	* @see java.security.Provider
	*/
	@:overload @:public @:static @:final public static function getInstance(algorithm : String, provider : java.security.Provider) : javax.crypto.Mac;
	
	/**
	* Returns the provider of this <code>Mac</code> object.
	*
	* @return the provider of this <code>Mac</code> object.
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Returns the length of the MAC in bytes.
	*
	* @return the MAC length in bytes.
	*/
	@:overload @:public @:final public function getMacLength() : Int;
	
	/**
	* Initializes this <code>Mac</code> object with the given key.
	*
	* @param key the key.
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this MAC.
	*/
	@:overload @:public @:final public function init(key : java.security.Key) : Void;
	
	/**
	* Initializes this <code>Mac</code> object with the given key and
	* algorithm parameters.
	*
	* @param key the key.
	* @param params the algorithm parameters.
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this MAC.
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this MAC.
	*/
	@:overload @:public @:final public function init(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Processes the given byte.
	*
	* @param input the input byte to be processed.
	*
	* @exception IllegalStateException if this <code>Mac</code> has not been
	* initialized.
	*/
	@:overload @:public @:final public function update(input : java.StdTypes.Int8) : Void;
	
	/**
	* Processes the given array of bytes.
	*
	* @param input the array of bytes to be processed.
	*
	* @exception IllegalStateException if this <code>Mac</code> has not been
	* initialized.
	*/
	@:overload @:public @:final public function update(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Processes the first <code>len</code> bytes in <code>input</code>,
	* starting at <code>offset</code> inclusive.
	*
	* @param input the input buffer.
	* @param offset the offset in <code>input</code> where the input starts.
	* @param len the number of bytes to process.
	*
	* @exception IllegalStateException if this <code>Mac</code> has not been
	* initialized.
	*/
	@:overload @:public @:final public function update(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Processes <code>input.remaining()</code> bytes in the ByteBuffer
	* <code>input</code>, starting at <code>input.position()</code>.
	* Upon return, the buffer's position will be equal to its limit;
	* its limit will not have changed.
	*
	* @param input the ByteBuffer
	*
	* @exception IllegalStateException if this <code>Mac</code> has not been
	* initialized.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:final public function update(input : java.nio.ByteBuffer) : Void;
	
	/**
	* Finishes the MAC operation.
	*
	* <p>A call to this method resets this <code>Mac</code> object to the
	* state it was in when previously initialized via a call to
	* <code>init(Key)</code> or
	* <code>init(Key, AlgorithmParameterSpec)</code>.
	* That is, the object is reset and available to generate another MAC from
	* the same key, if desired, via new calls to <code>update</code> and
	* <code>doFinal</code>.
	* (In order to reuse this <code>Mac</code> object with a different key,
	* it must be reinitialized via a call to <code>init(Key)</code> or
	* <code>init(Key, AlgorithmParameterSpec)</code>.
	*
	* @return the MAC result.
	*
	* @exception IllegalStateException if this <code>Mac</code> has not been
	* initialized.
	*/
	@:overload @:public @:final public function doFinal() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Finishes the MAC operation.
	*
	* <p>A call to this method resets this <code>Mac</code> object to the
	* state it was in when previously initialized via a call to
	* <code>init(Key)</code> or
	* <code>init(Key, AlgorithmParameterSpec)</code>.
	* That is, the object is reset and available to generate another MAC from
	* the same key, if desired, via new calls to <code>update</code> and
	* <code>doFinal</code>.
	* (In order to reuse this <code>Mac</code> object with a different key,
	* it must be reinitialized via a call to <code>init(Key)</code> or
	* <code>init(Key, AlgorithmParameterSpec)</code>.
	*
	* <p>The MAC result is stored in <code>output</code>, starting at
	* <code>outOffset</code> inclusive.
	*
	* @param output the buffer where the MAC result is stored
	* @param outOffset the offset in <code>output</code> where the MAC is
	* stored
	*
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the result
	* @exception IllegalStateException if this <code>Mac</code> has not been
	* initialized.
	*/
	@:overload @:public @:final public function doFinal(output : java.NativeArray<java.StdTypes.Int8>, outOffset : Int) : Void;
	
	/**
	* Processes the given array of bytes and finishes the MAC operation.
	*
	* <p>A call to this method resets this <code>Mac</code> object to the
	* state it was in when previously initialized via a call to
	* <code>init(Key)</code> or
	* <code>init(Key, AlgorithmParameterSpec)</code>.
	* That is, the object is reset and available to generate another MAC from
	* the same key, if desired, via new calls to <code>update</code> and
	* <code>doFinal</code>.
	* (In order to reuse this <code>Mac</code> object with a different key,
	* it must be reinitialized via a call to <code>init(Key)</code> or
	* <code>init(Key, AlgorithmParameterSpec)</code>.
	*
	* @param input data in bytes
	* @return the MAC result.
	*
	* @exception IllegalStateException if this <code>Mac</code> has not been
	* initialized.
	*/
	@:overload @:public @:final public function doFinal(input : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Resets this <code>Mac</code> object.
	*
	* <p>A call to this method resets this <code>Mac</code> object to the
	* state it was in when previously initialized via a call to
	* <code>init(Key)</code> or
	* <code>init(Key, AlgorithmParameterSpec)</code>.
	* That is, the object is reset and available to generate another MAC from
	* the same key, if desired, via new calls to <code>update</code> and
	* <code>doFinal</code>.
	* (In order to reuse this <code>Mac</code> object with a different key,
	* it must be reinitialized via a call to <code>init(Key)</code> or
	* <code>init(Key, AlgorithmParameterSpec)</code>.
	*/
	@:overload @:public @:final public function reset() : Void;
	
	/**
	* Returns a clone if the provider implementation is cloneable.
	*
	* @return a clone if the provider implementation is cloneable.
	*
	* @exception CloneNotSupportedException if this is called on a
	* delegate that does not support <code>Cloneable</code>.
	*/
	@:overload @:public @:final public function clone() : Dynamic;
	
	
}

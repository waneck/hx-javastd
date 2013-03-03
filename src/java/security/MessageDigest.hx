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
extern class MessageDigest extends java.security.MessageDigestSpi
{
	/**
	* Creates a message digest with the specified algorithm name.
	*
	* @param algorithm the standard name of the digest algorithm.
	* See the MessageDigest section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#MessageDigest">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*/
	@:overload @:protected private function new(algorithm : String) : Void;
	
	/**
	* Returns a MessageDigest object that implements the specified digest
	* algorithm.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new MessageDigest object encapsulating the
	* MessageDigestSpi implementation from the first
	* Provider that supports the specified algorithm is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the algorithm requested.
	* See the MessageDigest section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#MessageDigest">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return a Message Digest object that implements the specified algorithm.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          MessageDigestSpi implementation for the
	*          specified algorithm.
	*
	* @see Provider
	*/
	@:overload @:public @:static public static function getInstance(algorithm : String) : java.security.MessageDigest;
	
	/**
	* Returns a MessageDigest object that implements the specified digest
	* algorithm.
	*
	* <p> A new MessageDigest object encapsulating the
	* MessageDigestSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the name of the algorithm requested.
	* See the MessageDigest section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#MessageDigest">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the name of the provider.
	*
	* @return a MessageDigest object that implements the specified algorithm.
	*
	* @exception NoSuchAlgorithmException if a MessageDigestSpi
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
	@:overload @:public @:static public static function getInstance(algorithm : String, provider : String) : java.security.MessageDigest;
	
	/**
	* Returns a MessageDigest object that implements the specified digest
	* algorithm.
	*
	* <p> A new MessageDigest object encapsulating the
	* MessageDigestSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param algorithm the name of the algorithm requested.
	* See the MessageDigest section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#MessageDigest">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @param provider the provider.
	*
	* @return a MessageDigest object that implements the specified algorithm.
	*
	* @exception NoSuchAlgorithmException if a MessageDigestSpi
	*          implementation for the specified algorithm is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the specified provider is null.
	*
	* @see Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function getInstance(algorithm : String, provider : java.security.Provider) : java.security.MessageDigest;
	
	/**
	* Returns the provider of this message digest object.
	*
	* @return the provider of this message digest object
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Updates the digest using the specified byte.
	*
	* @param input the byte with which to update the digest.
	*/
	@:overload @:public public function update(input : java.StdTypes.Int8) : Void;
	
	/**
	* Updates the digest using the specified array of bytes, starting
	* at the specified offset.
	*
	* @param input the array of bytes.
	*
	* @param offset the offset to start from in the array of bytes.
	*
	* @param len the number of bytes to use, starting at
	* <code>offset</code>.
	*/
	@:overload @:public public function update(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Updates the digest using the specified array of bytes.
	*
	* @param input the array of bytes.
	*/
	@:overload @:public public function update(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Update the digest using the specified ByteBuffer. The digest is
	* updated using the <code>input.remaining()</code> bytes starting
	* at <code>input.position()</code>.
	* Upon return, the buffer's position will be equal to its limit;
	* its limit will not have changed.
	*
	* @param input the ByteBuffer
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:final public function update(input : java.nio.ByteBuffer) : Void;
	
	/**
	* Completes the hash computation by performing final operations
	* such as padding. The digest is reset after this call is made.
	*
	* @return the array of bytes for the resulting hash value.
	*/
	@:overload @:public public function digest() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Completes the hash computation by performing final operations
	* such as padding. The digest is reset after this call is made.
	*
	* @param buf output buffer for the computed digest
	*
	* @param offset offset into the output buffer to begin storing the digest
	*
	* @param len number of bytes within buf allotted for the digest
	*
	* @return the number of bytes placed into <code>buf</code>
	*
	* @exception DigestException if an error occurs.
	*/
	@:overload @:public public function digest(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	/**
	* Performs a final update on the digest using the specified array
	* of bytes, then completes the digest computation. That is, this
	* method first calls {@link #update(byte[]) update(input)},
	* passing the <i>input</i> array to the <code>update</code> method,
	* then calls {@link #digest() digest()}.
	*
	* @param input the input to be updated before the digest is
	* completed.
	*
	* @return the array of bytes for the resulting hash value.
	*/
	@:overload @:public public function digest(input : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a string representation of this message digest object.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Compares two digests for equality. Does a simple byte compare.
	*
	* @param digesta one of the digests to compare.
	*
	* @param digestb the other digest to compare.
	*
	* @return true if the digests are equal, false otherwise.
	*/
	@:overload @:public @:static public static function isEqual(digesta : java.NativeArray<java.StdTypes.Int8>, digestb : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Resets the digest for further use.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Returns a string that identifies the algorithm, independent of
	* implementation details. The name should be a standard
	* Java Security name (such as "SHA", "MD5", and so on).
	* See the MessageDigest section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#MessageDigest">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard algorithm names.
	*
	* @return the name of the algorithm
	*/
	@:overload @:public @:final public function getAlgorithm() : String;
	
	/**
	* Returns the length of the digest in bytes, or 0 if this operation is
	* not supported by the provider and the implementation is not cloneable.
	*
	* @return the digest length in bytes, or 0 if this operation is not
	* supported by the provider and the implementation is not cloneable.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:final public function getDigestLength() : Int;
	
	/**
	* Returns a clone if the implementation is cloneable.
	*
	* @return a clone if the implementation is cloneable.
	*
	* @exception CloneNotSupportedException if this is called on an
	* implementation that does not support <code>Cloneable</code>.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	
}
/*
* The following class allows providers to extend from MessageDigestSpi
* rather than from MessageDigest. It represents a MessageDigest with an
* encapsulated, provider-supplied SPI object (of type MessageDigestSpi).
* If the provider implementation is an instance of MessageDigestSpi,
* the getInstance() methods above return an instance of this class, with
* the SPI object encapsulated.
*
* Note: All SPI methods from the original MessageDigest class have been
* moved up the hierarchy into a new class (MessageDigestSpi), which has
* been interposed in the hierarchy between the API (MessageDigest)
* and its original parent (Object).
*/
@:native('java$security$MessageDigest$Delegate') @:internal extern class MessageDigest_Delegate extends java.security.MessageDigest
{
	@:overload @:public public function new(digestSpi : java.security.MessageDigestSpi, algorithm : String) : Void;
	
	/**
	* Returns a clone if the delegate is cloneable.
	*
	* @return a clone if the delegate is cloneable.
	*
	* @exception CloneNotSupportedException if this is called on a
	* delegate that does not support <code>Cloneable</code>.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	@:overload @:protected override private function engineGetDigestLength() : Int;
	
	@:overload @:protected override private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	@:overload @:protected override private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	@:overload @:protected override private function engineUpdate(input : java.nio.ByteBuffer) : Void;
	
	@:overload @:protected override private function engineDigest() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function engineDigest(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	@:overload @:protected override private function engineReset() : Void;
	
	
}

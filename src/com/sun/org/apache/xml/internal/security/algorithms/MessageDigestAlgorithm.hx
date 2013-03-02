package com.sun.org.apache.xml.internal.security.algorithms;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class MessageDigestAlgorithm extends com.sun.org.apache.xml.internal.security.algorithms.Algorithm
{
	/** Message Digest - NOT RECOMMENDED MD5*/
	public static var ALGO_ID_DIGEST_NOT_RECOMMENDED_MD5(default, null) : String;
	
	/** Digest - Required SHA1*/
	public static var ALGO_ID_DIGEST_SHA1(default, null) : String;
	
	/** Message Digest - RECOMMENDED SHA256*/
	public static var ALGO_ID_DIGEST_SHA256(default, null) : String;
	
	/** Message Digest - OPTIONAL SHA384*/
	public static var ALGO_ID_DIGEST_SHA384(default, null) : String;
	
	/** Message Digest - OPTIONAL SHA512*/
	public static var ALGO_ID_DIGEST_SHA512(default, null) : String;
	
	/** Message Digest - OPTIONAL RIPEMD-160*/
	public static var ALGO_ID_DIGEST_RIPEMD160(default, null) : String;
	
	/**
	* Factory method for constructing a message digest algorithm by name.
	*
	* @param doc
	* @param algorithmURI
	* @return The MessageDigestAlgorithm element to attach in document and to digest
	* @throws XMLSignatureException
	*/
	@:overload public static function getInstance(doc : org.w3c.dom.Document, algorithmURI : String) : com.sun.org.apache.xml.internal.security.algorithms.MessageDigestAlgorithm;
	
	/**
	* Returns the actual {@link java.security.MessageDigest} algorithm object
	*
	* @return the actual {@link java.security.MessageDigest} algorithm object
	*/
	@:overload public function getAlgorithm() : java.security.MessageDigest;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#isEqual}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @param digesta
	* @param digestb
	* @return the result of the {@link java.security.MessageDigest#isEqual} method
	*/
	@:overload public static function isEqual(digesta : java.NativeArray<java.StdTypes.Int8>, digestb : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#digest()}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @return the result of the {@link java.security.MessageDigest#digest()} method
	*/
	@:overload public function digest() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#digest(byte[])}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @param input
	* @return the result of the {@link java.security.MessageDigest#digest(byte[])} method
	*/
	@:overload public function digest(input : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#digest(byte[], int, int)}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @param buf
	* @param offset
	* @param len
	* @return the result of the {@link java.security.MessageDigest#digest(byte[], int, int)} method
	* @throws java.security.DigestException
	*/
	@:overload public function digest(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#getAlgorithm}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @return the result of the {@link java.security.MessageDigest#getAlgorithm} method
	*/
	@:overload public function getJCEAlgorithmString() : String;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#getProvider}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @return the result of the {@link java.security.MessageDigest#getProvider} method
	*/
	@:overload public function getJCEProvider() : java.security.Provider;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#getDigestLength}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @return the result of the {@link java.security.MessageDigest#getDigestLength} method
	*/
	@:overload public function getDigestLength() : Int;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#reset}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	*/
	@:overload public function reset() : Void;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#update(byte[])}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @param input
	*/
	@:overload public function update(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#update(byte)}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @param input
	*/
	@:overload public function update(input : java.StdTypes.Int8) : Void;
	
	/**
	* Proxy method for {@link java.security.MessageDigest#update(byte[], int, int)}
	* which is executed on the internal {@link java.security.MessageDigest} object.
	*
	* @param buf
	* @param offset
	* @param len
	*/
	@:overload public function update(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/** @inheritDoc */
	@:overload override public function getBaseNamespace() : String;
	
	/** @inheritDoc */
	@:overload override public function getBaseLocalName() : String;
	
	
}

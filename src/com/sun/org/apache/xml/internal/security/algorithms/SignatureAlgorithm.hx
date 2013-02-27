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
extern class SignatureAlgorithm extends com.sun.org.apache.xml.internal.security.algorithms.Algorithm
{
	/** Field _signatureAlgorithm */
	private var _signatureAlgorithm : com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithmSpi;
	
	/**
	* Constructor SignatureAlgorithm
	*
	* @param doc
	* @param algorithmURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, algorithmURI : String) : Void;
	
	/**
	* Constructor SignatureAlgorithm
	*
	* @param doc
	* @param algorithmURI
	* @param HMACOutputLength
	* @throws XMLSecurityException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, algorithmURI : String, HMACOutputLength : Int) : Void;
	
	/**
	* Constructor SignatureAlgorithm
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#sign()}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @return the result of the {@link java.security.Signature#sign()} method
	* @throws XMLSignatureException
	*/
	@:overload public function sign() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Proxy method for {@link java.security.Signature#getAlgorithm}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @return the result of the {@link java.security.Signature#getAlgorithm} method
	*/
	@:overload public function getJCEAlgorithmString() : String;
	
	/**
	* Method getJCEProviderName
	*
	* @return The Provider of this Signature Alogrithm
	*/
	@:overload public function getJCEProviderName() : String;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte[])}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param input
	* @throws XMLSignatureException
	*/
	@:overload public function update(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param input
	* @throws XMLSignatureException
	*/
	@:overload public function update(input : java.StdTypes.Int8) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte[], int, int)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param buf
	* @param offset
	* @param len
	* @throws XMLSignatureException
	*/
	@:overload public function update(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#initSign(java.security.PrivateKey)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param signingKey
	* @throws XMLSignatureException
	*/
	@:overload public function initSign(signingKey : java.security.Key) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#initSign(java.security.PrivateKey, java.security.SecureRandom)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param signingKey
	* @param secureRandom
	* @throws XMLSignatureException
	*/
	@:overload public function initSign(signingKey : java.security.Key, secureRandom : java.security.SecureRandom) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#initSign(java.security.PrivateKey)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param signingKey
	* @param algorithmParameterSpec
	* @throws XMLSignatureException
	*/
	@:overload public function initSign(signingKey : java.security.Key, algorithmParameterSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#setParameter(java.security.spec.AlgorithmParameterSpec)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param params
	* @throws XMLSignatureException
	*/
	@:overload public function setParameter(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#initVerify(java.security.PublicKey)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param verificationKey
	* @throws XMLSignatureException
	*/
	@:overload public function initVerify(verificationKey : java.security.Key) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#verify(byte[])}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param signature
	* @return true if if the signature is valid.
	*
	* @throws XMLSignatureException
	*/
	@:overload public function verify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Returns the URI representation of Transformation algorithm
	*
	* @return the URI representation of Transformation algorithm
	*/
	@:overload @:final public function getURI() : String;
	
	/**
	* Initalizes for this {@link com.sun.org.apache.xml.internal.security.transforms.Transform}
	*
	*/
	@:overload public static function providerInit() : Void;
	
	/**
	* Registers implementing class of the Transform algorithm with algorithmURI
	*
	* @param algorithmURI algorithmURI URI representation of <code>Transform algorithm</code>.
	* @param implementingClass <code>implementingClass</code> the implementing class of {@link SignatureAlgorithmSpi}
	* @throws AlgorithmAlreadyRegisteredException if specified algorithmURI is already registered
	* @throws XMLSignatureException
	*/
	@:overload public static function register(algorithmURI : String, implementingClass : String) : Void;
	
	/**
	* Method getBaseNamespace
	*
	* @return URI of this element
	*/
	@:overload override public function getBaseNamespace() : String;
	
	/**
	* Method getBaseLocalName
	*
	* @return Local name
	*/
	@:overload override public function getBaseLocalName() : String;
	
	
}

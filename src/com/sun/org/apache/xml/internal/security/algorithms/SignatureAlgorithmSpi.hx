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
extern class SignatureAlgorithmSpi
{
	/**
	* Returns the URI representation of <code>Transformation algorithm</code>
	*
	* @return the URI representation of <code>Transformation algorithm</code>
	*/
	@:overload @:protected @:abstract private function engineGetURI() : String;
	
	/**
	* Proxy method for {@link java.security.Signature#getAlgorithm}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @return the result of the {@link java.security.Signature#getAlgorithm} method
	*/
	@:overload @:protected @:abstract private function engineGetJCEAlgorithmString() : String;
	
	/**
	* Method engineGetJCEProviderName
	*
	* @return the JCE ProviderName
	*/
	@:overload @:protected @:abstract private function engineGetJCEProviderName() : String;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte[])}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param input
	* @throws XMLSignatureException
	*/
	@:overload @:protected @:abstract private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte[])}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param input
	* @throws XMLSignatureException
	*/
	@:overload @:protected @:abstract private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte[], int, int)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param buf
	* @param offset
	* @param len
	* @throws XMLSignatureException
	*/
	@:overload @:protected @:abstract private function engineUpdate(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#initSign(java.security.PrivateKey)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param signingKey
	* @throws XMLSignatureException if this method is called on a MAC
	*/
	@:overload @:protected @:abstract private function engineInitSign(signingKey : java.security.Key) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#initSign(java.security.PrivateKey, java.security.SecureRandom)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param signingKey
	* @param secureRandom
	* @throws XMLSignatureException if this method is called on a MAC
	*/
	@:overload @:protected @:abstract private function engineInitSign(signingKey : java.security.Key, secureRandom : java.security.SecureRandom) : Void;
	
	/**
	* Proxy method for {@link javax.crypto.Mac}
	* which is executed on the internal {@link javax.crypto.Mac#init(Key)} object.
	*
	* @param signingKey
	* @param algorithmParameterSpec
	* @throws XMLSignatureException if this method is called on a Signature
	*/
	@:overload @:protected @:abstract private function engineInitSign(signingKey : java.security.Key, algorithmParameterSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#sign()}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @return the result of the {@link java.security.Signature#sign()} method
	* @throws XMLSignatureException
	*/
	@:overload @:protected @:abstract private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method engineInitVerify
	*
	* @param verificationKey
	* @throws XMLSignatureException
	*/
	@:overload @:protected @:abstract private function engineInitVerify(verificationKey : java.security.Key) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#verify(byte[])}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param signature
	* @return true if the signature is correct
	* @throws XMLSignatureException
	*/
	@:overload @:protected @:abstract private function engineVerify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Proxy method for {@link java.security.Signature#setParameter(java.security.spec.AlgorithmParameterSpec)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param params
	* @throws XMLSignatureException
	*/
	@:overload @:protected @:abstract private function engineSetParameter(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Method engineGetContextFromElement
	*
	* @param element
	*/
	@:overload @:protected private function engineGetContextFromElement(element : org.w3c.dom.Element) : Void;
	
	/**
	* Method engineSetHMACOutputLength
	*
	* @param HMACOutputLength
	* @throws XMLSignatureException
	*/
	@:overload @:protected @:abstract private function engineSetHMACOutputLength(HMACOutputLength : Int) : Void;
	
	@:overload @:public public function reset() : Void;
	
	
}

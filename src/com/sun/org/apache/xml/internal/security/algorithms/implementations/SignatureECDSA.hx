package com.sun.org.apache.xml.internal.security.algorithms.implementations;
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
extern class SignatureECDSA extends com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithmSpi
{
	/** @inheritDoc */
	@:overload @:public @:abstract override public function engineGetURI() : String;
	
	/**
	* Constructor SignatureRSA
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineSetParameter(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineVerify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineInitVerify(publicKey : java.security.Key) : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineInitSign(privateKey : java.security.Key, secureRandom : java.security.SecureRandom) : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineInitSign(privateKey : java.security.Key) : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineUpdate(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineGetJCEAlgorithmString() : String;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineGetJCEProviderName() : String;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineSetHMACOutputLength(HMACOutputLength : Int) : Void;
	
	/** @inheritDoc */
	@:overload @:protected override private function engineInitSign(signingKey : java.security.Key, algorithmParameterSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	
}
/**
* Class SignatureRSASHA1
*
* @author $Author: mullan $
* @version $Revision: 1.2 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureECDSA$SignatureECDSASHA1') extern class SignatureECDSA_SignatureECDSASHA1 extends com.sun.org.apache.xml.internal.security.algorithms.implementations.SignatureECDSA
{
	/**
	* Constructor SignatureRSASHA1
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/** @inheritDoc */
	@:overload @:public override public function engineGetURI() : String;
	
	
}

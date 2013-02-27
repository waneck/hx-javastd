package com.sun.org.apache.xml.internal.security.algorithms.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2007 The Apache Software Foundation.
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
extern class SignatureBaseRSA extends com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithmSpi
{
	/** @inheritDoc */
	@:overload @:abstract override public function engineGetURI() : String;
	
	/**
	* Constructor SignatureRSA
	*
	* @throws XMLSignatureException
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload override private function engineSetParameter(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/** @inheritDoc */
	@:overload override private function engineVerify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/** @inheritDoc */
	@:overload override private function engineInitVerify(publicKey : java.security.Key) : Void;
	
	/** @inheritDoc */
	@:overload override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	/** @inheritDoc */
	@:overload override private function engineInitSign(privateKey : java.security.Key, secureRandom : java.security.SecureRandom) : Void;
	
	/** @inheritDoc */
	@:overload override private function engineInitSign(privateKey : java.security.Key) : Void;
	
	/** @inheritDoc */
	@:overload override private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** @inheritDoc */
	@:overload override private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	/** @inheritDoc */
	@:overload override private function engineUpdate(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/** @inheritDoc */
	@:overload override private function engineGetJCEAlgorithmString() : String;
	
	/** @inheritDoc */
	@:overload override private function engineGetJCEProviderName() : String;
	
	/** @inheritDoc */
	@:overload override private function engineSetHMACOutputLength(HMACOutputLength : Int) : Void;
	
	/** @inheritDoc */
	@:overload override private function engineInitSign(signingKey : java.security.Key, algorithmParameterSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	
}
/**
* Class SignatureRSASHA1
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureBaseRSA$SignatureRSASHA1') extern class SignatureBaseRSA_SignatureRSASHA1 extends SignatureBaseRSA
{
	/**
	* Constructor SignatureRSASHA1
	*
	* @throws XMLSignatureException
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload override public function engineGetURI() : String;
	
	
}
/**
* Class SignatureRSASHA256
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureBaseRSA$SignatureRSASHA256') extern class SignatureBaseRSA_SignatureRSASHA256 extends SignatureBaseRSA
{
	/**
	* Constructor SignatureRSASHA256
	*
	* @throws XMLSignatureException
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload override public function engineGetURI() : String;
	
	
}
/**
* Class SignatureRSASHA384
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureBaseRSA$SignatureRSASHA384') extern class SignatureBaseRSA_SignatureRSASHA384 extends SignatureBaseRSA
{
	/**
	* Constructor SignatureRSASHA384
	*
	* @throws XMLSignatureException
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload override public function engineGetURI() : String;
	
	
}
/**
* Class SignatureRSASHA512
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureBaseRSA$SignatureRSASHA512') extern class SignatureBaseRSA_SignatureRSASHA512 extends SignatureBaseRSA
{
	/**
	* Constructor SignatureRSASHA512
	*
	* @throws XMLSignatureException
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload override public function engineGetURI() : String;
	
	
}
/**
* Class SignatureRSARIPEMD160
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureBaseRSA$SignatureRSARIPEMD160') extern class SignatureBaseRSA_SignatureRSARIPEMD160 extends SignatureBaseRSA
{
	/**
	* Constructor SignatureRSARIPEMD160
	*
	* @throws XMLSignatureException
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload override public function engineGetURI() : String;
	
	
}
/**
* Class SignatureRSAMD5
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureBaseRSA$SignatureRSAMD5') extern class SignatureBaseRSA_SignatureRSAMD5 extends SignatureBaseRSA
{
	/**
	* Constructor SignatureRSAMD5
	*
	* @throws XMLSignatureException
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload override public function engineGetURI() : String;
	
	
}

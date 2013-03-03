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
extern class IntegrityHmac extends com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithmSpi
{
	/**
	* Method engineGetURI
	*
	*@inheritDoc
	*/
	@:overload @:public @:abstract override public function engineGetURI() : String;
	
	/**
	* Method IntegrityHmacSHA1das
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#setParameter(java.security.spec.AlgorithmParameterSpec)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param params
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineSetParameter(params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#verify(byte[])}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param signature
	* @return true if the signature is correct
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineVerify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Proxy method for {@link java.security.Signature#initVerify(java.security.PublicKey)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param secretKey
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineInitVerify(secretKey : java.security.Key) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#sign()}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @return the result of the {@link java.security.Signature#sign()} method
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method engineInitSign
	*
	* @param secretKey
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineInitSign(secretKey : java.security.Key) : Void;
	
	/**
	* Method engineInitSign
	*
	* @param secretKey
	* @param algorithmParameterSpec
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineInitSign(secretKey : java.security.Key, algorithmParameterSpec : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Method engineInitSign
	*
	* @param secretKey
	* @param secureRandom
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineInitSign(secretKey : java.security.Key, secureRandom : java.security.SecureRandom) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte[])}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param input
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param input
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	/**
	* Proxy method for {@link java.security.Signature#update(byte[], int, int)}
	* which is executed on the internal {@link java.security.Signature} object.
	*
	* @param buf
	* @param offset
	* @param len
	* @throws XMLSignatureException
	*/
	@:overload @:protected override private function engineUpdate(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Method engineGetJCEAlgorithmString
	* @inheritDoc
	*
	*/
	@:overload @:protected override private function engineGetJCEAlgorithmString() : String;
	
	/**
	* Method engineGetJCEAlgorithmString
	*
	* @inheritDoc
	*/
	@:overload @:protected override private function engineGetJCEProviderName() : String;
	
	/**
	* Method engineSetHMACOutputLength
	*
	* @param HMACOutputLength
	*/
	@:overload @:protected override private function engineSetHMACOutputLength(HMACOutputLength : Int) : Void;
	
	/**
	* Method engineGetContextFromElement
	*
	* @param element
	*/
	@:overload @:protected override private function engineGetContextFromElement(element : org.w3c.dom.Element) : Void;
	
	/**
	* Method engineAddContextToElement
	*
	* @param element
	*/
	@:overload @:public public function engineAddContextToElement(element : org.w3c.dom.Element) : Void;
	
	
}
/**
* Class IntegrityHmacSHA1
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1') extern class IntegrityHmac_IntegrityHmacSHA1 extends com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac
{
	/**
	* Constructor IntegrityHmacSHA1
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Method engineGetURI
	* @inheritDoc
	*
	*/
	@:overload @:public override public function engineGetURI() : String;
	
	
}
/**
* Class IntegrityHmacSHA256
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA256') extern class IntegrityHmac_IntegrityHmacSHA256 extends com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac
{
	/**
	* Constructor IntegrityHmacSHA256
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Method engineGetURI
	*
	* @inheritDoc
	*/
	@:overload @:public override public function engineGetURI() : String;
	
	
}
/**
* Class IntegrityHmacSHA384
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA384') extern class IntegrityHmac_IntegrityHmacSHA384 extends com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac
{
	/**
	* Constructor IntegrityHmacSHA384
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Method engineGetURI
	* @inheritDoc
	*
	*/
	@:overload @:public override public function engineGetURI() : String;
	
	
}
/**
* Class IntegrityHmacSHA512
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA512') extern class IntegrityHmac_IntegrityHmacSHA512 extends com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac
{
	/**
	* Constructor IntegrityHmacSHA512
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Method engineGetURI
	* @inheritDoc
	*
	*/
	@:overload @:public override public function engineGetURI() : String;
	
	
}
/**
* Class IntegrityHmacRIPEMD160
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacRIPEMD160') extern class IntegrityHmac_IntegrityHmacRIPEMD160 extends com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac
{
	/**
	* Constructor IntegrityHmacRIPEMD160
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Method engineGetURI
	*
	* @inheritDoc
	*/
	@:overload @:public override public function engineGetURI() : String;
	
	
}
/**
* Class IntegrityHmacMD5
*
* @author $Author: mullan $
* @version $Revision: 1.5 $
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacMD5') extern class IntegrityHmac_IntegrityHmacMD5 extends com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac
{
	/**
	* Constructor IntegrityHmacMD5
	*
	* @throws XMLSignatureException
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Method engineGetURI
	*
	* @inheritDoc
	*/
	@:overload @:public override public function engineGetURI() : String;
	
	
}

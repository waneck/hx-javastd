package com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations;
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
extern class EncryptedKeyResolver extends com.sun.org.apache.xml.internal.security.keys.keyresolver.KeyResolverSpi
{
	/**
	* Constructor for use when a KEK needs to be derived from a KeyInfo
	* list
	* @param algorithm
	*/
	@:overload @:public public function new(algorithm : String) : Void;
	
	/**
	* Constructor used for when a KEK has been set
	* @param algorithm
	* @param kek
	*/
	@:overload @:public public function new(algorithm : String, kek : java.security.Key) : Void;
	
	/** @inheritDoc */
	@:overload @:public override public function engineLookupAndResolvePublicKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.PublicKey;
	
	/** @inheritDoc */
	@:overload @:public override public function engineLookupResolveX509Certificate(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.cert.X509Certificate;
	
	/** @inheritDoc */
	@:overload @:public override public function engineLookupAndResolveSecretKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : javax.crypto.SecretKey;
	
	
}

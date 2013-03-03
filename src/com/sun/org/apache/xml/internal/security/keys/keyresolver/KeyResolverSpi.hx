package com.sun.org.apache.xml.internal.security.keys.keyresolver;
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
extern class KeyResolverSpi
{
	/**
	* This method helps the {@link com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolver} to decide whether a
	* {@link com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolverSpi} is able to perform the requested action.
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return
	*/
	@:overload @:public public function engineCanResolve(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : Bool;
	
	/**
	* Method engineResolvePublicKey
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved public key from the registered from the element.
	*
	* @throws KeyResolverException
	*/
	@:overload @:public public function engineResolvePublicKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.PublicKey;
	
	/**
	* Method engineResolvePublicKey
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved public key from the registered from the element.
	*
	* @throws KeyResolverException
	*/
	@:overload @:public public function engineLookupAndResolvePublicKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.PublicKey;
	
	/**
	* Method engineResolveCertificate
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved X509Certificate key from the registered from the elements
	*
	* @throws KeyResolverException
	*/
	@:overload @:public public function engineResolveX509Certificate(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.cert.X509Certificate;
	
	/**
	* Method engineResolveCertificate
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved X509Certificate key from the registered from the elements
	*
	* @throws KeyResolverException
	*/
	@:overload @:public public function engineLookupResolveX509Certificate(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.cert.X509Certificate;
	
	/**
	* Method engineResolveSecretKey
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved SecretKey key from the registered from the elements
	*
	* @throws KeyResolverException
	*/
	@:overload @:public public function engineResolveSecretKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : javax.crypto.SecretKey;
	
	/**
	* Method engineResolveSecretKey
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved SecretKey key from the registered from the elements
	*
	* @throws KeyResolverException
	*/
	@:overload @:public public function engineLookupAndResolveSecretKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : javax.crypto.SecretKey;
	
	/** Field _properties */
	@:protected private var _properties : java.util.Map<Dynamic, Dynamic>;
	
	@:protected private var globalResolver : Bool;
	
	/**
	* Method engineSetProperty
	*
	* @param key
	* @param value
	*/
	@:overload @:public public function engineSetProperty(key : String, value : String) : Void;
	
	/**
	* Method engineGetProperty
	*
	* @param key
	* @return obtain the property appointed by key
	*/
	@:overload @:public public function engineGetProperty(key : String) : String;
	
	/**
	* Method understandsProperty
	*
	* @param propertyToTest
	* @return true if understood the property
	*/
	@:overload @:public public function understandsProperty(propertyToTest : String) : Bool;
	
	@:overload @:public public function setGlobalResolver(globalResolver : Bool) : Void;
	
	
}

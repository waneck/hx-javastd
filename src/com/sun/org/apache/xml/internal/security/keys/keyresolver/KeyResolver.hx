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
extern class KeyResolver
{
	/** Field _resolverSpi */
	@:protected private var _resolverSpi : com.sun.org.apache.xml.internal.security.keys.keyresolver.KeyResolverSpi;
	
	/** Field _storage */
	@:protected private var _storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver;
	
	/**
	* Method length
	*
	* @return the length of resolvers registed
	*/
	@:overload @:public @:static public static function length() : Int;
	
	@:overload @:public @:static public static function hit(hintI : java.util.Iterator<Dynamic>) : Void;
	
	/**
	* Method getInstance
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return The certificate represented by the element.
	*
	* @throws KeyResolverException
	*/
	@:overload @:public @:static @:final public static function getX509Certificate(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.cert.X509Certificate;
	
	/**
	* Method getInstance
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return the public key contained in the element
	*
	* @throws KeyResolverException
	*/
	@:overload @:public @:static @:final public static function getPublicKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.PublicKey;
	
	/**
	* The init() function is called by com.sun.org.apache.xml.internal.security.Init.init()
	*/
	@:overload @:public @:static public static function init() : Void;
	
	/**
	* This method is used for registering {@link KeyResolverSpi}s which are
	* available to <I>all</I> {@link com.sun.org.apache.xml.internal.security.keys.KeyInfo} objects. This means that
	* personalized {@link KeyResolverSpi}s should only be registered directly
	* to the {@link com.sun.org.apache.xml.internal.security.keys.KeyInfo} using
	* {@link com.sun.org.apache.xml.internal.security.keys.KeyInfo#registerInternalKeyResolver}.
	*
	* @param className
	* @throws InstantiationException
	* @throws IllegalAccessException
	* @throws ClassNotFoundException
	*/
	@:overload @:public @:static public static function register(className : String) : Void;
	
	/**
	* This method is used for registering {@link KeyResolverSpi}s which are
	* available to <I>all</I> {@link com.sun.org.apache.xml.internal.security.keys.KeyInfo} objects. This means that
	* personalized {@link KeyResolverSpi}s should only be registered directly
	* to the {@link com.sun.org.apache.xml.internal.security.keys.KeyInfo} using {@link com.sun.org.apache.xml.internal.security.keys.KeyInfo#registerInternalKeyResolver}.
	*
	* @param className
	*/
	@:overload @:public @:static public static function registerAtStart(className : String) : Void;
	
	/**
	* Method resolve
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved public key from the registered from the elements
	*
	* @throws KeyResolverException
	*/
	@:overload @:public public function resolvePublicKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.PublicKey;
	
	/**
	* Method resolveX509Certificate
	*
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved X509certificate key from the registered from the elements
	*
	* @throws KeyResolverException
	*/
	@:overload @:public public function resolveX509Certificate(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : java.security.cert.X509Certificate;
	
	/**
	* @param element
	* @param BaseURI
	* @param storage
	* @return resolved SecretKey key from the registered from the elements
	* @throws KeyResolverException
	*/
	@:overload @:public public function resolveSecretKey(element : org.w3c.dom.Element, BaseURI : String, storage : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : javax.crypto.SecretKey;
	
	/**
	* Method setProperty
	*
	* @param key
	* @param value
	*/
	@:overload @:public public function setProperty(key : String, value : String) : Void;
	
	/**
	* Method getProperty
	*
	* @param key
	* @return the property setted for this resolver
	*/
	@:overload @:public public function getProperty(key : String) : String;
	
	/**
	* Method understandsProperty
	*
	* @param propertyToTest
	* @return true if the resolver understands property propertyToTest
	*/
	@:overload @:public public function understandsProperty(propertyToTest : String) : Bool;
	
	/**
	* Method resolverClassName
	*
	* @return the name of the resolver.
	*/
	@:overload @:public public function resolverClassName() : String;
	
	@:overload @:public @:static public static function iterator() : java.util.Iterator<Dynamic>;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver$ResolverIterator') @:internal extern class KeyResolver_ResolverIterator implements java.util.Iterator<Dynamic>
{
	@:overload @:public public function new(list : java.util.List<Dynamic>) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function remove() : Void;
	
	
}

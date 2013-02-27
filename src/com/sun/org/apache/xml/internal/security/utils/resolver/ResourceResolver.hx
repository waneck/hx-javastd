package com.sun.org.apache.xml.internal.security.utils.resolver;
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
extern class ResourceResolver
{
	/** Field transformSpi */
	private var _resolverSpi : com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolverSpi;
	
	/**
	* Constructor ResourceResolver
	*
	* @param resourceResolver
	*/
	@:overload public function new(resourceResolver : com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolverSpi) : Void;
	
	/**
	* Method getInstance
	*
	* @param uri
	* @param BaseURI
	* @return the instnace
	*
	* @throws ResourceResolverException
	*/
	@:overload @:final public static function getInstance(uri : org.w3c.dom.Attr, BaseURI : String) : ResourceResolver;
	
	/**
	* Method getInstance
	*
	* @param uri
	* @param BaseURI
	* @param individualResolvers
	* @return the instance
	*
	* @throws ResourceResolverException
	*/
	@:overload @:final public static function getInstance(uri : org.w3c.dom.Attr, BaseURI : String, individualResolvers : java.util.List<Dynamic>) : ResourceResolver;
	
	/**
	* The init() function is called by com.sun.org.apache.xml.internal.security.Init.init()
	*/
	@:overload public static function init() : Void;
	
	/**
	* Registers a ResourceResolverSpi class. This method logs a warning if
	* the class cannot be registered.
	*
	* @param className the name of the ResourceResolverSpi class to be
	*    registered
	*/
	@:overload public static function register(className : String) : Void;
	
	/**
	* Registers a ResourceResolverSpi class at the beginning of the provider
	* list. This method logs a warning if the class cannot be registered.
	*
	* @param className the name of the ResourceResolverSpi class to be
	*    registered
	*/
	@:overload public static function registerAtStart(className : String) : Void;
	
	/**
	* Method resolve
	*
	* @param uri
	* @param BaseURI
	* @return the resource
	*
	* @throws ResourceResolverException
	*/
	@:overload public static function resolveStatic(uri : org.w3c.dom.Attr, BaseURI : String) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Method resolve
	*
	* @param uri
	* @param BaseURI
	* @return the resource
	*
	* @throws ResourceResolverException
	*/
	@:overload public function resolve(uri : org.w3c.dom.Attr, BaseURI : String) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Method setProperty
	*
	* @param key
	* @param value
	*/
	@:overload public function setProperty(key : String, value : String) : Void;
	
	/**
	* Method getProperty
	*
	* @param key
	* @return the value of the property
	*/
	@:overload public function getProperty(key : String) : String;
	
	/**
	* Method addProperties
	*
	* @param properties
	*/
	@:overload public function addProperties(properties : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Method getPropertyKeys
	*
	* @return all property keys.
	*/
	@:overload public function getPropertyKeys() : java.NativeArray<String>;
	
	/**
	* Method understandsProperty
	*
	* @param propertyToTest
	* @return true if the resolver understands the property
	*/
	@:overload public function understandsProperty(propertyToTest : String) : Bool;
	
	
}

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
extern class JCEMapper
{
	/**
	* Method init
	*
	* @param mappingElement
	* @throws Exception
	*/
	@:overload public static function init(mappingElement : org.w3c.dom.Element) : Void;
	
	/**
	* Method translateURItoJCEID
	*
	* @param AlgorithmURI
	* @return the JCE standard name corresponding to the given URI
	*
	*/
	@:overload public static function translateURItoJCEID(AlgorithmURI : String) : String;
	
	/**
	* Method getAlgorithmClassFromURI
	* NOTE(Raul Benito) It seems a buggy function the loop doesn't do
	* anything??
	* @param AlgorithmURI
	* @return the class name that implements this algorithm
	*
	*/
	@:overload public static function getAlgorithmClassFromURI(AlgorithmURI : String) : String;
	
	/**
	* Returns the keylength in bit for a particular algorithm.
	*
	* @param AlgorithmURI
	* @return The length of the key used in the alogrithm
	*/
	@:overload public static function getKeyLengthFromURI(AlgorithmURI : String) : Int;
	
	/**
	* Method getJCEKeyAlgorithmFromURI
	*
	* @param AlgorithmURI
	* @return The KeyAlgorithm for the given URI.
	*
	*/
	@:overload public static function getJCEKeyAlgorithmFromURI(AlgorithmURI : String) : String;
	
	/**
	* Gets the default Provider for obtaining the security algorithms
	* @return the default providerId.
	*/
	@:overload public static function getProviderId() : String;
	
	/**
	* Sets the default Provider for obtaining the security algorithms
	* @param provider the default providerId.
	*/
	@:overload public static function setProviderId(provider : String) : Void;
	
	
}
/**
* Represents the Algorithm xml element
*/
@:native('com$sun$org$apache$xml$internal$security$algorithms$JCEMapper$Algorithm') extern class JCEMapper_Algorithm
{
	/**
	* Gets data from element
	* @param el
	*/
	@:overload public function new(el : org.w3c.dom.Element) : Void;
	
	
}

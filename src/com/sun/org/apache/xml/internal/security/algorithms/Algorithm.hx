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
extern class Algorithm extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/**
	*
	* @param doc
	* @param algorithmURI is the URI of the algorithm as String
	*/
	@:overload public function new(doc : org.w3c.dom.Document, algorithmURI : String) : Void;
	
	/**
	* Constructor Algorithm
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Method getAlgorithmURI
	*
	* @return The URI of the alogrithm
	*/
	@:overload public function getAlgorithmURI() : String;
	
	/**
	* Sets the algorithm's URI as used in the signature.
	*
	* @param algorithmURI is the URI of the algorithm as String
	*/
	@:overload private function setAlgorithmURI(algorithmURI : String) : Void;
	
	
}

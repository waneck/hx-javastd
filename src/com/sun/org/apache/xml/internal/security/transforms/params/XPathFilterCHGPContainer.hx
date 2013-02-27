package com.sun.org.apache.xml.internal.security.transforms.params;
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
extern class XPathFilterCHGPContainer extends com.sun.org.apache.xml.internal.security.utils.ElementProxy implements com.sun.org.apache.xml.internal.security.transforms.TransformParam
{
	/** Field _TAG_XPATHCHGP */
	public static var _TAG_XPATHCHGP(default, null) : String;
	
	/** Field _ATT_INCLUDESLASH */
	public static var _ATT_INCLUDESLASH(default, null) : String;
	
	/** Field IncludeSlash           */
	public static var IncludeSlash(default, null) : Bool;
	
	/** Field ExcludeSlash           */
	public static var ExcludeSlash(default, null) : Bool;
	
	/**
	* Creates a new XPathFilterCHGPContainer; needed for generation.
	*
	* @param doc
	* @param includeSlashPolicy
	* @param includeButSearch
	* @param excludeButSearch
	* @param exclude
	* @return the created object
	*/
	@:overload public static function getInstance(doc : org.w3c.dom.Document, includeSlashPolicy : Bool, includeButSearch : String, excludeButSearch : String, exclude : String) : XPathFilterCHGPContainer;
	
	/**
	* Creates a XPathFilterCHGPContainer from an existing Element; needed for verification.
	*
	* @param element
	* @param BaseURI
	*
	* @throws XMLSecurityException
	* @return the created object.
	*/
	@:overload public static function getInstance(element : org.w3c.dom.Element, BaseURI : String) : XPathFilterCHGPContainer;
	
	/**
	* Method getIncludeButSearch
	*
	* @return the string
	*/
	@:overload public function getIncludeButSearch() : String;
	
	/**
	* Method getExcludeButSearch
	*
	* @return the string
	*/
	@:overload public function getExcludeButSearch() : String;
	
	/**
	* Method getExclude
	*
	* @return the string
	*/
	@:overload public function getExclude() : String;
	
	/**
	* Method getIncludeSlashPolicy
	*
	* @return the string
	*/
	@:overload public function getIncludeSlashPolicy() : Bool;
	
	/**
	* Method getHereContextNodeIncludeButSearch
	*
	* @return the string
	*/
	@:overload public function getHereContextNodeIncludeButSearch() : org.w3c.dom.Node;
	
	/**
	* Method getHereContextNodeExcludeButSearch
	*
	* @return the string
	*/
	@:overload public function getHereContextNodeExcludeButSearch() : org.w3c.dom.Node;
	
	/**
	* Method getHereContextNodeExclude
	*
	* @return the string
	*/
	@:overload public function getHereContextNodeExclude() : org.w3c.dom.Node;
	
	/**
	* Method getBaseLocalName
	*
	* @inheritDoc
	*/
	@:overload @:final override public function getBaseLocalName() : String;
	
	/**
	* Method getBaseNamespace
	*
	* @inheritDoc
	*/
	@:overload @:final override public function getBaseNamespace() : String;
	
	
}

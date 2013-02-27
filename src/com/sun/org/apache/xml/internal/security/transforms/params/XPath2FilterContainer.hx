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
extern class XPath2FilterContainer extends com.sun.org.apache.xml.internal.security.utils.ElementProxy implements com.sun.org.apache.xml.internal.security.transforms.TransformParam
{
	/** Field INTERSECT */
	public static var INTERSECT(default, null) : String;
	
	/** Field SUBTRACT */
	public static var SUBTRACT(default, null) : String;
	
	/** Field UNION */
	public static var UNION(default, null) : String;
	
	/** Field _TAG_XPATH2 */
	public static var _TAG_XPATH2(default, null) : String;
	
	/** Field XPathFiler2NS */
	public static var XPathFilter2NS(default, null) : String;
	
	/**
	* Creates a new XPath2FilterContainer with the filter type "intersect".
	*
	* @param doc
	* @param xpath2filter
	* @return the filter.
	*/
	@:overload public static function newInstanceIntersect(doc : org.w3c.dom.Document, xpath2filter : String) : XPath2FilterContainer;
	
	/**
	* Creates a new XPath2FilterContainer with the filter type "subtract".
	*
	* @param doc
	* @param xpath2filter
	* @return the filter.
	*/
	@:overload public static function newInstanceSubtract(doc : org.w3c.dom.Document, xpath2filter : String) : XPath2FilterContainer;
	
	/**
	* Creates a new XPath2FilterContainer with the filter type "union".
	*
	* @param doc
	* @param xpath2filter
	* @return the filter
	*/
	@:overload public static function newInstanceUnion(doc : org.w3c.dom.Document, xpath2filter : String) : XPath2FilterContainer;
	
	/**
	* Method newInstances
	*
	* @param doc
	* @param params
	* @return the nodelist with the data
	*/
	@:overload public static function newInstances(doc : org.w3c.dom.Document, params : java.NativeArray<java.NativeArray<String>>) : org.w3c.dom.NodeList;
	
	/**
	* Creates a XPath2FilterContainer from an existing Element; needed for verification.
	*
	* @param element
	* @param BaseURI
	* @return the filter
	*
	* @throws XMLSecurityException
	*/
	@:overload public static function newInstance(element : org.w3c.dom.Element, BaseURI : String) : XPath2FilterContainer;
	
	/**
	* Returns <code>true</code> if the <code>Filter</code> attribute has value "intersect".
	*
	* @return <code>true</code> if the <code>Filter</code> attribute has value "intersect".
	*/
	@:overload public function isIntersect() : Bool;
	
	/**
	* Returns <code>true</code> if the <code>Filter</code> attribute has value "subtract".
	*
	* @return <code>true</code> if the <code>Filter</code> attribute has value "subtract".
	*/
	@:overload public function isSubtract() : Bool;
	
	/**
	* Returns <code>true</code> if the <code>Filter</code> attribute has value "union".
	*
	* @return <code>true</code> if the <code>Filter</code> attribute has value "union".
	*/
	@:overload public function isUnion() : Bool;
	
	/**
	* Returns the XPath 2 Filter String
	*
	* @return the XPath 2 Filter String
	*/
	@:overload public function getXPathFilterStr() : String;
	
	/**
	* Returns the first Text node which contains information from the XPath 2
	* Filter String. We must use this stupid hook to enable the here() function
	* to work.
	*
	* $todo$ I dunno whether this crashes: <XPath> here()<!-- comment -->/ds:Signature[1]</XPath>
	* @return the first Text node which contains information from the XPath 2 Filter String
	*/
	@:overload public function getXPathFilterTextNode() : org.w3c.dom.Node;
	
	/**
	* Method getBaseLocalName
	*
	* @return the XPATH2 tag
	*/
	@:overload @:final override public function getBaseLocalName() : String;
	
	/**
	* Method getBaseNamespace
	*
	* @return XPATH2 tag namespace
	*/
	@:overload @:final override public function getBaseNamespace() : String;
	
	
}

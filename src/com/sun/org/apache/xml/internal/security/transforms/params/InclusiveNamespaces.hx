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
extern class InclusiveNamespaces extends com.sun.org.apache.xml.internal.security.utils.ElementProxy implements com.sun.org.apache.xml.internal.security.transforms.TransformParam
{
	/** Field _TAG_EC_INCLUSIVENAMESPACES */
	public static var _TAG_EC_INCLUSIVENAMESPACES(default, null) : String;
	
	/** Field _ATT_EC_PREFIXLIST */
	public static var _ATT_EC_PREFIXLIST(default, null) : String;
	
	/** Field ExclusiveCanonicalizationNamespace */
	public static var ExclusiveCanonicalizationNamespace(default, null) : String;
	
	/**
	* Constructor XPathContainer
	*
	* @param doc
	* @param prefixList
	*/
	@:overload public function new(doc : org.w3c.dom.Document, prefixList : String) : Void;
	
	/**
	* Constructor InclusiveNamespaces
	*
	* @param doc
	* @param prefixes
	*/
	@:overload public function new(doc : org.w3c.dom.Document, prefixes : java.util.Set<Dynamic>) : Void;
	
	/**
	* Method getInclusiveNamespaces
	*
	* @return The Inclusive Namespace string
	*/
	@:overload public function getInclusiveNamespaces() : String;
	
	/**
	* Constructor InclusiveNamespaces
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Decodes the <code>inclusiveNamespaces</code> String and returns all
	* selected namespace prefixes as a Set. The <code>#default</code>
	* namespace token is represented as an empty namespace prefix
	* (<code>"xmlns"</code>).
	* <BR/>
	* The String <code>inclusiveNamespaces=" xenc    ds #default"</code>
	* is returned as a Set containing the following Strings:
	* <UL>
	* <LI><code>xmlns</code></LI>
	* <LI><code>xenc</code></LI>
	* <LI><code>ds</code></LI>
	* </UL>
	*
	* @param inclusiveNamespaces
	* @return A set to string
	*/
	@:overload public static function prefixStr2Set(inclusiveNamespaces : String) : java.util.SortedSet<Dynamic>;
	
	/**
	* Method getBaseNamespace
	*
	* @inheritDoc
	*/
	@:overload public function getBaseNamespace() : String;
	
	/**
	* Method getBaseLocalName
	*
	* @inheritDoc
	*/
	@:overload public function getBaseLocalName() : String;
	
	
}

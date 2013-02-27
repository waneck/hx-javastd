package com.sun.org.apache.xpath.internal;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: SourceTreeManager.java,v 1.2.4.1 2005/09/10 18:14:09 jeffsuttor Exp $
*/
extern class SourceTreeManager
{
	/**
	* Reset the list of SourceTree objects that this manager manages.
	*
	*/
	@:overload public function reset() : Void;
	
	/**
	* Set an object that will be used to resolve URIs used in
	* document(), etc.
	* @param resolver An object that implements the URIResolver interface,
	* or null.
	*/
	@:overload public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	/**
	* Get the object that will be used to resolve URIs used in
	* document(), etc.
	* @return An object that implements the URIResolver interface,
	* or null.
	*/
	@:overload public function getURIResolver() : javax.xml.transform.URIResolver;
	
	/**
	* Given a document, find the URL associated with that document.
	* @param owner Document that was previously processed by this liaison.
	*
	* @return The base URI of the owner argument.
	*/
	@:overload public function findURIFromDoc(owner : Int) : String;
	
	/**
	* This will be called by the processor when it encounters
	* an xsl:include, xsl:import, or document() function.
	*
	* @param base The base URI that should be used.
	* @param urlString Value from an xsl:import or xsl:include's href attribute,
	* or a URI specified in the document() function.
	*
	* @return a Source that can be used to process the resource.
	*
	* @throws IOException
	* @throws TransformerException
	*/
	@:overload public function resolveURI(base : String, urlString : String, locator : javax.xml.transform.SourceLocator) : javax.xml.transform.Source;
	
	/** JJK: Support  <?xalan:doc_cache_off?> kluge in ElemForEach.
	* TODO: This function is highly dangerous. Cache management must be improved.
	*
	* @param n The node to remove.
	*/
	@:overload public function removeDocumentFromCache(n : Int) : Void;
	
	/**
	* Put the source tree root node in the document cache.
	* TODO: This function needs to be a LOT more sophisticated.
	*
	* @param n The node to cache.
	* @param source The Source object to cache.
	*/
	@:overload public function putDocumentInCache(n : Int, source : javax.xml.transform.Source) : Void;
	
	/**
	* Given a Source object, find the node associated with it.
	*
	* @param source The Source object to act as the key.
	*
	* @return The node that is associated with the Source, or null if not found.
	*/
	@:overload public function getNode(source : javax.xml.transform.Source) : Int;
	
	/**
	* Get the source tree from the a base URL and a URL string.
	*
	* @param base The base URI to use if the urlString is relative.
	* @param urlString An absolute or relative URL string.
	* @param locator The location of the caller, for diagnostic purposes.
	*
	* @return should be a non-null reference to the node identified by the
	* base and urlString.
	*
	* @throws TransformerException If the URL can not resolve to a node.
	*/
	@:overload public function getSourceTree(base : String, urlString : String, locator : javax.xml.transform.SourceLocator, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Get the source tree from the input source.
	*
	* @param source The Source object that should identify the desired node.
	* @param locator The location of the caller, for diagnostic purposes.
	*
	* @return non-null reference to a node.
	*
	* @throws TransformerException if the Source argument can't be resolved to
	*         a node.
	*/
	@:overload public function getSourceTree(source : javax.xml.transform.Source, locator : javax.xml.transform.SourceLocator, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Try to create a DOM source tree from the input source.
	*
	* @param source The Source object that identifies the source node.
	* @param locator The location of the caller, for diagnostic purposes.
	*
	* @return non-null reference to node identified by the source argument.
	*
	* @throws TransformerException if the source argument can not be resolved
	*         to a source node.
	*/
	@:overload public function parseToNode(source : javax.xml.transform.Source, locator : javax.xml.transform.SourceLocator, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* This method returns the SAX2 parser to use with the InputSource
	* obtained from this URI.
	* It may return null if any SAX2-conformant XML parser can be used,
	* or if getInputSource() will also return null. The parser must
	* be free for use (i.e.
	* not currently in use for another parse().
	*
	* @param inputSource The value returned from the URIResolver.
	* @return a SAX2 XMLReader to use to resolve the inputSource argument.
	* @param locator The location of the original caller, for diagnostic purposes.
	*
	* @throws TransformerException if the reader can not be created.
	*/
	@:overload public static function getXMLReader(inputSource : javax.xml.transform.Source, locator : javax.xml.transform.SourceLocator) : org.xml.sax.XMLReader;
	
	
}

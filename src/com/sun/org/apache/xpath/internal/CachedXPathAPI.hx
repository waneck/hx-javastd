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
* $Id: CachedXPathAPI.java,v 1.2.4.1 2005/09/10 03:47:42 jeffsuttor Exp $
*/
extern class CachedXPathAPI
{
	/** XPathContext, and thus the document model system (DTMs), persists through multiple
	calls to this object. This is set in the constructor.
	*/
	@:protected private var xpathSupport : com.sun.org.apache.xpath.internal.XPathContext;
	
	/**
	* <p>Default constructor. Establishes its own {@link XPathContext}, and hence
	* its own {@link com.sun.org.apache.xml.internal.dtm.DTMManager}.
	* Good choice for simple uses.</p>
	* <p>Note that any particular instance of {@link CachedXPathAPI} must not be
	* operated upon by multiple threads without synchronization; we do
	* not currently support multithreaded access to a single
	* {@link com.sun.org.apache.xml.internal.dtm.DTM}.</p>
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* <p>This constructor shares its {@link XPathContext} with a pre-existing
	* {@link CachedXPathAPI}.  That allows sharing document models
	* ({@link com.sun.org.apache.xml.internal.dtm.DTM}) and previously established location
	* state.</p>
	* <p>Note that the original {@link CachedXPathAPI} and the new one should
	* not be operated upon concurrently; we do not support multithreaded access
	* to a single {@link com.sun.org.apache.xml.internal.dtm.DTM} at this time.  Similarly,
	* any particular instance of {@link CachedXPathAPI} must not be operated
	* upon by multiple threads without synchronization.</p>
	* <p>%REVIEW% Should this instead do a clone-and-reset on the XPathSupport object?</p>
	*
	*/
	@:overload @:public public function new(priorXPathAPI : com.sun.org.apache.xpath.internal.CachedXPathAPI) : Void;
	
	/** Returns the XPathSupport object used in this CachedXPathAPI
	*
	* %REVIEW% I'm somewhat concerned about the loss of encapsulation
	* this causes, but the xml-security folks say they need it.
	* */
	@:overload @:public public function getXPathContext() : com.sun.org.apache.xpath.internal.XPathContext;
	
	/**
	* Use an XPath string to select a single node. XPath namespace
	* prefixes are resolved from the context node, which may not
	* be what you want (see the next method).
	*
	* @param contextNode The node to start searching from.
	* @param str A valid XPath string.
	* @return The first node found that matches the XPath, or null.
	*
	* @throws TransformerException
	*/
	@:overload @:public public function selectSingleNode(contextNode : org.w3c.dom.Node, str : String) : org.w3c.dom.Node;
	
	/**
	* Use an XPath string to select a single node.
	* XPath namespace prefixes are resolved from the namespaceNode.
	*
	* @param contextNode The node to start searching from.
	* @param str A valid XPath string.
	* @param namespaceNode The node from which prefixes in the XPath will be resolved to namespaces.
	* @return The first node found that matches the XPath, or null.
	*
	* @throws TransformerException
	*/
	@:overload @:public public function selectSingleNode(contextNode : org.w3c.dom.Node, str : String, namespaceNode : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	*  Use an XPath string to select a nodelist.
	*  XPath namespace prefixes are resolved from the contextNode.
	*
	*  @param contextNode The node to start searching from.
	*  @param str A valid XPath string.
	*  @return A NodeIterator, should never be null.
	*
	* @throws TransformerException
	*/
	@:overload @:public public function selectNodeIterator(contextNode : org.w3c.dom.Node, str : String) : org.w3c.dom.traversal.NodeIterator;
	
	/**
	*  Use an XPath string to select a nodelist.
	*  XPath namespace prefixes are resolved from the namespaceNode.
	*
	*  @param contextNode The node to start searching from.
	*  @param str A valid XPath string.
	*  @param namespaceNode The node from which prefixes in the XPath will be resolved to namespaces.
	*  @return A NodeIterator, should never be null.
	*
	* @throws TransformerException
	*/
	@:overload @:public public function selectNodeIterator(contextNode : org.w3c.dom.Node, str : String, namespaceNode : org.w3c.dom.Node) : org.w3c.dom.traversal.NodeIterator;
	
	/**
	*  Use an XPath string to select a nodelist.
	*  XPath namespace prefixes are resolved from the contextNode.
	*
	*  @param contextNode The node to start searching from.
	*  @param str A valid XPath string.
	*  @return A NodeIterator, should never be null.
	*
	* @throws TransformerException
	*/
	@:overload @:public public function selectNodeList(contextNode : org.w3c.dom.Node, str : String) : org.w3c.dom.NodeList;
	
	/**
	*  Use an XPath string to select a nodelist.
	*  XPath namespace prefixes are resolved from the namespaceNode.
	*
	*  @param contextNode The node to start searching from.
	*  @param str A valid XPath string.
	*  @param namespaceNode The node from which prefixes in the XPath will be resolved to namespaces.
	*  @return A NodeIterator, should never be null.
	*
	* @throws TransformerException
	*/
	@:overload @:public public function selectNodeList(contextNode : org.w3c.dom.Node, str : String, namespaceNode : org.w3c.dom.Node) : org.w3c.dom.NodeList;
	
	/**
	*  Evaluate XPath string to an XObject.  Using this method,
	*  XPath namespace prefixes will be resolved from the namespaceNode.
	*  @param contextNode The node to start searching from.
	*  @param str A valid XPath string.
	*  @return An XObject, which can be used to obtain a string, number, nodelist, etc, should never be null.
	*  @see com.sun.org.apache.xpath.internal.objects.XObject
	*  @see com.sun.org.apache.xpath.internal.objects.XNull
	*  @see com.sun.org.apache.xpath.internal.objects.XBoolean
	*  @see com.sun.org.apache.xpath.internal.objects.XNumber
	*  @see com.sun.org.apache.xpath.internal.objects.XString
	*  @see com.sun.org.apache.xpath.internal.objects.XRTreeFrag
	*
	* @throws TransformerException
	*/
	@:overload @:public public function eval(contextNode : org.w3c.dom.Node, str : String) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	*  Evaluate XPath string to an XObject.
	*  XPath namespace prefixes are resolved from the namespaceNode.
	*  The implementation of this is a little slow, since it creates
	*  a number of objects each time it is called.  This could be optimized
	*  to keep the same objects around, but then thread-safety issues would arise.
	*
	*  @param contextNode The node to start searching from.
	*  @param str A valid XPath string.
	*  @param namespaceNode The node from which prefixes in the XPath will be resolved to namespaces.
	*  @return An XObject, which can be used to obtain a string, number, nodelist, etc, should never be null.
	*  @see com.sun.org.apache.xpath.internal.objects.XObject
	*  @see com.sun.org.apache.xpath.internal.objects.XNull
	*  @see com.sun.org.apache.xpath.internal.objects.XBoolean
	*  @see com.sun.org.apache.xpath.internal.objects.XNumber
	*  @see com.sun.org.apache.xpath.internal.objects.XString
	*  @see com.sun.org.apache.xpath.internal.objects.XRTreeFrag
	*
	* @throws TransformerException
	*/
	@:overload @:public public function eval(contextNode : org.w3c.dom.Node, str : String, namespaceNode : org.w3c.dom.Node) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	*   Evaluate XPath string to an XObject.
	*   XPath namespace prefixes are resolved from the namespaceNode.
	*   The implementation of this is a little slow, since it creates
	*   a number of objects each time it is called.  This could be optimized
	*   to keep the same objects around, but then thread-safety issues would arise.
	*
	*   @param contextNode The node to start searching from.
	*   @param str A valid XPath string.
	*   @param prefixResolver Will be called if the parser encounters namespace
	*                         prefixes, to resolve the prefixes to URLs.
	*   @return An XObject, which can be used to obtain a string, number, nodelist, etc, should never be null.
	*   @see com.sun.org.apache.xpath.internal.objects.XObject
	*   @see com.sun.org.apache.xpath.internal.objects.XNull
	*   @see com.sun.org.apache.xpath.internal.objects.XBoolean
	*   @see com.sun.org.apache.xpath.internal.objects.XNumber
	*   @see com.sun.org.apache.xpath.internal.objects.XString
	*   @see com.sun.org.apache.xpath.internal.objects.XRTreeFrag
	*
	* @throws TransformerException
	*/
	@:overload @:public public function eval(contextNode : org.w3c.dom.Node, str : String, prefixResolver : com.sun.org.apache.xml.internal.utils.PrefixResolver) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	
}

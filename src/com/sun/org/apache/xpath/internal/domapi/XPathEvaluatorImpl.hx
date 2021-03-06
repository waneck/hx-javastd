package com.sun.org.apache.xpath.internal.domapi;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2005 The Apache Software Foundation.
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
* $Id: XPathEvaluatorImpl.java,v 1.2.4.1 2005/09/10 04:04:07 jeffsuttor Exp $
*/
extern class XPathEvaluatorImpl implements org.w3c.dom.xpath.XPathEvaluator
{
	/**
	* Constructor for XPathEvaluatorImpl.
	*
	* @param doc The document to be searched, to parallel the case where''
	*            the XPathEvaluator is obtained by casting the document.
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructor in the case that the XPath expression can be evaluated
	* without needing an XML document at all.
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a parsed XPath expression with resolved namespaces. This is
	* useful when an expression will be reused in an application since it
	* makes it possible to compile the expression string into a more
	* efficient internal form and preresolve all namespace prefixes which
	* occur within the expression.
	*
	* @param expression The XPath expression string to be parsed.
	* @param resolver The <code>resolver</code> permits translation of
	*   prefixes within the XPath expression into appropriate namespace URIs
	*   . If this is specified as <code>null</code>, any namespace prefix
	*   within the expression will result in <code>DOMException</code>
	*   being thrown with the code <code>NAMESPACE_ERR</code>.
	* @return The compiled form of the XPath expression.
	* @exception XPathException
	*   INVALID_EXPRESSION_ERR: Raised if the expression is not legal
	*   according to the rules of the <code>XPathEvaluator</code>i
	* @exception DOMException
	*   NAMESPACE_ERR: Raised if the expression contains namespace prefixes
	*   which cannot be resolved by the specified
	*   <code>XPathNSResolver</code>.
	*
	* @see org.w3c.dom.xpath.XPathEvaluator#createExpression(String, XPathNSResolver)
	*/
	@:overload @:public public function createExpression(expression : String, resolver : org.w3c.dom.xpath.XPathNSResolver) : org.w3c.dom.xpath.XPathExpression;
	
	/**
	* Adapts any DOM node to resolve namespaces so that an XPath expression
	* can be easily evaluated relative to the context of the node where it
	* appeared within the document. This adapter works like the DOM Level 3
	* method <code>lookupNamespaceURI</code> on nodes in resolving the
	* namespaceURI from a given prefix using the current information available
	* in the node's hierarchy at the time lookupNamespaceURI is called, also
	* correctly resolving the implicit xml prefix.
	*
	* @param nodeResolver The node to be used as a context for namespace
	*   resolution.
	* @return <code>XPathNSResolver</code> which resolves namespaces with
	*   respect to the definitions in scope for a specified node.
	*
	* @see org.w3c.dom.xpath.XPathEvaluator#createNSResolver(Node)
	*/
	@:overload @:public public function createNSResolver(nodeResolver : org.w3c.dom.Node) : org.w3c.dom.xpath.XPathNSResolver;
	
	/**
	* Evaluates an XPath expression string and returns a result of the
	* specified type if possible.
	*
	* @param expression The XPath expression string to be parsed and
	*   evaluated.
	* @param contextNode The <code>context</code> is context node for the
	*   evaluation of this XPath expression. If the XPathEvaluator was
	*   obtained by casting the <code>Document</code> then this must be
	*   owned by the same document and must be a <code>Document</code>,
	*   <code>Element</code>, <code>Attribute</code>, <code>Text</code>,
	*   <code>CDATASection</code>, <code>Comment</code>,
	*   <code>ProcessingInstruction</code>, or <code>XPathNamespace</code>
	*   node. If the context node is a <code>Text</code> or a
	*   <code>CDATASection</code>, then the context is interpreted as the
	*   whole logical text node as seen by XPath, unless the node is empty
	*   in which case it may not serve as the XPath context.
	* @param resolver The <code>resolver</code> permits translation of
	*   prefixes within the XPath expression into appropriate namespace URIs
	*   . If this is specified as <code>null</code>, any namespace prefix
	*   within the expression will result in <code>DOMException</code>
	*   being thrown with the code <code>NAMESPACE_ERR</code>.
	* @param type If a specific <code>type</code> is specified, then the
	*   result will be coerced to return the specified type relying on
	*   XPath type conversions and fail if the desired coercion is not
	*   possible. This must be one of the type codes of
	*   <code>XPathResult</code>.
	* @param result The <code>result</code> specifies a specific result
	*   object which may be reused and returned by this method. If this is
	*   specified as <code>null</code>or the implementation does not reuse
	*   the specified result, a new result object will be constructed and
	*   returned.For XPath 1.0 results, this object will be of type
	*   <code>XPathResult</code>.
	* @return The result of the evaluation of the XPath expression.For XPath
	*   1.0 results, this object will be of type <code>XPathResult</code>.
	* @exception XPathException
	*   INVALID_EXPRESSION_ERR: Raised if the expression is not legal
	*   according to the rules of the <code>XPathEvaluator</code>i
	*   <br>TYPE_ERR: Raised if the result cannot be converted to return the
	*   specified type.
	* @exception DOMException
	*   NAMESPACE_ERR: Raised if the expression contains namespace prefixes
	*   which cannot be resolved by the specified
	*   <code>XPathNSResolver</code>.
	*   <br>WRONG_DOCUMENT_ERR: The Node is from a document that is not
	*   supported by this XPathEvaluator.
	*   <br>NOT_SUPPORTED_ERR: The Node is not a type permitted as an XPath
	*   context node.
	*
	* @see org.w3c.dom.xpath.XPathEvaluator#evaluate(String, Node, XPathNSResolver, short, XPathResult)
	*/
	@:overload @:public public function evaluate(expression : String, contextNode : org.w3c.dom.Node, resolver : org.w3c.dom.xpath.XPathNSResolver, type : java.StdTypes.Int16, result : Dynamic) : Dynamic;
	
	
}
/**
* This prefix resolver is created whenever null is passed to the
* evaluate method.  Its purpose is to satisfy the DOM L3 XPath API
* requirement that if a null prefix resolver is used, an exception
* should only be thrown when an attempt is made to resolve a prefix.
*/
@:native('com$sun$org$apache$xpath$internal$domapi$XPathEvaluatorImpl$DummyPrefixResolver') @:internal extern class XPathEvaluatorImpl_DummyPrefixResolver implements com.sun.org.apache.xml.internal.utils.PrefixResolver
{
	/**
	* @exception DOMException
	*   NAMESPACE_ERR: Always throws this exceptionn
	*
	* @see com.sun.org.apache.xml.internal.utils.PrefixResolver#getNamespaceForPrefix(String, Node)
	*/
	@:overload @:public public function getNamespaceForPrefix(prefix : String, context : org.w3c.dom.Node) : String;
	
	/**
	* @exception DOMException
	*   NAMESPACE_ERR: Always throws this exceptionn
	*
	* @see com.sun.org.apache.xml.internal.utils.PrefixResolver#getNamespaceForPrefix(String)
	*/
	@:overload @:public public function getNamespaceForPrefix(prefix : String) : String;
	
	/**
	* @see com.sun.org.apache.xml.internal.utils.PrefixResolver#handlesNullPrefixes()
	*/
	@:overload @:public public function handlesNullPrefixes() : Bool;
	
	/**
	* @see com.sun.org.apache.xml.internal.utils.PrefixResolver#getBaseIdentifier()
	*/
	@:overload @:public public function getBaseIdentifier() : String;
	
	
}

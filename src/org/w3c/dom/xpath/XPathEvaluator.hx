package org.w3c.dom.xpath;
/*
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2002 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE.
* See W3C License http://www.w3.org/Consortium/Legal/ for more details.
*/
extern interface XPathEvaluator
{
	/**
	* Creates a parsed XPath expression with resolved namespaces. This is
	* useful when an expression will be reused in an application since it
	* makes it possible to compile the expression string into a more
	* efficient internal form and preresolve all namespace prefixes which
	* occur within the expression.
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
	*/
	@:overload public function createExpression(expression : String, resolver : org.w3c.dom.xpath.XPathNSResolver) : org.w3c.dom.xpath.XPathExpression;
	
	/**
	* Adapts any DOM node to resolve namespaces so that an XPath expression
	* can be easily evaluated relative to the context of the node where it
	* appeared within the document. This adapter works like the DOM Level 3
	* method <code>lookupNamespaceURI</code> on nodes in resolving the
	* namespaceURI from a given prefix using the current information
	* available in the node's hierarchy at the time lookupNamespaceURI is
	* called. also correctly resolving the implicit xml prefix.
	* @param nodeResolver The node to be used as a context for namespace
	*   resolution.
	* @return <code>XPathNSResolver</code> which resolves namespaces with
	*   respect to the definitions in scope for a specified node.
	*/
	@:overload public function createNSResolver(nodeResolver : org.w3c.dom.Node) : org.w3c.dom.xpath.XPathNSResolver;
	
	/**
	* Evaluates an XPath expression string and returns a result of the
	* specified type if possible.
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
	*   result will be returned as the corresponding type.For XPath 1.0
	*   results, this must be one of the codes of the
	*   <code>XPathResult</code> interface.
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
	*   supported by this <code>XPathEvaluator</code>.
	*   <br>NOT_SUPPORTED_ERR: The Node is not a type permitted as an XPath
	*   context node or the request type is not permitted by this
	*   <code>XPathEvaluator</code>.
	*/
	@:overload public function evaluate(expression : String, contextNode : org.w3c.dom.Node, resolver : org.w3c.dom.xpath.XPathNSResolver, type : java.StdTypes.Int16, result : Dynamic) : Dynamic;
	
	
}

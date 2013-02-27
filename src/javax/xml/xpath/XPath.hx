package javax.xml.xpath;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface XPath
{
	/**
	* <p>Reset this <code>XPath</code> to its original configuration.</p>
	*
	* <p><code>XPath</code> is reset to the same state as when it was created with
	* {@link XPathFactory#newXPath()}.
	* <code>reset()</code> is designed to allow the reuse of existing <code>XPath</code>s
	* thus saving resources associated with the creation of new <code>XPath</code>s.</p>
	*
	* <p>The reset <code>XPath</code> is not guaranteed to have the same {@link XPathFunctionResolver}, {@link XPathVariableResolver}
	* or {@link NamespaceContext} <code>Object</code>s, e.g. {@link Object#equals(Object obj)}.
	* It is guaranteed to have a functionally equal <code>XPathFunctionResolver</code>, <code>XPathVariableResolver</code>
	* and <code>NamespaceContext</code>.</p>
	*/
	@:overload public function reset() : Void;
	
	/**
	* <p>Establish a variable resolver.</p>
	*
	* <p>A <code>NullPointerException</code> is thrown if <code>resolver</code> is <code>null</code>.</p>
	*
	* @param resolver Variable resolver.
	*
	*  @throws NullPointerException If <code>resolver</code> is <code>null</code>.
	*/
	@:overload public function setXPathVariableResolver(resolver : javax.xml.xpath.XPathVariableResolver) : Void;
	
	/**
	* <p>Return the current variable resolver.</p>
	*
	* <p><code>null</code> is returned in no variable resolver is in effect.</p>
	*
	* @return Current variable resolver.
	*/
	@:overload public function getXPathVariableResolver() : javax.xml.xpath.XPathVariableResolver;
	
	/**
	* <p>Establish a function resolver.</p>
	*
	* <p>A <code>NullPointerException</code> is thrown if <code>resolver</code> is <code>null</code>.</p>
	*
	* @param resolver XPath function resolver.
	*
	* @throws NullPointerException If <code>resolver</code> is <code>null</code>.
	*/
	@:overload public function setXPathFunctionResolver(resolver : javax.xml.xpath.XPathFunctionResolver) : Void;
	
	/**
	* <p>Return the current function resolver.</p>
	*
	* <p><code>null</code> is returned in no function resolver is in effect.</p>
	*
	* @return Current function resolver.
	*/
	@:overload public function getXPathFunctionResolver() : javax.xml.xpath.XPathFunctionResolver;
	
	/**
	* <p>Establish a namespace context.</p>
	*
	* <p>A <code>NullPointerException</code> is thrown if <code>nsContext</code> is <code>null</code>.</p>
	*
	* @param nsContext Namespace context to use.
	*
	* @throws NullPointerException If <code>nsContext</code> is <code>null</code>.
	*/
	@:overload public function setNamespaceContext(nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	/**
	* <p>Return the current namespace context.</p>
	*
	* <p><code>null</code> is returned in no namespace context is in effect.</p>
	*
	* @return Current Namespace context.
	*/
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/**
	* <p>Compile an XPath expression for later evaluation.</p>
	*
	* <p>If <code>expression</code> contains any {@link XPathFunction}s,
	* they must be available via the {@link XPathFunctionResolver}.
	* An {@link XPathExpressionException} will be thrown if the
	* <code>XPathFunction</code>
	* cannot be resovled with the <code>XPathFunctionResolver</code>.</p>
	*
	* <p>If <code>expression</code> contains any variables, the
	* {@link XPathVariableResolver} in effect
	* <strong>at compile time</strong> will be used to resolve them.</p>
	*
	* <p>If <code>expression</code> is <code>null</code>, a <code>NullPointerException</code> is thrown.</p>
	*
	* @param expression The XPath expression.
	*
	* @return Compiled XPath expression.

	* @throws XPathExpressionException If <code>expression</code> cannot be compiled.
	* @throws NullPointerException If <code>expression</code> is <code>null</code>.
	*/
	@:overload public function compile(expression : String) : javax.xml.xpath.XPathExpression;
	
	/**
	* <p>Evaluate an <code>XPath</code> expression in the specified context and return the result as the specified type.</p>
	*
	* <p>See <a href="#XPath-evaluation">Evaluation of XPath Expressions</a> for context item evaluation,
	* variable, function and <code>QName</code> resolution and return type conversion.</p>
	*
	* <p>If <code>returnType</code> is not one of the types defined in {@link XPathConstants} (
	* {@link XPathConstants#NUMBER NUMBER},
	* {@link XPathConstants#STRING STRING},
	* {@link XPathConstants#BOOLEAN BOOLEAN},
	* {@link XPathConstants#NODE NODE} or
	* {@link XPathConstants#NODESET NODESET})
	* then an <code>IllegalArgumentException</code> is thrown.</p>
	*
	* <p>If a <code>null</code> value is provided for
	* <code>item</code>, an empty document will be used for the
	* context.
	* If <code>expression</code> or <code>returnType</code> is <code>null</code>, then a
	* <code>NullPointerException</code> is thrown.</p>
	*
	* @param expression The XPath expression.
	* @param item The starting context (a node, for example).
	* @param returnType The desired return type.
	*
	* @return Result of evaluating an XPath expression as an <code>Object</code> of <code>returnType</code>.
	*
	* @throws XPathExpressionException If <code>expression</code> cannot be evaluated.
	* @throws IllegalArgumentException If <code>returnType</code> is not one of the types defined in {@link XPathConstants}.
	* @throws NullPointerException If <code>expression</code> or <code>returnType</code> is <code>null</code>.
	*/
	@:overload public function evaluate(expression : String, item : Dynamic, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate an XPath expression in the specified context and return the result as a <code>String</code>.</p>
	*
	* <p>This method calls {@link #evaluate(String expression, Object item, QName returnType)} with a <code>returnType</code> of
	* {@link XPathConstants#STRING}.</p>
	*
	* <p>See <a href="#XPath-evaluation">Evaluation of XPath Expressions</a> for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If a <code>null</code> value is provided for
	* <code>item</code>, an empty document will be used for the
	* context.
	* If <code>expression</code> is <code>null</code>, then a <code>NullPointerException</code> is thrown.</p>
	*
	* @param expression The XPath expression.
	* @param item The starting context (a node, for example).
	*
	* @return The <code>String</code> that is the result of evaluating the expression and
	*   converting the result to a <code>String</code>.
	*
	* @throws XPathExpressionException If <code>expression</code> cannot be evaluated.
	* @throws NullPointerException If <code>expression</code> is <code>null</code>.
	*/
	@:overload public function evaluate(expression : String, item : Dynamic) : String;
	
	/**
	* <p>Evaluate an XPath expression in the context of the specified <code>InputSource</code>
	* and return the result as the specified type.</p>
	*
	* <p>This method builds a data model for the {@link InputSource} and calls
	* {@link #evaluate(String expression, Object item, QName returnType)} on the resulting document object.</p>
	*
	* <p>See <a href="#XPath-evaluation">Evaluation of XPath Expressions</a> for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If <code>returnType</code> is not one of the types defined in {@link XPathConstants},
	* then an <code>IllegalArgumentException</code> is thrown.</p>
	*
	* <p>If <code>expression</code>, <code>source</code> or <code>returnType</code> is <code>null</code>,
	* then a <code>NullPointerException</code> is thrown.</p>
	*
	* @param expression The XPath expression.
	* @param source The input source of the document to evaluate over.
	* @param returnType The desired return type.
	*
	* @return The <code>Object</code> that encapsulates the result of evaluating the expression.
	*
	* @throws XPathExpressionException If expression cannot be evaluated.
	* @throws IllegalArgumentException If <code>returnType</code> is not one of the types defined in {@link XPathConstants}.
	* @throws NullPointerException If <code>expression</code>, <code>source</code> or <code>returnType</code>
	*   is <code>null</code>.
	*/
	@:overload public function evaluate(expression : String, source : org.xml.sax.InputSource, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate an XPath expression in the context of the specified <code>InputSource</code>
	* and return the result as a <code>String</code>.</p>
	*
	* <p>This method calls {@link #evaluate(String expression, InputSource source, QName returnType)} with a
	* <code>returnType</code> of {@link XPathConstants#STRING}.</p>
	*
	* <p>See <a href="#XPath-evaluation">Evaluation of XPath Expressions</a> for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If <code>expression</code> or <code>source</code> is <code>null</code>,
	* then a <code>NullPointerException</code> is thrown.</p>
	*
	* @param expression The XPath expression.
	* @param source The <code>InputSource</code> of the document to evaluate over.
	*
	* @return The <code>String</code> that is the result of evaluating the expression and
	*   converting the result to a <code>String</code>.
	*
	* @throws XPathExpressionException If expression cannot be evaluated.
	* @throws NullPointerException If <code>expression</code> or <code>source</code> is <code>null</code>.
	*/
	@:overload public function evaluate(expression : String, source : org.xml.sax.InputSource) : String;
	
	
}

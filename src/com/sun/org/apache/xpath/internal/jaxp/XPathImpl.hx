package com.sun.org.apache.xpath.internal.jaxp;
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
//// $Id: XPathImpl.java,v 1.2 2005/08/16 22:41:08 jeffsuttor Exp $
extern class XPathImpl implements javax.xml.xpath.XPath
{
	/**
	* <p>Establishes a variable resolver.</p>
	*
	* @param resolver Variable Resolver
	*/
	@:overload @:public public function setXPathVariableResolver(resolver : javax.xml.xpath.XPathVariableResolver) : Void;
	
	/**
	* <p>Returns the current variable resolver.</p>
	*
	* @return Current variable resolver
	*/
	@:overload @:public public function getXPathVariableResolver() : javax.xml.xpath.XPathVariableResolver;
	
	/**
	* <p>Establishes a function resolver.</p>
	*
	* @param resolver XPath function resolver
	*/
	@:overload @:public public function setXPathFunctionResolver(resolver : javax.xml.xpath.XPathFunctionResolver) : Void;
	
	/**
	* <p>Returns the current function resolver.</p>
	*
	* @return Current function resolver
	*/
	@:overload @:public public function getXPathFunctionResolver() : javax.xml.xpath.XPathFunctionResolver;
	
	/**
	* <p>Establishes a namespace context.</p>
	*
	* @param nsContext Namespace context to use
	*/
	@:overload @:public public function setNamespaceContext(nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	/**
	* <p>Returns the current namespace context.</p>
	*
	* @return Current Namespace context
	*/
	@:overload @:public public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/**
	* <p>Evaluate an <code>XPath</code> expression in the specified context and return the result as the specified type.</p>
	*
	* <p>See "Evaluation of XPath Expressions" section of JAXP 1.3 spec
	* for context item evaluation,
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
	* @param item The starting context (node or node list, for example).
	* @param returnType The desired return type.
	*
	* @return Result of evaluating an XPath expression as an <code>Object</code> of <code>returnType</code>.
	*
	* @throws XPathExpressionException If <code>expression</code> cannot be evaluated.
	* @throws IllegalArgumentException If <code>returnType</code> is not one of the types defined in {@link XPathConstants}.
	* @throws NullPointerException If <code>expression</code> or <code>returnType</code> is <code>null</code>.
	*/
	@:overload @:public public function evaluate(expression : String, item : Dynamic, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate an XPath expression in the specified context and return the result as a <code>String</code>.</p>
	*
	* <p>This method calls {@link #evaluate(String expression, Object item, QName returnType)} with a <code>returnType</code> of
	* {@link XPathConstants#STRING}.</p>
	*
	* <p>See "Evaluation of XPath Expressions" of JAXP 1.3 spec
	* for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If a <code>null</code> value is provided for
	* <code>item</code>, an empty document will be used for the
	* context.
	* If <code>expression</code> is <code>null</code>, then a <code>NullPointerException</code> is thrown.</p>
	*
	* @param expression The XPath expression.
	* @param item The starting context (node or node list, for example).
	*
	* @return The <code>String</code> that is the result of evaluating the expression and
	*   converting the result to a <code>String</code>.
	*
	* @throws XPathExpressionException If <code>expression</code> cannot be evaluated.
	* @throws NullPointerException If <code>expression</code> is <code>null</code>.
	*/
	@:overload @:public public function evaluate(expression : String, item : Dynamic) : String;
	
	/**
	* <p>Compile an XPath expression for later evaluation.</p>
	*
	* <p>If <code>expression</code> contains any {@link XPathFunction}s,
	* they must be available via the {@link XPathFunctionResolver}.
	* An {@link XPathExpressionException} will be thrown if the <code>XPathFunction</code>
	* cannot be resovled with the <code>XPathFunctionResolver</code>.</p>
	*
	* <p>If <code>expression</code> is <code>null</code>, a <code>NullPointerException</code> is thrown.</p>
	*
	* @param expression The XPath expression.
	*
	* @return Compiled XPath expression.

	* @throws XPathExpressionException If <code>expression</code> cannot be compiled.
	* @throws NullPointerException If <code>expression</code> is <code>null</code>.
	*/
	@:overload @:public public function compile(expression : String) : javax.xml.xpath.XPathExpression;
	
	/**
	* <p>Evaluate an XPath expression in the context of the specified <code>InputSource</code>
	* and return the result as the specified type.</p>
	*
	* <p>This method builds a data model for the {@link InputSource} and calls
	* {@link #evaluate(String expression, Object item, QName returnType)} on the resulting document object.</p>
	*
	* <p>See "Evaluation of XPath Expressions" section of JAXP 1.3 spec
	* for context item evaluation,
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
	@:overload @:public public function evaluate(expression : String, source : org.xml.sax.InputSource, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate an XPath expression in the context of the specified <code>InputSource</code>
	* and return the result as a <code>String</code>.</p>
	*
	* <p>This method calls {@link #evaluate(String expression, InputSource source, QName returnType)} with a
	* <code>returnType</code> of {@link XPathConstants#STRING}.</p>
	*
	* <p>See "Evaluation of XPath Expressions" section of JAXP 1.3 spec
	* for context item evaluation,
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
	@:overload @:public public function evaluate(expression : String, source : org.xml.sax.InputSource) : String;
	
	/**
	* <p>Reset this <code>XPath</code> to its original configuration.</p>
	*
	* <p><code>XPath</code> is reset to the same state as when it was created with
	* {@link XPathFactory#newXPath()}.
	* <code>reset()</code> is designed to allow the reuse of existing <code>XPath</code>s
	* thus saving resources associated with the creation of new <code>XPath</code>s.</p>
	*
	* <p>The reset <code>XPath</code> is not guaranteed to have the same
	* {@link XPathFunctionResolver}, {@link XPathVariableResolver}
	* or {@link NamespaceContext} <code>Object</code>s, e.g. {@link Object#equals(Object obj)}.
	* It is guaranteed to have a functionally equal <code>XPathFunctionResolver</code>,
	* <code>XPathVariableResolver</code>
	* and <code>NamespaceContext</code>.</p>
	*/
	@:overload @:public public function reset() : Void;
	
	
}

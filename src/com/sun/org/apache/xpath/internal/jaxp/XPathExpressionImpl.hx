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
//// $Id: XPathExpressionImpl.java,v 1.3 2005/09/27 09:40:43 sunithareddy Exp $
extern class XPathExpressionImpl implements javax.xml.xpath.XPathExpression
{
	/** Protected constructor to prevent direct instantiation; use compile()
	* from the context.
	*/
	@:overload private function new() : Void;
	
	@:overload private function new(xpath : com.sun.org.apache.xpath.internal.XPath, prefixResolver : com.sun.org.apache.xpath.internal.jaxp.JAXPPrefixResolver, functionResolver : javax.xml.xpath.XPathFunctionResolver, variableResolver : javax.xml.xpath.XPathVariableResolver) : Void;
	
	@:overload private function new(xpath : com.sun.org.apache.xpath.internal.XPath, prefixResolver : com.sun.org.apache.xpath.internal.jaxp.JAXPPrefixResolver, functionResolver : javax.xml.xpath.XPathFunctionResolver, variableResolver : javax.xml.xpath.XPathVariableResolver, featureSecureProcessing : Bool, useServicesMechanism : Bool) : Void;
	
	@:overload public function setXPath(xpath : com.sun.org.apache.xpath.internal.XPath) : Void;
	
	@:overload public function eval(item : Dynamic, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate the compiled XPath expression in the specified context and
	*  return the result as the specified type.</p>
	*
	* <p>See "Evaluation of XPath Expressions" section of JAXP 1.3 spec
	* for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If <code>returnType</code> is not one of the types defined
	* in {@link XPathConstants},
	* then an <code>IllegalArgumentException</code> is thrown.</p>
	*
	* <p>If a <code>null</code> value is provided for
	* <code>item</code>, an empty document will be used for the
	* context.
	* If <code>returnType</code> is <code>null</code>, then a
	* <code>NullPointerException</code> is thrown.</p>
	*
	* @param item The starting context (node or node list, for example).
	* @param returnType The desired return type.
	*
	* @return The <code>Object</code> that is the result of evaluating the
	* expression and converting the result to
	*   <code>returnType</code>.
	*
	* @throws XPathExpressionException If the expression cannot be evaluated.
	* @throws IllegalArgumentException If <code>returnType</code> is not one
	* of the types defined in {@link XPathConstants}.
	* @throws NullPointerException If  <code>returnType</code> is
	* <code>null</code>.
	*/
	@:overload public function evaluate(item : Dynamic, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate the compiled XPath expression in the specified context and
	* return the result as a <code>String</code>.</p>
	*
	* <p>This method calls {@link #evaluate(Object item, QName returnType)}
	* with a <code>returnType</code> of
	* {@link XPathConstants#STRING}.</p>
	*
	* <p>See "Evaluation of XPath Expressions" section of JAXP 1.3 spec
	*  for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If a <code>null</code> value is provided for
	* <code>item</code>, an empty document will be used for the
	* context.
	*
	* @param item The starting context (node or node list, for example).
	*
	* @return The <code>String</code> that is the result of evaluating the
	* expression and converting the result to a
	*   <code>String</code>.
	*
	* @throws XPathExpressionException If the expression cannot be evaluated.
	*/
	@:overload public function evaluate(item : Dynamic) : String;
	
	/**
	* <p>Evaluate the compiled XPath expression in the context of the
	* specified <code>InputSource</code> and return the result as the
	*  specified type.</p>
	*
	* <p>This method builds a data model for the {@link InputSource} and calls
	* {@link #evaluate(Object item, QName returnType)} on the resulting
	* document object.</p>
	*
	* <p>See "Evaluation of XPath Expressions" section of JAXP 1.3 spec
	*  for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If <code>returnType</code> is not one of the types defined in
	* {@link XPathConstants},
	* then an <code>IllegalArgumentException</code> is thrown.</p>
	*
	*<p>If <code>source</code> or <code>returnType</code> is <code>null</code>,
	* then a <code>NullPointerException</code> is thrown.</p>
	*
	* @param source The <code>InputSource</code> of the document to evaluate
	* over.
	* @param returnType The desired return type.
	*
	* @return The <code>Object</code> that is the result of evaluating the
	* expression and converting the result to
	*   <code>returnType</code>.
	*
	* @throws XPathExpressionException If the expression cannot be evaluated.
	* @throws IllegalArgumentException If <code>returnType</code> is not one
	* of the types defined in {@link XPathConstants}.
	* @throws NullPointerException If  <code>source</code> or
	* <code>returnType</code> is <code>null</code>.
	*/
	@:overload public function evaluate(source : org.xml.sax.InputSource, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate the compiled XPath expression in the context of the specified <code>InputSource</code> and return the result as a
	* <code>String</code>.</p>
	*
	* <p>This method calls {@link #evaluate(InputSource source, QName returnType)} with a <code>returnType</code> of
	* {@link XPathConstants#STRING}.</p>
	*
	* <p>See "Evaluation of XPath Expressions" section of JAXP 1.3 spec
	* for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If <code>source</code> is <code>null</code>, then a <code>NullPointerException</code> is thrown.</p>
	*
	* @param source The <code>InputSource</code> of the document to evaluate over.
	*
	* @return The <code>String</code> that is the result of evaluating the expression and converting the result to a
	*   <code>String</code>.
	*
	* @throws XPathExpressionException If the expression cannot be evaluated.
	* @throws NullPointerException If  <code>source</code> is <code>null</code>.
	*/
	@:overload public function evaluate(source : org.xml.sax.InputSource) : String;
	
	
}

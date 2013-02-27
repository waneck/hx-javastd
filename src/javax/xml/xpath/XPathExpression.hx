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
extern interface XPathExpression
{
	/**
	* <p>Evaluate the compiled XPath expression in the specified context and return the result as the specified type.</p>
	*
	* <p>See <a href="#XPathExpression-evaluation">Evaluation of XPath Expressions</a> for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If <code>returnType</code> is not one of the types defined in {@link XPathConstants},
	* then an <code>IllegalArgumentException</code> is thrown.</p>
	*
	* <p>If a <code>null</code> value is provided for
	* <code>item</code>, an empty document will be used for the
	* context.
	* If <code>returnType</code> is <code>null</code>, then a <code>NullPointerException</code> is thrown.</p>
	*
	* @param item The starting context (a node, for example).
	* @param returnType The desired return type.
	*
	* @return The <code>Object</code> that is the result of evaluating the expression and converting the result to
	*   <code>returnType</code>.
	*
	* @throws XPathExpressionException If the expression cannot be evaluated.
	* @throws IllegalArgumentException If <code>returnType</code> is not one of the types defined in {@link XPathConstants}.
	* @throws NullPointerException If  <code>returnType</code> is <code>null</code>.
	*/
	@:overload public function evaluate(item : Dynamic, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate the compiled XPath expression in the specified context and return the result as a <code>String</code>.</p>
	*
	* <p>This method calls {@link #evaluate(Object item, QName returnType)} with a <code>returnType</code> of
	* {@link XPathConstants#STRING}.</p>
	*
	* <p>See <a href="#XPathExpression-evaluation">Evaluation of XPath Expressions</a> for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If a <code>null</code> value is provided for
	* <code>item</code>, an empty document will be used for the
	* context.
	*
	* @param item The starting context (a node, for example).
	*
	* @return The <code>String</code> that is the result of evaluating the expression and converting the result to a
	*   <code>String</code>.
	*
	* @throws XPathExpressionException If the expression cannot be evaluated.
	*/
	@:overload public function evaluate(item : Dynamic) : String;
	
	/**
	* <p>Evaluate the compiled XPath expression in the context of the specified <code>InputSource</code> and return the result as the
	* specified type.</p>
	*
	* <p>This method builds a data model for the {@link InputSource} and calls
	* {@link #evaluate(Object item, QName returnType)} on the resulting document object.</p>
	*
	* <p>See <a href="#XPathExpression-evaluation">Evaluation of XPath Expressions</a> for context item evaluation,
	* variable, function and QName resolution and return type conversion.</p>
	*
	* <p>If <code>returnType</code> is not one of the types defined in {@link XPathConstants},
	* then an <code>IllegalArgumentException</code> is thrown.</p>
	*
	* <p>If <code>source</code> or <code>returnType</code> is <code>null</code>,
	* then a <code>NullPointerException</code> is thrown.</p>
	*
	* @param source The <code>InputSource</code> of the document to evaluate over.
	* @param returnType The desired return type.
	*
	* @return The <code>Object</code> that is the result of evaluating the expression and converting the result to
	*   <code>returnType</code>.
	*
	* @throws XPathExpressionException If the expression cannot be evaluated.
	* @throws IllegalArgumentException If <code>returnType</code> is not one of the types defined in {@link XPathConstants}.
	* @throws NullPointerException If  <code>source</code> or <code>returnType</code> is <code>null</code>.
	*/
	@:overload public function evaluate(source : org.xml.sax.InputSource, returnType : javax.xml.namespace.QName) : Dynamic;
	
	/**
	* <p>Evaluate the compiled XPath expression in the context of the specified <code>InputSource</code> and return the result as a
	* <code>String</code>.</p>
	*
	* <p>This method calls {@link #evaluate(InputSource source, QName returnType)} with a <code>returnType</code> of
	* {@link XPathConstants#STRING}.</p>
	*
	* <p>See <a href="#XPathExpression-evaluation">Evaluation of XPath Expressions</a> for context item evaluation,
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

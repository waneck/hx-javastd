package com.sun.org.apache.xalan.internal.extensions;
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
* $Id: ExpressionContext.java,v 1.2.4.1 2005/09/10 19:34:03 jeffsuttor Exp $
*/
extern interface ExpressionContext
{
	/**
	* Get the current context node.
	* @return The current context node.
	*/
	@:overload @:public public function getContextNode() : org.w3c.dom.Node;
	
	/**
	* Get the current context node list.
	* @return An iterator for the current context list, as
	* defined in XSLT.
	*/
	@:overload @:public public function getContextNodes() : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Get the error listener.
	* @return The registered error listener.
	*/
	@:overload @:public public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	/**
	* Get the value of a node as a number.
	* @param n Node to be converted to a number.  May be null.
	* @return value of n as a number.
	*/
	@:overload @:public public function toNumber(n : org.w3c.dom.Node) : Float;
	
	/**
	* Get the value of a node as a string.
	* @param n Node to be converted to a string.  May be null.
	* @return value of n as a string, or an empty string if n is null.
	*/
	@:overload @:public public function toString(n : org.w3c.dom.Node) : String;
	
	/**
	* Get a variable based on it's qualified name.
	*
	* @param qname The qualified name of the variable.
	*
	* @return The evaluated value of the variable.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function getVariableOrParam(qname : com.sun.org.apache.xml.internal.utils.QName) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Get the XPathContext that owns this ExpressionContext.
	*
	* Note: exslt:function requires the XPathContext to access
	* the variable stack and TransformerImpl.
	*
	* @return The current XPathContext.
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function getXPathContext() : com.sun.org.apache.xpath.internal.XPathContext;
	
	
}

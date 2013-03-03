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
* $Id: XPathException.java,v 1.3 2005/09/28 13:49:30 pvedula Exp $
*/
extern class XPathException extends javax.xml.transform.TransformerException
{
	/**
	* Get the stylesheet node from where this error originated.
	* @return The stylesheet node from where this error originated, or null.
	*/
	@:overload @:public public function getStylesheetNode() : Dynamic;
	
	/**
	* Set the stylesheet node from where this error originated.
	* @param styleNode The stylesheet node from where this error originated, or null.
	*/
	@:overload @:public public function setStylesheetNode(styleNode : Dynamic) : Void;
	
	/** A nested exception.
	*  @serial   */
	@:protected private var m_exception : java.lang.Exception;
	
	/**
	* Create an XPathException object that holds
	* an error message.
	* @param message The error message.
	*/
	@:overload @:public public function new(message : String, ex : com.sun.org.apache.xpath.internal.ExpressionNode) : Void;
	
	/**
	* Create an XPathException object that holds
	* an error message.
	* @param message The error message.
	*/
	@:overload @:public public function new(message : String) : Void;
	
	/**
	* Get the XSLT ElemVariable that this sub-expression references.  In order for
	* this to work, the SourceLocator must be the owning ElemTemplateElement.
	* @return The dereference to the ElemVariable, or null if not found.
	*/
	@:overload @:public public function getStylesheetNode(ex : com.sun.org.apache.xpath.internal.ExpressionNode) : org.w3c.dom.Node;
	
	/**
	* Get the first non-Expression parent of this node.
	* @return null or first ancestor that is not an Expression.
	*/
	@:overload @:protected private function getExpressionOwner(ex : com.sun.org.apache.xpath.internal.ExpressionNode) : com.sun.org.apache.xpath.internal.ExpressionNode;
	
	/**
	* Create an XPathException object that holds
	* an error message and the stylesheet node that
	* the error originated from.
	* @param message The error message.
	* @param styleNode The stylesheet node that the error originated from.
	*/
	@:overload @:public public function new(message : String, styleNode : Dynamic) : Void;
	
	/**
	* Create an XPathException object that holds
	* an error message, the stylesheet node that
	* the error originated from, and another exception
	* that caused this exception.
	* @param message The error message.
	* @param styleNode The stylesheet node that the error originated from.
	* @param e The exception that caused this exception.
	*/
	@:overload @:public public function new(message : String, styleNode : org.w3c.dom.Node, e : java.lang.Exception) : Void;
	
	/**
	* Create an XPathException object that holds
	* an error message, and another exception
	* that caused this exception.
	* @param message The error message.
	* @param e The exception that caused this exception.
	*/
	@:overload @:public public function new(message : String, e : java.lang.Exception) : Void;
	
	/**
	* Print the the trace of methods from where the error
	* originated.  This will trace all nested exception
	* objects, as well as this object.
	* @param s The stream where the dump will be sent to.
	*/
	@:overload @:public override public function printStackTrace(s : java.io.PrintStream) : Void;
	
	/**
	* Find the most contained message.
	*
	* @return The error message of the originating exception.
	*/
	@:overload @:public override public function getMessage() : String;
	
	/**
	* Print the the trace of methods from where the error
	* originated.  This will trace all nested exception
	* objects, as well as this object.
	* @param s The writer where the dump will be sent to.
	*/
	@:overload @:public override public function printStackTrace(s : java.io.PrintWriter) : Void;
	
	/**
	*  Return the embedded exception, if any.
	*  Overrides javax.xml.transform.TransformerException.getException().
	*
	*  @return The embedded exception, or null if there is none.
	*/
	@:overload @:public override public function getException() : java.lang.Throwable;
	
	
}

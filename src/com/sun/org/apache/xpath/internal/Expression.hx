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
* $Id: Expression.java,v 1.2.4.2 2005/09/14 19:50:20 jeffsuttor Exp $
*/
extern class Expression implements java.io.Serializable implements com.sun.org.apache.xpath.internal.ExpressionNode implements com.sun.org.apache.xpath.internal.XPathVisitable
{
	/**
	* Tell if this expression or it's subexpressions can traverse outside
	* the current subtree.
	*
	* @return true if traversal outside the context node's subtree can occur.
	*/
	@:overload public function canTraverseOutsideSubtree() : Bool;
	
	/**
	* Execute an expression in the XPath runtime context, and return the
	* result of the expression.
	*
	*
	* @param xctxt The XPath runtime context.
	* @param currentNode The currentNode.
	*
	* @return The result of the expression in the form of a <code>XObject</code>.
	*
	* @throws javax.xml.transform.TransformerException if a runtime exception
	*         occurs.
	*/
	@:overload public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, currentNode : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Execute an expression in the XPath runtime context, and return the
	* result of the expression.
	*
	*
	* @param xctxt The XPath runtime context.
	* @param currentNode The currentNode.
	* @param dtm The DTM of the current node.
	* @param expType The expanded type ID of the current node.
	*
	* @return The result of the expression in the form of a <code>XObject</code>.
	*
	* @throws javax.xml.transform.TransformerException if a runtime exception
	*         occurs.
	*/
	@:overload public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, currentNode : Int, dtm : com.sun.org.apache.xml.internal.dtm.DTM, expType : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Execute an expression in the XPath runtime context, and return the
	* result of the expression.
	*
	*
	* @param xctxt The XPath runtime context.
	*
	* @return The result of the expression in the form of a <code>XObject</code>.
	*
	* @throws javax.xml.transform.TransformerException if a runtime exception
	*         occurs.
	*/
	@:overload @:abstract public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Execute an expression in the XPath runtime context, and return the
	* result of the expression, but tell that a "safe" object doesn't have
	* to be returned.  The default implementation just calls execute(xctxt).
	*
	*
	* @param xctxt The XPath runtime context.
	* @param destructiveOK true if a "safe" object doesn't need to be returned.
	*
	* @return The result of the expression in the form of a <code>XObject</code>.
	*
	* @throws javax.xml.transform.TransformerException if a runtime exception
	*         occurs.
	*/
	@:overload public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, destructiveOK : Bool) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Evaluate expression to a number.
	*
	*
	* @param xctxt The XPath runtime context.
	* @return The expression evaluated as a double.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function num(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Float;
	
	/**
	* Evaluate expression to a boolean.
	*
	*
	* @param xctxt The XPath runtime context.
	* @return false
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function bool(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Bool;
	
	/**
	* Cast result object to a string.
	*
	*
	* @param xctxt The XPath runtime context.
	* @return The string this wraps or the empty string if null
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function xstr(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Tell if the expression is a nodeset expression.  In other words, tell
	* if you can execute {@link #asNode(XPathContext) asNode} without an exception.
	* @return true if the expression can be represented as a nodeset.
	*/
	@:overload public function isNodesetExpr() : Bool;
	
	/**
	* Return the first node out of the nodeset, if this expression is
	* a nodeset expression.
	* @param xctxt The XPath runtime context.
	* @return the first node out of the nodeset, or DTM.NULL.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function asNode(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Given an select expression and a context, evaluate the XPath
	* and return the resulting iterator.
	*
	* @param xctxt The execution context.
	* @param contextNode The node that "." expresses.
	*
	*
	* @return A valid DTMIterator.
	* @throws TransformerException thrown if the active ProblemListener decides
	* the error condition is severe enough to halt processing.
	*
	* @throws javax.xml.transform.TransformerException
	* @xsl.usage experimental
	*/
	@:overload public function asIterator(xctxt : com.sun.org.apache.xpath.internal.XPathContext, contextNode : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Given an select expression and a context, evaluate the XPath
	* and return the resulting iterator, but do not clone.
	*
	* @param xctxt The execution context.
	* @param contextNode The node that "." expresses.
	*
	*
	* @return A valid DTMIterator.
	* @throws TransformerException thrown if the active ProblemListener decides
	* the error condition is severe enough to halt processing.
	*
	* @throws javax.xml.transform.TransformerException
	* @xsl.usage experimental
	*/
	@:overload public function asIteratorRaw(xctxt : com.sun.org.apache.xpath.internal.XPathContext, contextNode : Int) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Execute an expression in the XPath runtime context, and return the
	* result of the expression.
	*
	*
	* @param xctxt The XPath runtime context.
	* NEEDSDOC @param handler
	*
	* @return The result of the expression in the form of a <code>XObject</code>.
	*
	* @throws javax.xml.transform.TransformerException if a runtime exception
	*         occurs.
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function executeCharsToContentHandler(xctxt : com.sun.org.apache.xpath.internal.XPathContext, handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Tell if this expression returns a stable number that will not change during
	* iterations within the expression.  This is used to determine if a proximity
	* position predicate can indicate that no more searching has to occur.
	*
	*
	* @return true if the expression represents a stable number.
	*/
	@:overload public function isStableNumber() : Bool;
	
	/**
	* This function is used to fixup variables from QNames to stack frame
	* indexes at stylesheet build time.
	* @param vars List of QNames that correspond to variables.  This list
	* should be searched backwards for the first qualified name that
	* corresponds to the variable reference qname.  The position of the
	* QName in the vector from the start of the vector will be its position
	* in the stack frame (but variables above the globalsTop value will need
	* to be offset to the current stack frame).
	* NEEDSDOC @param globalsSize
	*/
	@:overload @:abstract public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Compare this object with another object and see
	* if they are equal, include the sub heararchy.
	*
	* @param expr Another expression object.
	* @return true if this objects class and the expr
	* object's class are the same, and the data contained
	* within both objects are considered equal.
	*/
	@:overload @:abstract public function deepEquals(expr : Expression) : Bool;
	
	/**
	* This is a utility method to tell if the passed in
	* class is the same class as this.  It is to be used by
	* the deepEquals method.  I'm bottlenecking it here
	* because I'm not totally confident that comparing the
	* class objects is the best way to do this.
	* @return true of the passed in class is the exact same
	* class as this class.
	*/
	@:overload @:final private function isSameClass(expr : Expression) : Bool;
	
	/**
	* Warn the user of an problem.
	*
	* @param xctxt The XPath runtime context.
	* @param msg An error msgkey that corresponds to one of the conststants found
	*            in {@link com.sun.org.apache.xpath.internal.res.XPATHErrorResources}, which is
	*            a key for a format string.
	* @param args An array of arguments represented in the format string, which
	*             may be null.
	*
	* @throws TransformerException if the current ErrorListoner determines to
	*                              throw an exception.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function warn(xctxt : com.sun.org.apache.xpath.internal.XPathContext, msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Tell the user of an assertion error, and probably throw an
	* exception.
	*
	* @param b  If false, a runtime exception will be thrown.
	* @param msg The assertion message, which should be informative.
	*
	* @throws RuntimeException if the b argument is false.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function assertion(b : Bool, msg : String) : Void;
	
	/**
	* Tell the user of an error, and probably throw an
	* exception.
	*
	* @param xctxt The XPath runtime context.
	* @param msg An error msgkey that corresponds to one of the constants found
	*            in {@link com.sun.org.apache.xpath.internal.res.XPATHErrorResources}, which is
	*            a key for a format string.
	* @param args An array of arguments represented in the format string, which
	*             may be null.
	*
	* @throws TransformerException if the current ErrorListoner determines to
	*                              throw an exception.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function error(xctxt : com.sun.org.apache.xpath.internal.XPathContext, msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Get the first non-Expression parent of this node.
	* @return null or first ancestor that is not an Expression.
	*/
	@:overload public function getExpressionOwner() : com.sun.org.apache.xpath.internal.ExpressionNode;
	
	/** This pair of methods are used to inform the node of its
	parent. */
	@:overload public function exprSetParent(n : com.sun.org.apache.xpath.internal.ExpressionNode) : Void;
	
	@:overload public function exprGetParent() : com.sun.org.apache.xpath.internal.ExpressionNode;
	
	/** This method tells the node to add its argument to the node's
	list of children.  */
	@:overload public function exprAddChild(n : com.sun.org.apache.xpath.internal.ExpressionNode, i : Int) : Void;
	
	/** This method returns a child node.  The children are numbered
	from zero, left to right. */
	@:overload public function exprGetChild(i : Int) : com.sun.org.apache.xpath.internal.ExpressionNode;
	
	/** Return the number of children the node has. */
	@:overload public function exprGetNumChildren() : Int;
	
	/**
	* Return the public identifier for the current document event.
	*
	* <p>The return value is the public identifier of the document
	* entity or of the external parsed entity in which the markup that
	* triggered the event appears.</p>
	*
	* @return A string containing the public identifier, or
	*         null if none is available.
	* @see #getSystemId
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* Return the system identifier for the current document event.
	*
	* <p>The return value is the system identifier of the document
	* entity or of the external parsed entity in which the markup that
	* triggered the event appears.</p>
	*
	* <p>If the system identifier is a URL, the parser must resolve it
	* fully before passing it to the application.</p>
	*
	* @return A string containing the system identifier, or null
	*         if none is available.
	* @see #getPublicId
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* Return the line number where the current document event ends.
	*
	* <p><strong>Warning:</strong> The return value from the method
	* is intended only as an approximation for the sake of error
	* reporting; it is not intended to provide sufficient information
	* to edit the character content of the original XML document.</p>
	*
	* <p>The return value is an approximation of the line number
	* in the document entity or external parsed entity where the
	* markup that triggered the event appears.</p>
	*
	* @return The line number, or -1 if none is available.
	* @see #getColumnNumber
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* Return the character position where the current document event ends.
	*
	* <p><strong>Warning:</strong> The return value from the method
	* is intended only as an approximation for the sake of error
	* reporting; it is not intended to provide sufficient information
	* to edit the character content of the original XML document.</p>
	*
	* <p>The return value is an approximation of the column number
	* in the document entity or external parsed entity where the
	* markup that triggered the event appears.</p>
	*
	* @return The column number, or -1 if none is available.
	* @see #getLineNumber
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* This will traverse the heararchy, calling the visitor for
	* each member.  If the called visitor method returns
	* false, the subtree should not be called.
	*
	* @param owner The owner of the visitor, where that path may be
	*              rewritten if needed.
	* @param visitor The visitor whose appropriate method will be called.
	*/
	@:overload public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	
}

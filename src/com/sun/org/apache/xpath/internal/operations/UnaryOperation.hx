package com.sun.org.apache.xpath.internal.operations;
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
* $Id: UnaryOperation.java,v 1.2.4.1 2005/09/14 21:31:44 jeffsuttor Exp $
*/
extern class UnaryOperation extends com.sun.org.apache.xpath.internal.Expression implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/** The operand for the operation.
	*  @serial */
	private var m_right : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* This function is used to fixup variables from QNames to stack frame
	* indexes at stylesheet build time.
	* @param vars List of QNames that correspond to variables.  This list
	* should be searched backwards for the first qualified name that
	* corresponds to the variable reference qname.  The position of the
	* QName in the vector from the start of the vector will be its position
	* in the stack frame (but variables above the globalsTop value will need
	* to be offset to the current stack frame).
	*/
	@:overload override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Tell if this expression or it's subexpressions can traverse outside
	* the current subtree.
	*
	* @return true if traversal outside the context node's subtree can occur.
	*/
	@:overload override public function canTraverseOutsideSubtree() : Bool;
	
	/**
	* Set the expression operand for the operation.
	*
	*
	* @param r The expression operand to which the unary operation will be
	*          applied.
	*/
	@:overload public function setRight(r : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Execute the operand and apply the unary operation to the result.
	*
	*
	* @param xctxt The runtime execution context.
	*
	* @return An XObject that represents the result of applying the unary
	*         operation to the evaluated operand.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Apply the operation to two operands, and return the result.
	*
	*
	* @param right non-null reference to the evaluated right operand.
	*
	* @return non-null reference to the XObject that represents the result of the operation.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:abstract public function operate(right : com.sun.org.apache.xpath.internal.objects.XObject) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/** @return the operand of unary operation, as an Expression.
	*/
	@:overload public function getOperand() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}

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
* $Id: Operation.java,v 1.2.4.1 2005/09/14 21:31:42 jeffsuttor Exp $
*/
extern class Operation extends com.sun.org.apache.xpath.internal.Expression implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/** The left operand expression.
	*  @serial */
	private var m_left : com.sun.org.apache.xpath.internal.Expression;
	
	/** The right operand expression.
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
	* Set the left and right operand expressions for this operation.
	*
	*
	* @param l The left expression operand.
	* @param r The right expression operand.
	*/
	@:overload public function setLeftRight(l : com.sun.org.apache.xpath.internal.Expression, r : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Execute a binary operation by calling execute on each of the operands,
	* and then calling the operate method on the derived class.
	*
	*
	* @param xctxt The runtime execution context.
	*
	* @return The XObject result of the operation.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Apply the operation to two operands, and return the result.
	*
	*
	* @param left non-null reference to the evaluated left operand.
	* @param right non-null reference to the evaluated right operand.
	*
	* @return non-null reference to the XObject that represents the result of the operation.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function operate(left : com.sun.org.apache.xpath.internal.objects.XObject, right : com.sun.org.apache.xpath.internal.objects.XObject) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/** @return the left operand of binary operation, as an Expression.
	*/
	@:overload public function getLeftOperand() : com.sun.org.apache.xpath.internal.Expression;
	
	/** @return the right operand of binary operation, as an Expression.
	*/
	@:overload public function getRightOperand() : com.sun.org.apache.xpath.internal.Expression;
	
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
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
@:native('com$sun$org$apache$xpath$internal$operations$Operation$LeftExprOwner') @:internal extern class Operation_LeftExprOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	
}

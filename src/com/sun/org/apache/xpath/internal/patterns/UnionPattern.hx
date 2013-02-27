package com.sun.org.apache.xpath.internal.patterns;
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
* $Id: UnionPattern.java,v 1.2.4.1 2005/09/15 00:21:15 jeffsuttor Exp $
*/
extern class UnionPattern extends com.sun.org.apache.xpath.internal.Expression
{
	/**
	* No arguments to process, so this does nothing.
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
	* Set the contained step patterns to be tested.
	*
	*
	* @param patterns the contained step patterns to be tested.
	*/
	@:overload public function setPatterns(patterns : java.NativeArray<com.sun.org.apache.xpath.internal.patterns.StepPattern>) : Void;
	
	/**
	* Get the contained step patterns to be tested.
	*
	*
	* @return an array of the contained step patterns to be tested.
	*/
	@:overload public function getPatterns() : java.NativeArray<com.sun.org.apache.xpath.internal.patterns.StepPattern>;
	
	/**
	* Test a node to see if it matches any of the patterns in the union.
	*
	* @param xctxt XPath runtime context.
	*
	* @return {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NODETEST},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NONE},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NSWILD},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_QNAME}, or
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_OTHER}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
@:native('com$sun$org$apache$xpath$internal$patterns$UnionPattern$UnionPathPartOwner') @:internal extern class UnionPattern_UnionPathPartOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
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

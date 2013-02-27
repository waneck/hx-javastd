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
* $Id: FunctionPattern.java,v 1.2.4.2 2005/09/15 00:21:15 jeffsuttor Exp $
*/
extern class FunctionPattern extends com.sun.org.apache.xpath.internal.patterns.StepPattern
{
	/**
	* Construct a FunctionPattern from a
	* {@link com.sun.org.apache.xpath.internal.functions.Function expression}.
	*
	* NEEDSDOC @param expr
	*/
	@:overload public function new(expr : com.sun.org.apache.xpath.internal.Expression, axis : Int, predaxis : Int) : Void;
	
	/**
	* Static calc of match score.
	*/
	@:overload @:final override public function calcScore() : Void;
	
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
	* Test a node to see if it matches the given node test.
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
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, context : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Test a node to see if it matches the given node test.
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
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, context : Int, dtm : com.sun.org.apache.xml.internal.dtm.DTM, expType : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Test a node to see if it matches the given node test.
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
	* Call the visitor for the function.
	*/
	@:overload override private function callSubtreeVisitors(visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	
}
@:native('com$sun$org$apache$xpath$internal$patterns$FunctionPattern$FunctionOwner') @:internal extern class FunctionPattern_FunctionOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
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

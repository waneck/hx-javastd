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
* $Id: StepPattern.java,v 1.2.4.2 2005/09/15 00:21:16 jeffsuttor Exp $
*/
extern class StepPattern extends com.sun.org.apache.xpath.internal.patterns.NodeTest implements com.sun.org.apache.xpath.internal.axes.SubContextList implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/** The axis for this test. */
	@:protected private var m_axis : Int;
	
	/**
	* Construct a StepPattern that tests for namespaces and node names.
	*
	*
	* @param whatToShow Bit set defined mainly by {@link org.w3c.dom.traversal.NodeFilter}.
	* @param namespace The namespace to be tested.
	* @param name The local name to be tested.
	* @param axis The Axis for this test, one of of Axes.ANCESTORORSELF, etc.
	* @param axisForPredicate No longer used.
	*/
	@:overload @:public public function new(whatToShow : Int, namespace : String, name : String, axis : Int, axisForPredicate : Int) : Void;
	
	/**
	* Construct a StepPattern that doesn't test for node names.
	*
	*
	* @param whatToShow Bit set defined mainly by {@link org.w3c.dom.traversal.NodeFilter}.
	* @param axis The Axis for this test, one of of Axes.ANCESTORORSELF, etc.
	* @param axisForPredicate No longer used.
	*/
	@:overload @:public public function new(whatToShow : Int, axis : Int, axisForPredicate : Int) : Void;
	
	/**
	* Calculate the local name or psuedo name of the node that this pattern will test,
	* for hash table lookup optimization.
	*
	* @see com.sun.org.apache.xpath.internal.compiler.PsuedoNames
	*/
	@:overload @:public public function calcTargetString() : Void;
	
	/**
	* Get the local name or psuedo name of the node that this pattern will test,
	* for hash table lookup optimization.
	*
	*
	* @return local name or psuedo name of the node.
	* @see com.sun.org.apache.xpath.internal.compiler.PsuedoNames
	*/
	@:overload @:public public function getTargetString() : String;
	
	/**
	* This function is used to fixup variables from QNames to stack frame
	* indexes at stylesheet build time.
	* @param vars List of QNames that correspond to variables.  This list
	* should be searched backwards for the first qualified name that
	* corresponds to the variable reference qname.  The position of the
	* QName in the vector from the start of the vector will be its position
	* in the stack frame (but variables above the globalsTop value will need
	* to be offset to the current stack frame).
	* @param globalsSize The number of variables in the global variable area.
	*/
	@:overload @:public override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Set the reference to nodetest and predicate for
	* parent or ancestor.
	*
	*
	* @param expr The relative pattern expression.
	*/
	@:overload @:public public function setRelativePathPattern(expr : com.sun.org.apache.xpath.internal.patterns.StepPattern) : Void;
	
	/**
	* Get the reference to nodetest and predicate for
	* parent or ancestor.
	*
	*
	* @return The relative pattern expression.
	*/
	@:overload @:public public function getRelativePathPattern() : com.sun.org.apache.xpath.internal.patterns.StepPattern;
	
	/**
	* Set the list of predicate expressions for this pattern step.
	* @return List of expression objects.
	*/
	@:overload @:public public function getPredicates() : java.NativeArray<com.sun.org.apache.xpath.internal.Expression>;
	
	/**
	* Tell if this expression or it's subexpressions can traverse outside
	* the current subtree.
	*
	* NOTE: Ancestors tests with predicates are problematic, and will require
	* special treatment.
	*
	* @return true if traversal outside the context node's subtree can occur.
	*/
	@:overload @:public override public function canTraverseOutsideSubtree() : Bool;
	
	/**
	* Get a predicate expression.
	*
	*
	* @param i The index of the predicate.
	*
	* @return A predicate expression.
	*/
	@:overload @:public public function getPredicate(i : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Get the number of predicates for this match pattern step.
	*
	*
	* @return the number of predicates for this match pattern step.
	*/
	@:overload @:public @:final public function getPredicateCount() : Int;
	
	/**
	* Set the predicates for this match pattern step.
	*
	*
	* @param predicates An array of expressions that define predicates
	*                   for this step.
	*/
	@:overload @:public public function setPredicates(predicates : java.NativeArray<com.sun.org.apache.xpath.internal.Expression>) : Void;
	
	/**
	* Static calc of match score.
	*/
	@:overload @:public override public function calcScore() : Void;
	
	/**
	* Execute this pattern step, including predicates.
	*
	*
	* @param xctxt XPath runtime context.
	* @param currentNode The current node context.
	*
	* @return {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NODETEST},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NONE},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NSWILD},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_QNAME}, or
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_OTHER}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, currentNode : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Execute this pattern step, including predicates.
	*
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
	@:overload @:public override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
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
	@:overload @:public override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, currentNode : Int, dtm : com.sun.org.apache.xml.internal.dtm.DTM, expType : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Get the proximity position index of the current node based on this
	* node test.
	*
	*
	* @param xctxt XPath runtime context.
	*
	* @return the proximity position index of the current node based on the
	*         node test.
	*/
	@:overload @:public public function getProximityPosition(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Get the count of the nodes that match the test, which is the proximity
	* position of the last node that can pass this test in the sub context
	* selection.  In XSLT 1-based indexing, this count is the index of the last
	* node.
	*
	*
	* @param xctxt XPath runtime context.
	*
	* @return the count of the nodes that match the test.
	*/
	@:overload @:public public function getLastPos(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Execute the match pattern step relative to another step.
	*
	*
	* @param xctxt The XPath runtime context.
	* @param dtm The DTM of the current node.
	* @param currentNode The current node context.
	*
	* @return {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NODETEST},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NONE},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NSWILD},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_QNAME}, or
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_OTHER}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected @:final private function executeRelativePathPattern(xctxt : com.sun.org.apache.xpath.internal.XPathContext, dtm : com.sun.org.apache.xml.internal.dtm.DTM, currentNode : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Execute the predicates on this step to determine if the current node
	* should be filtered or accepted.
	*
	* @param xctxt The XPath runtime context.
	* @param dtm The DTM of the current node.
	* @param currentNode The current node context.
	*
	* @return true if the node should be accepted, false otherwise.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected @:final private function executePredicates(xctxt : com.sun.org.apache.xpath.internal.XPathContext, dtm : com.sun.org.apache.xml.internal.dtm.DTM, currentNode : Int) : Bool;
	
	/**
	* Get the string represenentation of this step for diagnostic purposes.
	*
	*
	* @return A string representation of this step, built by reverse-engineering
	* the contained info.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Get the match score of the given node.
	*
	* @param xctxt The XPath runtime context.
	* @param context The node to be tested.
	*
	* @return {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NODETEST},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NONE},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NSWILD},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_QNAME}, or
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_OTHER}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function getMatchScore(xctxt : com.sun.org.apache.xpath.internal.XPathContext, context : Int) : Float;
	
	/**
	* Set the axis that this step should follow.
	*
	*
	* @param axis The Axis for this test, one of of Axes.ANCESTORORSELF, etc.
	*/
	@:overload @:public public function setAxis(axis : Int) : Void;
	
	/**
	* Get the axis that this step follows.
	*
	*
	* @return The Axis for this test, one of of Axes.ANCESTORORSELF, etc.
	*/
	@:overload @:public public function getAxis() : Int;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload @:public override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* Call the visitors on the subtree.  Factored out from callVisitors
	* so it may be called by derived classes.
	*/
	@:overload @:protected private function callSubtreeVisitors(visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload @:public public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload @:public public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload @:public override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}
@:native('com$sun$org$apache$xpath$internal$patterns$StepPattern$PredOwner') @:internal extern class StepPattern_PredOwner implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* @see ExpressionOwner#getExpression()
	*/
	@:overload @:public public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* @see ExpressionOwner#setExpression(Expression)
	*/
	@:overload @:public public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	
}

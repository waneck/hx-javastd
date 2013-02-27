package com.sun.org.apache.xpath.internal;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2004 The Apache Software Foundation.
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
* $Id: XPathVisitor.java,v 1.1.2.1 2005/08/01 01:30:11 jeffsuttor Exp $
*/
extern class XPathVisitor
{
	/**
	* Visit a LocationPath.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param path The LocationPath object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitLocationPath(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, path : com.sun.org.apache.xpath.internal.axes.LocPathIterator) : Bool;
	
	/**
	* Visit a UnionPath.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param path The UnionPath object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitUnionPath(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, path : com.sun.org.apache.xpath.internal.axes.UnionPathIterator) : Bool;
	
	/**
	* Visit a step within a location path.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param step The Step object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitStep(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, step : com.sun.org.apache.xpath.internal.patterns.NodeTest) : Bool;
	
	/**
	* Visit a predicate within a location path.  Note that there isn't a
	* proper unique component for predicates, and that the expression will
	* be called also for whatever type Expression is.
	*
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param pred The predicate object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitPredicate(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, pred : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	/**
	* Visit a binary operation.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param op The operation object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitBinaryOperation(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, op : com.sun.org.apache.xpath.internal.operations.Operation) : Bool;
	
	/**
	* Visit a unary operation.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param op The operation object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitUnaryOperation(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, op : com.sun.org.apache.xpath.internal.operations.UnaryOperation) : Bool;
	
	/**
	* Visit a variable reference.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param var The variable reference object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitVariableRef(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, _var : com.sun.org.apache.xpath.internal.operations.Variable) : Bool;
	
	/**
	* Visit a function.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param func The function reference object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitFunction(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, func : com.sun.org.apache.xpath.internal.functions.Function) : Bool;
	
	/**
	* Visit a match pattern.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param pattern The match pattern object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitMatchPattern(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, pattern : com.sun.org.apache.xpath.internal.patterns.StepPattern) : Bool;
	
	/**
	* Visit a union pattern.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param pattern The union pattern object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitUnionPattern(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, pattern : com.sun.org.apache.xpath.internal.patterns.UnionPattern) : Bool;
	
	/**
	* Visit a string literal.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param str The string literal object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitStringLiteral(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, str : com.sun.org.apache.xpath.internal.objects.XString) : Bool;
	
	/**
	* Visit a number literal.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param num The number literal object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload public function visitNumberLiteral(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, num : com.sun.org.apache.xpath.internal.objects.XNumber) : Bool;
	
	
}

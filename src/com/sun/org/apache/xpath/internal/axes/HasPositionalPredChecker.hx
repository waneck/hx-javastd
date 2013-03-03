package com.sun.org.apache.xpath.internal.axes;
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
* $Id: HasPositionalPredChecker.java,v 1.1.2.1 2005/08/01 01:30:24 jeffsuttor Exp $
*/
extern class HasPositionalPredChecker extends com.sun.org.apache.xpath.internal.XPathVisitor
{
	/**
	* Process the LocPathIterator to see if it contains variables
	* or functions that may make it context dependent.
	* @param path LocPathIterator that is assumed to be absolute, but needs checking.
	* @return true if the path is confirmed to be absolute, false if it
	* may contain context dependencies.
	*/
	@:overload @:public @:static public static function check(path : com.sun.org.apache.xpath.internal.axes.LocPathIterator) : Bool;
	
	/**
	* Visit a function.
	* @param owner The owner of the expression, to which the expression can
	*              be reset if rewriting takes place.
	* @param func The function reference object.
	* @return true if the sub expressions should be traversed.
	*/
	@:overload @:public override public function visitFunction(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, func : com.sun.org.apache.xpath.internal.functions.Function) : Bool;
	
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
	@:overload @:public override public function visitPredicate(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, pred : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}

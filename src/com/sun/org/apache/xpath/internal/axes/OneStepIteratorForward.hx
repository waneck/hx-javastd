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
* $Id: OneStepIteratorForward.java,v 1.2.4.2 2005/09/14 19:45:22 jeffsuttor Exp $
*/
extern class OneStepIteratorForward extends com.sun.org.apache.xpath.internal.axes.ChildTestIterator
{
	/** The traversal axis from where the nodes will be filtered. */
	@:protected private var m_axis : Int;
	
	/**
	* Create a OneStepIterator object that will just traverse the self axes.
	*
	* @param axis One of the com.sun.org.apache.xml.internal.dtm.Axis integers.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function new(axis : Int) : Void;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload @:public override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	* Get the next node via getFirstAttribute && getNextAttribute.
	*/
	@:overload @:protected override private function getNextNode() : Int;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload @:public override public function getAxis() : Int;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload @:public override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	
}

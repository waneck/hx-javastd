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
* $Id: MatchPatternIterator.java,v 1.2.4.2 2005/09/14 19:45:22 jeffsuttor Exp $
*/
extern class MatchPatternIterator extends com.sun.org.apache.xpath.internal.axes.LocPathIterator
{
	/** This is the select pattern, translated into a match pattern. */
	private var m_pattern : com.sun.org.apache.xpath.internal.patterns.StepPattern;
	
	/** The traversal axis from where the nodes will be filtered. */
	private var m_superAxis : Int;
	
	/** The DTM inner traversal class, that corresponds to the super axis. */
	private var m_traverser : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	*  Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
	*/
	@:overload override public function detach() : Void;
	
	/**
	* Get the next node via getNextXXX.  Bottlenecked for derived class override.
	* @return The next node on the axis, or DTM.NULL.
	*/
	@:overload private function getNextNode() : Int;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a NodeIterator is created, the first call
	* to nextNode() returns the first node in the set.
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	*/
	@:overload override public function nextNode() : Int;
	
	/**
	*  Test whether a specified node is visible in the logical view of a
	* TreeWalker or NodeIterator. This function will be called by the
	* implementation of TreeWalker and NodeIterator; it is not intended to
	* be called directly from user code.
	* @param n  The node to check to see if it passes the filter or not.
	* @return  a constant to determine whether the node is accepted,
	*   rejected, or skipped, as defined  above .
	*/
	@:overload public function acceptNode(n : Int, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : java.StdTypes.Int16;
	
	
}

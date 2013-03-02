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
* $Id: UnionChildIterator.java,v 1.2.4.1 2005/09/14 19:45:20 jeffsuttor Exp $
*/
extern class UnionChildIterator extends com.sun.org.apache.xpath.internal.axes.ChildTestIterator
{
	/**
	* Constructor for UnionChildIterator
	*/
	@:overload public function new() : Void;
	
	/**
	* Add a node test to the union list.
	*
	* @param test reference to a NodeTest, which will be added
	* directly to the list of node tests (in other words, it will
	* not be cloned).  The parent of this test will be set to
	* this object.
	*/
	@:overload public function addNodeTest(test : com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest) : Void;
	
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
	* Test whether a specified node is visible in the logical view of a
	* TreeWalker or NodeIterator. This function will be called by the
	* implementation of TreeWalker and NodeIterator; it is not intended to
	* be called directly from user code.
	* @param n  The node to check to see if it passes the filter or not.
	* @return  a constant to determine whether the node is accepted,
	*   rejected, or skipped, as defined  above .
	*/
	@:overload public function acceptNode(n : Int) : java.StdTypes.Int16;
	
	
}

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
* $Id: ChildIterator.java,v 1.2.4.2 2005/09/14 19:45:20 jeffsuttor Exp $
*/
extern class ChildIterator extends com.sun.org.apache.xpath.internal.axes.LocPathIterator
{
	/**
	* Return the first node out of the nodeset, if this expression is
	* a nodeset expression.  This is the default implementation for
	* nodesets.
	* <p>WARNING: Do not mutate this class from this function!</p>
	* @param xctxt The XPath runtime context.
	* @return the first node out of the nodeset, or DTM.NULL.
	*/
	@:overload override public function asNode(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a NodeIterator is created, the first call
	* to nextNode() returns the first node in the set.
	*
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	*/
	@:overload override public function nextNode() : Int;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload override public function getAxis() : Int;
	
	
}

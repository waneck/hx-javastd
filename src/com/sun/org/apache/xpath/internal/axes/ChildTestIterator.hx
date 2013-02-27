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
* $Id: ChildTestIterator.java,v 1.2.4.2 2005/09/14 19:45:20 jeffsuttor Exp $
*/
extern class ChildTestIterator extends com.sun.org.apache.xpath.internal.axes.BasicTestIterator
{
	/** The traverser to use to navigate over the descendants. */
	@:transient private var m_traverser : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	/**
	* Create a ChildTestIterator object.
	*
	* @param traverser Traverser that tells how the KeyIterator is to be handled.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function new(traverser : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser) : Void;
	
	/**
	* Get the next node via getNextXXX.  Bottlenecked for derived class override.
	* @return The next node on the axis, or DTM.NULL.
	*/
	@:overload override private function getNextNode() : Int;
	
	/**
	*  Get a cloned Iterator that is reset to the beginning
	*  of the query.
	*
	*  @return A cloned NodeIterator set of the start of the query.
	*
	*  @throws CloneNotSupportedException
	*/
	@:overload override public function cloneWithReset() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Initialize the context values for this expression
	* after it is cloned.
	*
	* @param context The XPath runtime context for this
	* transformation.
	*/
	@:overload override public function setRoot(context : Int, environment : Dynamic) : Void;
	
	/**
	* Returns the axis being iterated, if it is known.
	*
	* @return Axis.CHILD, etc., or -1 if the axis is not known or is of multiple
	* types.
	*/
	@:overload override public function getAxis() : Int;
	
	/**
	*  Detaches the iterator from the set which it iterated over, releasing
	* any computational resources and placing the iterator in the INVALID
	* state. After<code>detach</code> has been invoked, calls to
	* <code>nextNode</code> or<code>previousNode</code> will raise the
	* exception INVALID_STATE_ERR.
	*/
	@:overload override public function detach() : Void;
	
	
}

package com.sun.org.apache.xml.internal.dtm.ref;
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
* $Id: DTMNodeIterator.java,v 1.2.4.1 2005/09/15 08:15:03 suresh_emailid Exp $
*/
extern class DTMNodeIterator implements org.w3c.dom.traversal.NodeIterator
{
	/** Public constructor: Wrap a DTMNodeIterator around an existing
	* and preconfigured DTMIterator
	* */
	@:overload @:public public function new(dtmIterator : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/** Access the wrapped DTMIterator. I'm not sure whether anyone will
	* need this or not, but let's write it and think about it.
	* */
	@:overload @:public public function getDTMIterator() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/** Detaches the NodeIterator from the set which it iterated over,
	* releasing any computational resources and placing the iterator in
	* the INVALID state.
	* */
	@:overload @:public public function detach() : Void;
	
	/** The value of this flag determines whether the children
	* of entity reference nodes are visible to the iterator.
	*
	* @return false, always (the DTM model flattens entity references)
	* */
	@:overload @:public public function getExpandEntityReferences() : Bool;
	
	/** Return a handle to the filter used to screen nodes.
	*
	* This is ill-defined in Xalan's usage of Nodeiterator, where we have
	* built stateful XPath-based filtering directly into the traversal
	* object. We could return something which supports the NodeFilter interface
	* and allows querying whether a given node would be permitted if it appeared
	* as our next node, but in the current implementation that would be very
	* complex -- and just isn't all that useful.
	*
	* @throws DOMException -- NOT_SUPPORTED_ERROR because I can't think
	* of anything more useful to do in this case
	* */
	@:overload @:public public function getFilter() : org.w3c.dom.traversal.NodeFilter;
	
	/** @return The root node of the NodeIterator, as specified
	* when it was created.
	* */
	@:overload @:public public function getRoot() : org.w3c.dom.Node;
	
	/** Return a mask describing which node types are presented via the
	* iterator.
	**/
	@:overload @:public public function getWhatToShow() : Int;
	
	/** @return the next node in the set and advance the position of the
	* iterator in the set.
	*
	* @throws DOMException - INVALID_STATE_ERR Raised if this method is
	* called after the detach method was invoked.
	*  */
	@:overload @:public public function nextNode() : org.w3c.dom.Node;
	
	/** @return the next previous in the set and advance the position of the
	* iterator in the set.
	*
	* @throws DOMException - INVALID_STATE_ERR Raised if this method is
	* called after the detach method was invoked.
	*  */
	@:overload @:public public function previousNode() : org.w3c.dom.Node;
	
	
}

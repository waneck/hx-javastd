package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class NodeIteratorImpl implements org.w3c.dom.traversal.NodeIterator
{
	/** Public constructor */
	@:overload public function new(document : com.sun.org.apache.xerces.internal.dom.DocumentImpl, root : org.w3c.dom.Node, whatToShow : Int, nodeFilter : org.w3c.dom.traversal.NodeFilter, entityReferenceExpansion : Bool) : Void;
	
	@:overload public function getRoot() : org.w3c.dom.Node;
	
	/** Return the whatToShow value */
	@:overload public function getWhatToShow() : Int;
	
	/** Return the filter */
	@:overload public function getFilter() : org.w3c.dom.traversal.NodeFilter;
	
	/** Return whether children entity references are included in the iterator. */
	@:overload public function getExpandEntityReferences() : Bool;
	
	/** Return the next Node in the Iterator. The node is the next node in
	*  depth-first order which also passes the filter, and whatToShow.
	*  If there is no next node which passes these criteria, then return null.
	*/
	@:overload public function nextNode() : org.w3c.dom.Node;
	
	/** Return the previous Node in the Iterator. The node is the next node in
	*  _backwards_ depth-first order which also passes the filter, and whatToShow.
	*/
	@:overload public function previousNode() : org.w3c.dom.Node;
	
	/** Fix-up the iterator on a remove. Called by DOM or otherwise,
	*  before an actual DOM remove.
	*/
	@:overload public function removeNode(node : org.w3c.dom.Node) : Void;
	
	@:overload public function detach() : Void;
	
	
}

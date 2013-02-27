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
extern class TreeWalkerImpl implements org.w3c.dom.traversal.TreeWalker
{
	/** Public constructor */
	@:overload public function new(root : org.w3c.dom.Node, whatToShow : Int, nodeFilter : org.w3c.dom.traversal.NodeFilter, entityReferenceExpansion : Bool) : Void;
	
	@:overload public function getRoot() : org.w3c.dom.Node;
	
	/** Return the whatToShow value */
	@:overload public function getWhatToShow() : Int;
	
	@:overload public function setWhatShow(whatToShow : Int) : Void;
	
	/** Return the NodeFilter */
	@:overload public function getFilter() : org.w3c.dom.traversal.NodeFilter;
	
	/** Return whether children entity references are included in the iterator. */
	@:overload public function getExpandEntityReferences() : Bool;
	
	/** Return the current Node. */
	@:overload public function getCurrentNode() : org.w3c.dom.Node;
	
	/** Return the current Node. */
	@:overload public function setCurrentNode(node : org.w3c.dom.Node) : Void;
	
	/** Return the parent Node from the current node,
	*  after applying filter, whatToshow.
	*  If result is not null, set the current Node.
	*/
	@:overload public function parentNode() : org.w3c.dom.Node;
	
	/** Return the first child Node from the current node,
	*  after applying filter, whatToshow.
	*  If result is not null, set the current Node.
	*/
	@:overload public function firstChild() : org.w3c.dom.Node;
	
	/** Return the last child Node from the current node,
	*  after applying filter, whatToshow.
	*  If result is not null, set the current Node.
	*/
	@:overload public function lastChild() : org.w3c.dom.Node;
	
	/** Return the previous sibling Node from the current node,
	*  after applying filter, whatToshow.
	*  If result is not null, set the current Node.
	*/
	@:overload public function previousSibling() : org.w3c.dom.Node;
	
	/** Return the next sibling Node from the current node,
	*  after applying filter, whatToshow.
	*  If result is not null, set the current Node.
	*/
	@:overload public function nextSibling() : org.w3c.dom.Node;
	
	/** Return the previous Node from the current node,
	*  after applying filter, whatToshow.
	*  If result is not null, set the current Node.
	*/
	@:overload public function previousNode() : org.w3c.dom.Node;
	
	/** Return the next Node from the current node,
	*  after applying filter, whatToshow.
	*  If result is not null, set the current Node.
	*/
	@:overload public function nextNode() : org.w3c.dom.Node;
	
	
}

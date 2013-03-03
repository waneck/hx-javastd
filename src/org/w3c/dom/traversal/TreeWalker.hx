package org.w3c.dom.traversal;
/*
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2000 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE.
* See W3C License http://www.w3.org/Consortium/Legal/ for more details.
*/
extern interface TreeWalker
{
	/**
	* The <code>root</code> node of the <code>TreeWalker</code>, as specified
	* when it was created.
	*/
	@:overload @:public public function getRoot() : org.w3c.dom.Node;
	
	/**
	* This attribute determines which node types are presented via the
	* <code>TreeWalker</code>. The available set of constants is defined in
	* the <code>NodeFilter</code> interface.  Nodes not accepted by
	* <code>whatToShow</code> will be skipped, but their children may still
	* be considered. Note that this skip takes precedence over the filter,
	* if any.
	*/
	@:overload @:public public function getWhatToShow() : Int;
	
	/**
	* The filter used to screen nodes.
	*/
	@:overload @:public public function getFilter() : org.w3c.dom.traversal.NodeFilter;
	
	/**
	* The value of this flag determines whether the children of entity
	* reference nodes are visible to the <code>TreeWalker</code>. If false,
	* these children  and their descendants will be rejected. Note that
	* this rejection takes precedence over <code>whatToShow</code> and the
	* filter, if any.
	* <br> To produce a view of the document that has entity references
	* expanded and does not expose the entity reference node itself, use
	* the <code>whatToShow</code> flags to hide the entity reference node
	* and set <code>expandEntityReferences</code> to true when creating the
	* <code>TreeWalker</code>. To produce a view of the document that has
	* entity reference nodes but no entity expansion, use the
	* <code>whatToShow</code> flags to show the entity reference node and
	* set <code>expandEntityReferences</code> to false.
	*/
	@:overload @:public public function getExpandEntityReferences() : Bool;
	
	/**
	* The node at which the <code>TreeWalker</code> is currently positioned.
	* <br>Alterations to the DOM tree may cause the current node to no longer
	* be accepted by the <code>TreeWalker</code>'s associated filter.
	* <code>currentNode</code> may also be explicitly set to any node,
	* whether or not it is within the subtree specified by the
	* <code>root</code> node or would be accepted by the filter and
	* <code>whatToShow</code> flags. Further traversal occurs relative to
	* <code>currentNode</code> even if it is not part of the current view,
	* by applying the filters in the requested direction; if no traversal
	* is possible, <code>currentNode</code> is not changed.
	*/
	@:overload @:public public function getCurrentNode() : org.w3c.dom.Node;
	
	/**
	* The node at which the <code>TreeWalker</code> is currently positioned.
	* <br>Alterations to the DOM tree may cause the current node to no longer
	* be accepted by the <code>TreeWalker</code>'s associated filter.
	* <code>currentNode</code> may also be explicitly set to any node,
	* whether or not it is within the subtree specified by the
	* <code>root</code> node or would be accepted by the filter and
	* <code>whatToShow</code> flags. Further traversal occurs relative to
	* <code>currentNode</code> even if it is not part of the current view,
	* by applying the filters in the requested direction; if no traversal
	* is possible, <code>currentNode</code> is not changed.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: Raised if an attempt is made to set
	*   <code>currentNode</code> to <code>null</code>.
	*/
	@:overload @:public public function setCurrentNode(currentNode : org.w3c.dom.Node) : Void;
	
	/**
	* Moves to and returns the closest visible ancestor node of the current
	* node. If the search for <code>parentNode</code> attempts to step
	* upward from the <code>TreeWalker</code>'s <code>root</code> node, or
	* if it fails to find a visible ancestor node, this method retains the
	* current position and returns <code>null</code>.
	* @return The new parent node, or <code>null</code> if the current node
	*   has no parent  in the <code>TreeWalker</code>'s logical view.
	*/
	@:overload @:public public function parentNode() : org.w3c.dom.Node;
	
	/**
	* Moves the <code>TreeWalker</code> to the first visible child of the
	* current node, and returns the new node. If the current node has no
	* visible children, returns <code>null</code>, and retains the current
	* node.
	* @return The new node, or <code>null</code> if the current node has no
	*   visible children  in the <code>TreeWalker</code>'s logical view.
	*/
	@:overload @:public public function firstChild() : org.w3c.dom.Node;
	
	/**
	* Moves the <code>TreeWalker</code> to the last visible child of the
	* current node, and returns the new node. If the current node has no
	* visible children, returns <code>null</code>, and retains the current
	* node.
	* @return The new node, or <code>null</code> if the current node has no
	*   children  in the <code>TreeWalker</code>'s logical view.
	*/
	@:overload @:public public function lastChild() : org.w3c.dom.Node;
	
	/**
	* Moves the <code>TreeWalker</code> to the previous sibling of the
	* current node, and returns the new node. If the current node has no
	* visible previous sibling, returns <code>null</code>, and retains the
	* current node.
	* @return The new node, or <code>null</code> if the current node has no
	*   previous sibling.  in the <code>TreeWalker</code>'s logical view.
	*/
	@:overload @:public public function previousSibling() : org.w3c.dom.Node;
	
	/**
	* Moves the <code>TreeWalker</code> to the next sibling of the current
	* node, and returns the new node. If the current node has no visible
	* next sibling, returns <code>null</code>, and retains the current node.
	* @return The new node, or <code>null</code> if the current node has no
	*   next sibling.  in the <code>TreeWalker</code>'s logical view.
	*/
	@:overload @:public public function nextSibling() : org.w3c.dom.Node;
	
	/**
	* Moves the <code>TreeWalker</code> to the previous visible node in
	* document order relative to the current node, and returns the new
	* node. If the current node has no previous node,  or if the search for
	* <code>previousNode</code> attempts to step upward from the
	* <code>TreeWalker</code>'s <code>root</code> node,  returns
	* <code>null</code>, and retains the current node.
	* @return The new node, or <code>null</code> if the current node has no
	*   previous node  in the <code>TreeWalker</code>'s logical view.
	*/
	@:overload @:public public function previousNode() : org.w3c.dom.Node;
	
	/**
	* Moves the <code>TreeWalker</code> to the next visible node in document
	* order relative to the current node, and returns the new node. If the
	* current node has no next node, or if the search for nextNode attempts
	* to step upward from the <code>TreeWalker</code>'s <code>root</code>
	* node, returns <code>null</code>, and retains the current node.
	* @return The new node, or <code>null</code> if the current node has no
	*   next node  in the <code>TreeWalker</code>'s logical view.
	*/
	@:overload @:public public function nextNode() : org.w3c.dom.Node;
	
	
}

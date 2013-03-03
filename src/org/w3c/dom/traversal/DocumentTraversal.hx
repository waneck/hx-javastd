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
extern interface DocumentTraversal
{
	/**
	* Create a new <code>NodeIterator</code> over the subtree rooted at the
	* specified node.
	* @param root The node which will be iterated together with its
	*   children. The <code>NodeIterator</code> is initially positioned
	*   just before this node. The <code>whatToShow</code> flags and the
	*   filter, if any, are not considered when setting this position. The
	*   root must not be <code>null</code>.
	* @param whatToShow This flag specifies which node types may appear in
	*   the logical view of the tree presented by the
	*   <code>NodeIterator</code>. See the description of
	*   <code>NodeFilter</code> for the set of possible <code>SHOW_</code>
	*   values.These flags can be combined using <code>OR</code>.
	* @param filter The <code>NodeFilter</code> to be used with this
	*   <code>NodeIterator</code>, or <code>null</code> to indicate no
	*   filter.
	* @param entityReferenceExpansion The value of this flag determines
	*   whether entity reference nodes are expanded.
	* @return The newly created <code>NodeIterator</code>.
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: Raised if the specified <code>root</code> is
	*   <code>null</code>.
	*/
	@:overload @:public public function createNodeIterator(root : org.w3c.dom.Node, whatToShow : Int, filter : org.w3c.dom.traversal.NodeFilter, entityReferenceExpansion : Bool) : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Create a new <code>TreeWalker</code> over the subtree rooted at the
	* specified node.
	* @param root The node which will serve as the <code>root</code> for the
	*   <code>TreeWalker</code>. The <code>whatToShow</code> flags and the
	*   <code>NodeFilter</code> are not considered when setting this value;
	*   any node type will be accepted as the <code>root</code>. The
	*   <code>currentNode</code> of the <code>TreeWalker</code> is
	*   initialized to this node, whether or not it is visible. The
	*   <code>root</code> functions as a stopping point for traversal
	*   methods that look upward in the document structure, such as
	*   <code>parentNode</code> and nextNode. The <code>root</code> must
	*   not be <code>null</code>.
	* @param whatToShow This flag specifies which node types may appear in
	*   the logical view of the tree presented by the
	*   <code>TreeWalker</code>. See the description of
	*   <code>NodeFilter</code> for the set of possible <code>SHOW_</code>
	*   values.These flags can be combined using <code>OR</code>.
	* @param filter The <code>NodeFilter</code> to be used with this
	*   <code>TreeWalker</code>, or <code>null</code> to indicate no filter.
	* @param entityReferenceExpansion If this flag is false, the contents of
	*   <code>EntityReference</code> nodes are not presented in the logical
	*   view.
	* @return The newly created <code>TreeWalker</code>.
	* @exception DOMException
	*    NOT_SUPPORTED_ERR: Raised if the specified <code>root</code> is
	*   <code>null</code>.
	*/
	@:overload @:public public function createTreeWalker(root : org.w3c.dom.Node, whatToShow : Int, filter : org.w3c.dom.traversal.NodeFilter, entityReferenceExpansion : Bool) : org.w3c.dom.traversal.TreeWalker;
	
	
}

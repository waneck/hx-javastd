package javax.swing.tree;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface TreeNode
{
	/**
	* Returns the child <code>TreeNode</code> at index
	* <code>childIndex</code>.
	*/
	@:overload public function getChildAt(childIndex : Int) : javax.swing.tree.TreeNode;
	
	/**
	* Returns the number of children <code>TreeNode</code>s the receiver
	* contains.
	*/
	@:overload public function getChildCount() : Int;
	
	/**
	* Returns the parent <code>TreeNode</code> of the receiver.
	*/
	@:overload public function getParent() : javax.swing.tree.TreeNode;
	
	/**
	* Returns the index of <code>node</code> in the receivers children.
	* If the receiver does not contain <code>node</code>, -1 will be
	* returned.
	*/
	@:overload public function getIndex(node : javax.swing.tree.TreeNode) : Int;
	
	/**
	* Returns true if the receiver allows children.
	*/
	@:overload public function getAllowsChildren() : Bool;
	
	/**
	* Returns true if the receiver is a leaf.
	*/
	@:overload public function isLeaf() : Bool;
	
	/**
	* Returns the children of the receiver as an <code>Enumeration</code>.
	*/
	@:overload public function children() : java.util.Enumeration<Dynamic>;
	
	
}

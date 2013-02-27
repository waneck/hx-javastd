package javax.swing.tree;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
/**
* Defines the requirements for a tree node object that can change --
* by adding or removing child nodes, or by changing the contents
* of a user object stored in the node.
*
* @see DefaultMutableTreeNode
* @see javax.swing.JTree
*
* @author Rob Davis
* @author Scott Violet
*/
extern interface MutableTreeNode extends javax.swing.tree.TreeNode
{
	/**
	* Adds <code>child</code> to the receiver at <code>index</code>.
	* <code>child</code> will be messaged with <code>setParent</code>.
	*/
	@:overload public function insert(child : MutableTreeNode, index : Int) : Void;
	
	/**
	* Removes the child at <code>index</code> from the receiver.
	*/
	@:overload public function remove(index : Int) : Void;
	
	/**
	* Removes <code>node</code> from the receiver. <code>setParent</code>
	* will be messaged on <code>node</code>.
	*/
	@:overload public function remove(node : MutableTreeNode) : Void;
	
	/**
	* Resets the user object of the receiver to <code>object</code>.
	*/
	@:overload public function setUserObject(object : Dynamic) : Void;
	
	/**
	* Removes the receiver from its parent.
	*/
	@:overload public function removeFromParent() : Void;
	
	/**
	* Sets the parent of the receiver to <code>newParent</code>.
	*/
	@:overload public function setParent(newParent : MutableTreeNode) : Void;
	
	
}

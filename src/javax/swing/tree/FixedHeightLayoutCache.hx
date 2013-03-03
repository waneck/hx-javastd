package javax.swing.tree;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class FixedHeightLayoutCache extends javax.swing.tree.AbstractLayoutCache
{
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the TreeModel that will provide the data.
	*
	* @param newModel the TreeModel that is to provide the data
	*/
	@:overload @:public override public function setModel(newModel : javax.swing.tree.TreeModel) : Void;
	
	/**
	* Determines whether or not the root node from
	* the TreeModel is visible.
	*
	* @param rootVisible true if the root node of the tree is to be displayed
	* @see #rootVisible
	*/
	@:overload @:public override public function setRootVisible(rootVisible : Bool) : Void;
	
	/**
	* Sets the height of each cell. If rowHeight is less than or equal to
	* 0 this will throw an IllegalArgumentException.
	*
	* @param rowHeight the height of each cell, in pixels
	*/
	@:overload @:public override public function setRowHeight(rowHeight : Int) : Void;
	
	/**
	* Returns the number of visible rows.
	*/
	@:overload @:public override public function getRowCount() : Int;
	
	/**
	* Does nothing, FixedHeightLayoutCache doesn't cache width, and that
	* is all that could change.
	*/
	@:overload @:public override public function invalidatePathBounds(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Informs the TreeState that it needs to recalculate all the sizes
	* it is referencing.
	*/
	@:overload @:public override public function invalidateSizes() : Void;
	
	/**
	* Returns true if the value identified by row is currently expanded.
	*/
	@:overload @:public override public function isExpanded(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns a rectangle giving the bounds needed to draw path.
	*
	* @param path     a TreePath specifying a node
	* @param placeIn  a Rectangle object giving the available space
	* @return a Rectangle object specifying the space to be used
	*/
	@:overload @:public override public function getBounds(path : javax.swing.tree.TreePath, placeIn : java.awt.Rectangle) : java.awt.Rectangle;
	
	/**
	* Returns the path for passed in row.  If row is not visible
	* null is returned.
	*/
	@:overload @:public override public function getPathForRow(row : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns the row that the last item identified in path is visible
	* at.  Will return -1 if any of the elements in path are not
	* currently visible.
	*/
	@:overload @:public override public function getRowForPath(path : javax.swing.tree.TreePath) : Int;
	
	/**
	* Returns the path to the node that is closest to x,y.  If
	* there is nothing currently visible this will return null, otherwise
	* it'll always return a valid path.  If you need to test if the
	* returned object is exactly at x, y you should get the bounds for
	* the returned path and test x, y against that.
	*/
	@:overload @:public override public function getPathClosestTo(x : Int, y : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns the number of visible children for row.
	*/
	@:overload @:public override public function getVisibleChildCount(path : javax.swing.tree.TreePath) : Int;
	
	/**
	* Returns an Enumerator that increments over the visible paths
	* starting at the passed in location. The ordering of the enumeration
	* is based on how the paths are displayed.
	*/
	@:overload @:public override public function getVisiblePathsFrom(path : javax.swing.tree.TreePath) : java.util.Enumeration<javax.swing.tree.TreePath>;
	
	/**
	* Marks the path <code>path</code> expanded state to
	* <code>isExpanded</code>.
	*/
	@:overload @:public override public function setExpandedState(path : javax.swing.tree.TreePath, isExpanded : Bool) : Void;
	
	/**
	* Returns true if the path is expanded, and visible.
	*/
	@:overload @:public override public function getExpandedState(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* <p>Invoked after a node (or a set of siblings) has changed in some
	* way. The node(s) have not changed locations in the tree or
	* altered their children arrays, but other attributes have
	* changed and may affect presentation. Example: the name of a
	* file has changed, but it is in the same location in the file
	* system.</p>
	*
	* <p>e.path() returns the path the parent of the changed node(s).</p>
	*
	* <p>e.childIndices() returns the index(es) of the changed node(s).</p>
	*/
	@:overload @:public override public function treeNodesChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* <p>Invoked after nodes have been inserted into the tree.</p>
	*
	* <p>e.path() returns the parent of the new nodes
	* <p>e.childIndices() returns the indices of the new nodes in
	* ascending order.
	*/
	@:overload @:public override public function treeNodesInserted(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* <p>Invoked after nodes have been removed from the tree.  Note that
	* if a subtree is removed from the tree, this method may only be
	* invoked once for the root of the removed subtree, not once for
	* each individual set of siblings removed.</p>
	*
	* <p>e.path() returns the former parent of the deleted nodes.</p>
	*
	* <p>e.childIndices() returns the indices the nodes had before they were deleted in ascending order.</p>
	*/
	@:overload @:public override public function treeNodesRemoved(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* <p>Invoked after the tree has drastically changed structure from a
	* given node down.  If the path returned by e.getPath() is of length
	* one and the first element does not identify the current root node
	* the first element should become the new root of the tree.<p>
	*
	* <p>e.path() holds the path to the node.</p>
	* <p>e.childIndices() returns null.</p>
	*/
	@:overload @:public override public function treeStructureChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	
}
/**
* FHTreeStateNode is used to track what has been expanded.
* FHTreeStateNode differs from VariableHeightTreeState.TreeStateNode
* in that it is highly model intensive. That is almost all queries to a
* FHTreeStateNode result in the TreeModel being queried. And it
* obviously does not support variable sized row heights.
*/
@:native('javax$swing$tree$FixedHeightLayoutCache$FHTreeStateNode') @:internal extern class FixedHeightLayoutCache_FHTreeStateNode extends javax.swing.tree.DefaultMutableTreeNode
{
	/** Index of this node from the model. */
	@:protected private var childIndex : Int;
	
	/** Child count of the receiver. */
	@:protected private var childCount : Int;
	
	/** Row of the receiver. This is only valid if the row is expanded.
	*/
	@:protected private var row : Int;
	
	/** Path of this node. */
	@:protected private var path : javax.swing.tree.TreePath;
	
	@:overload @:public public function new(userObject : Dynamic, childIndex : Int, row : Int) : Void;
	
	/**
	* Messaged when this node is added somewhere, resets the path
	* and adds a mapping from path to this node.
	*/
	@:overload @:public override public function setParent(parent : javax.swing.tree.MutableTreeNode) : Void;
	
	/**
	* Messaged when this node is removed from its parent, this messages
	* <code>removedFromMapping</code> to remove all the children.
	*/
	@:overload @:public override public function remove(childIndex : Int) : Void;
	
	/**
	* Messaged to set the user object. This resets the path.
	*/
	@:overload @:public override public function setUserObject(o : Dynamic) : Void;
	
	/**
	* Returns the index of the receiver in the model.
	*/
	@:overload @:public public function getChildIndex() : Int;
	
	/**
	* Returns the <code>TreePath</code> of the receiver.
	*/
	@:overload @:public public function getTreePath() : javax.swing.tree.TreePath;
	
	/**
	* Returns the child for the passed in model index, this will
	* return <code>null</code> if the child for <code>index</code>
	* has not yet been created (expanded).
	*/
	@:overload @:public public function getChildAtModelIndex(index : Int) : javax.swing.tree.FixedHeightLayoutCache.FixedHeightLayoutCache_FHTreeStateNode;
	
	/**
	* Returns true if this node is visible. This is determined by
	* asking all the parents if they are expanded.
	*/
	@:overload @:public public function isVisible() : Bool;
	
	/**
	* Returns the row of the receiver.
	*/
	@:overload @:public public function getRow() : Int;
	
	/**
	* Returns the row of the child with a model index of
	* <code>index</code>.
	*/
	@:overload @:public public function getRowToModelIndex(index : Int) : Int;
	
	/**
	* Returns the number of children in the receiver by descending all
	* expanded nodes and messaging them with getTotalChildCount.
	*/
	@:overload @:public public function getTotalChildCount() : Int;
	
	/**
	* Returns true if this node is expanded.
	*/
	@:overload @:public public function isExpanded() : Bool;
	
	/**
	* The highest visible nodes have a depth of 0.
	*/
	@:overload @:public public function getVisibleLevel() : Int;
	
	/**
	* Recreates the receivers path, and all its childrens paths.
	*/
	@:overload @:protected private function resetChildrenPaths(parentPath : javax.swing.tree.TreePath) : Void;
	
	/**
	* Removes the receiver, and all its children, from the mapping
	* table.
	*/
	@:overload @:protected private function removeFromMapping() : Void;
	
	/**
	* Creates a new node to represent <code>userObject</code>.
	* This does NOT check to ensure there isn't already a child node
	* to manage <code>userObject</code>.
	*/
	@:overload @:protected private function createChildFor(userObject : Dynamic) : javax.swing.tree.FixedHeightLayoutCache.FixedHeightLayoutCache_FHTreeStateNode;
	
	/**
	* Adjusts the receiver, and all its children rows by
	* <code>amount</code>.
	*/
	@:overload @:protected private function adjustRowBy(amount : Int) : Void;
	
	/**
	* Adjusts this node, its child, and its parent starting at
	* an index of <code>index</code> index is the index of the child
	* to start adjusting from, which is not necessarily the model
	* index.
	*/
	@:overload @:protected private function adjustRowBy(amount : Int, startIndex : Int) : Void;
	
	/**
	* Messaged when the node has expanded. This updates all of
	* the receivers children rows, as well as the total row count.
	*/
	@:overload @:protected private function didExpand() : Void;
	
	/**
	* Sets the receivers row to <code>nextRow</code> and recursively
	* updates all the children of the receivers rows. The index the
	* next row is to be placed as is returned.
	*/
	@:overload @:protected private function setRowAndChildren(nextRow : Int) : Int;
	
	/**
	* Resets the receivers childrens rows. Starting with the child
	* at <code>childIndex</code> (and <code>modelIndex</code>) to
	* <code>newRow</code>. This uses <code>setRowAndChildren</code>
	* to recursively descend children, and uses
	* <code>resetRowSelection</code> to ascend parents.
	*/
	@:overload @:protected private function resetChildrenRowsFrom(newRow : Int, childIndex : Int, modelIndex : Int) : Void;
	
	/**
	* Makes the receiver visible, but invoking
	* <code>expandParentAndReceiver</code> on the superclass.
	*/
	@:overload @:protected private function makeVisible() : Void;
	
	/**
	* Invokes <code>expandParentAndReceiver</code> on the parent,
	* and expands the receiver.
	*/
	@:overload @:protected private function expandParentAndReceiver() : Void;
	
	/**
	* Expands the receiver.
	*/
	@:overload @:protected private function expand() : Void;
	
	/**
	* Collapses the receiver. If <code>adjustRows</code> is true,
	* the rows of nodes after the receiver are adjusted.
	*/
	@:overload @:protected private function collapse(adjustRows : Bool) : Void;
	
	/**
	* Returns true if the receiver is a leaf.
	*/
	@:overload @:public override public function isLeaf() : Bool;
	
	/**
	* Adds newChild to this nodes children at the appropriate location.
	* The location is determined from the childIndex of newChild.
	*/
	@:overload @:protected private function addNode(newChild : javax.swing.tree.FixedHeightLayoutCache.FixedHeightLayoutCache_FHTreeStateNode) : Void;
	
	/**
	* Removes the child at <code>modelIndex</code>.
	* <code>isChildVisible</code> should be true if the receiver
	* is visible and expanded.
	*/
	@:overload @:protected private function removeChildAtModelIndex(modelIndex : Int, isChildVisible : Bool) : Void;
	
	/**
	* Adjusts the child indexs of the receivers children by
	* <code>amount</code>, starting at <code>index</code>.
	*/
	@:overload @:protected private function adjustChildIndexs(index : Int, amount : Int) : Void;
	
	/**
	* Messaged when a child has been inserted at index. For all the
	* children that have a childIndex >= index their index is incremented
	* by one.
	*/
	@:overload @:protected private function childInsertedAtModelIndex(index : Int, isExpandedAndVisible : Bool) : Void;
	
	/**
	* Returns true if there is a row for <code>row</code>.
	* <code>nextRow</code> gives the bounds of the receiver.
	* Information about the found row is returned in <code>info</code>.
	* This should be invoked on root with <code>nextRow</code> set
	* to <code>getRowCount</code>().
	*/
	@:overload @:protected private function getPathForRow(row : Int, nextRow : Int, info : javax.swing.tree.FixedHeightLayoutCache.FixedHeightLayoutCache_SearchInfo) : Bool;
	
	/**
	* Asks all the children of the receiver for their totalChildCount
	* and returns this value (plus stopIndex).
	*/
	@:overload @:protected private function getCountTo(stopIndex : Int) : Int;
	
	/**
	* Returns the number of children that are expanded to
	* <code>stopIndex</code>. This does not include the number
	* of children that the child at <code>stopIndex</code> might
	* have.
	*/
	@:overload @:protected private function getNumExpandedChildrenTo(stopIndex : Int) : Int;
	
	/**
	* Messaged when this node either expands or collapses.
	*/
	@:overload @:protected private function didAdjustTree() : Void;
	
	
}
/**
* Used as a placeholder when getting the path in FHTreeStateNodes.
*/
@:native('javax$swing$tree$FixedHeightLayoutCache$SearchInfo') @:internal extern class FixedHeightLayoutCache_SearchInfo
{
	@:protected private var node : javax.swing.tree.FixedHeightLayoutCache.FixedHeightLayoutCache_FHTreeStateNode;
	
	@:protected private var isNodeParentNode : Bool;
	
	@:protected private var childIndex : Int;
	
	@:overload @:protected private function getPath() : javax.swing.tree.TreePath;
	
	
}
/**
* An enumerator to iterate through visible nodes.
*/
@:native('javax$swing$tree$FixedHeightLayoutCache$VisibleFHTreeStateNodeEnumeration') @:internal extern class FixedHeightLayoutCache_VisibleFHTreeStateNodeEnumeration implements java.util.Enumeration<javax.swing.tree.TreePath>
{
	/** Parent thats children are being enumerated. */
	@:protected private var parent : javax.swing.tree.FixedHeightLayoutCache.FixedHeightLayoutCache_FHTreeStateNode;
	
	/** Index of next child. An index of -1 signifies parent should be
	* visibled next. */
	@:protected private var nextIndex : Int;
	
	/** Number of children in parent. */
	@:protected private var childCount : Int;
	
	@:overload @:protected private function new(node : javax.swing.tree.FixedHeightLayoutCache.FixedHeightLayoutCache_FHTreeStateNode) : Void;
	
	@:overload @:protected private function new(parent : javax.swing.tree.FixedHeightLayoutCache.FixedHeightLayoutCache_FHTreeStateNode, startIndex : Int) : Void;
	
	/**
	* @return true if more visible nodes.
	*/
	@:overload @:public public function hasMoreElements() : Bool;
	
	/**
	* @return next visible TreePath.
	*/
	@:overload @:public public function nextElement() : javax.swing.tree.TreePath;
	
	/**
	* Determines the next object by invoking <code>updateNextIndex</code>
	* and if not succesful <code>findNextValidParent</code>.
	*/
	@:overload @:protected private function updateNextObject() : Void;
	
	/**
	* Finds the next valid parent, this should be called when nextIndex
	* is beyond the number of children of the current parent.
	*/
	@:overload @:protected private function findNextValidParent() : Bool;
	
	/**
	* Updates <code>nextIndex</code> returning false if it is beyond
	* the number of children of parent.
	*/
	@:overload @:protected private function updateNextIndex() : Bool;
	
	
}

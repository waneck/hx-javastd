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
extern class VariableHeightLayoutCache extends javax.swing.tree.AbstractLayoutCache
{
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the <code>TreeModel</code> that will provide the data.
	*
	* @param newModel the <code>TreeModel</code> that is to provide the data
	* @beaninfo
	*        bound: true
	*  description: The TreeModel that will provide the data.
	*/
	@:overload @:public override public function setModel(newModel : javax.swing.tree.TreeModel) : Void;
	
	/**
	* Determines whether or not the root node from
	* the <code>TreeModel</code> is visible.
	*
	* @param rootVisible true if the root node of the tree is to be displayed
	* @see #rootVisible
	* @beaninfo
	*        bound: true
	*  description: Whether or not the root node
	*               from the TreeModel is visible.
	*/
	@:overload @:public override public function setRootVisible(rootVisible : Bool) : Void;
	
	/**
	* Sets the height of each cell.  If the specified value
	* is less than or equal to zero the current cell renderer is
	* queried for each row's height.
	*
	* @param rowHeight the height of each cell, in pixels
	* @beaninfo
	*        bound: true
	*  description: The height of each cell.
	*/
	@:overload @:public override public function setRowHeight(rowHeight : Int) : Void;
	
	/**
	* Sets the renderer that is responsible for drawing nodes in the tree.
	* @param nd the renderer
	*/
	@:overload @:public override public function setNodeDimensions(nd : javax.swing.tree.AbstractLayoutCache.AbstractLayoutCache_NodeDimensions) : Void;
	
	/**
	* Marks the path <code>path</code> expanded state to
	* <code>isExpanded</code>.
	* @param path the <code>TreePath</code> of interest
	* @param isExpanded true if the path should be expanded, otherwise false
	*/
	@:overload @:public override public function setExpandedState(path : javax.swing.tree.TreePath, isExpanded : Bool) : Void;
	
	/**
	* Returns true if the path is expanded, and visible.
	* @return true if the path is expanded and visible, otherwise false
	*/
	@:overload @:public override public function getExpandedState(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns the <code>Rectangle</code> enclosing the label portion
	* into which the item identified by <code>path</code> will be drawn.
	*
	* @param path  the path to be drawn
	* @param placeIn the bounds of the enclosing rectangle
	* @return the bounds of the enclosing rectangle or <code>null</code>
	*    if the node could not be ascertained
	*/
	@:overload @:public override public function getBounds(path : javax.swing.tree.TreePath, placeIn : java.awt.Rectangle) : java.awt.Rectangle;
	
	/**
	* Returns the path for <code>row</code>.  If <code>row</code>
	* is not visible, <code>null</code> is returned.
	*
	* @param row the location of interest
	* @return the path for <code>row</code>, or <code>null</code>
	* if <code>row</code> is not visible
	*/
	@:overload @:public override public function getPathForRow(row : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns the row where the last item identified in path is visible.
	* Will return -1 if any of the elements in path are not
	* currently visible.
	*
	* @param path the <code>TreePath</code> of interest
	* @return the row where the last item in path is visible
	*/
	@:overload @:public override public function getRowForPath(path : javax.swing.tree.TreePath) : Int;
	
	/**
	* Returns the number of visible rows.
	* @return the number of visible rows
	*/
	@:overload @:public override public function getRowCount() : Int;
	
	/**
	* Instructs the <code>LayoutCache</code> that the bounds for
	* <code>path</code> are invalid, and need to be updated.
	*
	* @param path the <code>TreePath</code> which is now invalid
	*/
	@:overload @:public override public function invalidatePathBounds(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Returns the preferred height.
	* @return the preferred height
	*/
	@:overload @:public override public function getPreferredHeight() : Int;
	
	/**
	* Returns the preferred width and height for the region in
	* <code>visibleRegion</code>.
	*
	* @param bounds  the region being queried
	*/
	@:overload @:public override public function getPreferredWidth(bounds : java.awt.Rectangle) : Int;
	
	/**
	* Returns the path to the node that is closest to x,y.  If
	* there is nothing currently visible this will return <code>null</code>,
	* otherwise it will always return a valid path.
	* If you need to test if the
	* returned object is exactly at x, y you should get the bounds for
	* the returned path and test x, y against that.
	*
	* @param x  the x-coordinate
	* @param y  the y-coordinate
	* @return the path to the node that is closest to x, y
	*/
	@:overload @:public override public function getPathClosestTo(x : Int, y : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns an <code>Enumerator</code> that increments over the visible paths
	* starting at the passed in location. The ordering of the enumeration
	* is based on how the paths are displayed.
	*
	* @param path the location in the <code>TreePath</code> to start
	* @return an <code>Enumerator</code> that increments over the visible
	*     paths
	*/
	@:overload @:public override public function getVisiblePathsFrom(path : javax.swing.tree.TreePath) : java.util.Enumeration<javax.swing.tree.TreePath>;
	
	/**
	* Returns the number of visible children for <code>path</code>.
	* @return the number of visible children for <code>path</code>
	*/
	@:overload @:public override public function getVisibleChildCount(path : javax.swing.tree.TreePath) : Int;
	
	/**
	* Informs the <code>TreeState</code> that it needs to recalculate
	* all the sizes it is referencing.
	*/
	@:overload @:public override public function invalidateSizes() : Void;
	
	/**
	* Returns true if the value identified by <code>path</code> is
	* currently expanded.
	* @return true if the value identified by <code>path</code> is
	*    currently expanded
	*/
	@:overload @:public override public function isExpanded(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Invoked after a node (or a set of siblings) has changed in some
	* way. The node(s) have not changed locations in the tree or
	* altered their children arrays, but other attributes have
	* changed and may affect presentation. Example: the name of a
	* file has changed, but it is in the same location in the file
	* system.
	*
	* <p><code>e.path</code> returns the path the parent of the
	* changed node(s).
	*
	* <p><code>e.childIndices</code> returns the index(es) of the
	* changed node(s).
	*
	* @param e the <code>TreeModelEvent</code> of interest
	*/
	@:overload @:public override public function treeNodesChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* Invoked after nodes have been inserted into the tree.
	*
	* <p><code>e.path</code> returns the parent of the new nodes.
	* <p><code>e.childIndices</code> returns the indices of the new nodes in
	* ascending order.
	*
	* @param e the <code>TreeModelEvent</code> of interest
	*/
	@:overload @:public override public function treeNodesInserted(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* Invoked after nodes have been removed from the tree.  Note that
	* if a subtree is removed from the tree, this method may only be
	* invoked once for the root of the removed subtree, not once for
	* each individual set of siblings removed.
	*
	* <p><code>e.path</code> returns the former parent of the deleted nodes.
	*
	* <p><code>e.childIndices</code> returns the indices the nodes had
	* before they were deleted in ascending order.
	*
	* @param e the <code>TreeModelEvent</code> of interest
	*/
	@:overload @:public override public function treeNodesRemoved(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* Invoked after the tree has drastically changed structure from a
	* given node down.  If the path returned by <code>e.getPath</code>
	* is of length one and the first element does not identify the
	* current root node the first element should become the new root
	* of the tree.
	*
	* <p><code>e.path</code> holds the path to the node.
	* <p><code>e.childIndices</code> returns <code>null</code>.
	*
	* @param e the <code>TreeModelEvent</code> of interest
	*/
	@:overload @:public override public function treeStructureChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	
}
/**
* TreeStateNode is used to keep track of each of
* the nodes that have been expanded. This will also cache the preferred
* size of the value it represents.
*/
@:native('javax$swing$tree$VariableHeightLayoutCache$TreeStateNode') @:internal extern class VariableHeightLayoutCache_TreeStateNode extends javax.swing.tree.DefaultMutableTreeNode
{
	/** Preferred size needed to draw the user object. */
	@:protected private var preferredWidth : Int;
	
	@:protected private var preferredHeight : Int;
	
	/** X location that the user object will be drawn at. */
	@:protected private var xOrigin : Int;
	
	/** Y location that the user object will be drawn at. */
	@:protected private var yOrigin : Int;
	
	/** Is this node currently expanded? */
	@:protected private var expanded : Bool;
	
	/** Path of this node. */
	@:protected private var path : javax.swing.tree.TreePath;
	
	@:overload @:public public function new(value : Dynamic) : Void;
	
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
	* Returns the children of the receiver.
	* If the receiver is not currently expanded, this will return an
	* empty enumeration.
	*/
	@:overload @:public override public function children() : java.util.Enumeration<Dynamic>;
	
	/**
	* Returns true if the receiver is a leaf.
	*/
	@:overload @:public override public function isLeaf() : Bool;
	
	/**
	* Returns the location and size of this node.
	*/
	@:overload @:public public function getNodeBounds(placeIn : java.awt.Rectangle) : java.awt.Rectangle;
	
	/**
	* @return x location to draw node at.
	*/
	@:overload @:public public function getXOrigin() : Int;
	
	/**
	* Returns the y origin the user object will be drawn at.
	*/
	@:overload @:public public function getYOrigin() : Int;
	
	/**
	* Returns the preferred height of the receiver.
	*/
	@:overload @:public public function getPreferredHeight() : Int;
	
	/**
	* Returns the preferred width of the receiver.
	*/
	@:overload @:public public function getPreferredWidth() : Int;
	
	/**
	* Returns true if this node has a valid size.
	*/
	@:overload @:public public function hasValidSize() : Bool;
	
	/**
	* Returns the row of the receiver.
	*/
	@:overload @:public public function getRow() : Int;
	
	/**
	* Returns true if this node has been expanded at least once.
	*/
	@:overload @:public public function hasBeenExpanded() : Bool;
	
	/**
	* Returns true if the receiver has been expanded.
	*/
	@:overload @:public public function isExpanded() : Bool;
	
	/**
	* Returns the last visible node that is a child of this
	* instance.
	*/
	@:overload @:public public function getLastVisibleNode() : javax.swing.tree.VariableHeightLayoutCache.VariableHeightLayoutCache_TreeStateNode;
	
	/**
	* Returns true if the receiver is currently visible.
	*/
	@:overload @:public public function isVisible() : Bool;
	
	/**
	* Returns the number of children this will have. If the children
	* have not yet been loaded, this messages the model.
	*/
	@:overload @:public public function getModelChildCount() : Int;
	
	/**
	* Returns the number of visible children, that is the number of
	* children that are expanded, or leafs.
	*/
	@:overload @:public public function getVisibleChildCount() : Int;
	
	/**
	* Toggles the receiver between expanded and collapsed.
	*/
	@:overload @:public public function toggleExpanded() : Void;
	
	/**
	* Makes the receiver visible, but invoking
	* <code>expandParentAndReceiver</code> on the superclass.
	*/
	@:overload @:public public function makeVisible() : Void;
	
	/**
	* Expands the receiver.
	*/
	@:overload @:public public function expand() : Void;
	
	/**
	* Collapses the receiver.
	*/
	@:overload @:public public function collapse() : Void;
	
	/**
	* Returns the value the receiver is representing. This is a cover
	* for getUserObject.
	*/
	@:overload @:public public function getValue() : Dynamic;
	
	/**
	* Returns a TreePath instance for this node.
	*/
	@:overload @:public public function getTreePath() : javax.swing.tree.TreePath;
	
	/**
	* Recreates the receivers path, and all its childrens paths.
	*/
	@:overload @:protected private function resetChildrenPaths(parentPath : javax.swing.tree.TreePath) : Void;
	
	/**
	* Sets y origin the user object will be drawn at to
	* <I>newYOrigin</I>.
	*/
	@:overload @:protected private function setYOrigin(newYOrigin : Int) : Void;
	
	/**
	* Shifts the y origin by <code>offset</code>.
	*/
	@:overload @:protected private function shiftYOriginBy(offset : Int) : Void;
	
	/**
	* Updates the receivers preferredSize by invoking
	* <code>updatePreferredSize</code> with an argument of -1.
	*/
	@:overload @:protected private function updatePreferredSize() : Void;
	
	/**
	* Updates the preferred size by asking the current renderer
	* for the Dimension needed to draw the user object this
	* instance represents.
	*/
	@:overload @:protected private function updatePreferredSize(index : Int) : Void;
	
	/**
	* Marks the receivers size as invalid. Next time the size, location
	* is asked for it will be obtained.
	*/
	@:overload @:protected private function markSizeInvalid() : Void;
	
	/**
	* Marks the receivers size, and all its descendants sizes, as invalid.
	*/
	@:overload @:protected private function deepMarkSizeInvalid() : Void;
	
	/**
	* Returns the children of the receiver. If the children haven't
	* been loaded from the model and
	* <code>createIfNeeded</code> is true, the children are first
	* loaded.
	*/
	@:overload @:protected private function getLoadedChildren(createIfNeeded : Bool) : java.util.Enumeration<Dynamic>;
	
	/**
	* Messaged from expand and collapse. This is meant for subclassers
	* that may wish to do something interesting with this.
	*/
	@:overload @:protected private function didAdjustTree() : Void;
	
	/**
	* Invokes <code>expandParentAndReceiver</code> on the parent,
	* and expands the receiver.
	*/
	@:overload @:protected private function expandParentAndReceiver() : Void;
	
	/**
	* Expands this node in the tree.  This will load the children
	* from the treeModel if this node has not previously been
	* expanded.  If <I>adjustTree</I> is true the tree and selection
	* are updated accordingly.
	*/
	@:overload @:protected private function expand(adjustTree : Bool) : Void;
	
	/**
	* Collapses this node in the tree.  If <I>adjustTree</I> is
	* true the tree and selection are updated accordingly.
	*/
	@:overload @:protected private function collapse(adjustTree : Bool) : Void;
	
	/**
	* Removes the receiver, and all its children, from the mapping
	* table.
	*/
	@:overload @:protected private function removeFromMapping() : Void;
	
	
}
/**
* An enumerator to iterate through visible nodes.
*/
@:native('javax$swing$tree$VariableHeightLayoutCache$VisibleTreeStateNodeEnumeration') @:internal extern class VariableHeightLayoutCache_VisibleTreeStateNodeEnumeration implements java.util.Enumeration<javax.swing.tree.TreePath>
{
	/** Parent thats children are being enumerated. */
	@:protected private var parent : javax.swing.tree.VariableHeightLayoutCache.VariableHeightLayoutCache_TreeStateNode;
	
	/** Index of next child. An index of -1 signifies parent should be
	* visibled next. */
	@:protected private var nextIndex : Int;
	
	/** Number of children in parent. */
	@:protected private var childCount : Int;
	
	@:overload @:protected private function new(node : javax.swing.tree.VariableHeightLayoutCache.VariableHeightLayoutCache_TreeStateNode) : Void;
	
	@:overload @:protected private function new(parent : javax.swing.tree.VariableHeightLayoutCache.VariableHeightLayoutCache_TreeStateNode, startIndex : Int) : Void;
	
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

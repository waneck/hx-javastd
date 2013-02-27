package javax.swing.tree;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern interface TreeSelectionModel
{
	/**
	* Sets the selection model, which must be one of SINGLE_TREE_SELECTION,
	* CONTIGUOUS_TREE_SELECTION or DISCONTIGUOUS_TREE_SELECTION.
	* <p>
	* This may change the selection if the current selection is not valid
	* for the new mode. For example, if three TreePaths are
	* selected when the mode is changed to <code>SINGLE_TREE_SELECTION</code>,
	* only one TreePath will remain selected. It is up to the particular
	* implementation to decide what TreePath remains selected.
	*/
	@:overload public function setSelectionMode(mode : Int) : Void;
	
	/**
	* Returns the current selection mode, one of
	* <code>SINGLE_TREE_SELECTION</code>,
	* <code>CONTIGUOUS_TREE_SELECTION</code> or
	* <code>DISCONTIGUOUS_TREE_SELECTION</code>.
	*/
	@:overload public function getSelectionMode() : Int;
	
	/**
	* Sets the selection to path. If this represents a change, then
	* the TreeSelectionListeners are notified. If <code>path</code> is
	* null, this has the same effect as invoking <code>clearSelection</code>.
	*
	* @param path new path to select
	*/
	@:overload public function setSelectionPath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Sets the selection to path. If this represents a change, then
	* the TreeSelectionListeners are notified. If <code>paths</code> is
	* null, this has the same effect as invoking <code>clearSelection</code>.
	*
	* @param paths new selection
	*/
	@:overload public function setSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* Adds path to the current selection. If path is not currently
	* in the selection the TreeSelectionListeners are notified. This has
	* no effect if <code>path</code> is null.
	*
	* @param path the new path to add to the current selection
	*/
	@:overload public function addSelectionPath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Adds paths to the current selection.  If any of the paths in
	* paths are not currently in the selection the TreeSelectionListeners
	* are notified. This has
	* no effect if <code>paths</code> is null.
	*
	* @param paths the new paths to add to the current selection
	*/
	@:overload public function addSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* Removes path from the selection. If path is in the selection
	* The TreeSelectionListeners are notified. This has no effect if
	* <code>path</code> is null.
	*
	* @param path the path to remove from the selection
	*/
	@:overload public function removeSelectionPath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Removes paths from the selection.  If any of the paths in
	* <code>paths</code>
	* are in the selection, the TreeSelectionListeners are notified.
	* This method has no effect if <code>paths</code> is null.
	*
	* @param paths the path to remove from the selection
	*/
	@:overload public function removeSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* Returns the first path in the selection. How first is defined is
	* up to implementors, and may not necessarily be the TreePath with
	* the smallest integer value as determined from the
	* <code>RowMapper</code>.
	*/
	@:overload public function getSelectionPath() : javax.swing.tree.TreePath;
	
	/**
	* Returns the paths in the selection. This will return null (or an
	* empty array) if nothing is currently selected.
	*/
	@:overload public function getSelectionPaths() : java.NativeArray<javax.swing.tree.TreePath>;
	
	/**
	* Returns the number of paths that are selected.
	*/
	@:overload public function getSelectionCount() : Int;
	
	/**
	* Returns true if the path, <code>path</code>, is in the current
	* selection.
	*/
	@:overload public function isPathSelected(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns true if the selection is currently empty.
	*/
	@:overload public function isSelectionEmpty() : Bool;
	
	/**
	* Empties the current selection.  If this represents a change in the
	* current selection, the selection listeners are notified.
	*/
	@:overload public function clearSelection() : Void;
	
	/**
	* Sets the RowMapper instance. This instance is used to determine
	* the row for a particular TreePath.
	*/
	@:overload public function setRowMapper(newMapper : javax.swing.tree.RowMapper) : Void;
	
	/**
	* Returns the RowMapper instance that is able to map a TreePath to a
	* row.
	*/
	@:overload public function getRowMapper() : javax.swing.tree.RowMapper;
	
	/**
	* Returns all of the currently selected rows. This will return
	* null (or an empty array) if there are no selected TreePaths or
	* a RowMapper has not been set.
	*/
	@:overload public function getSelectionRows() : java.NativeArray<Int>;
	
	/**
	* Returns the smallest value obtained from the RowMapper for the
	* current set of selected TreePaths. If nothing is selected,
	* or there is no RowMapper, this will return -1.
	*/
	@:overload public function getMinSelectionRow() : Int;
	
	/**
	* Returns the largest value obtained from the RowMapper for the
	* current set of selected TreePaths. If nothing is selected,
	* or there is no RowMapper, this will return -1.
	*/
	@:overload public function getMaxSelectionRow() : Int;
	
	/**
	* Returns true if the row identified by <code>row</code> is selected.
	*/
	@:overload public function isRowSelected(row : Int) : Bool;
	
	/**
	* Updates this object's mapping from TreePaths to rows. This should
	* be invoked when the mapping from TreePaths to integers has changed
	* (for example, a node has been expanded).
	* <p>
	* You do not normally have to call this; JTree and its associated
	* listeners will invoke this for you. If you are implementing your own
	* view class, then you will have to invoke this.
	*/
	@:overload public function resetRowSelection() : Void;
	
	/**
	* Returns the lead selection index. That is the last index that was
	* added.
	*/
	@:overload public function getLeadSelectionRow() : Int;
	
	/**
	* Returns the last path that was added. This may differ from the
	* leadSelectionPath property maintained by the JTree.
	*/
	@:overload public function getLeadSelectionPath() : javax.swing.tree.TreePath;
	
	/**
	* Adds a PropertyChangeListener to the listener list.
	* The listener is registered for all properties.
	* <p>
	* A PropertyChangeEvent will get fired when the selection mode
	* changes.
	*
	* @param listener  the PropertyChangeListener to be added
	*/
	@:overload public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a PropertyChangeListener from the listener list.
	* This removes a PropertyChangeListener that was registered
	* for all properties.
	*
	* @param listener  the PropertyChangeListener to be removed
	*/
	@:overload public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Adds x to the list of listeners that are notified each time the
	* set of selected TreePaths changes.
	*
	* @param x the new listener to be added
	*/
	@:overload public function addTreeSelectionListener(x : javax.swing.event.TreeSelectionListener) : Void;
	
	/**
	* Removes x from the list of listeners that are notified each time
	* the set of selected TreePaths changes.
	*
	* @param x the listener to remove
	*/
	@:overload public function removeTreeSelectionListener(x : javax.swing.event.TreeSelectionListener) : Void;
	
	
}

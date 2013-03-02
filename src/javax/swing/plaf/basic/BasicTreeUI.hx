package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicTreeUI extends javax.swing.plaf.TreeUI
{
	@:transient private var collapsedIcon : javax.swing.Icon;
	
	@:transient private var expandedIcon : javax.swing.Icon;
	
	/** Distance between left margin and where vertical dashes will be
	* drawn. */
	private var leftChildIndent : Int;
	
	/** Distance to add to leftChildIndent to determine where cell
	* contents will be drawn. */
	private var rightChildIndent : Int;
	
	/** Total distance that will be indented.  The sum of leftChildIndent
	* and rightChildIndent. */
	private var totalChildIndent : Int;
	
	/** Minimum preferred size. */
	private var preferredMinSize : java.awt.Dimension;
	
	/** Index of the row that was last selected. */
	private var lastSelectedRow : Int;
	
	/** Component that we're going to be drawing into. */
	private var tree : javax.swing.JTree;
	
	/** Renderer that is being used to do the actual cell drawing. */
	@:transient private var currentCellRenderer : javax.swing.tree.TreeCellRenderer;
	
	/** Set to true if the renderer that is currently in the tree was
	* created by this instance. */
	private var createdRenderer : Bool;
	
	/** Editor for the tree. */
	@:transient private var cellEditor : javax.swing.tree.TreeCellEditor;
	
	/** Set to true if editor that is currently in the tree was
	* created by this instance. */
	private var createdCellEditor : Bool;
	
	/** Set to false when editing and shouldSelectCell() returns true meaning
	* the node should be selected before editing, used in completeEditing. */
	private var stopEditingInCompleteEditing : Bool;
	
	/** Used to paint the TreeCellRenderer. */
	private var rendererPane : javax.swing.CellRendererPane;
	
	/** Size needed to completely display all the nodes. */
	private var preferredSize : java.awt.Dimension;
	
	/** Is the preferredSize valid? */
	private var validCachedPreferredSize : Bool;
	
	/** Object responsible for handling sizing and expanded issues. */
	private var treeState : javax.swing.tree.AbstractLayoutCache;
	
	/** Used for minimizing the drawing of vertical lines. */
	private var drawingCache : java.util.Hashtable<javax.swing.tree.TreePath, Null<Bool>>;
	
	/** True if doing optimizations for a largeModel. Subclasses that
	* don't support this may wish to override createLayoutCache to not
	* return a FixedHeightLayoutCache instance. */
	private var largeModel : Bool;
	
	/** Reponsible for telling the TreeState the size needed for a node. */
	private var nodeDimensions : javax.swing.tree.AbstractLayoutCache.AbstractLayoutCache_NodeDimensions;
	
	/** Used to determine what to display. */
	private var treeModel : javax.swing.tree.TreeModel;
	
	/** Model maintaing the selection. */
	private var treeSelectionModel : javax.swing.tree.TreeSelectionModel;
	
	/** How much the depth should be offset to properly calculate
	* x locations. This is based on whether or not the root is visible,
	* and if the root handles are visible. */
	private var depthOffset : Int;
	
	/** When editing, this will be the Component that is doing the actual
	* editing. */
	private var editingComponent : java.awt.Component;
	
	/** Path that is being edited. */
	private var editingPath : javax.swing.tree.TreePath;
	
	/** Row that is being edited. Should only be referenced if
	* editingComponent is not null. */
	private var editingRow : Int;
	
	/** Set to true if the editor has a different size than the renderer. */
	private var editorHasDifferentSize : Bool;
	
	@:overload public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new() : Void;
	
	@:overload private function getHashColor() : java.awt.Color;
	
	@:overload private function setHashColor(color : java.awt.Color) : Void;
	
	@:overload public function setLeftChildIndent(newAmount : Int) : Void;
	
	@:overload public function getLeftChildIndent() : Int;
	
	@:overload public function setRightChildIndent(newAmount : Int) : Void;
	
	@:overload public function getRightChildIndent() : Int;
	
	@:overload public function setExpandedIcon(newG : javax.swing.Icon) : Void;
	
	@:overload public function getExpandedIcon() : javax.swing.Icon;
	
	@:overload public function setCollapsedIcon(newG : javax.swing.Icon) : Void;
	
	@:overload public function getCollapsedIcon() : javax.swing.Icon;
	
	/**
	* Updates the componentListener, if necessary.
	*/
	@:overload private function setLargeModel(largeModel : Bool) : Void;
	
	@:overload private function isLargeModel() : Bool;
	
	/**
	* Sets the row height, this is forwarded to the treeState.
	*/
	@:overload private function setRowHeight(rowHeight : Int) : Void;
	
	@:overload private function getRowHeight() : Int;
	
	/**
	* Sets the TreeCellRenderer to <code>tcr</code>. This invokes
	* <code>updateRenderer</code>.
	*/
	@:overload private function setCellRenderer(tcr : javax.swing.tree.TreeCellRenderer) : Void;
	
	/**
	* Return currentCellRenderer, which will either be the trees
	* renderer, or defaultCellRenderer, which ever wasn't null.
	*/
	@:overload private function getCellRenderer() : javax.swing.tree.TreeCellRenderer;
	
	/**
	* Sets the TreeModel.
	*/
	@:overload private function setModel(model : javax.swing.tree.TreeModel) : Void;
	
	@:overload private function getModel() : javax.swing.tree.TreeModel;
	
	/**
	* Sets the root to being visible.
	*/
	@:overload private function setRootVisible(newValue : Bool) : Void;
	
	@:overload private function isRootVisible() : Bool;
	
	/**
	* Determines whether the node handles are to be displayed.
	*/
	@:overload private function setShowsRootHandles(newValue : Bool) : Void;
	
	@:overload private function getShowsRootHandles() : Bool;
	
	/**
	* Sets the cell editor.
	*/
	@:overload private function setCellEditor(editor : javax.swing.tree.TreeCellEditor) : Void;
	
	@:overload private function getCellEditor() : javax.swing.tree.TreeCellEditor;
	
	/**
	* Configures the receiver to allow, or not allow, editing.
	*/
	@:overload private function setEditable(newValue : Bool) : Void;
	
	@:overload private function isEditable() : Bool;
	
	/**
	* Resets the selection model. The appropriate listener are installed
	* on the model.
	*/
	@:overload private function setSelectionModel(newLSM : javax.swing.tree.TreeSelectionModel) : Void;
	
	@:overload private function getSelectionModel() : javax.swing.tree.TreeSelectionModel;
	
	/**
	* Returns the Rectangle enclosing the label portion that the
	* last item in path will be drawn into.  Will return null if
	* any component in path is currently valid.
	*/
	@:overload override public function getPathBounds(tree : javax.swing.JTree, path : javax.swing.tree.TreePath) : java.awt.Rectangle;
	
	/**
	* Returns the path for passed in row.  If row is not visible
	* null is returned.
	*/
	@:overload override public function getPathForRow(tree : javax.swing.JTree, row : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns the row that the last item identified in path is visible
	* at.  Will return -1 if any of the elements in path are not
	* currently visible.
	*/
	@:overload override public function getRowForPath(tree : javax.swing.JTree, path : javax.swing.tree.TreePath) : Int;
	
	/**
	* Returns the number of rows that are being displayed.
	*/
	@:overload override public function getRowCount(tree : javax.swing.JTree) : Int;
	
	/**
	* Returns the path to the node that is closest to x,y.  If
	* there is nothing currently visible this will return null, otherwise
	* it'll always return a valid path.  If you need to test if the
	* returned object is exactly at x, y you should get the bounds for
	* the returned path and test x, y against that.
	*/
	@:overload override public function getClosestPathForLocation(tree : javax.swing.JTree, x : Int, y : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns true if the tree is being edited.  The item that is being
	* edited can be returned by getEditingPath().
	*/
	@:overload override public function isEditing(tree : javax.swing.JTree) : Bool;
	
	/**
	* Stops the current editing session.  This has no effect if the
	* tree isn't being edited.  Returns true if the editor allows the
	* editing session to stop.
	*/
	@:overload override public function stopEditing(tree : javax.swing.JTree) : Bool;
	
	/**
	* Cancels the current editing session.
	*/
	@:overload override public function cancelEditing(tree : javax.swing.JTree) : Void;
	
	/**
	* Selects the last item in path and tries to edit it.  Editing will
	* fail if the CellEditor won't allow it for the selected item.
	*/
	@:overload override public function startEditingAtPath(tree : javax.swing.JTree, path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Returns the path to the element that is being edited.
	*/
	@:overload override public function getEditingPath(tree : javax.swing.JTree) : javax.swing.tree.TreePath;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Invoked after the <code>tree</code> instance variable has been
	* set, but before any defaults/listeners have been installed.
	*/
	@:overload private function prepareForUIInstall() : Void;
	
	/**
	* Invoked from installUI after all the defaults/listeners have been
	* installed.
	*/
	@:overload private function completeUIInstall() : Void;
	
	@:overload private function installDefaults() : Void;
	
	@:overload private function installListeners() : Void;
	
	@:overload private function installKeyboardActions() : Void;
	
	/**
	* Intalls the subcomponents of the tree, which is the renderer pane.
	*/
	@:overload private function installComponents() : Void;
	
	/**
	* Creates an instance of NodeDimensions that is able to determine
	* the size of a given node in the tree.
	*/
	@:overload private function createNodeDimensions() : javax.swing.tree.AbstractLayoutCache.AbstractLayoutCache_NodeDimensions;
	
	/**
	* Creates a listener that is responsible that updates the UI based on
	* how the tree changes.
	*/
	@:overload private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* Creates the listener responsible for updating the selection based on
	* mouse events.
	*/
	@:overload private function createMouseListener() : java.awt.event.MouseListener;
	
	/**
	* Creates a listener that is responsible for updating the display
	* when focus is lost/gained.
	*/
	@:overload private function createFocusListener() : java.awt.event.FocusListener;
	
	/**
	* Creates the listener reponsible for getting key events from
	* the tree.
	*/
	@:overload private function createKeyListener() : java.awt.event.KeyListener;
	
	/**
	* Creates the listener responsible for getting property change
	* events from the selection model.
	*/
	@:overload private function createSelectionModelPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* Creates the listener that updates the display based on selection change
	* methods.
	*/
	@:overload private function createTreeSelectionListener() : javax.swing.event.TreeSelectionListener;
	
	/**
	* Creates a listener to handle events from the current editor.
	*/
	@:overload private function createCellEditorListener() : javax.swing.event.CellEditorListener;
	
	/**
	* Creates and returns a new ComponentHandler. This is used for
	* the large model to mark the validCachedPreferredSize as invalid
	* when the component moves.
	*/
	@:overload private function createComponentListener() : java.awt.event.ComponentListener;
	
	/**
	* Creates and returns the object responsible for updating the treestate
	* when nodes expanded state changes.
	*/
	@:overload private function createTreeExpansionListener() : javax.swing.event.TreeExpansionListener;
	
	/**
	* Creates the object responsible for managing what is expanded, as
	* well as the size of nodes.
	*/
	@:overload private function createLayoutCache() : javax.swing.tree.AbstractLayoutCache;
	
	/**
	* Returns the renderer pane that renderer components are placed in.
	*/
	@:overload private function createCellRendererPane() : javax.swing.CellRendererPane;
	
	/**
	* Creates a default cell editor.
	*/
	@:overload private function createDefaultCellEditor() : javax.swing.tree.TreeCellEditor;
	
	/**
	* Returns the default cell renderer that is used to do the
	* stamping of each node.
	*/
	@:overload private function createDefaultCellRenderer() : javax.swing.tree.TreeCellRenderer;
	
	/**
	* Returns a listener that can update the tree when the model changes.
	*/
	@:overload private function createTreeModelListener() : javax.swing.event.TreeModelListener;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function prepareForUIUninstall() : Void;
	
	@:overload private function completeUIUninstall() : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload private function uninstallListeners() : Void;
	
	@:overload private function uninstallKeyboardActions() : Void;
	
	/**
	* Uninstalls the renderer pane.
	*/
	@:overload private function uninstallComponents() : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Tells if a {@code DropLocation} should be indicated by a line between
	* nodes. This is meant for {@code javax.swing.DropMode.INSERT} and
	* {@code javax.swing.DropMode.ON_OR_INSERT} drop modes.
	*
	* @param loc a {@code DropLocation}
	* @return {@code true} if the drop location should be shown as a line
	* @since 1.7
	*/
	@:require(java7) @:overload private function isDropLine(loc : javax.swing.JTree.JTree_DropLocation) : Bool;
	
	/**
	* Paints the drop line.
	*
	* @param g {@code Graphics} object to draw on
	* @since 1.7
	*/
	@:require(java7) @:overload private function paintDropLine(g : java.awt.Graphics) : Void;
	
	/**
	* Returns a ubounding box for the drop line.
	*
	* @param loc a {@code DropLocation}
	* @return bounding box for the drop line
	* @since 1.7
	*/
	@:require(java7) @:overload private function getDropLineRect(loc : javax.swing.JTree.JTree_DropLocation) : java.awt.Rectangle;
	
	/**
	* Paints the horizontal part of the leg. The receiver should
	* NOT modify <code>clipBounds</code>, or <code>insets</code>.<p>
	* NOTE: <code>parentRow</code> can be -1 if the root is not visible.
	*/
	@:overload private function paintHorizontalPartOfLeg(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, bounds : java.awt.Rectangle, path : javax.swing.tree.TreePath, row : Int, isExpanded : Bool, hasBeenExpanded : Bool, isLeaf : Bool) : Void;
	
	/**
	* Paints the vertical part of the leg. The receiver should
	* NOT modify <code>clipBounds</code>, <code>insets</code>.<p>
	*/
	@:overload private function paintVerticalPartOfLeg(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Paints the expand (toggle) part of a row. The receiver should
	* NOT modify <code>clipBounds</code>, or <code>insets</code>.
	*/
	@:overload private function paintExpandControl(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, bounds : java.awt.Rectangle, path : javax.swing.tree.TreePath, row : Int, isExpanded : Bool, hasBeenExpanded : Bool, isLeaf : Bool) : Void;
	
	/**
	* Paints the renderer part of a row. The receiver should
	* NOT modify <code>clipBounds</code>, or <code>insets</code>.
	*/
	@:overload private function paintRow(g : java.awt.Graphics, clipBounds : java.awt.Rectangle, insets : java.awt.Insets, bounds : java.awt.Rectangle, path : javax.swing.tree.TreePath, row : Int, isExpanded : Bool, hasBeenExpanded : Bool, isLeaf : Bool) : Void;
	
	/**
	* Returns true if the expand (toggle) control should be drawn for
	* the specified row.
	*/
	@:overload private function shouldPaintExpandControl(path : javax.swing.tree.TreePath, row : Int, isExpanded : Bool, hasBeenExpanded : Bool, isLeaf : Bool) : Bool;
	
	/**
	* Paints a vertical line.
	*/
	@:overload private function paintVerticalLine(g : java.awt.Graphics, c : javax.swing.JComponent, x : Int, top : Int, bottom : Int) : Void;
	
	/**
	* Paints a horizontal line.
	*/
	@:overload private function paintHorizontalLine(g : java.awt.Graphics, c : javax.swing.JComponent, y : Int, left : Int, right : Int) : Void;
	
	/**
	* The vertical element of legs between nodes starts at the bottom of the
	* parent node by default.  This method makes the leg start below that.
	*/
	@:overload private function getVerticalLegBuffer() : Int;
	
	/**
	* The horizontal element of legs between nodes starts at the
	* right of the left-hand side of the child node by default.  This
	* method makes the leg end before that.
	*/
	@:overload private function getHorizontalLegBuffer() : Int;
	
	@:overload private function drawCentered(c : java.awt.Component, graphics : java.awt.Graphics, icon : javax.swing.Icon, x : Int, y : Int) : Void;
	
	@:overload private function drawDashedHorizontalLine(g : java.awt.Graphics, y : Int, x1 : Int, x2 : Int) : Void;
	
	@:overload private function drawDashedVerticalLine(g : java.awt.Graphics, x : Int, y1 : Int, y2 : Int) : Void;
	
	/**
	* Returns the location, along the x-axis, to render a particular row
	* at. The return value does not include any Insets specified on the JTree.
	* This does not check for the validity of the row or depth, it is assumed
	* to be correct and will not throw an Exception if the row or depth
	* doesn't match that of the tree.
	*
	* @param row Row to return x location for
	* @param depth Depth of the row
	* @return amount to indent the given row.
	* @since 1.5
	*/
	@:require(java5) @:overload private function getRowX(row : Int, depth : Int) : Int;
	
	/**
	* Makes all the nodes that are expanded in JTree expanded in LayoutCache.
	* This invokes updateExpandedDescendants with the root path.
	*/
	@:overload private function updateLayoutCacheExpandedNodes() : Void;
	
	/**
	* Updates the expanded state of all the descendants of <code>path</code>
	* by getting the expanded descendants from the tree and forwarding
	* to the tree state.
	*/
	@:overload private function updateExpandedDescendants(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Returns a path to the last child of <code>parent</code>.
	*/
	@:overload private function getLastChildPath(parent : javax.swing.tree.TreePath) : javax.swing.tree.TreePath;
	
	/**
	* Updates how much each depth should be offset by.
	*/
	@:overload private function updateDepthOffset() : Void;
	
	/**
	* Updates the cellEditor based on the editability of the JTree that
	* we're contained in.  If the tree is editable but doesn't have a
	* cellEditor, a basic one will be used.
	*/
	@:overload private function updateCellEditor() : Void;
	
	/**
	* Messaged from the tree we're in when the renderer has changed.
	*/
	@:overload private function updateRenderer() : Void;
	
	/**
	* Resets the TreeState instance based on the tree we're providing the
	* look and feel for.
	*/
	@:overload private function configureLayoutCache() : Void;
	
	/**
	* Marks the cached size as being invalid, and messages the
	* tree with <code>treeDidChange</code>.
	*/
	@:overload private function updateSize() : Void;
	
	/**
	* Updates the <code>preferredSize</code> instance variable,
	* which is returned from <code>getPreferredSize()</code>.<p>
	* For left to right orientations, the size is determined from the
	* current AbstractLayoutCache. For RTL orientations, the preferred size
	* becomes the width minus the minimum x position.
	*/
	@:overload private function updateCachedPreferredSize() : Void;
	
	/**
	* Messaged from the VisibleTreeNode after it has been expanded.
	*/
	@:overload private function pathWasExpanded(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Messaged from the VisibleTreeNode after it has collapsed.
	*/
	@:overload private function pathWasCollapsed(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Ensures that the rows identified by beginRow through endRow are
	* visible.
	*/
	@:overload private function ensureRowsAreVisible(beginRow : Int, endRow : Int) : Void;
	
	/** Sets the preferred minimum size.
	*/
	@:overload public function setPreferredMinSize(newSize : java.awt.Dimension) : Void;
	
	/** Returns the minimum preferred size.
	*/
	@:overload public function getPreferredMinSize() : java.awt.Dimension;
	
	/** Returns the preferred size to properly display the tree,
	* this is a cover method for getPreferredSize(c, true).
	*/
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/** Returns the preferred size to represent the tree in
	* <I>c</I>.  If <I>checkConsistency</I> is true
	* <b>checkConsistency</b> is messaged first.
	*/
	@:overload public function getPreferredSize(c : javax.swing.JComponent, checkConsistency : Bool) : java.awt.Dimension;
	
	/**
	* Returns the minimum size for this component.  Which will be
	* the min preferred size or 0, 0.
	*/
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the maximum size for this component, which will be the
	* preferred size if the instance is currently in a JTree, or 0, 0.
	*/
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Messages to stop the editing session. If the UI the receiver
	* is providing the look and feel for returns true from
	* <code>getInvokesStopCellEditing</code>, stopCellEditing will
	* invoked on the current editor. Then completeEditing will
	* be messaged with false, true, false to cancel any lingering
	* editing.
	*/
	@:overload private function completeEditing() : Void;
	
	/**
	* Stops the editing session.  If messageStop is true the editor
	* is messaged with stopEditing, if messageCancel is true the
	* editor is messaged with cancelEditing. If messageTree is true
	* the treeModel is messaged with valueForPathChanged.
	*/
	@:overload private function completeEditing(messageStop : Bool, messageCancel : Bool, messageTree : Bool) : Void;
	
	/**
	* Will start editing for node if there is a cellEditor and
	* shouldSelectCell returns true.<p>
	* This assumes that path is valid and visible.
	*/
	@:overload private function startEditing(path : javax.swing.tree.TreePath, event : java.awt.event.MouseEvent) : Bool;
	
	/**
	* If the <code>mouseX</code> and <code>mouseY</code> are in the
	* expand/collapse region of the <code>row</code>, this will toggle
	* the row.
	*/
	@:overload private function checkForClickInExpandControl(path : javax.swing.tree.TreePath, mouseX : Int, mouseY : Int) : Void;
	
	/**
	* Returns true if <code>mouseX</code> and <code>mouseY</code> fall
	* in the area of row that is used to expand/collapse the node and
	* the node at <code>row</code> does not represent a leaf.
	*/
	@:overload private function isLocationInExpandControl(path : javax.swing.tree.TreePath, mouseX : Int, mouseY : Int) : Bool;
	
	/**
	* Messaged when the user clicks the particular row, this invokes
	* toggleExpandState.
	*/
	@:overload private function handleExpandControlClick(path : javax.swing.tree.TreePath, mouseX : Int, mouseY : Int) : Void;
	
	/**
	* Expands path if it is not expanded, or collapses row if it is expanded.
	* If expanding a path and JTree scrolls on expand, ensureRowsAreVisible
	* is invoked to scroll as many of the children to visible as possible
	* (tries to scroll to last visible descendant of path).
	*/
	@:overload private function toggleExpandState(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Returning true signifies a mouse event on the node should toggle
	* the selection of only the row under mouse.
	*/
	@:overload private function isToggleSelectionEvent(event : java.awt.event.MouseEvent) : Bool;
	
	/**
	* Returning true signifies a mouse event on the node should select
	* from the anchor point.
	*/
	@:overload private function isMultiSelectEvent(event : java.awt.event.MouseEvent) : Bool;
	
	/**
	* Returning true indicates the row under the mouse should be toggled
	* based on the event. This is invoked after checkForClickInExpandControl,
	* implying the location is not in the expand (toggle) control
	*/
	@:overload private function isToggleEvent(event : java.awt.event.MouseEvent) : Bool;
	
	/**
	* Messaged to update the selection based on a MouseEvent over a
	* particular row. If the event is a toggle selection event, the
	* row is either selected, or deselected. If the event identifies
	* a multi selection event, the selection is updated from the
	* anchor point. Otherwise the row is selected, and if the event
	* specified a toggle event the row is expanded/collapsed.
	*/
	@:overload private function selectPathForEvent(path : javax.swing.tree.TreePath, event : java.awt.event.MouseEvent) : Void;
	
	/**
	* @return true if the node at <code>row</code> is a leaf.
	*/
	@:overload private function isLeaf(row : Int) : Bool;
	
	/**
	* Updates the lead row of the selection.
	* @since 1.7
	*/
	@:require(java7) @:overload private function updateLeadSelectionRow() : Void;
	
	/**
	* Returns the lead row of the selection.
	*
	* @return selection lead row
	* @since 1.7
	*/
	@:require(java7) @:overload private function getLeadSelectionRow() : Int;
	
	
}
/**
* Updates the TreeState in response to nodes expanding/collapsing.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeExpansionHandler') extern class BasicTreeUI_TreeExpansionHandler implements javax.swing.event.TreeExpansionListener
{
	/**
	* Called whenever an item in the tree has been expanded.
	*/
	@:overload public function treeExpanded(event : javax.swing.event.TreeExpansionEvent) : Void;
	
	/**
	* Called whenever an item in the tree has been collapsed.
	*/
	@:overload public function treeCollapsed(event : javax.swing.event.TreeExpansionEvent) : Void;
	
	
}
/**
* Updates the preferred size when scrolling (if necessary).
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$ComponentHandler') extern class BasicTreeUI_ComponentHandler extends java.awt.event.ComponentAdapter implements java.awt.event.ActionListener
{
	/** Timer used when inside a scrollpane and the scrollbar is
	* adjusting. */
	private var timer : javax.swing.Timer;
	
	/** ScrollBar that is being adjusted. */
	private var scrollBar : javax.swing.JScrollBar;
	
	@:overload override public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	/**
	* Creates, if necessary, and starts a Timer to check if need to
	* resize the bounds.
	*/
	@:overload private function startTimer() : Void;
	
	/**
	* Returns the JScrollPane housing the JTree, or null if one isn't
	* found.
	*/
	@:overload private function getScrollPane() : javax.swing.JScrollPane;
	
	/**
	* Public as a result of Timer. If the scrollBar is null, or
	* not adjusting, this stops the timer and updates the sizing.
	*/
	@:overload public function actionPerformed(ae : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Forwards all TreeModel events to the TreeState.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeModelHandler') extern class BasicTreeUI_TreeModelHandler implements javax.swing.event.TreeModelListener
{
	@:overload public function treeNodesChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeNodesInserted(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeNodesRemoved(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeStructureChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	
}
/**
* Listens for changes in the selection model and updates the display
* accordingly.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeSelectionHandler') extern class BasicTreeUI_TreeSelectionHandler implements javax.swing.event.TreeSelectionListener
{
	/**
	* Messaged when the selection changes in the tree we're displaying
	* for.  Stops editing, messages super and displays the changed paths.
	*/
	@:overload public function valueChanged(event : javax.swing.event.TreeSelectionEvent) : Void;
	
	
}
/**
* Listener responsible for getting cell editing events and updating
* the tree accordingly.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$CellEditorHandler') extern class BasicTreeUI_CellEditorHandler implements javax.swing.event.CellEditorListener
{
	/** Messaged when editing has stopped in the tree. */
	@:overload public function editingStopped(e : javax.swing.event.ChangeEvent) : Void;
	
	/** Messaged when editing has been canceled in the tree. */
	@:overload public function editingCanceled(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* This is used to get mutliple key down events to appropriately generate
* events.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$KeyHandler') extern class BasicTreeUI_KeyHandler extends java.awt.event.KeyAdapter
{
	/** Key code that is being generated for. */
	private var repeatKeyAction : javax.swing.Action;
	
	/** Set to true while keyPressed is active. */
	private var isKeyDown : Bool;
	
	/**
	* Invoked when a key has been typed.
	*
	* Moves the keyboard focus to the first element
	* whose first letter matches the alphanumeric key
	* pressed by the user. Subsequent same key presses
	* move the keyboard focus to the next object that
	* starts with the same letter.
	*/
	@:overload override public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	@:overload override public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload override public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	
}
/**
* Repaints the lead selection row when focus is lost/gained.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$FocusHandler') extern class BasicTreeUI_FocusHandler implements java.awt.event.FocusListener
{
	/**
	* Invoked when focus is activated on the tree we're in, redraws the
	* lead row.
	*/
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Invoked when focus is activated on the tree we're in, redraws the
	* lead row.
	*/
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
/**
* Class responsible for getting size of node, method is forwarded
* to BasicTreeUI method. X location does not include insets, that is
* handled in getPathBounds.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$NodeDimensionsHandler') extern class BasicTreeUI_NodeDimensionsHandler extends javax.swing.tree.AbstractLayoutCache.AbstractLayoutCache_NodeDimensions
{
	/**
	* Responsible for getting the size of a particular node.
	*/
	@:overload override public function getNodeDimensions(value : Dynamic, row : Int, depth : Int, expanded : Bool, size : java.awt.Rectangle) : java.awt.Rectangle;
	
	/**
	* @return amount to indent the given row.
	*/
	@:overload private function getRowX(row : Int, depth : Int) : Int;
	
	
}
/**
* TreeMouseListener is responsible for updating the selection
* based on mouse events.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$MouseHandler') extern class BasicTreeUI_MouseHandler extends java.awt.event.MouseAdapter implements java.awt.event.MouseMotionListener
{
	/**
	* Invoked when a mouse button has been pressed on a component.
	*/
	@:overload override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse button has been moved on a component
	* (with no buttons no down).
	* @since 1.4
	*/
	@:require(java4) @:overload override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* PropertyChangeListener for the tree. Updates the appropriate
* varaible, or TreeState, based on what changes.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$PropertyChangeHandler') extern class BasicTreeUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(event : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Listener on the TreeSelectionModel, resets the row selection if
* any of the properties of the model change.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$SelectionModelPropertyChangeHandler') extern class BasicTreeUI_SelectionModelPropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(event : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* <code>TreeTraverseAction</code> is the action used for left/right keys.
* Will toggle the expandedness of a node, as well as potentially
* incrementing the selection.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeTraverseAction') extern class BasicTreeUI_TreeTraverseAction extends javax.swing.AbstractAction
{
	/** Determines direction to traverse, 1 means expand, -1 means
	* collapse. */
	private var direction : Int;
	
	@:overload public function new(direction : Int, name : String) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/** TreePageAction handles page up and page down events.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreePageAction') extern class BasicTreeUI_TreePageAction extends javax.swing.AbstractAction
{
	/** Specifies the direction to adjust the selection by. */
	private var direction : Int;
	
	@:overload public function new(direction : Int, name : String) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/** TreeIncrementAction is used to handle up/down actions.  Selection
* is moved up or down based on direction.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeIncrementAction') extern class BasicTreeUI_TreeIncrementAction extends javax.swing.AbstractAction
{
	/** Specifies the direction to adjust the selection by. */
	private var direction : Int;
	
	@:overload public function new(direction : Int, name : String) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* TreeHomeAction is used to handle end/home actions.
* Scrolls either the first or last cell to be visible based on
* direction.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeHomeAction') extern class BasicTreeUI_TreeHomeAction extends javax.swing.AbstractAction
{
	private var direction : Int;
	
	@:overload public function new(direction : Int, name : String) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* For the first selected row expandedness will be toggled.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeToggleAction') extern class BasicTreeUI_TreeToggleAction extends javax.swing.AbstractAction
{
	@:overload public function new(name : String) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* ActionListener that invokes cancelEditing when action performed.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeCancelEditingAction') extern class BasicTreeUI_TreeCancelEditingAction extends javax.swing.AbstractAction
{
	@:overload public function new(name : String) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* MouseInputHandler handles passing all mouse events,
* including mouse motion events, until the mouse is released to
* the destination it is constructed with. It is assumed all the
* events are currently target at source.
*/
@:native('javax$swing$plaf$basic$BasicTreeUI$MouseInputHandler') extern class BasicTreeUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	/** Source that events are coming from. */
	private var source : java.awt.Component;
	
	/** Destination that receives all events. */
	private var destination : java.awt.Component;
	
	@:overload public function new(source : java.awt.Component, destination : java.awt.Component, event : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload private function removeFromSource() : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTreeUI$TreeTransferHandler') @:internal extern class BasicTreeUI_TreeTransferHandler extends javax.swing.TransferHandler implements javax.swing.plaf.UIResource implements java.util.Comparator<javax.swing.tree.TreePath>
{
	/**
	* Create a Transferable to use as the source for a data transfer.
	*
	* @param c  The component holding the data to be transfered.  This
	*  argument is provided to enable sharing of TransferHandlers by
	*  multiple components.
	* @return  The representation of the data to be transfered.
	*
	*/
	@:overload override private function createTransferable(c : javax.swing.JComponent) : java.awt.datatransfer.Transferable;
	
	@:overload public function compare(o1 : javax.swing.tree.TreePath, o2 : javax.swing.tree.TreePath) : Int;
	
	@:overload override public function getSourceActions(c : javax.swing.JComponent) : Int;
	
	
}
@:native('javax$swing$plaf$basic$BasicTreeUI$Handler') @:internal extern class BasicTreeUI_Handler implements javax.swing.event.CellEditorListener implements java.awt.event.FocusListener implements java.awt.event.KeyListener implements java.awt.event.MouseListener implements java.awt.event.MouseMotionListener implements java.beans.PropertyChangeListener implements javax.swing.event.TreeExpansionListener implements javax.swing.event.TreeModelListener implements javax.swing.event.TreeSelectionListener implements javax.swing.plaf.basic.DragRecognitionSupport.DragRecognitionSupport_BeforeDrag
{
	/**
	* Invoked when a key has been typed.
	*
	* Moves the keyboard focus to the first element whose prefix matches the
	* sequence of alphanumeric keys pressed by the user with delay less
	* than value of <code>timeFactor</code> property (or 1000 milliseconds
	* if it is not defined). Subsequent same key presses move the keyboard
	* focus to the next object that starts with the same letter until another
	* key is pressed, then it is treated as the prefix with appropriate number
	* of the same letters followed by first typed another letter.
	*/
	@:overload public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Invoked when a key has been pressed.
	*
	* Checks to see if the key event is a navigation key to prevent
	* dispatching these keys for the first letter navigation.
	*/
	@:overload public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function propertyChange(event : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button has been pressed on a component.
	*/
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function dragStarting(me : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse button has been moved on a component
	* (with no buttons no down).
	*/
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function editingStopped(e : javax.swing.event.ChangeEvent) : Void;
	
	/** Messaged when editing has been canceled in the tree. */
	@:overload public function editingCanceled(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload public function valueChanged(event : javax.swing.event.TreeSelectionEvent) : Void;
	
	@:overload public function treeExpanded(event : javax.swing.event.TreeExpansionEvent) : Void;
	
	@:overload public function treeCollapsed(event : javax.swing.event.TreeExpansionEvent) : Void;
	
	@:overload public function treeNodesChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeNodesInserted(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeNodesRemoved(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeStructureChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTreeUI$Actions') @:internal extern class BasicTreeUI_Actions extends sun.swing.UIAction
{
	@:overload override public function isEnabled(o : Dynamic) : Bool;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}

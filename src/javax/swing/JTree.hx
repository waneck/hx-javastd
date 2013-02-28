package javax.swing;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* <a name="jtree_description">
* A control that displays a set of hierarchical data as an outline.
* You can find task-oriented documentation and examples of using trees in
* <a href="http://java.sun.com/docs/books/tutorial/uiswing/components/tree.html">How to Use Trees</a>,
* a section in <em>The Java Tutorial.</em>
* <p>
* A specific node in a tree can be identified either by a
* <code>TreePath</code> (an object
* that encapsulates a node and all of its ancestors), or by its
* display row, where each row in the display area displays one node.
* An <i>expanded</i> node is a non-leaf node (as identified by
* <code>TreeModel.isLeaf(node)</code> returning false) that will displays
* its children when all its ancestors are <i>expanded</i>.
* A <i>collapsed</i>
* node is one which hides them. A <i>hidden</i> node is one which is
* under a collapsed ancestor. All of a <i>viewable</i> nodes parents
* are expanded, but may or may not be displayed. A <i>displayed</i> node
* is both viewable and in the display area, where it can be seen.
* <p>
* The following <code>JTree</code> methods use "visible" to mean "displayed":
* <ul>
* <li><code>isRootVisible()</code>
* <li><code>setRootVisible()</code>
* <li><code>scrollPathToVisible()</code>
* <li><code>scrollRowToVisible()</code>
* <li><code>getVisibleRowCount()</code>
* <li><code>setVisibleRowCount()</code>
* </ul>
* <p>
* The next group of <code>JTree</code> methods use "visible" to mean
* "viewable" (under an expanded parent):
* <ul>
* <li><code>isVisible()</code>
* <li><code>makeVisible()</code>
* </ul>
* <p>
* If you are interested in knowing when the selection changes implement
* the <code>TreeSelectionListener</code> interface and add the instance
* using the method <code>addTreeSelectionListener</code>.
* <code>valueChanged</code> will be invoked when the
* selection changes, that is if the user clicks twice on the same
* node <code>valueChanged</code> will only be invoked once.
* <p>
* If you are interested in detecting either double-click events or when
* a user clicks on a node, regardless of whether or not it was selected,
* we recommend you do the following:
* <pre>
* final JTree tree = ...;
*
* MouseListener ml = new MouseAdapter() {
*     public void <b>mousePressed</b>(MouseEvent e) {
*         int selRow = tree.getRowForLocation(e.getX(), e.getY());
*         TreePath selPath = tree.getPathForLocation(e.getX(), e.getY());
*         if(selRow != -1) {
*             if(e.getClickCount() == 1) {
*                 mySingleClick(selRow, selPath);
*             }
*             else if(e.getClickCount() == 2) {
*                 myDoubleClick(selRow, selPath);
*             }
*         }
*     }
* };
* tree.addMouseListener(ml);
* </pre>
* NOTE: This example obtains both the path and row, but you only need to
* get the one you're interested in.
* <p>
* To use <code>JTree</code> to display compound nodes
* (for example, nodes containing both
* a graphic icon and text), subclass {@link TreeCellRenderer} and use
* {@link #setCellRenderer} to tell the tree to use it. To edit such nodes,
* subclass {@link TreeCellEditor} and use {@link #setCellEditor}.
* <p>
* Like all <code>JComponent</code> classes, you can use {@link InputMap} and
* {@link ActionMap}
* to associate an {@link Action} object with a {@link KeyStroke}
* and execute the action under specified conditions.
* <p>
* <strong>Warning:</strong> Swing is not thread safe. For more
* information see <a
* href="package-summary.html#threading">Swing's Threading
* Policy</a>.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @beaninfo
*   attribute: isContainer false
* description: A component that displays a set of hierarchical data as an outline.
*
* @author Rob Davis
* @author Ray Ryan
* @author Scott Violet
*/
extern class JTree extends javax.swing.JComponent implements javax.swing.Scrollable implements javax.accessibility.Accessible
{
	/**
	* The model that defines the tree displayed by this object.
	*/
	@:transient private var treeModel : javax.swing.tree.TreeModel;
	
	/**
	* Models the set of selected nodes in this tree.
	*/
	@:transient private var selectionModel : javax.swing.tree.TreeSelectionModel;
	
	/**
	* True if the root node is displayed, false if its children are
	* the highest visible nodes.
	*/
	private var rootVisible : Bool;
	
	/**
	* The cell used to draw nodes. If <code>null</code>, the UI uses a default
	* <code>cellRenderer</code>.
	*/
	@:transient private var cellRenderer : javax.swing.tree.TreeCellRenderer;
	
	/**
	* Height to use for each display row. If this is <= 0 the renderer
	* determines the height for each row.
	*/
	private var rowHeight : Int;
	
	/**
	* True if handles are displayed at the topmost level of the tree.
	* <p>
	* A handle is a small icon that displays adjacent to the node which
	* allows the user to click once to expand or collapse the node. A
	* common interface shows a plus sign (+) for a node which can be
	* expanded and a minus sign (-) for a node which can be collapsed.
	* Handles are always shown for nodes below the topmost level.
	* <p>
	* If the <code>rootVisible</code> setting specifies that the root
	* node is to be displayed, then that is the only node at the topmost
	* level. If the root node is not displayed, then all of its
	* children are at the topmost level of the tree. Handles are
	* always displayed for nodes other than the topmost.
	* <p>
	* If the root node isn't visible, it is generally a good to make
	* this value true. Otherwise, the tree looks exactly like a list,
	* and users may not know that the "list entries" are actually
	* tree nodes.
	*
	* @see #rootVisible
	*/
	private var showsRootHandles : Bool;
	
	/**
	* Creates a new event and passed it off the
	* <code>selectionListeners</code>.
	*/
	@:transient private var selectionRedirector : JTree_TreeSelectionRedirector;
	
	/**
	* Editor for the entries.  Default is <code>null</code>
	* (tree is not editable).
	*/
	@:transient private var cellEditor : javax.swing.tree.TreeCellEditor;
	
	/**
	* Is the tree editable? Default is false.
	*/
	private var editable : Bool;
	
	/**
	* Is this tree a large model? This is a code-optimization setting.
	* A large model can be used when the cell height is the same for all
	* nodes. The UI will then cache very little information and instead
	* continually message the model. Without a large model the UI caches
	* most of the information, resulting in fewer method calls to the model.
	* <p>
	* This value is only a suggestion to the UI. Not all UIs will
	* take advantage of it. Default value is false.
	*/
	private var largeModel : Bool;
	
	/**
	* Number of rows to make visible at one time. This value is used for
	* the <code>Scrollable</code> interface. It determines the preferred
	* size of the display area.
	*/
	private var visibleRowCount : Int;
	
	/**
	* If true, when editing is to be stopped by way of selection changing,
	* data in tree changing or other means <code>stopCellEditing</code>
	* is invoked, and changes are saved. If false,
	* <code>cancelCellEditing</code> is invoked, and changes
	* are discarded. Default is false.
	*/
	private var invokesStopCellEditing : Bool;
	
	/**
	* If true, when a node is expanded, as many of the descendants are
	* scrolled to be visible.
	*/
	private var scrollsOnExpand : Bool;
	
	/**
	* Number of mouse clicks before a node is expanded.
	*/
	private var toggleClickCount : Int;
	
	/**
	* Updates the <code>expandedState</code>.
	*/
	@:transient private var treeModelListener : javax.swing.event.TreeModelListener;
	
	/** Bound property name for <code>cellRenderer</code>. */
	public static var CELL_RENDERER_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>treeModel</code>. */
	public static var TREE_MODEL_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>rootVisible</code>. */
	public static var ROOT_VISIBLE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>showsRootHandles</code>. */
	public static var SHOWS_ROOT_HANDLES_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>rowHeight</code>. */
	public static var ROW_HEIGHT_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>cellEditor</code>. */
	public static var CELL_EDITOR_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>editable</code>. */
	public static var EDITABLE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>largeModel</code>. */
	public static var LARGE_MODEL_PROPERTY(default, null) : String;
	
	/** Bound property name for selectionModel. */
	public static var SELECTION_MODEL_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>visibleRowCount</code>. */
	public static var VISIBLE_ROW_COUNT_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>messagesStopCellEditing</code>. */
	public static var INVOKES_STOP_CELL_EDITING_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>scrollsOnExpand</code>. */
	public static var SCROLLS_ON_EXPAND_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>toggleClickCount</code>. */
	public static var TOGGLE_CLICK_COUNT_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>leadSelectionPath</code>.
	* @since 1.3 */
	@:require(java3) public static var LEAD_SELECTION_PATH_PROPERTY(default, null) : String;
	
	/** Bound property name for anchor selection path.
	* @since 1.3 */
	@:require(java3) public static var ANCHOR_SELECTION_PATH_PROPERTY(default, null) : String;
	
	/** Bound property name for expands selected paths property
	* @since 1.3 */
	@:require(java3) public static var EXPANDS_SELECTED_PATHS_PROPERTY(default, null) : String;
	
	/**
	* Creates and returns a sample <code>TreeModel</code>.
	* Used primarily for beanbuilders to show something interesting.
	*
	* @return the default <code>TreeModel</code>
	*/
	@:overload private static function getDefaultTreeModel() : javax.swing.tree.TreeModel;
	
	/**
	* Returns a <code>TreeModel</code> wrapping the specified object.
	* If the object is:<ul>
	* <li>an array of <code>Object</code>s,
	* <li>a <code>Hashtable</code>, or
	* <li>a <code>Vector</code>
	* </ul>then a new root node is created with each of the incoming
	* objects as children. Otherwise, a new root is created with
	* a value of {@code "root"}.
	*
	* @param value  the <code>Object</code> used as the foundation for
	*          the <code>TreeModel</code>
	* @return a <code>TreeModel</code> wrapping the specified object
	*/
	@:overload private static function createTreeModel(value : Dynamic) : javax.swing.tree.TreeModel;
	
	/**
	* Returns a <code>JTree</code> with a sample model.
	* The default model used by the tree defines a leaf node as any node
	* without children.
	*
	* @see DefaultTreeModel#asksAllowsChildren
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns a <code>JTree</code> with each element of the
	* specified array as the
	* child of a new root node which is not displayed.
	* By default, the tree defines a leaf node as any node without
	* children.
	*
	* @param value  an array of <code>Object</code>s
	* @see DefaultTreeModel#asksAllowsChildren
	*/
	@:overload public function new(value : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns a <code>JTree</code> with each element of the specified
	* <code>Vector</code> as the
	* child of a new root node which is not displayed. By default, the
	* tree defines a leaf node as any node without children.
	*
	* @param value  a <code>Vector</code>
	* @see DefaultTreeModel#asksAllowsChildren
	*/
	@:overload public function new(value : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Returns a <code>JTree</code> created from a <code>Hashtable</code>
	* which does not display with root.
	* Each value-half of the key/value pairs in the <code>HashTable</code>
	* becomes a child of the new root node. By default, the tree defines
	* a leaf node as any node without children.
	*
	* @param value  a <code>Hashtable</code>
	* @see DefaultTreeModel#asksAllowsChildren
	*/
	@:overload public function new(value : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Returns a <code>JTree</code> with the specified
	* <code>TreeNode</code> as its root,
	* which displays the root node.
	* By default, the tree defines a leaf node as any node without children.
	*
	* @param root  a <code>TreeNode</code> object
	* @see DefaultTreeModel#asksAllowsChildren
	*/
	@:overload public function new(root : javax.swing.tree.TreeNode) : Void;
	
	/**
	* Returns a <code>JTree</code> with the specified <code>TreeNode</code>
	* as its root, which
	* displays the root node and which decides whether a node is a
	* leaf node in the specified manner.
	*
	* @param root  a <code>TreeNode</code> object
	* @param asksAllowsChildren  if false, any node without children is a
	*              leaf node; if true, only nodes that do not allow
	*              children are leaf nodes
	* @see DefaultTreeModel#asksAllowsChildren
	*/
	@:overload public function new(root : javax.swing.tree.TreeNode, asksAllowsChildren : Bool) : Void;
	
	/**
	* Returns an instance of <code>JTree</code> which displays the root node
	* -- the tree is created using the specified data model.
	*
	* @param newModel  the <code>TreeModel</code> to use as the data model
	*/
	@:overload public function new(newModel : javax.swing.tree.TreeModel) : Void;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return the <code>TreeUI</code> object that renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.TreeUI;
	
	/**
	* Sets the L&F object that renders this component.
	* <p>
	* This is a bound property.
	*
	* @param ui  the <code>TreeUI</code> L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.TreeUI) : Void;
	
	/**
	* Notification from the <code>UIManager</code> that the L&F has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "TreeUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Returns the current <code>TreeCellRenderer</code>
	*  that is rendering each cell.
	*
	* @return the <code>TreeCellRenderer</code> that is rendering each cell
	*/
	@:overload public function getCellRenderer() : javax.swing.tree.TreeCellRenderer;
	
	/**
	* Sets the <code>TreeCellRenderer</code> that will be used to
	* draw each cell.
	* <p>
	* This is a bound property.
	*
	* @param x  the <code>TreeCellRenderer</code> that is to render each cell
	* @beaninfo
	*        bound: true
	*  description: The TreeCellRenderer that will be used to draw
	*               each cell.
	*/
	@:overload public function setCellRenderer(x : javax.swing.tree.TreeCellRenderer) : Void;
	
	/**
	* Determines whether the tree is editable. Fires a property
	* change event if the new setting is different from the existing
	* setting.
	* <p>
	* This is a bound property.
	*
	* @param flag  a boolean value, true if the tree is editable
	* @beaninfo
	*        bound: true
	*  description: Whether the tree is editable.
	*/
	@:overload public function setEditable(flag : Bool) : Void;
	
	/**
	* Returns true if the tree is editable.
	*
	* @return true if the tree is editable
	*/
	@:overload public function isEditable() : Bool;
	
	/**
	* Sets the cell editor.  A <code>null</code> value implies that the
	* tree cannot be edited.  If this represents a change in the
	* <code>cellEditor</code>, the <code>propertyChange</code>
	* method is invoked on all listeners.
	* <p>
	* This is a bound property.
	*
	* @param cellEditor the <code>TreeCellEditor</code> to use
	* @beaninfo
	*        bound: true
	*  description: The cell editor. A null value implies the tree
	*               cannot be edited.
	*/
	@:overload public function setCellEditor(cellEditor : javax.swing.tree.TreeCellEditor) : Void;
	
	/**
	* Returns the editor used to edit entries in the tree.
	*
	* @return the <code>TreeCellEditor</code> in use,
	*          or <code>null</code> if the tree cannot be edited
	*/
	@:overload public function getCellEditor() : javax.swing.tree.TreeCellEditor;
	
	/**
	* Returns the <code>TreeModel</code> that is providing the data.
	*
	* @return the <code>TreeModel</code> that is providing the data
	*/
	@:overload public function getModel() : javax.swing.tree.TreeModel;
	
	/**
	* Sets the <code>TreeModel</code> that will provide the data.
	* <p>
	* This is a bound property.
	*
	* @param newModel the <code>TreeModel</code> that is to provide the data
	* @beaninfo
	*        bound: true
	*  description: The TreeModel that will provide the data.
	*/
	@:overload public function setModel(newModel : javax.swing.tree.TreeModel) : Void;
	
	/**
	* Returns true if the root node of the tree is displayed.
	*
	* @return true if the root node of the tree is displayed
	* @see #rootVisible
	*/
	@:overload public function isRootVisible() : Bool;
	
	/**
	* Determines whether or not the root node from
	* the <code>TreeModel</code> is visible.
	* <p>
	* This is a bound property.
	*
	* @param rootVisible true if the root node of the tree is to be displayed
	* @see #rootVisible
	* @beaninfo
	*        bound: true
	*  description: Whether or not the root node
	*               from the TreeModel is visible.
	*/
	@:overload public function setRootVisible(rootVisible : Bool) : Void;
	
	/**
	* Sets the value of the <code>showsRootHandles</code> property,
	* which specifies whether the node handles should be displayed.
	* The default value of this property depends on the constructor
	* used to create the <code>JTree</code>.
	* Some look and feels might not support handles;
	* they will ignore this property.
	* <p>
	* This is a bound property.
	*
	* @param newValue <code>true</code> if root handles should be displayed;
	*                 otherwise, <code>false</code>
	* @see #showsRootHandles
	* @see #getShowsRootHandles
	* @beaninfo
	*        bound: true
	*  description: Whether the node handles are to be
	*               displayed.
	*/
	@:overload public function setShowsRootHandles(newValue : Bool) : Void;
	
	/**
	* Returns the value of the <code>showsRootHandles</code> property.
	*
	* @return the value of the <code>showsRootHandles</code> property
	* @see #showsRootHandles
	*/
	@:overload public function getShowsRootHandles() : Bool;
	
	/**
	* Sets the height of each cell, in pixels.  If the specified value
	* is less than or equal to zero the current cell renderer is
	* queried for each row's height.
	* <p>
	* This is a bound property.
	*
	* @param rowHeight the height of each cell, in pixels
	* @beaninfo
	*        bound: true
	*  description: The height of each cell.
	*/
	@:overload public function setRowHeight(rowHeight : Int) : Void;
	
	/**
	* Returns the height of each row.  If the returned value is less than
	* or equal to 0 the height for each row is determined by the
	* renderer.
	*
	*/
	@:overload public function getRowHeight() : Int;
	
	/**
	* Returns true if the height of each display row is a fixed size.
	*
	* @return true if the height of each row is a fixed size
	*/
	@:overload public function isFixedRowHeight() : Bool;
	
	/**
	* Specifies whether the UI should use a large model.
	* (Not all UIs will implement this.) Fires a property change
	* for the LARGE_MODEL_PROPERTY.
	* <p>
	* This is a bound property.
	*
	* @param newValue true to suggest a large model to the UI
	* @see #largeModel
	* @beaninfo
	*        bound: true
	*  description: Whether the UI should use a
	*               large model.
	*/
	@:overload public function setLargeModel(newValue : Bool) : Void;
	
	/**
	* Returns true if the tree is configured for a large model.
	*
	* @return true if a large model is suggested
	* @see #largeModel
	*/
	@:overload public function isLargeModel() : Bool;
	
	/**
	* Determines what happens when editing is interrupted by selecting
	* another node in the tree, a change in the tree's data, or by some
	* other means. Setting this property to <code>true</code> causes the
	* changes to be automatically saved when editing is interrupted.
	* <p>
	* Fires a property change for the INVOKES_STOP_CELL_EDITING_PROPERTY.
	*
	* @param newValue true means that <code>stopCellEditing</code> is invoked
	*        when editing is interrupted, and data is saved; false means that
	*        <code>cancelCellEditing</code> is invoked, and changes are lost
	* @beaninfo
	*        bound: true
	*  description: Determines what happens when editing is interrupted,
	*               selecting another node in the tree, a change in the
	*               tree's data, or some other means.
	*/
	@:overload public function setInvokesStopCellEditing(newValue : Bool) : Void;
	
	/**
	* Returns the indicator that tells what happens when editing is
	* interrupted.
	*
	* @return the indicator that tells what happens when editing is
	*         interrupted
	* @see #setInvokesStopCellEditing
	*/
	@:overload public function getInvokesStopCellEditing() : Bool;
	
	/**
	* Sets the <code>scrollsOnExpand</code> property,
	* which determines whether the
	* tree might scroll to show previously hidden children.
	* If this property is <code>true</code> (the default),
	* when a node expands
	* the tree can use scrolling to make
	* the maximum possible number of the node's descendants visible.
	* In some look and feels, trees might not need to scroll when expanded;
	* those look and feels will ignore this property.
	* <p>
	* This is a bound property.
	*
	* @param newValue <code>false</code> to disable scrolling on expansion;
	*                 <code>true</code> to enable it
	* @see #getScrollsOnExpand
	*
	* @beaninfo
	*        bound: true
	*  description: Indicates if a node descendant should be scrolled when expanded.
	*/
	@:overload public function setScrollsOnExpand(newValue : Bool) : Void;
	
	/**
	* Returns the value of the <code>scrollsOnExpand</code> property.
	*
	* @return the value of the <code>scrollsOnExpand</code> property
	*/
	@:overload public function getScrollsOnExpand() : Bool;
	
	/**
	* Sets the number of mouse clicks before a node will expand or close.
	* The default is two.
	* <p>
	* This is a bound property.
	*
	* @since 1.3
	* @beaninfo
	*        bound: true
	*  description: Number of clicks before a node will expand/collapse.
	*/
	@:require(java3) @:overload public function setToggleClickCount(clickCount : Int) : Void;
	
	/**
	* Returns the number of mouse clicks needed to expand or close a node.
	*
	* @return number of mouse clicks before node is expanded
	* @since 1.3
	*/
	@:require(java3) @:overload public function getToggleClickCount() : Int;
	
	/**
	* Configures the <code>expandsSelectedPaths</code> property. If
	* true, any time the selection is changed, either via the
	* <code>TreeSelectionModel</code>, or the cover methods provided by
	* <code>JTree</code>, the <code>TreePath</code>s parents will be
	* expanded to make them visible (visible meaning the parent path is
	* expanded, not necessarily in the visible rectangle of the
	* <code>JTree</code>). If false, when the selection
	* changes the nodes parent is not made visible (all its parents expanded).
	* This is useful if you wish to have your selection model maintain paths
	* that are not always visible (all parents expanded).
	* <p>
	* This is a bound property.
	*
	* @param newValue the new value for <code>expandsSelectedPaths</code>
	*
	* @since 1.3
	* @beaninfo
	*        bound: true
	*  description: Indicates whether changes to the selection should make
	*               the parent of the path visible.
	*/
	@:require(java3) @:overload public function setExpandsSelectedPaths(newValue : Bool) : Void;
	
	/**
	* Returns the <code>expandsSelectedPaths</code> property.
	* @return true if selection changes result in the parent path being
	*         expanded
	* @since 1.3
	* @see #setExpandsSelectedPaths
	*/
	@:require(java3) @:overload public function getExpandsSelectedPaths() : Bool;
	
	/**
	* Turns on or off automatic drag handling. In order to enable automatic
	* drag handling, this property should be set to {@code true}, and the
	* tree's {@code TransferHandler} needs to be {@code non-null}.
	* The default value of the {@code dragEnabled} property is {@code false}.
	* <p>
	* The job of honoring this property, and recognizing a user drag gesture,
	* lies with the look and feel implementation, and in particular, the tree's
	* {@code TreeUI}. When automatic drag handling is enabled, most look and
	* feels (including those that subclass {@code BasicLookAndFeel}) begin a
	* drag and drop operation whenever the user presses the mouse button over
	* an item and then moves the mouse a few pixels. Setting this property to
	* {@code true} can therefore have a subtle effect on how selections behave.
	* <p>
	* If a look and feel is used that ignores this property, you can still
	* begin a drag and drop operation by calling {@code exportAsDrag} on the
	* tree's {@code TransferHandler}.
	*
	* @param b whether or not to enable automatic drag handling
	* @exception HeadlessException if
	*            <code>b</code> is <code>true</code> and
	*            <code>GraphicsEnvironment.isHeadless()</code>
	*            returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see #getDragEnabled
	* @see #setTransferHandler
	* @see TransferHandler
	* @since 1.4
	*
	* @beaninfo
	*  description: determines whether automatic drag handling is enabled
	*        bound: false
	*/
	@:require(java4) @:overload public function setDragEnabled(b : Bool) : Void;
	
	/**
	* Returns whether or not automatic drag handling is enabled.
	*
	* @return the value of the {@code dragEnabled} property
	* @see #setDragEnabled
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDragEnabled() : Bool;
	
	/**
	* Sets the drop mode for this component. For backward compatibility,
	* the default for this property is <code>DropMode.USE_SELECTION</code>.
	* Usage of one of the other modes is recommended, however, for an
	* improved user experience. <code>DropMode.ON</code>, for instance,
	* offers similar behavior of showing items as selected, but does so without
	* affecting the actual selection in the tree.
	* <p>
	* <code>JTree</code> supports the following drop modes:
	* <ul>
	*    <li><code>DropMode.USE_SELECTION</code></li>
	*    <li><code>DropMode.ON</code></li>
	*    <li><code>DropMode.INSERT</code></li>
	*    <li><code>DropMode.ON_OR_INSERT</code></li>
	* </ul>
	* <p>
	* The drop mode is only meaningful if this component has a
	* <code>TransferHandler</code> that accepts drops.
	*
	* @param dropMode the drop mode to use
	* @throws IllegalArgumentException if the drop mode is unsupported
	*         or <code>null</code>
	* @see #getDropMode
	* @see #getDropLocation
	* @see #setTransferHandler
	* @see TransferHandler
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function setDropMode(dropMode : javax.swing.DropMode) : Void;
	
	/**
	* Returns the drop mode for this component.
	*
	* @return the drop mode for this component
	* @see #setDropMode
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getDropMode() : javax.swing.DropMode;
	
	/**
	* Returns the location that this component should visually indicate
	* as the drop location during a DnD operation over the component,
	* or {@code null} if no location is to currently be shown.
	* <p>
	* This method is not meant for querying the drop location
	* from a {@code TransferHandler}, as the drop location is only
	* set after the {@code TransferHandler}'s <code>canImport</code>
	* has returned and has allowed for the location to be shown.
	* <p>
	* When this property changes, a property change event with
	* name "dropLocation" is fired by the component.
	*
	* @return the drop location
	* @see #setDropMode
	* @see TransferHandler#canImport(TransferHandler.TransferSupport)
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getDropLocation() : JTree_DropLocation;
	
	/**
	* Returns <code>isEditable</code>. This is invoked from the UI before
	* editing begins to insure that the given path can be edited. This
	* is provided as an entry point for subclassers to add filtered
	* editing without having to resort to creating a new editor.
	*
	* @return true if every parent node and the node itself is editable
	* @see #isEditable
	*/
	@:overload public function isPathEditable(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Overrides <code>JComponent</code>'s <code>getToolTipText</code>
	* method in order to allow
	* renderer's tips to be used if it has text set.
	* <p>
	* NOTE: For <code>JTree</code> to properly display tooltips of its
	* renderers, <code>JTree</code> must be a registered component with the
	* <code>ToolTipManager</code>.  This can be done by invoking
	* <code>ToolTipManager.sharedInstance().registerComponent(tree)</code>.
	* This is not done automatically!
	*
	* @param event the <code>MouseEvent</code> that initiated the
	*          <code>ToolTip</code> display
	* @return a string containing the  tooltip or <code>null</code>
	*          if <code>event</code> is null
	*/
	@:overload override public function getToolTipText(event : java.awt.event.MouseEvent) : String;
	
	/**
	* Called by the renderers to convert the specified value to
	* text. This implementation returns <code>value.toString</code>, ignoring
	* all other arguments. To control the conversion, subclass this
	* method and use any of the arguments you need.
	*
	* @param value the <code>Object</code> to convert to text
	* @param selected true if the node is selected
	* @param expanded true if the node is expanded
	* @param leaf  true if the node is a leaf node
	* @param row  an integer specifying the node's display row, where 0 is
	*             the first row in the display
	* @param hasFocus true if the node has the focus
	* @return the <code>String</code> representation of the node's value
	*/
	@:overload public function convertValueToText(value : Dynamic, selected : Bool, expanded : Bool, leaf : Bool, row : Int, hasFocus : Bool) : String;
	
	/**
	* Returns the number of viewable nodes. A node is viewable if all of its
	* parents are expanded. The root is only included in this count if
	* {@code isRootVisible()} is {@code true}. This returns {@code 0} if
	* the UI has not been set.
	*
	* @return the number of viewable nodes
	*/
	@:overload public function getRowCount() : Int;
	
	/**
	* Selects the node identified by the specified path. If any
	* component of the path is hidden (under a collapsed node), and
	* <code>getExpandsSelectedPaths</code> is true it is
	* exposed (made viewable).
	*
	* @param path the <code>TreePath</code> specifying the node to select
	*/
	@:overload public function setSelectionPath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Selects the nodes identified by the specified array of paths.
	* If any component in any of the paths is hidden (under a collapsed
	* node), and <code>getExpandsSelectedPaths</code> is true
	* it is exposed (made viewable).
	*
	* @param paths an array of <code>TreePath</code> objects that specifies
	*          the nodes to select
	*/
	@:overload public function setSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* Sets the path identifies as the lead. The lead may not be selected.
	* The lead is not maintained by <code>JTree</code>,
	* rather the UI will update it.
	* <p>
	* This is a bound property.
	*
	* @param newPath  the new lead path
	* @since 1.3
	* @beaninfo
	*        bound: true
	*  description: Lead selection path
	*/
	@:require(java3) @:overload public function setLeadSelectionPath(newPath : javax.swing.tree.TreePath) : Void;
	
	/**
	* Sets the path identified as the anchor.
	* The anchor is not maintained by <code>JTree</code>, rather the UI will
	* update it.
	* <p>
	* This is a bound property.
	*
	* @param newPath  the new anchor path
	* @since 1.3
	* @beaninfo
	*        bound: true
	*  description: Anchor selection path
	*/
	@:require(java3) @:overload public function setAnchorSelectionPath(newPath : javax.swing.tree.TreePath) : Void;
	
	/**
	* Selects the node at the specified row in the display.
	*
	* @param row  the row to select, where 0 is the first row in
	*             the display
	*/
	@:overload public function setSelectionRow(row : Int) : Void;
	
	/**
	* Selects the nodes corresponding to each of the specified rows
	* in the display. If a particular element of <code>rows</code> is
	* < 0 or >= <code>getRowCount</code>, it will be ignored.
	* If none of the elements
	* in <code>rows</code> are valid rows, the selection will
	* be cleared. That is it will be as if <code>clearSelection</code>
	* was invoked.
	*
	* @param rows  an array of ints specifying the rows to select,
	*              where 0 indicates the first row in the display
	*/
	@:overload public function setSelectionRows(rows : java.NativeArray<Int>) : Void;
	
	/**
	* Adds the node identified by the specified <code>TreePath</code>
	* to the current selection. If any component of the path isn't
	* viewable, and <code>getExpandsSelectedPaths</code> is true it is
	* made viewable.
	* <p>
	* Note that <code>JTree</code> does not allow duplicate nodes to
	* exist as children under the same parent -- each sibling must be
	* a unique object.
	*
	* @param path the <code>TreePath</code> to add
	*/
	@:overload public function addSelectionPath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Adds each path in the array of paths to the current selection. If
	* any component of any of the paths isn't viewable and
	* <code>getExpandsSelectedPaths</code> is true, it is
	* made viewable.
	* <p>
	* Note that <code>JTree</code> does not allow duplicate nodes to
	* exist as children under the same parent -- each sibling must be
	* a unique object.
	*
	* @param paths an array of <code>TreePath</code> objects that specifies
	*          the nodes to add
	*/
	@:overload public function addSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* Adds the path at the specified row to the current selection.
	*
	* @param row  an integer specifying the row of the node to add,
	*             where 0 is the first row in the display
	*/
	@:overload public function addSelectionRow(row : Int) : Void;
	
	/**
	* Adds the paths at each of the specified rows to the current selection.
	*
	* @param rows  an array of ints specifying the rows to add,
	*              where 0 indicates the first row in the display
	*/
	@:overload public function addSelectionRows(rows : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the last path component of the selected path. This is
	* a convenience method for
	* {@code getSelectionModel().getSelectionPath().getLastPathComponent()}.
	* This is typically only useful if the selection has one path.
	*
	* @return the last path component of the selected path, or
	*         <code>null</code> if nothing is selected
	* @see TreePath#getLastPathComponent
	*/
	@:overload public function getLastSelectedPathComponent() : Dynamic;
	
	/**
	* Returns the path identified as the lead.
	* @return path identified as the lead
	*/
	@:overload public function getLeadSelectionPath() : javax.swing.tree.TreePath;
	
	/**
	* Returns the path identified as the anchor.
	* @return path identified as the anchor
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAnchorSelectionPath() : javax.swing.tree.TreePath;
	
	/**
	* Returns the path to the first selected node.
	*
	* @return the <code>TreePath</code> for the first selected node,
	*          or <code>null</code> if nothing is currently selected
	*/
	@:overload public function getSelectionPath() : javax.swing.tree.TreePath;
	
	/**
	* Returns the paths of all selected values.
	*
	* @return an array of <code>TreePath</code> objects indicating the selected
	*         nodes, or <code>null</code> if nothing is currently selected
	*/
	@:overload public function getSelectionPaths() : java.NativeArray<javax.swing.tree.TreePath>;
	
	/**
	* Returns all of the currently selected rows. This method is simply
	* forwarded to the <code>TreeSelectionModel</code>.
	* If nothing is selected <code>null</code> or an empty array will
	* be returned, based on the <code>TreeSelectionModel</code>
	* implementation.
	*
	* @return an array of integers that identifies all currently selected rows
	*         where 0 is the first row in the display
	*/
	@:overload public function getSelectionRows() : java.NativeArray<Int>;
	
	/**
	* Returns the number of nodes selected.
	*
	* @return the number of nodes selected
	*/
	@:overload public function getSelectionCount() : Int;
	
	/**
	* Returns the smallest selected row. If the selection is empty, or
	* none of the selected paths are viewable, {@code -1} is returned.
	*
	* @return the smallest selected row
	*/
	@:overload public function getMinSelectionRow() : Int;
	
	/**
	* Returns the largest selected row. If the selection is empty, or
	* none of the selected paths are viewable, {@code -1} is returned.
	*
	* @return the largest selected row
	*/
	@:overload public function getMaxSelectionRow() : Int;
	
	/**
	* Returns the row index corresponding to the lead path.
	*
	* @return an integer giving the row index of the lead path,
	*          where 0 is the first row in the display; or -1
	*          if <code>leadPath</code> is <code>null</code>
	*/
	@:overload public function getLeadSelectionRow() : Int;
	
	/**
	* Returns true if the item identified by the path is currently selected.
	*
	* @param path a <code>TreePath</code> identifying a node
	* @return true if the node is selected
	*/
	@:overload public function isPathSelected(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns true if the node identified by row is selected.
	*
	* @param row  an integer specifying a display row, where 0 is the first
	*             row in the display
	* @return true if the node is selected
	*/
	@:overload public function isRowSelected(row : Int) : Bool;
	
	/**
	* Returns an <code>Enumeration</code> of the descendants of the
	* path <code>parent</code> that
	* are currently expanded. If <code>parent</code> is not currently
	* expanded, this will return <code>null</code>.
	* If you expand/collapse nodes while
	* iterating over the returned <code>Enumeration</code>
	* this may not return all
	* the expanded paths, or may return paths that are no longer expanded.
	*
	* @param parent  the path which is to be examined
	* @return an <code>Enumeration</code> of the descendents of
	*          <code>parent</code>, or <code>null</code> if
	*          <code>parent</code> is not currently expanded
	*/
	@:overload public function getExpandedDescendants(parent : javax.swing.tree.TreePath) : java.util.Enumeration<javax.swing.tree.TreePath>;
	
	/**
	* Returns true if the node identified by the path has ever been
	* expanded.
	* @return true if the <code>path</code> has ever been expanded
	*/
	@:overload public function hasBeenExpanded(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns true if the node identified by the path is currently expanded,
	*
	* @param path  the <code>TreePath</code> specifying the node to check
	* @return false if any of the nodes in the node's path are collapsed,
	*               true if all nodes in the path are expanded
	*/
	@:overload public function isExpanded(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns true if the node at the specified display row is currently
	* expanded.
	*
	* @param row  the row to check, where 0 is the first row in the
	*             display
	* @return true if the node is currently expanded, otherwise false
	*/
	@:overload public function isExpanded(row : Int) : Bool;
	
	/**
	* Returns true if the value identified by path is currently collapsed,
	* this will return false if any of the values in path are currently
	* not being displayed.
	*
	* @param path  the <code>TreePath</code> to check
	* @return true if any of the nodes in the node's path are collapsed,
	*               false if all nodes in the path are expanded
	*/
	@:overload public function isCollapsed(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns true if the node at the specified display row is collapsed.
	*
	* @param row  the row to check, where 0 is the first row in the
	*             display
	* @return true if the node is currently collapsed, otherwise false
	*/
	@:overload public function isCollapsed(row : Int) : Bool;
	
	/**
	* Ensures that the node identified by path is currently viewable.
	*
	* @param path  the <code>TreePath</code> to make visible
	*/
	@:overload public function makeVisible(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Returns true if the value identified by path is currently viewable,
	* which means it is either the root or all of its parents are expanded.
	* Otherwise, this method returns false.
	*
	* @return true if the node is viewable, otherwise false
	*/
	@:overload public function isVisible(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns the <code>Rectangle</code> that the specified node will be drawn
	* into. Returns <code>null</code> if any component in the path is hidden
	* (under a collapsed parent).
	* <p>
	* Note:<br>
	* This method returns a valid rectangle, even if the specified
	* node is not currently displayed.
	*
	* @param path the <code>TreePath</code> identifying the node
	* @return the <code>Rectangle</code> the node is drawn in,
	*          or <code>null</code>
	*/
	@:overload public function getPathBounds(path : javax.swing.tree.TreePath) : java.awt.Rectangle;
	
	/**
	* Returns the <code>Rectangle</code> that the node at the specified row is
	* drawn in.
	*
	* @param row  the row to be drawn, where 0 is the first row in the
	*             display
	* @return the <code>Rectangle</code> the node is drawn in
	*/
	@:overload public function getRowBounds(row : Int) : java.awt.Rectangle;
	
	/**
	* Makes sure all the path components in path are expanded (except
	* for the last path component) and scrolls so that the
	* node identified by the path is displayed. Only works when this
	* <code>JTree</code> is contained in a <code>JScrollPane</code>.
	*
	* @param path  the <code>TreePath</code> identifying the node to
	*          bring into view
	*/
	@:overload public function scrollPathToVisible(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Scrolls the item identified by row until it is displayed. The minimum
	* of amount of scrolling necessary to bring the row into view
	* is performed. Only works when this <code>JTree</code> is contained in a
	* <code>JScrollPane</code>.
	*
	* @param row  an integer specifying the row to scroll, where 0 is the
	*             first row in the display
	*/
	@:overload public function scrollRowToVisible(row : Int) : Void;
	
	/**
	* Returns the path for the specified row.  If <code>row</code> is
	* not visible, or a {@code TreeUI} has not been set, <code>null</code>
	* is returned.
	*
	* @param row  an integer specifying a row
	* @return the <code>TreePath</code> to the specified node,
	*          <code>null</code> if <code>row < 0</code>
	*          or <code>row >= getRowCount()</code>
	*/
	@:overload public function getPathForRow(row : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns the row that displays the node identified by the specified
	* path.
	*
	* @param path  the <code>TreePath</code> identifying a node
	* @return an integer specifying the display row, where 0 is the first
	*         row in the display, or -1 if any of the elements in path
	*         are hidden under a collapsed parent.
	*/
	@:overload public function getRowForPath(path : javax.swing.tree.TreePath) : Int;
	
	/**
	* Ensures that the node identified by the specified path is
	* expanded and viewable. If the last item in the path is a
	* leaf, this will have no effect.
	*
	* @param path  the <code>TreePath</code> identifying a node
	*/
	@:overload public function expandPath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Ensures that the node in the specified row is expanded and
	* viewable.
	* <p>
	* If <code>row</code> is < 0 or >= <code>getRowCount</code> this
	* will have no effect.
	*
	* @param row  an integer specifying a display row, where 0 is the
	*             first row in the display
	*/
	@:overload public function expandRow(row : Int) : Void;
	
	/**
	* Ensures that the node identified by the specified path is
	* collapsed and viewable.
	*
	* @param path  the <code>TreePath</code> identifying a node
	*/
	@:overload public function collapsePath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Ensures that the node in the specified row is collapsed.
	* <p>
	* If <code>row</code> is < 0 or >= <code>getRowCount</code> this
	* will have no effect.
	*
	* @param row  an integer specifying a display row, where 0 is the
	*             first row in the display
	*/
	@:overload public function collapseRow(row : Int) : Void;
	
	/**
	* Returns the path for the node at the specified location.
	*
	* @param x an integer giving the number of pixels horizontally from
	*          the left edge of the display area, minus any left margin
	* @param y an integer giving the number of pixels vertically from
	*          the top of the display area, minus any top margin
	* @return  the <code>TreePath</code> for the node at that location
	*/
	@:overload public function getPathForLocation(x : Int, y : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns the row for the specified location.
	*
	* @param x an integer giving the number of pixels horizontally from
	*          the left edge of the display area, minus any left margin
	* @param y an integer giving the number of pixels vertically from
	*          the top of the display area, minus any top margin
	* @return the row corresponding to the location, or -1 if the
	*         location is not within the bounds of a displayed cell
	* @see #getClosestRowForLocation
	*/
	@:overload public function getRowForLocation(x : Int, y : Int) : Int;
	
	/**
	* Returns the path to the node that is closest to x,y.  If
	* no nodes are currently viewable, or there is no model, returns
	* <code>null</code>, otherwise it always returns a valid path.  To test if
	* the node is exactly at x, y, get the node's bounds and
	* test x, y against that.
	*
	* @param x an integer giving the number of pixels horizontally from
	*          the left edge of the display area, minus any left margin
	* @param y an integer giving the number of pixels vertically from
	*          the top of the display area, minus any top margin
	* @return  the <code>TreePath</code> for the node closest to that location,
	*          <code>null</code> if nothing is viewable or there is no model
	*
	* @see #getPathForLocation
	* @see #getPathBounds
	*/
	@:overload public function getClosestPathForLocation(x : Int, y : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns the row to the node that is closest to x,y.  If no nodes
	* are viewable or there is no model, returns -1. Otherwise,
	* it always returns a valid row.  To test if the returned object is
	* exactly at x, y, get the bounds for the node at the returned
	* row and test x, y against that.
	*
	* @param x an integer giving the number of pixels horizontally from
	*          the left edge of the display area, minus any left margin
	* @param y an integer giving the number of pixels vertically from
	*          the top of the display area, minus any top margin
	* @return the row closest to the location, -1 if nothing is
	*         viewable or there is no model
	*
	* @see #getRowForLocation
	* @see #getRowBounds
	*/
	@:overload public function getClosestRowForLocation(x : Int, y : Int) : Int;
	
	/**
	* Returns true if the tree is being edited. The item that is being
	* edited can be obtained using <code>getSelectionPath</code>.
	*
	* @return true if the user is currently editing a node
	* @see #getSelectionPath
	*/
	@:overload public function isEditing() : Bool;
	
	/**
	* Ends the current editing session.
	* (The <code>DefaultTreeCellEditor</code>
	* object saves any edits that are currently in progress on a cell.
	* Other implementations may operate differently.)
	* Has no effect if the tree isn't being edited.
	* <blockquote>
	* <b>Note:</b><br>
	* To make edit-saves automatic whenever the user changes
	* their position in the tree, use {@link #setInvokesStopCellEditing}.
	* </blockquote>
	*
	* @return true if editing was in progress and is now stopped,
	*              false if editing was not in progress
	*/
	@:overload public function stopEditing() : Bool;
	
	/**
	* Cancels the current editing session. Has no effect if the
	* tree isn't being edited.
	*/
	@:overload public function cancelEditing() : Void;
	
	/**
	* Selects the node identified by the specified path and initiates
	* editing.  The edit-attempt fails if the <code>CellEditor</code>
	* does not allow
	* editing for the specified item.
	*
	* @param path  the <code>TreePath</code> identifying a node
	*/
	@:overload public function startEditingAtPath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Returns the path to the element that is currently being edited.
	*
	* @return  the <code>TreePath</code> for the node being edited
	*/
	@:overload public function getEditingPath() : javax.swing.tree.TreePath;
	
	/**
	* Sets the tree's selection model. When a <code>null</code> value is
	* specified an empty
	* <code>selectionModel</code> is used, which does not allow selections.
	* <p>
	* This is a bound property.
	*
	* @param selectionModel the <code>TreeSelectionModel</code> to use,
	*          or <code>null</code> to disable selections
	* @see TreeSelectionModel
	* @beaninfo
	*        bound: true
	*  description: The tree's selection model.
	*/
	@:overload public function setSelectionModel(selectionModel : javax.swing.tree.TreeSelectionModel) : Void;
	
	/**
	* Returns the model for selections. This should always return a
	* non-<code>null</code> value. If you don't want to allow anything
	* to be selected
	* set the selection model to <code>null</code>, which forces an empty
	* selection model to be used.
	*
	* @see #setSelectionModel
	*/
	@:overload public function getSelectionModel() : javax.swing.tree.TreeSelectionModel;
	
	/**
	* Returns the paths (inclusive) between the specified rows. If
	* the specified indices are within the viewable set of rows, or
	* bound the viewable set of rows, then the indices are
	* constrained by the viewable set of rows. If the specified
	* indices are not within the viewable set of rows, or do not
	* bound the viewable set of rows, then an empty array is
	* returned. For example, if the row count is {@code 10}, and this
	* method is invoked with {@code -1, 20}, then the specified
	* indices are constrained to the viewable set of rows, and this is
	* treated as if invoked with {@code 0, 9}. On the other hand, if
	* this were invoked with {@code -10, -1}, then the specified
	* indices do not bound the viewable set of rows, and an empty
	* array is returned.
	* <p>
	* The parameters are not order dependent. That is, {@code
	* getPathBetweenRows(x, y)} is equivalent to
	* {@code getPathBetweenRows(y, x)}.
	* <p>
	* An empty array is returned if the row count is {@code 0}, or
	* the specified indices do not bound the viewable set of rows.
	*
	* @param index0 the first index in the range
	* @param index1 the last index in the range
	* @return the paths (inclusive) between the specified row indices
	*/
	@:overload private function getPathBetweenRows(index0 : Int, index1 : Int) : java.NativeArray<javax.swing.tree.TreePath>;
	
	/**
	* Selects the rows in the specified interval (inclusive). If
	* the specified indices are within the viewable set of rows, or bound
	* the viewable set of rows, then the specified rows are constrained by
	* the viewable set of rows. If the specified indices are not within the
	* viewable set of rows, or do not bound the viewable set of rows, then
	* the selection is cleared. For example, if the row count is {@code
	* 10}, and this method is invoked with {@code -1, 20}, then the
	* specified indices bounds the viewable range, and this is treated as
	* if invoked with {@code 0, 9}. On the other hand, if this were
	* invoked with {@code -10, -1}, then the specified indices do not
	* bound the viewable set of rows, and the selection is cleared.
	* <p>
	* The parameters are not order dependent. That is, {@code
	* setSelectionInterval(x, y)} is equivalent to
	* {@code setSelectionInterval(y, x)}.
	*
	* @param index0 the first index in the range to select
	* @param index1 the last index in the range to select
	*/
	@:overload public function setSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Adds the specified rows (inclusive) to the selection. If the
	* specified indices are within the viewable set of rows, or bound
	* the viewable set of rows, then the specified indices are
	* constrained by the viewable set of rows. If the indices are not
	* within the viewable set of rows, or do not bound the viewable
	* set of rows, then the selection is unchanged. For example, if
	* the row count is {@code 10}, and this method is invoked with
	* {@code -1, 20}, then the specified indices bounds the viewable
	* range, and this is treated as if invoked with {@code 0, 9}. On
	* the other hand, if this were invoked with {@code -10, -1}, then
	* the specified indices do not bound the viewable set of rows,
	* and the selection is unchanged.
	* <p>
	* The parameters are not order dependent. That is, {@code
	* addSelectionInterval(x, y)} is equivalent to
	* {@code addSelectionInterval(y, x)}.
	*
	* @param index0 the first index in the range to add to the selection
	* @param index1 the last index in the range to add to the selection
	*/
	@:overload public function addSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Removes the specified rows (inclusive) from the selection. If
	* the specified indices are within the viewable set of rows, or bound
	* the viewable set of rows, then the specified indices are constrained by
	* the viewable set of rows. If the specified indices are not within the
	* viewable set of rows, or do not bound the viewable set of rows, then
	* the selection is unchanged. For example, if the row count is {@code
	* 10}, and this method is invoked with {@code -1, 20}, then the
	* specified range bounds the viewable range, and this is treated as
	* if invoked with {@code 0, 9}. On the other hand, if this were
	* invoked with {@code -10, -1}, then the specified range does not
	* bound the viewable set of rows, and the selection is unchanged.
	* <p>
	* The parameters are not order dependent. That is, {@code
	* removeSelectionInterval(x, y)} is equivalent to
	* {@code removeSelectionInterval(y, x)}.
	*
	* @param index0 the first row to remove from the selection
	* @param index1 the last row to remove from the selection
	*/
	@:overload public function removeSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Removes the node identified by the specified path from the current
	* selection.
	*
	* @param path  the <code>TreePath</code> identifying a node
	*/
	@:overload public function removeSelectionPath(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Removes the nodes identified by the specified paths from the
	* current selection.
	*
	* @param paths an array of <code>TreePath</code> objects that
	*              specifies the nodes to remove
	*/
	@:overload public function removeSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* Removes the row at the index <code>row</code> from the current
	* selection.
	*
	* @param row  the row to remove
	*/
	@:overload public function removeSelectionRow(row : Int) : Void;
	
	/**
	* Removes the rows that are selected at each of the specified
	* rows.
	*
	* @param rows  an array of ints specifying display rows, where 0 is
	*             the first row in the display
	*/
	@:overload public function removeSelectionRows(rows : java.NativeArray<Int>) : Void;
	
	/**
	* Clears the selection.
	*/
	@:overload public function clearSelection() : Void;
	
	/**
	* Returns true if the selection is currently empty.
	*
	* @return true if the selection is currently empty
	*/
	@:overload public function isSelectionEmpty() : Bool;
	
	/**
	* Adds a listener for <code>TreeExpansion</code> events.
	*
	* @param tel a TreeExpansionListener that will be notified when
	*            a tree node is expanded or collapsed (a "negative
	*            expansion")
	*/
	@:overload public function addTreeExpansionListener(tel : javax.swing.event.TreeExpansionListener) : Void;
	
	/**
	* Removes a listener for <code>TreeExpansion</code> events.
	*
	* @param tel the <code>TreeExpansionListener</code> to remove
	*/
	@:overload public function removeTreeExpansionListener(tel : javax.swing.event.TreeExpansionListener) : Void;
	
	/**
	* Returns an array of all the <code>TreeExpansionListener</code>s added
	* to this JTree with addTreeExpansionListener().
	*
	* @return all of the <code>TreeExpansionListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getTreeExpansionListeners() : java.NativeArray<javax.swing.event.TreeExpansionListener>;
	
	/**
	* Adds a listener for <code>TreeWillExpand</code> events.
	*
	* @param tel a <code>TreeWillExpandListener</code> that will be notified
	*            when a tree node will be expanded or collapsed (a "negative
	*            expansion")
	*/
	@:overload public function addTreeWillExpandListener(tel : javax.swing.event.TreeWillExpandListener) : Void;
	
	/**
	* Removes a listener for <code>TreeWillExpand</code> events.
	*
	* @param tel the <code>TreeWillExpandListener</code> to remove
	*/
	@:overload public function removeTreeWillExpandListener(tel : javax.swing.event.TreeWillExpandListener) : Void;
	
	/**
	* Returns an array of all the <code>TreeWillExpandListener</code>s added
	* to this JTree with addTreeWillExpandListener().
	*
	* @return all of the <code>TreeWillExpandListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getTreeWillExpandListeners() : java.NativeArray<javax.swing.event.TreeWillExpandListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the <code>path</code> parameter.
	*
	* @param path the <code>TreePath</code> indicating the node that was
	*          expanded
	* @see EventListenerList
	*/
	@:overload public function fireTreeExpanded(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the <code>path</code> parameter.
	*
	* @param path the <code>TreePath</code> indicating the node that was
	*          collapsed
	* @see EventListenerList
	*/
	@:overload public function fireTreeCollapsed(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the <code>path</code> parameter.
	*
	* @param path the <code>TreePath</code> indicating the node that was
	*          expanded
	* @see EventListenerList
	*/
	@:overload public function fireTreeWillExpand(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the <code>path</code> parameter.
	*
	* @param path the <code>TreePath</code> indicating the node that was
	*          expanded
	* @see EventListenerList
	*/
	@:overload public function fireTreeWillCollapse(path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Adds a listener for <code>TreeSelection</code> events.
	*
	* @param tsl the <code>TreeSelectionListener</code> that will be notified
	*            when a node is selected or deselected (a "negative
	*            selection")
	*/
	@:overload public function addTreeSelectionListener(tsl : javax.swing.event.TreeSelectionListener) : Void;
	
	/**
	* Removes a <code>TreeSelection</code> listener.
	*
	* @param tsl the <code>TreeSelectionListener</code> to remove
	*/
	@:overload public function removeTreeSelectionListener(tsl : javax.swing.event.TreeSelectionListener) : Void;
	
	/**
	* Returns an array of all the <code>TreeSelectionListener</code>s added
	* to this JTree with addTreeSelectionListener().
	*
	* @return all of the <code>TreeSelectionListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getTreeSelectionListeners() : java.NativeArray<javax.swing.event.TreeSelectionListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param e the <code>TreeSelectionEvent</code> to be fired;
	*          generated by the
	*          <code>TreeSelectionModel</code>
	*          when a node is selected or deselected
	* @see EventListenerList
	*/
	@:overload private function fireValueChanged(e : javax.swing.event.TreeSelectionEvent) : Void;
	
	/**
	* Sent when the tree has changed enough that we need to resize
	* the bounds, but not enough that we need to remove the
	* expanded node set (e.g nodes were expanded or collapsed, or
	* nodes were inserted into the tree). You should never have to
	* invoke this, the UI will invoke this as it needs to.
	*/
	@:overload public function treeDidChange() : Void;
	
	/**
	* Sets the number of rows that are to be displayed.
	* This will only work if the tree is contained in a
	* <code>JScrollPane</code>,
	* and will adjust the preferred size and size of that scrollpane.
	* <p>
	* This is a bound property.
	*
	* @param newCount the number of rows to display
	* @beaninfo
	*        bound: true
	*  description: The number of rows that are to be displayed.
	*/
	@:overload public function setVisibleRowCount(newCount : Int) : Void;
	
	/**
	* Returns the number of rows that are displayed in the display area.
	*
	* @return the number of rows displayed
	*/
	@:overload public function getVisibleRowCount() : Int;
	
	/**
	* Returns the TreePath to the next tree element that
	* begins with a prefix. To handle the conversion of a
	* <code>TreePath</code> into a String, <code>convertValueToText</code>
	* is used.
	*
	* @param prefix the string to test for a match
	* @param startingRow the row for starting the search
	* @param bias the search direction, either
	* Position.Bias.Forward or Position.Bias.Backward.
	* @return the TreePath of the next tree element that
	* starts with the prefix; otherwise null
	* @exception IllegalArgumentException if prefix is null
	* or startingRow is out of bounds
	* @since 1.4
	*/
	@:require(java4) @:overload public function getNextMatch(prefix : String, startingRow : Int, bias : javax.swing.text.Position.Position_Bias) : javax.swing.tree.TreePath;
	
	/**
	* Returns the preferred display size of a <code>JTree</code>. The height is
	* determined from <code>getVisibleRowCount</code> and the width
	* is the current preferred width.
	*
	* @return a <code>Dimension</code> object containing the preferred size
	*/
	@:overload public function getPreferredScrollableViewportSize() : java.awt.Dimension;
	
	/**
	* Returns the amount to increment when scrolling. The amount is
	* the height of the first displayed row that isn't completely in view
	* or, if it is totally displayed, the height of the next row in the
	* scrolling direction.
	*
	* @param visibleRect the view area visible within the viewport
	* @param orientation either <code>SwingConstants.VERTICAL</code>
	*          or <code>SwingConstants.HORIZONTAL</code>
	* @param direction less than zero to scroll up/left,
	*          greater than zero for down/right
	* @return the "unit" increment for scrolling in the specified direction
	* @see JScrollBar#setUnitIncrement(int)
	*/
	@:overload public function getScrollableUnitIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* Returns the amount for a block increment, which is the height or
	* width of <code>visibleRect</code>, based on <code>orientation</code>.
	*
	* @param visibleRect the view area visible within the viewport
	* @param orientation either <code>SwingConstants.VERTICAL</code>
	*          or <code>SwingConstants.HORIZONTAL</code>
	* @param direction less than zero to scroll up/left,
	*          greater than zero for down/right.
	* @return the "block" increment for scrolling in the specified direction
	* @see JScrollBar#setBlockIncrement(int)
	*/
	@:overload public function getScrollableBlockIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* Returns false to indicate that the width of the viewport does not
	* determine the width of the table, unless the preferred width of
	* the tree is smaller than the viewports width.  In other words:
	* ensure that the tree is never smaller than its viewport.
	*
	* @return whether the tree should track the width of the viewport
	* @see Scrollable#getScrollableTracksViewportWidth
	*/
	@:overload public function getScrollableTracksViewportWidth() : Bool;
	
	/**
	* Returns false to indicate that the height of the viewport does not
	* determine the height of the table, unless the preferred height
	* of the tree is smaller than the viewports height.  In other words:
	* ensure that the tree is never smaller than its viewport.
	*
	* @return whether the tree should track the height of the viewport
	* @see Scrollable#getScrollableTracksViewportHeight
	*/
	@:overload public function getScrollableTracksViewportHeight() : Bool;
	
	/**
	* Sets the expanded state of this <code>JTree</code>.
	* If <code>state</code> is
	* true, all parents of <code>path</code> and path are marked as
	* expanded. If <code>state</code> is false, all parents of
	* <code>path</code> are marked EXPANDED, but <code>path</code> itself
	* is marked collapsed.<p>
	* This will fail if a <code>TreeWillExpandListener</code> vetos it.
	*/
	@:overload private function setExpandedState(path : javax.swing.tree.TreePath, state : Bool) : Void;
	
	/**
	* Returns an <code>Enumeration</code> of <code>TreePaths</code>
	* that have been expanded that
	* are descendants of <code>parent</code>.
	*/
	@:overload private function getDescendantToggledPaths(parent : javax.swing.tree.TreePath) : java.util.Enumeration<javax.swing.tree.TreePath>;
	
	/**
	* Removes any descendants of the <code>TreePaths</code> in
	* <code>toRemove</code>
	* that have been expanded.
	*
	* @param toRemove an enumeration of the paths to remove; a value of
	*        {@code null} is ignored
	* @throws ClassCastException if {@code toRemove} contains an
	*         element that is not a {@code TreePath}; {@code null}
	*         values are ignored
	*/
	@:overload private function removeDescendantToggledPaths(toRemove : java.util.Enumeration<javax.swing.tree.TreePath>) : Void;
	
	/**
	* Clears the cache of toggled tree paths. This does NOT send out
	* any <code>TreeExpansionListener</code> events.
	*/
	@:overload private function clearToggledPaths() : Void;
	
	/**
	* Creates and returns an instance of <code>TreeModelHandler</code>.
	* The returned
	* object is responsible for updating the expanded state when the
	* <code>TreeModel</code> changes.
	* <p>
	* For more information on what expanded state means, see the
	* <a href=#jtree_description>JTree description</a> above.
	*/
	@:overload private function createTreeModelListener() : javax.swing.event.TreeModelListener;
	
	/**
	* Removes any paths in the selection that are descendants of
	* <code>path</code>. If <code>includePath</code> is true and
	* <code>path</code> is selected, it will be removed from the selection.
	*
	* @return true if a descendant was selected
	* @since 1.3
	*/
	@:require(java3) @:overload private function removeDescendantSelectedPaths(path : javax.swing.tree.TreePath, includePath : Bool) : Bool;
	
	/**
	* Returns a string representation of this <code>JTree</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JTree</code>.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JTree.
	* For JTrees, the AccessibleContext takes the form of an
	* AccessibleJTree.
	* A new AccessibleJTree instance is created if necessary.
	*
	* @return an AccessibleJTree that serves as the
	*         AccessibleContext of this JTree
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* A subclass of <code>TransferHandler.DropLocation</code> representing
* a drop location for a <code>JTree</code>.
*
* @see #getDropLocation
* @since 1.6
*/
@:require(java6) @:native('javax$swing$JTree$DropLocation') extern class JTree_DropLocation extends javax.swing.TransferHandler.TransferHandler_DropLocation
{
	/**
	* Returns the index where the dropped data should be inserted
	* with respect to the path returned by <code>getPath()</code>.
	* <p>
	* For drop modes <code>DropMode.USE_SELECTION</code> and
	* <code>DropMode.ON</code>, this index is unimportant (and it will
	* always be <code>-1</code>) as the only interesting data is the
	* path over which the drop operation occurred.
	* <p>
	* For drop mode <code>DropMode.INSERT</code>, this index
	* indicates the index at which the data should be inserted into
	* the parent path represented by <code>getPath()</code>.
	* <code>-1</code> indicates that the drop occurred over the
	* parent itself, and in most cases should be treated as inserting
	* into either the beginning or the end of the parent's list of
	* children.
	* <p>
	* For <code>DropMode.ON_OR_INSERT</code>, this value will be
	* an insert index, as described above, or <code>-1</code> if
	* the drop occurred over the path itself.
	*
	* @return the child index
	* @see #getPath
	*/
	@:overload public function getChildIndex() : Int;
	
	/**
	* Returns the path where dropped data should be placed in the
	* tree.
	* <p>
	* Interpretation of this value depends on the drop mode set on the
	* component. If the drop mode is <code>DropMode.USE_SELECTION</code>
	* or <code>DropMode.ON</code>, the return value is the path in the
	* tree over which the data has been (or will be) dropped.
	* <code>null</code> indicates that the drop is over empty space,
	* not associated with a particular path.
	* <p>
	* If the drop mode is <code>DropMode.INSERT</code>, the return value
	* refers to the path that should become the parent of the new data,
	* in which case <code>getChildIndex()</code> indicates where the
	* new item should be inserted into this parent path. A
	* <code>null</code> path indicates that no parent path has been
	* determined, which can happen for multiple reasons:
	* <ul>
	*    <li>The tree has no model
	*    <li>There is no root in the tree
	*    <li>The root is collapsed
	*    <li>The root is a leaf node
	* </ul>
	* It is up to the developer to decide if and how they wish to handle
	* the <code>null</code> case.
	* <p>
	* If the drop mode is <code>DropMode.ON_OR_INSERT</code>,
	* <code>getChildIndex</code> can be used to determine whether the
	* drop is on top of the path itself (<code>-1</code>) or the index
	* at which it should be inserted into the path (values other than
	* <code>-1</code>).
	*
	* @return the drop path
	* @see #getChildIndex
	*/
	@:overload public function getPath() : javax.swing.tree.TreePath;
	
	/**
	* Returns a string representation of this drop location.
	* This method is intended to be used for debugging purposes,
	* and the content and format of the returned string may vary
	* between implementations.
	*
	* @return a string representation of this drop location
	*/
	@:overload override public function toString() : String;
	
	
}
@:native('javax$swing$JTree$TreeTimer') @:internal extern class JTree_TreeTimer extends java.util.Timer
{
	@:overload public function new() : Void;
	
	@:overload public function fireActionPerformed(ae : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* <code>EmptySelectionModel</code> is a <code>TreeSelectionModel</code>
* that does not allow anything to be selected.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JTree$EmptySelectionModel') extern class JTree_EmptySelectionModel extends javax.swing.tree.DefaultTreeSelectionModel
{
	/**
	* Returns the single instance of {@code EmptySelectionModel}.
	*
	* @return single instance of {@code EmptySelectionModel}
	*/
	@:overload public static function sharedInstance() : JTree_EmptySelectionModel;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param paths the paths to select; this is ignored
	*/
	@:overload override public function setSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param paths the paths to add to the selection; this is ignored
	*/
	@:overload override public function addSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param paths the paths to remove; this is ignored
	*/
	@:overload override public function removeSelectionPaths(paths : java.NativeArray<javax.swing.tree.TreePath>) : Void;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param mode the selection mode; this is ignored
	* @since 1.7
	*/
	@:require(java7) @:overload override public function setSelectionMode(mode : Int) : Void;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param mapper the {@code RowMapper} instance; this is ignored
	* @since 1.7
	*/
	@:require(java7) @:overload override public function setRowMapper(mapper : javax.swing.tree.RowMapper) : Void;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param listener the listener to add; this is ignored
	* @since 1.7
	*/
	@:require(java7) @:overload override public function addTreeSelectionListener(listener : javax.swing.event.TreeSelectionListener) : Void;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param listener the listener to remove; this is ignored
	* @since 1.7
	*/
	@:require(java7) @:overload override public function removeTreeSelectionListener(listener : javax.swing.event.TreeSelectionListener) : Void;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param listener the listener to add; this is ignored
	* @since 1.7
	*/
	@:require(java7) @:overload override public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* This is overriden to do nothing; {@code EmptySelectionModel}
	* does not allow a selection.
	*
	* @param listener the listener to remove; this is ignored
	* @since 1.7
	*/
	@:require(java7) @:overload override public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	
}
/**
* Handles creating a new <code>TreeSelectionEvent</code> with the
* <code>JTree</code> as the
* source and passing it off to all the listeners.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JTree$TreeSelectionRedirector') extern class JTree_TreeSelectionRedirector implements java.io.Serializable implements javax.swing.event.TreeSelectionListener
{
	/**
	* Invoked by the <code>TreeSelectionModel</code> when the
	* selection changes.
	*
	* @param e the <code>TreeSelectionEvent</code> generated by the
	*              <code>TreeSelectionModel</code>
	*/
	@:overload public function valueChanged(e : javax.swing.event.TreeSelectionEvent) : Void;
	
	
}
/**
* Listens to the model and updates the <code>expandedState</code>
* accordingly when nodes are removed, or changed.
*/
@:native('javax$swing$JTree$TreeModelHandler') extern class JTree_TreeModelHandler implements javax.swing.event.TreeModelListener
{
	@:overload public function treeNodesChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeNodesInserted(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeStructureChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	@:overload public function treeNodesRemoved(e : javax.swing.event.TreeModelEvent) : Void;
	
	
}
/**
* <code>DynamicUtilTreeNode</code> can wrap
* vectors/hashtables/arrays/strings and
* create the appropriate children tree nodes as necessary. It is
* dynamic in that it will only create the children as necessary.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JTree$DynamicUtilTreeNode') extern class JTree_DynamicUtilTreeNode extends javax.swing.tree.DefaultMutableTreeNode
{
	/**
	* Does the this <code>JTree</code> have children?
	* This property is currently not implemented.
	*/
	private var hasChildren : Bool;
	
	/** Value to create children with. */
	private var childValue : Dynamic;
	
	/** Have the children been loaded yet? */
	private var loadedChildren : Bool;
	
	/**
	* Adds to parent all the children in <code>children</code>.
	* If <code>children</code> is an array or vector all of its
	* elements are added is children, otherwise if <code>children</code>
	* is a hashtable all the key/value pairs are added in the order
	* <code>Enumeration</code> returns them.
	*/
	@:overload public static function createChildren(parent : javax.swing.tree.DefaultMutableTreeNode, children : Dynamic) : Void;
	
	/**
	* Creates a node with the specified object as its value and
	* with the specified children. For the node to allow children,
	* the children-object must be an array of objects, a
	* <code>Vector</code>, or a <code>Hashtable</code> -- even
	* if empty. Otherwise, the node is not
	* allowed to have children.
	*
	* @param value  the <code>Object</code> that is the value for the
	*              new node
	* @param children an array of <code>Object</code>s, a
	*              <code>Vector</code>, or a <code>Hashtable</code>
	*              used to create the child nodes; if any other
	*              object is specified, or if the value is
	*              <code>null</code>,
	*              then the node is not allowed to have children
	*/
	@:overload public function new(value : Dynamic, children : Dynamic) : Void;
	
	/**
	* Returns true if this node allows children. Whether the node
	* allows children depends on how it was created.
	*
	* @return true if this node allows children, false otherwise
	* @see #JTree.DynamicUtilTreeNode
	*/
	@:overload override public function isLeaf() : Bool;
	
	/**
	* Returns the number of child nodes.
	*
	* @return the number of child nodes
	*/
	@:overload override public function getChildCount() : Int;
	
	/**
	* Loads the children based on <code>childValue</code>.
	* If <code>childValue</code> is a <code>Vector</code>
	* or array each element is added as a child,
	* if <code>childValue</code> is a <code>Hashtable</code>
	* each key/value pair is added in the order that
	* <code>Enumeration</code> returns the keys.
	*/
	@:overload private function loadChildren() : Void;
	
	/**
	* Subclassed to load the children, if necessary.
	*/
	@:overload override public function getChildAt(index : Int) : javax.swing.tree.TreeNode;
	
	/**
	* Subclassed to load the children, if necessary.
	*/
	@:overload override public function children() : java.util.Enumeration<Dynamic>;
	
	
}
/**
* This class implements accessibility support for the
* <code>JTree</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to tree user-interface elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JTree$AccessibleJTree') extern class JTree_AccessibleJTree extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.accessibility.AccessibleSelection implements javax.swing.event.TreeSelectionListener implements javax.swing.event.TreeModelListener implements javax.swing.event.TreeExpansionListener
{
	@:overload public function new() : Void;
	
	/**
	* Tree Selection Listener value change method. Used to fire the
	* property change
	*
	* @param e ListSelectionEvent
	*
	*/
	@:overload public function valueChanged(e : javax.swing.event.TreeSelectionEvent) : Void;
	
	/**
	* Fire a visible data property change notification.
	* A 'visible' data property is one that represents
	* something about the way the component appears on the
	* display, where that appearance isn't bound to any other
	* property. It notifies screen readers  that the visual
	* appearance of the component has changed, so they can
	* notify the user.
	*/
	@:overload public function fireVisibleDataPropertyChange() : Void;
	
	/**
	* Tree Model Node change notification.
	*
	* @param e  a Tree Model event
	*/
	@:overload public function treeNodesChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* Tree Model Node change notification.
	*
	* @param e  a Tree node insertion event
	*/
	@:overload public function treeNodesInserted(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* Tree Model Node change notification.
	*
	* @param e  a Tree node(s) removal event
	*/
	@:overload public function treeNodesRemoved(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* Tree Model structure change change notification.
	*
	* @param e  a Tree Model event
	*/
	@:overload public function treeStructureChanged(e : javax.swing.event.TreeModelEvent) : Void;
	
	/**
	* Tree Collapsed notification.
	*
	* @param e  a TreeExpansionEvent
	*/
	@:overload public function treeCollapsed(e : javax.swing.event.TreeExpansionEvent) : Void;
	
	/**
	* Tree Model Expansion notification.
	*
	* @param e  a Tree node insertion event
	*/
	@:overload public function treeExpanded(e : javax.swing.event.TreeExpansionEvent) : Void;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Returns the <code>Accessible</code> child, if one exists,
	* contained at the local coordinate <code>Point</code>.
	* Otherwise returns <code>null</code>.
	*
	* @param p point in local coordinates of this <code>Accessible</code>
	* @return the <code>Accessible</code>, if it exists,
	*    at the specified location; else <code>null</code>
	*/
	@:overload override public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of top-level children nodes of this
	* JTree.  Each of these nodes may in turn have children nodes.
	*
	* @return the number of accessible children nodes in the tree.
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Return the nth Accessible child of the object.
	*
	* @param i zero-based index of child
	* @return the nth Accessible child of the object
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Get the index of this object in its accessible parent.
	*
	* @return the index of this object in its parent.  Since a JTree
	* top-level object does not have an accessible parent.
	* @see #getAccessibleParent
	*/
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Get the AccessibleSelection associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleSelection interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Returns the number of items currently selected.
	* If no items are selected, the return value will be 0.
	*
	* @return the number of items currently selected.
	*/
	@:overload public function getAccessibleSelectionCount() : Int;
	
	/**
	* Returns an Accessible representing the specified selected item
	* in the object.  If there isn't a selection, or there are
	* fewer items selected than the integer passed in, the return
	* value will be null.
	*
	* @param i the zero-based index of selected items
	* @return an Accessible containing the selected item
	*/
	@:overload public function getAccessibleSelection(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns true if the current child of this object is selected.
	*
	* @param i the zero-based index of the child in this Accessible object.
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function isAccessibleChildSelected(i : Int) : Bool;
	
	/**
	* Adds the specified selected item in the object to the object's
	* selection.  If the object supports multiple selections,
	* the specified item is added to any existing selection, otherwise
	* it replaces any existing selection in the object.  If the
	* specified item is already selected, this method has no effect.
	*
	* @param i the zero-based index of selectable items
	*/
	@:overload public function addAccessibleSelection(i : Int) : Void;
	
	/**
	* Removes the specified selected item in the object from the object's
	* selection.  If the specified item isn't currently selected, this
	* method has no effect.
	*
	* @param i the zero-based index of selectable items
	*/
	@:overload public function removeAccessibleSelection(i : Int) : Void;
	
	/**
	* Clears the selection in the object, so that nothing in the
	* object is selected.
	*/
	@:overload public function clearAccessibleSelection() : Void;
	
	/**
	* Causes every selected item in the object to be selected
	* if the object supports multiple selections.
	*/
	@:overload public function selectAllAccessibleSelection() : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JTree</code> child.  It provides an implementation of the
* Java Accessibility API appropriate to tree nodes.
*/
@:native('javax$swing$JTree$AccessibleJTree$AccessibleJTreeNode') extern class JTree_AccessibleJTree_AccessibleJTreeNode extends javax.accessibility.AccessibleContext implements javax.accessibility.Accessible implements javax.accessibility.AccessibleComponent implements javax.accessibility.AccessibleSelection implements javax.accessibility.AccessibleAction
{
	/**
	*  Constructs an AccessibleJTreeNode
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(t : JTree, p : javax.swing.tree.TreePath, ap : javax.accessibility.Accessible) : Void;
	
	/**
	* Get the AccessibleContext associated with this tree node.
	* In the implementation of the Java Accessibility API for
	* this class, return this object, which is its own
	* AccessibleContext.
	*
	* @return this object
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* Get the accessible name of this object.
	*
	* @return the localized name of the object; null if this
	* object does not have a name
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Set the localized accessible name of this object.
	*
	* @param s the new localized name of the object.
	*/
	@:overload override public function setAccessibleName(s : String) : Void;
	
	/**
	* Get the accessible description of this object.
	*
	* @return the localized description of the object; null if
	* this object does not have a description
	*/
	@:overload override public function getAccessibleDescription() : String;
	
	/**
	* Set the accessible description of this object.
	*
	* @param s the new localized description of the object
	*/
	@:overload override public function setAccessibleDescription(s : String) : Void;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the state set of this object.
	*
	* @return an instance of AccessibleStateSet containing the
	* current state set of the object
	* @see AccessibleState
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Get the Accessible parent of this object.
	*
	* @return the Accessible parent of this object; null if this
	* object does not have an Accessible parent
	*/
	@:overload override public function getAccessibleParent() : javax.accessibility.Accessible;
	
	/**
	* Get the index of this object in its accessible parent.
	*
	* @return the index of this object in its parent; -1 if this
	* object does not have an accessible parent.
	* @see #getAccessibleParent
	*/
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children in the object.
	*
	* @return the number of accessible children in the object.
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Return the specified Accessible child of the object.
	*
	* @param i zero-based index of child
	* @return the Accessible child of the object
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Gets the locale of the component. If the component does not have
	* a locale, then the locale of its parent is returned.
	*
	* @return This component's locale. If this component does not have
	* a locale, the locale of its parent is returned.
	* @exception IllegalComponentStateException
	* If the Component does not have its own locale and has not yet
	* been added to a containment hierarchy such that the locale can be
	* determined from the containing parent.
	* @see #setLocale
	*/
	@:overload override public function getLocale() : java.util.Locale;
	
	/**
	* Add a PropertyChangeListener to the listener list.
	* The listener is registered for all properties.
	*
	* @param l  The PropertyChangeListener to be added
	*/
	@:overload override public function addPropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Remove a PropertyChangeListener from the listener list.
	* This removes a PropertyChangeListener that was registered
	* for all properties.
	*
	* @param l  The PropertyChangeListener to be removed
	*/
	@:overload override public function removePropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Get the AccessibleAction associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleAction interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Get the AccessibleComponent associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleComponent interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleComponent() : javax.accessibility.AccessibleComponent;
	
	/**
	* Get the AccessibleSelection associated with this object if one
	* exists.  Otherwise return null.
	*
	* @return the AccessibleSelection, or null
	*/
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Get the AccessibleText associated with this object if one
	* exists.  Otherwise return null.
	*
	* @return the AccessibleText, or null
	*/
	@:overload override public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Get the AccessibleValue associated with this object if one
	* exists.  Otherwise return null.
	*
	* @return the AccessibleValue, or null
	*/
	@:overload override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Get the background color of this object.
	*
	* @return the background color, if supported, of the object;
	* otherwise, null
	*/
	@:overload public function getBackground() : java.awt.Color;
	
	/**
	* Set the background color of this object.
	*
	* @param c the new Color for the background
	*/
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Get the foreground color of this object.
	*
	* @return the foreground color, if supported, of the object;
	* otherwise, null
	*/
	@:overload public function getForeground() : java.awt.Color;
	
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	@:overload public function getCursor() : java.awt.Cursor;
	
	@:overload public function setCursor(c : java.awt.Cursor) : Void;
	
	@:overload public function getFont() : java.awt.Font;
	
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	@:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload public function isEnabled() : Bool;
	
	@:overload public function setEnabled(b : Bool) : Void;
	
	@:overload public function isVisible() : Bool;
	
	@:overload public function setVisible(b : Bool) : Void;
	
	@:overload public function isShowing() : Bool;
	
	@:overload public function contains(p : java.awt.Point) : Bool;
	
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	@:overload private function getLocationInJTree() : java.awt.Point;
	
	@:overload public function getLocation() : java.awt.Point;
	
	@:overload public function setLocation(p : java.awt.Point) : Void;
	
	@:overload public function getBounds() : java.awt.Rectangle;
	
	@:overload public function setBounds(r : java.awt.Rectangle) : Void;
	
	@:overload public function getSize() : java.awt.Dimension;
	
	@:overload public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the <code>Accessible</code> child, if one exists,
	* contained at the local coordinate <code>Point</code>.
	* Otherwise returns <code>null</code>.
	*
	* @param p point in local coordinates of this
	*    <code>Accessible</code>
	* @return the <code>Accessible</code>, if it exists,
	*    at the specified location; else <code>null</code>
	*/
	@:overload public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	@:overload public function isFocusTraversable() : Bool;
	
	@:overload public function requestFocus() : Void;
	
	@:overload public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	@:overload public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Returns the number of items currently selected.
	* If no items are selected, the return value will be 0.
	*
	* @return the number of items currently selected.
	*/
	@:overload public function getAccessibleSelectionCount() : Int;
	
	/**
	* Returns an Accessible representing the specified selected item
	* in the object.  If there isn't a selection, or there are
	* fewer items selected than the integer passed in, the return
	* value will be null.
	*
	* @param i the zero-based index of selected items
	* @return an Accessible containing the selected item
	*/
	@:overload public function getAccessibleSelection(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns true if the current child of this object is selected.
	*
	* @param i the zero-based index of the child in this Accessible
	* object.
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function isAccessibleChildSelected(i : Int) : Bool;
	
	/**
	* Adds the specified selected item in the object to the object's
	* selection.  If the object supports multiple selections,
	* the specified item is added to any existing selection, otherwise
	* it replaces any existing selection in the object.  If the
	* specified item is already selected, this method has no effect.
	*
	* @param i the zero-based index of selectable items
	*/
	@:overload public function addAccessibleSelection(i : Int) : Void;
	
	/**
	* Removes the specified selected item in the object from the
	* object's
	* selection.  If the specified item isn't currently selected, this
	* method has no effect.
	*
	* @param i the zero-based index of selectable items
	*/
	@:overload public function removeAccessibleSelection(i : Int) : Void;
	
	/**
	* Clears the selection in the object, so that nothing in the
	* object is selected.
	*/
	@:overload public function clearAccessibleSelection() : Void;
	
	/**
	* Causes every selected item in the object to be selected
	* if the object supports multiple selections.
	*/
	@:overload public function selectAllAccessibleSelection() : Void;
	
	/**
	* Returns the number of accessible actions available in this
	* tree node.  If this node is not a leaf, there is at least
	* one action (toggle expand), in addition to any available
	* on the object behind the TreeCellRenderer.
	*
	* @return the number of Actions in this object
	*/
	@:overload public function getAccessibleActionCount() : Int;
	
	/**
	* Return a description of the specified action of the tree node.
	* If this node is not a leaf, there is at least one action
	* description (toggle expand), in addition to any available
	* on the object behind the TreeCellRenderer.
	*
	* @param i zero-based index of the actions
	* @return a description of the action
	*/
	@:overload public function getAccessibleActionDescription(i : Int) : String;
	
	/**
	* Perform the specified Action on the tree node.  If this node
	* is not a leaf, there is at least one action which can be
	* done (toggle expand), in addition to any available on the
	* object behind the TreeCellRenderer.
	*
	* @param i zero-based index of actions
	* @return true if the the action was performed; else false.
	*/
	@:overload public function doAccessibleAction(i : Int) : Bool;
	
	
}

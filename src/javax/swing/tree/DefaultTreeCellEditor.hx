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
extern class DefaultTreeCellEditor implements java.awt.event.ActionListener implements javax.swing.tree.TreeCellEditor implements javax.swing.event.TreeSelectionListener
{
	/** Editor handling the editing. */
	private var realEditor : javax.swing.tree.TreeCellEditor;
	
	/** Renderer, used to get border and offsets from. */
	private var renderer : javax.swing.tree.DefaultTreeCellRenderer;
	
	/** Editing container, will contain the <code>editorComponent</code>. */
	private var editingContainer : java.awt.Container;
	
	/**
	* Component used in editing, obtained from the
	* <code>editingContainer</code>.
	*/
	@:transient private var editingComponent : java.awt.Component;
	
	/**
	* As of Java 2 platform v1.4 this field should no longer be used. If
	* you wish to provide similar behavior you should directly override
	* <code>isCellEditable</code>.
	*/
	private var canEdit : Bool;
	
	/**
	* Used in editing. Indicates x position to place
	* <code>editingComponent</code>.
	*/
	@:transient private var offset : Int;
	
	/** <code>JTree</code> instance listening too. */
	@:transient private var tree : javax.swing.JTree;
	
	/** Last path that was selected. */
	@:transient private var lastPath : javax.swing.tree.TreePath;
	
	/** Used before starting the editing session. */
	@:transient private var timer : javax.swing.Timer;
	
	/**
	* Row that was last passed into
	* <code>getTreeCellEditorComponent</code>.
	*/
	@:transient private var lastRow : Int;
	
	/** True if the border selection color should be drawn. */
	private var borderSelectionColor : java.awt.Color;
	
	/** Icon to use when editing. */
	@:transient private var editingIcon : javax.swing.Icon;
	
	/**
	* Font to paint with, <code>null</code> indicates
	* font of renderer is to be used.
	*/
	private var font : java.awt.Font;
	
	/**
	* Constructs a <code>DefaultTreeCellEditor</code>
	* object for a JTree using the specified renderer and
	* a default editor. (Use this constructor for normal editing.)
	*
	* @param tree      a <code>JTree</code> object
	* @param renderer  a <code>DefaultTreeCellRenderer</code> object
	*/
	@:overload public function new(tree : javax.swing.JTree, renderer : javax.swing.tree.DefaultTreeCellRenderer) : Void;
	
	/**
	* Constructs a <code>DefaultTreeCellEditor</code>
	* object for a <code>JTree</code> using the
	* specified renderer and the specified editor. (Use this constructor
	* for specialized editing.)
	*
	* @param tree      a <code>JTree</code> object
	* @param renderer  a <code>DefaultTreeCellRenderer</code> object
	* @param editor    a <code>TreeCellEditor</code> object
	*/
	@:overload public function new(tree : javax.swing.JTree, renderer : javax.swing.tree.DefaultTreeCellRenderer, editor : javax.swing.tree.TreeCellEditor) : Void;
	
	/**
	* Sets the color to use for the border.
	* @param newColor the new border color
	*/
	@:overload public function setBorderSelectionColor(newColor : java.awt.Color) : Void;
	
	/**
	* Returns the color the border is drawn.
	* @return the border selection color
	*/
	@:overload public function getBorderSelectionColor() : java.awt.Color;
	
	/**
	* Sets the font to edit with. <code>null</code> indicates
	* the renderers font should be used. This will NOT
	* override any font you have set in the editor
	* the receiver was instantied with. If <code>null</code>
	* for an editor was passed in a default editor will be
	* created that will pick up this font.
	*
	* @param font  the editing <code>Font</code>
	* @see #getFont
	*/
	@:overload public function setFont(font : java.awt.Font) : Void;
	
	/**
	* Gets the font used for editing.
	*
	* @return the editing <code>Font</code>
	* @see #setFont
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/**
	* Configures the editor.  Passed onto the <code>realEditor</code>.
	*/
	@:overload public function getTreeCellEditorComponent(tree : javax.swing.JTree, value : Dynamic, isSelected : Bool, expanded : Bool, leaf : Bool, row : Int) : java.awt.Component;
	
	/**
	* Returns the value currently being edited.
	* @return the value currently being edited
	*/
	@:overload public function getCellEditorValue() : Dynamic;
	
	/**
	* If the <code>realEditor</code> returns true to this
	* message, <code>prepareForEditing</code>
	* is messaged and true is returned.
	*/
	@:overload public function isCellEditable(event : java.util.EventObject) : Bool;
	
	/**
	* Messages the <code>realEditor</code> for the return value.
	*/
	@:overload public function shouldSelectCell(event : java.util.EventObject) : Bool;
	
	/**
	* If the <code>realEditor</code> will allow editing to stop,
	* the <code>realEditor</code> is removed and true is returned,
	* otherwise false is returned.
	*/
	@:overload public function stopCellEditing() : Bool;
	
	/**
	* Messages <code>cancelCellEditing</code> to the
	* <code>realEditor</code> and removes it from this instance.
	*/
	@:overload public function cancelCellEditing() : Void;
	
	/**
	* Adds the <code>CellEditorListener</code>.
	* @param l the listener to be added
	*/
	@:overload public function addCellEditorListener(l : javax.swing.event.CellEditorListener) : Void;
	
	/**
	* Removes the previously added <code>CellEditorListener</code>.
	* @param l the listener to be removed
	*/
	@:overload public function removeCellEditorListener(l : javax.swing.event.CellEditorListener) : Void;
	
	/**
	* Returns an array of all the <code>CellEditorListener</code>s added
	* to this DefaultTreeCellEditor with addCellEditorListener().
	*
	* @return all of the <code>CellEditorListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getCellEditorListeners() : java.NativeArray<javax.swing.event.CellEditorListener>;
	
	/**
	* Resets <code>lastPath</code>.
	*/
	@:overload public function valueChanged(e : javax.swing.event.TreeSelectionEvent) : Void;
	
	/**
	* Messaged when the timer fires, this will start the editing
	* session.
	*/
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* Sets the tree currently editing for. This is needed to add
	* a selection listener.
	* @param newTree the new tree to be edited
	*/
	@:overload private function setTree(newTree : javax.swing.JTree) : Void;
	
	/**
	* Returns true if <code>event</code> is a <code>MouseEvent</code>
	* and the click count is 1.
	* @param event  the event being studied
	*/
	@:overload private function shouldStartEditingTimer(event : java.util.EventObject) : Bool;
	
	/**
	* Starts the editing timer.
	*/
	@:overload private function startEditingTimer() : Void;
	
	/**
	* Returns true if <code>event</code> is <code>null</code>,
	* or it is a <code>MouseEvent</code> with a click count > 2
	* and <code>inHitRegion</code> returns true.
	* @param event the event being studied
	*/
	@:overload private function canEditImmediately(event : java.util.EventObject) : Bool;
	
	/**
	* Returns true if the passed in location is a valid mouse location
	* to start editing from. This is implemented to return false if
	* <code>x</code> is <= the width of the icon and icon gap displayed
	* by the renderer. In other words this returns true if the user
	* clicks over the text part displayed by the renderer, and false
	* otherwise.
	* @param x the x-coordinate of the point
	* @param y the y-coordinate of the point
	* @return true if the passed in location is a valid mouse location
	*/
	@:overload private function inHitRegion(x : Int, y : Int) : Bool;
	
	@:overload private function determineOffset(tree : javax.swing.JTree, value : Dynamic, isSelected : Bool, expanded : Bool, leaf : Bool, row : Int) : Void;
	
	/**
	* Invoked just before editing is to start. Will add the
	* <code>editingComponent</code> to the
	* <code>editingContainer</code>.
	*/
	@:overload private function prepareForEditing() : Void;
	
	/**
	* Creates the container to manage placement of
	* <code>editingComponent</code>.
	*/
	@:overload private function createContainer() : java.awt.Container;
	
	/**
	* This is invoked if a <code>TreeCellEditor</code>
	* is not supplied in the constructor.
	* It returns a <code>TextField</code> editor.
	* @return a new <code>TextField</code> editor
	*/
	@:overload private function createTreeCellEditor() : javax.swing.tree.TreeCellEditor;
	
	
}
/**
* <code>TextField</code> used when no editor is supplied.
* This textfield locks into the border it is constructed with.
* It also prefers its parents font over its font. And if the
* renderer is not <code>null</code> and no font
* has been specified the preferred height is that of the renderer.
*/
@:native('javax$swing$tree$DefaultTreeCellEditor$DefaultTextField') extern class DefaultTreeCellEditor_DefaultTextField extends javax.swing.JTextField
{
	/** Border to use. */
	private var border : javax.swing.border.Border;
	
	/**
	* Constructs a
	* <code>DefaultTreeCellEditor.DefaultTextField</code> object.
	*
	* @param border  a <code>Border</code> object
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(border : javax.swing.border.Border) : Void;
	
	/**
	* Sets the border of this component.<p>
	* This is a bound property.
	*
	* @param border the border to be rendered for this component
	* @see Border
	* @see CompoundBorder
	* @beaninfo
	*        bound: true
	*    preferred: true
	*    attribute: visualUpdate true
	*  description: The component's border.
	*/
	@:overload override public function setBorder(border : javax.swing.border.Border) : Void;
	
	/**
	* Overrides <code>JComponent.getBorder</code> to
	* returns the current border.
	*/
	@:overload override public function getBorder() : javax.swing.border.Border;
	
	@:overload override public function getFont() : java.awt.Font;
	
	/**
	* Overrides <code>JTextField.getPreferredSize</code> to
	* return the preferred size based on current font, if set,
	* or else use renderer's font.
	* @return a <code>Dimension</code> object containing
	*   the preferred size
	*/
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	
}
/**
* Container responsible for placing the <code>editingComponent</code>.
*/
@:native('javax$swing$tree$DefaultTreeCellEditor$EditorContainer') extern class DefaultTreeCellEditor_EditorContainer extends java.awt.Container
{
	/**
	* Constructs an <code>EditorContainer</code> object.
	*/
	@:overload public function new() : Void;
	
	@:overload public function new() : Void;
	
	/**
	* Overrides <code>Container.paint</code> to paint the node's
	* icon and use the selection color for the background.
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Lays out this <code>Container</code>.  If editing,
	* the editor will be placed at
	* <code>offset</code> in the x direction and 0 for y.
	*/
	@:overload override public function doLayout() : Void;
	
	/**
	* Returns the preferred size for the <code>Container</code>.
	* This will be at least preferred size of the editor plus
	* <code>offset</code>.
	* @return a <code>Dimension</code> containing the preferred
	*   size for the <code>Container</code>; if
	*   <code>editingComponent</code> is <code>null</code> the
	*   <code>Dimension</code> returned is 0, 0
	*/
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	
}

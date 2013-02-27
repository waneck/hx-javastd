package javax.swing;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultCellEditor extends javax.swing.AbstractCellEditor implements javax.swing.table.TableCellEditor implements javax.swing.tree.TreeCellEditor
{
	/** The Swing component being edited. */
	private var editorComponent : javax.swing.JComponent;
	
	/**
	* The delegate class which handles all methods sent from the
	* <code>CellEditor</code>.
	*/
	private var delegate : DefaultCellEditor_EditorDelegate;
	
	/**
	* An integer specifying the number of clicks needed to start editing.
	* Even if <code>clickCountToStart</code> is defined as zero, it
	* will not initiate until a click occurs.
	*/
	private var clickCountToStart : Int;
	
	/**
	* Constructs a <code>DefaultCellEditor</code> that uses a text field.
	*
	* @param textField  a <code>JTextField</code> object
	*/
	@:overload public function new(textField : javax.swing.JTextField) : Void;
	
	/**
	* Constructs a <code>DefaultCellEditor</code> object that uses a check box.
	*
	* @param checkBox  a <code>JCheckBox</code> object
	*/
	@:overload public function new(checkBox : javax.swing.JCheckBox) : Void;
	
	/**
	* Constructs a <code>DefaultCellEditor</code> object that uses a
	* combo box.
	*
	* @param comboBox  a <code>JComboBox</code> object
	*/
	@:overload public function new(comboBox : javax.swing.JComboBox<Dynamic>) : Void;
	
	/**
	* Returns a reference to the editor component.
	*
	* @return the editor <code>Component</code>
	*/
	@:overload public function getComponent() : java.awt.Component;
	
	/**
	* Specifies the number of clicks needed to start editing.
	*
	* @param count  an int specifying the number of clicks needed to start editing
	* @see #getClickCountToStart
	*/
	@:overload public function setClickCountToStart(count : Int) : Void;
	
	/**
	* Returns the number of clicks needed to start editing.
	* @return the number of clicks needed to start editing
	*/
	@:overload public function getClickCountToStart() : Int;
	
	/**
	* Forwards the message from the <code>CellEditor</code> to
	* the <code>delegate</code>.
	* @see EditorDelegate#getCellEditorValue
	*/
	@:overload override public function getCellEditorValue() : Dynamic;
	
	/**
	* Forwards the message from the <code>CellEditor</code> to
	* the <code>delegate</code>.
	* @see EditorDelegate#isCellEditable(EventObject)
	*/
	@:overload override public function isCellEditable(anEvent : java.util.EventObject) : Bool;
	
	/**
	* Forwards the message from the <code>CellEditor</code> to
	* the <code>delegate</code>.
	* @see EditorDelegate#shouldSelectCell(EventObject)
	*/
	@:overload override public function shouldSelectCell(anEvent : java.util.EventObject) : Bool;
	
	/**
	* Forwards the message from the <code>CellEditor</code> to
	* the <code>delegate</code>.
	* @see EditorDelegate#stopCellEditing
	*/
	@:overload override public function stopCellEditing() : Bool;
	
	/**
	* Forwards the message from the <code>CellEditor</code> to
	* the <code>delegate</code>.
	* @see EditorDelegate#cancelCellEditing
	*/
	@:overload override public function cancelCellEditing() : Void;
	
	/** Implements the <code>TreeCellEditor</code> interface. */
	@:overload public function getTreeCellEditorComponent(tree : javax.swing.JTree, value : Dynamic, isSelected : Bool, expanded : Bool, leaf : Bool, row : Int) : java.awt.Component;
	
	/** Implements the <code>TableCellEditor</code> interface. */
	@:overload public function getTableCellEditorComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, row : Int, column : Int) : java.awt.Component;
	
	
}
/**
* The protected <code>EditorDelegate</code> class.
*/
@:native('javax$swing$DefaultCellEditor$EditorDelegate') extern class DefaultCellEditor_EditorDelegate implements java.awt.event.ActionListener implements java.awt.event.ItemListener implements java.io.Serializable
{
	/**  The value of this cell. */
	private var value : Dynamic;
	
	/**
	* Returns the value of this cell.
	* @return the value of this cell
	*/
	@:overload public function getCellEditorValue() : Dynamic;
	
	/**
	* Sets the value of this cell.
	* @param value the new value of this cell
	*/
	@:overload public function setValue(value : Dynamic) : Void;
	
	/**
	* Returns true if <code>anEvent</code> is <b>not</b> a
	* <code>MouseEvent</code>.  Otherwise, it returns true
	* if the necessary number of clicks have occurred, and
	* returns false otherwise.
	*
	* @param   anEvent         the event
	* @return  true  if cell is ready for editing, false otherwise
	* @see #setClickCountToStart
	* @see #shouldSelectCell
	*/
	@:overload public function isCellEditable(anEvent : java.util.EventObject) : Bool;
	
	/**
	* Returns true to indicate that the editing cell may
	* be selected.
	*
	* @param   anEvent         the event
	* @return  true
	* @see #isCellEditable
	*/
	@:overload public function shouldSelectCell(anEvent : java.util.EventObject) : Bool;
	
	/**
	* Returns true to indicate that editing has begun.
	*
	* @param anEvent          the event
	*/
	@:overload public function startCellEditing(anEvent : java.util.EventObject) : Bool;
	
	/**
	* Stops editing and
	* returns true to indicate that editing has stopped.
	* This method calls <code>fireEditingStopped</code>.
	*
	* @return  true
	*/
	@:overload public function stopCellEditing() : Bool;
	
	/**
	* Cancels editing.  This method calls <code>fireEditingCanceled</code>.
	*/
	@:overload public function cancelCellEditing() : Void;
	
	/**
	* When an action is performed, editing is ended.
	* @param e the action event
	* @see #stopCellEditing
	*/
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* When an item's state changes, editing is ended.
	* @param e the action event
	* @see #stopCellEditing
	*/
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	
}

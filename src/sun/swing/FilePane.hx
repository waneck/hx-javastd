package sun.swing;
/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
* <b>WARNING:</b> This class is an implementation detail and is only
* public so that it can be used by two packages. You should NOT consider
* this public API.
* <p>
* This component is intended to be used in a subclass of
* javax.swing.plaf.basic.BasicFileChooserUI. It realies heavily on the
* implementation of BasicFileChooserUI, and is intended to be API compatible
* with earlier implementations of MetalFileChooserUI and WindowsFileChooserUI.
*
* @author Leif Samuelsson
*/
extern class FilePane extends javax.swing.JPanel implements java.beans.PropertyChangeListener
{
	@:public @:final @:static public static var ACTION_APPROVE_SELECTION(default, null) : String;
	
	@:public @:final @:static public static var ACTION_CANCEL(default, null) : String;
	
	@:public @:final @:static public static var ACTION_EDIT_FILE_NAME(default, null) : String;
	
	@:public @:final @:static public static var ACTION_REFRESH(default, null) : String;
	
	@:public @:final @:static public static var ACTION_CHANGE_TO_PARENT_DIRECTORY(default, null) : String;
	
	@:public @:final @:static public static var ACTION_NEW_FOLDER(default, null) : String;
	
	@:public @:final @:static public static var ACTION_VIEW_LIST(default, null) : String;
	
	@:public @:final @:static public static var ACTION_VIEW_DETAILS(default, null) : String;
	
	@:public @:static @:final public static var VIEWTYPE_LIST(default, null) : Int;
	
	@:public @:static @:final public static var VIEWTYPE_DETAILS(default, null) : Int;
	
	@:overload @:public public function new(fileChooserUIAccessor : sun.swing.FilePane.FilePane_FileChooserUIAccessor) : Void;
	
	@:overload @:public public function uninstallUI() : Void;
	
	@:overload @:protected private function getFileChooser() : javax.swing.JFileChooser;
	
	@:overload @:protected private function getModel() : javax.swing.plaf.basic.BasicDirectoryModel;
	
	@:overload @:public public function getViewType() : Int;
	
	@:overload @:public public function setViewType(viewType : Int) : Void;
	
	@:overload @:public public function getViewTypeAction(viewType : Int) : javax.swing.Action;
	
	@:overload @:protected private function installDefaults() : Void;
	
	/**
	* Fetches the command list for the FilePane. These commands
	* are useful for binding to events, such as in a keymap.
	*
	* @return the command list
	*/
	@:overload @:public public function getActions() : java.NativeArray<javax.swing.Action>;
	
	@:overload @:protected private function createActionMap() : Void;
	
	@:overload @:public @:static public static function addActionsToMap(map : javax.swing.ActionMap, actions : java.NativeArray<javax.swing.Action>) : Void;
	
	@:overload @:public public function createList() : javax.swing.JPanel;
	
	@:overload @:public public function createDetailsView() : javax.swing.JPanel;
	
	/**
	* Creates a selection listener for the list of files and directories.
	*
	* @return a <code>ListSelectionListener</code>
	*/
	@:overload @:public public function createListSelectionListener() : javax.swing.event.ListSelectionListener;
	
	@:protected private var newFolderAction : javax.swing.Action;
	
	@:overload @:public public function getNewFolderAction() : javax.swing.Action;
	
	/*
	* Listen for filechooser property changes, such as
	* the selected file changing, or the type of the dialog changing.
	*/
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function ensureFileIsVisible(fc : javax.swing.JFileChooser, f : java.io.File) : Void;
	
	@:overload @:public public function rescanCurrentDirectory() : Void;
	
	@:overload @:public public function clearSelection() : Void;
	
	@:overload @:public public function getViewMenu() : javax.swing.JMenu;
	
	@:overload @:public override public function getComponentPopupMenu() : javax.swing.JPopupMenu;
	
	@:overload @:protected private function getMouseHandler() : sun.swing.FilePane.FilePane_Handler;
	
	/**
	* Property to remember whether a directory is currently selected in the UI.
	*
	* @return <code>true</code> iff a directory is currently selected.
	*/
	@:overload @:protected private function isDirectorySelected() : Bool;
	
	/**
	* Property to remember the directory that is currently selected in the UI.
	*
	* @return the value of the <code>directory</code> property
	* @see javax.swing.plaf.basic.BasicFileChooserUI#setDirectory
	*/
	@:overload @:protected private function getDirectory() : java.io.File;
	
	@:overload @:public public function canWrite(f : java.io.File) : Bool;
	
	/**
	* Returns true if specified FileChooser should use ShellFolder
	*/
	@:overload @:public @:static public static function usesShellFolder(chooser : javax.swing.JFileChooser) : Bool;
	
	
}
@:native('sun$swing$FilePane$ViewTypeAction') @:internal extern class FilePane_ViewTypeAction extends javax.swing.AbstractAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This model allows for sorting JList
*/
@:native('sun$swing$FilePane$SortableListModel') @:internal extern class FilePane_SortableListModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.event.TableModelListener implements javax.swing.event.RowSorterListener
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public override public function getElementAt(index : Int) : Dynamic;
	
	@:overload @:public public function tableChanged(e : javax.swing.event.TableModelEvent) : Void;
	
	@:overload @:public public function sorterChanged(e : javax.swing.event.RowSorterEvent) : Void;
	
	
}
@:native('sun$swing$FilePane$DetailsTableModel') @:internal extern class FilePane_DetailsTableModel extends javax.swing.table.AbstractTableModel implements javax.swing.event.ListDataListener
{
	@:overload @:public override public function getRowCount() : Int;
	
	@:overload @:public override public function getColumnCount() : Int;
	
	@:overload @:public override public function getValueAt(row : Int, col : Int) : Dynamic;
	
	@:overload @:public override public function setValueAt(value : Dynamic, row : Int, col : Int) : Void;
	
	@:overload @:public override public function isCellEditable(row : Int, column : Int) : Bool;
	
	@:overload @:public public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function getColumns() : java.NativeArray<sun.awt.shell.ShellFolderColumnInfo>;
	
	
}
@:native('sun$swing$FilePane$DetailsTableRowSorter') @:internal extern class FilePane_DetailsTableRowSorter extends javax.swing.table.TableRowSorter<javax.swing.table.TableModel>
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function updateComparators(columns : java.NativeArray<sun.awt.shell.ShellFolderColumnInfo>) : Void;
	
	@:overload @:public override public function sort() : Void;
	
	@:overload @:public override public function modelStructureChanged() : Void;
	
	
}
@:native('sun$swing$FilePane$DetailsTableRowSorter$SorterModelWrapper') @:internal extern class FilePane_DetailsTableRowSorter_SorterModelWrapper extends javax.swing.DefaultRowSorter.DefaultRowSorter_ModelWrapper<javax.swing.table.TableModel, Null<Int>>
{
	@:overload @:public override public function getModel() : javax.swing.table.TableModel;
	
	@:overload @:public override public function getColumnCount() : Int;
	
	@:overload @:public override public function getRowCount() : Int;
	
	@:overload @:public override public function getValueAt(row : Int, column : Int) : Dynamic;
	
	@:overload @:public override public function getIdentifier(row : Int) : Null<Int>;
	
	
}
/**
* This class sorts directories before files, comparing directory to
* directory and file to file using the wrapped comparator.
*/
@:native('sun$swing$FilePane$DirectoriesFirstComparatorWrapper') @:internal extern class FilePane_DirectoriesFirstComparatorWrapper implements java.util.Comparator<java.io.File>
{
	@:overload @:public public function new(column : Int, comparator : java.util.Comparator<Dynamic>) : Void;
	
	@:overload @:public public function compare(f1 : java.io.File, f2 : java.io.File) : Int;
	
	
}
@:native('sun$swing$FilePane$DetailsTableCellEditor') @:internal extern class FilePane_DetailsTableCellEditor extends javax.swing.DefaultCellEditor
{
	@:overload @:public public function new(tf : javax.swing.JTextField) : Void;
	
	@:overload @:public override public function getTableCellEditorComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, row : Int, column : Int) : java.awt.Component;
	
	
}
@:native('sun$swing$FilePane$DetailsTableCellRenderer') @:internal extern class FilePane_DetailsTableCellRenderer extends javax.swing.table.DefaultTableCellRenderer
{
	@:overload @:public override public function setBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getInsets(i : java.awt.Insets) : java.awt.Insets;
	
	@:overload @:public override public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	
}
@:native('sun$swing$FilePane$AlignableTableHeaderRenderer') @:internal extern class FilePane_AlignableTableHeaderRenderer implements javax.swing.table.TableCellRenderer
{
	@:overload @:public public function new(wrappedRenderer : javax.swing.table.TableCellRenderer) : Void;
	
	@:overload @:public public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	
}
@:native('sun$swing$FilePane$DelayedSelectionUpdater') @:internal extern class FilePane_DelayedSelectionUpdater implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
@:native('sun$swing$FilePane$EditActionListener') @:internal extern class FilePane_EditActionListener implements java.awt.event.ActionListener
{
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('sun$swing$FilePane$FileRenderer') extern class FilePane_FileRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload @:public override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
@:native('sun$swing$FilePane$Handler') @:internal extern class FilePane_Handler implements java.awt.event.MouseListener
{
	@:overload @:public public function mouseClicked(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(evt : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('sun$swing$FilePane$FileChooserUIAccessor') extern interface FilePane_FileChooserUIAccessor
{
	@:overload @:public public function getFileChooser() : javax.swing.JFileChooser;
	
	@:overload @:public public function getModel() : javax.swing.plaf.basic.BasicDirectoryModel;
	
	@:overload @:public public function createList() : javax.swing.JPanel;
	
	@:overload @:public public function createDetailsView() : javax.swing.JPanel;
	
	@:overload @:public public function isDirectorySelected() : Bool;
	
	@:overload @:public public function getDirectory() : java.io.File;
	
	@:overload @:public public function getApproveSelectionAction() : javax.swing.Action;
	
	@:overload @:public public function getChangeToParentDirectoryAction() : javax.swing.Action;
	
	@:overload @:public public function getNewFolderAction() : javax.swing.Action;
	
	@:overload @:public public function createDoubleClickListener(list : javax.swing.JList<Dynamic>) : java.awt.event.MouseListener;
	
	@:overload @:public public function createListSelectionListener() : javax.swing.event.ListSelectionListener;
	
	
}

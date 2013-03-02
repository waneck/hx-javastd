package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
* Windows L&F implementation of a FileChooser.
*
* @author Jeff Dinkins
*/
extern class WindowsFileChooserUI extends javax.swing.plaf.basic.BasicFileChooserUI
{
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new(filechooser : javax.swing.JFileChooser) : Void;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override public function installComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload private function getButtonPanel() : javax.swing.JPanel;
	
	@:overload private function getBottomPanel() : javax.swing.JPanel;
	
	@:overload override private function installStrings(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function installListeners(fc : javax.swing.JFileChooser) : Void;
	
	@:overload private function getActionMap() : javax.swing.ActionMap;
	
	@:overload private function createActionMap() : javax.swing.ActionMap;
	
	@:overload private function createList(fc : javax.swing.JFileChooser) : javax.swing.JPanel;
	
	@:overload private function createDetailsView(fc : javax.swing.JFileChooser) : javax.swing.JPanel;
	
	/**
	* Creates a selection listener for the list of files and directories.
	*
	* @param fc a <code>JFileChooser</code>
	* @return a <code>ListSelectionListener</code>
	*/
	@:overload override public function createListSelectionListener(fc : javax.swing.JFileChooser) : javax.swing.event.ListSelectionListener;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Returns the preferred size of the specified
	* <code>JFileChooser</code>.
	* The preferred size is at least as large,
	* in both height and width,
	* as the preferred size recommended
	* by the file chooser's layout manager.
	*
	* @param c  a <code>JFileChooser</code>
	* @return   a <code>Dimension</code> specifying the preferred
	*           width and height of the file chooser
	*/
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the minimum size of the <code>JFileChooser</code>.
	*
	* @param c  a <code>JFileChooser</code>
	* @return   a <code>Dimension</code> specifying the minimum
	*           width and height of the file chooser
	*/
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the maximum size of the <code>JFileChooser</code>.
	*
	* @param c  a <code>JFileChooser</code>
	* @return   a <code>Dimension</code> specifying the maximum
	*           width and height of the file chooser
	*/
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/*
	* Listen for filechooser property changes, such as
	* the selected file changing, or the type of the dialog changing.
	*/
	@:overload override public function createPropertyChangeListener(fc : javax.swing.JFileChooser) : java.beans.PropertyChangeListener;
	
	@:overload private function removeControlButtons() : Void;
	
	@:overload private function addControlButtons() : Void;
	
	@:overload override public function ensureFileIsVisible(fc : javax.swing.JFileChooser, f : java.io.File) : Void;
	
	@:overload override public function rescanCurrentDirectory(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override public function getFileName() : String;
	
	@:overload override public function setFileName(filename : String) : Void;
	
	/**
	* Property to remember whether a directory is currently selected in the UI.
	* This is normally called by the UI on a selection event.
	*
	* @param directorySelected if a directory is currently selected.
	* @since 1.4
	*/
	@:require(java4) @:overload override private function setDirectorySelected(directorySelected : Bool) : Void;
	
	@:overload override public function getDirectoryName() : String;
	
	@:overload override public function setDirectoryName(dirname : String) : Void;
	
	@:overload private function createDirectoryComboBoxRenderer(fc : javax.swing.JFileChooser) : com.sun.java.swing.plaf.windows.WindowsFileChooserUI.WindowsFileChooserUI_DirectoryComboBoxRenderer;
	
	@:overload private function createDirectoryComboBoxModel(fc : javax.swing.JFileChooser) : com.sun.java.swing.plaf.windows.WindowsFileChooserUI.WindowsFileChooserUI_DirectoryComboBoxModel;
	
	@:overload private function createFilterComboBoxRenderer() : com.sun.java.swing.plaf.windows.WindowsFileChooserUI.WindowsFileChooserUI_FilterComboBoxRenderer;
	
	@:overload private function createFilterComboBoxModel() : com.sun.java.swing.plaf.windows.WindowsFileChooserUI.WindowsFileChooserUI_FilterComboBoxModel;
	
	@:overload public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	@:overload override private function getApproveButton(fc : javax.swing.JFileChooser) : javax.swing.JButton;
	
	@:overload override public function getFileView(fc : javax.swing.JFileChooser) : javax.swing.filechooser.FileView;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$WindowsFileChooserUIAccessor') @:internal extern class WindowsFileChooserUI_WindowsFileChooserUIAccessor implements sun.swing.FilePane.FilePane_FileChooserUIAccessor
{
	@:overload public function getFileChooser() : javax.swing.JFileChooser;
	
	@:overload public function getModel() : javax.swing.plaf.basic.BasicDirectoryModel;
	
	@:overload public function createList() : javax.swing.JPanel;
	
	@:overload public function createDetailsView() : javax.swing.JPanel;
	
	@:overload public function isDirectorySelected() : Bool;
	
	@:overload public function getDirectory() : java.io.File;
	
	@:overload public function getChangeToParentDirectoryAction() : javax.swing.Action;
	
	@:overload public function getApproveSelectionAction() : javax.swing.Action;
	
	@:overload public function getNewFolderAction() : javax.swing.Action;
	
	@:overload public function createDoubleClickListener(list : javax.swing.JList<Dynamic>) : java.awt.event.MouseListener;
	
	@:overload public function createListSelectionListener() : javax.swing.event.ListSelectionListener;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$WindowsNewFolderAction') extern class WindowsFileChooserUI_WindowsNewFolderAction extends javax.swing.plaf.basic.BasicFileChooserUI.BasicFileChooserUI_NewFolderAction
{
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$SingleClickListener') extern class WindowsFileChooserUI_SingleClickListener extends java.awt.event.MouseAdapter
{
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$FileRenderer') extern class WindowsFileChooserUI_FileRenderer extends javax.swing.DefaultListCellRenderer
{
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$DirectoryComboBoxRenderer') @:internal extern class WindowsFileChooserUI_DirectoryComboBoxRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$IndentIcon') @:internal extern class WindowsFileChooserUI_IndentIcon implements javax.swing.Icon
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
/**
* Data model for a type-face selection combo-box.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$DirectoryComboBoxModel') extern class WindowsFileChooserUI_DirectoryComboBoxModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.ComboBoxModel<Dynamic>
{
	@:overload public function new() : Void;
	
	@:overload public function getDepth(i : Int) : Int;
	
	@:overload public function setSelectedItem(selectedDirectory : Dynamic) : Void;
	
	@:overload public function getSelectedItem() : Dynamic;
	
	@:overload override public function getSize() : Int;
	
	@:overload override public function getElementAt(index : Int) : Dynamic;
	
	
}
/**
* Render different type sizes and styles.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$FilterComboBoxRenderer') extern class WindowsFileChooserUI_FilterComboBoxRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
/**
* Data model for a type-face selection combo-box.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$FilterComboBoxModel') extern class WindowsFileChooserUI_FilterComboBoxModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.ComboBoxModel<Dynamic> implements java.beans.PropertyChangeListener
{
	private var filters : java.NativeArray<javax.swing.filechooser.FileFilter>;
	
	@:overload private function new() : Void;
	
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function setSelectedItem(filter : Dynamic) : Void;
	
	@:overload public function getSelectedItem() : Dynamic;
	
	@:overload override public function getSize() : Int;
	
	@:overload override public function getElementAt(index : Int) : Dynamic;
	
	
}
/**
* Acts when DirectoryComboBox has changed the selected item.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$DirectoryComboBoxAction') extern class WindowsFileChooserUI_DirectoryComboBoxAction implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsFileChooserUI$WindowsFileView') extern class WindowsFileChooserUI_WindowsFileView extends javax.swing.plaf.basic.BasicFileChooserUI.BasicFileChooserUI_BasicFileView
{
	/* FileView type descriptions */
	@:overload override public function getIcon(f : java.io.File) : javax.swing.Icon;
	
	
}

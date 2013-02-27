package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GTKFileChooserUI extends sun.swing.plaf.synth.SynthFileChooserUI
{
	@:overload public function new(filechooser : javax.swing.JFileChooser) : Void;
	
	@:overload override private function createActionMap() : javax.swing.ActionMap;
	
	@:overload override public function getFileName() : String;
	
	@:overload override public function setFileName(fileName : String) : Void;
	
	@:overload override public function setDirectoryName(dirname : String) : Void;
	
	@:overload override public function ensureFileIsVisible(fc : javax.swing.JFileChooser, f : java.io.File) : Void;
	
	@:overload override public function rescanCurrentDirectory(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override public function getAccessoryPanel() : javax.swing.JPanel;
	
	@:overload override public function getFileView(fc : javax.swing.JFileChooser) : javax.swing.filechooser.FileView;
	
	@:overload override private function doSelectedFileChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override private function doDirectoryChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override private function doAccessoryChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override private function doFileSelectionModeChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override private function doMultiSelectionChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override private function doControlButtonsChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override private function doAncestorChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override public function createListSelectionListener(fc : javax.swing.JFileChooser) : javax.swing.event.ListSelectionListener;
	
	@:overload override private function createDoubleClickListener(fc : javax.swing.JFileChooser, list : javax.swing.JList<Dynamic>) : java.awt.event.MouseListener;
	
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function installComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function installListeners(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function uninstallListeners(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function installDefaults(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function installIcons(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function installStrings(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function uninstallStrings(fc : javax.swing.JFileChooser) : Void;
	
	@:overload private function createFilesList() : javax.swing.JScrollPane;
	
	@:overload private function createDirectoryList() : javax.swing.JScrollPane;
	
	@:overload override private function createModel() : Void;
	
	@:overload override public function getModel() : javax.swing.plaf.basic.BasicDirectoryModel;
	
	@:overload override public function getApproveSelectionAction() : javax.swing.Action;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMinimumSize(x : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMaximumSize(x : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload private function align(c : javax.swing.JComponent) : Void;
	
	@:overload override public function getNewFolderAction() : javax.swing.Action;
	
	@:overload private function createDirectoryComboBoxModel(fc : javax.swing.JFileChooser) : GTKFileChooserUI_DirectoryComboBoxModel;
	
	@:overload private function createFilterComboBoxRenderer() : GTKFileChooserUI_FilterComboBoxRenderer;
	
	@:overload private function createFilterComboBoxModel() : GTKFileChooserUI_FilterComboBoxModel;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$GTKFileView') @:internal extern class GTKFileChooserUI_GTKFileView extends BasicFileView
{
	@:overload public function new() : Void;
	
	@:overload public function clearIconCache() : Void;
	
	@:overload public function getCachedIcon(f : java.io.File) : javax.swing.Icon;
	
	@:overload public function cacheIcon(f : java.io.File, i : javax.swing.Icon) : Void;
	
	@:overload public function getIcon(f : java.io.File) : javax.swing.Icon;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$DoubleClickListener') @:internal extern class GTKFileChooserUI_DoubleClickListener extends java.awt.event.MouseAdapter
{
	@:overload public function new(list : javax.swing.JList<Dynamic>) : Void;
	
	@:overload override public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseEntered(evt : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$SelectionListener') extern class GTKFileChooserUI_SelectionListener implements javax.swing.event.ListSelectionListener
{
	@:overload public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$GTKFCPropertyChangeListener') @:internal extern class GTKFileChooserUI_GTKFCPropertyChangeListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$GTKDirectoryModel') @:internal extern class GTKFileChooserUI_GTKDirectoryModel extends javax.swing.plaf.basic.BasicDirectoryModel
{
	@:overload public function new() : Void;
	
	@:overload override private function sort(v : java.util.Vector<java.io.File>) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$GTKDirectoryListModel') extern class GTKFileChooserUI_GTKDirectoryListModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.event.ListDataListener
{
	@:overload public function new() : Void;
	
	@:overload override public function getSize() : Int;
	
	@:overload override public function getElementAt(index : Int) : Dynamic;
	
	@:overload public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function fireContentsChanged() : Void;
	
	@:overload public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$GTKFileListModel') extern class GTKFileChooserUI_GTKFileListModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.event.ListDataListener
{
	@:overload public function new() : Void;
	
	@:overload override public function getSize() : Int;
	
	@:overload public function contains(o : Dynamic) : Bool;
	
	@:overload public function indexOf(o : Dynamic) : Int;
	
	@:overload override public function getElementAt(index : Int) : Dynamic;
	
	@:overload public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload public function fireContentsChanged() : Void;
	
	@:overload public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$FileCellRenderer') extern class GTKFileChooserUI_FileCellRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$DirectoryCellRenderer') extern class GTKFileChooserUI_DirectoryCellRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
/**
* Data model for a type-face selection combo-box.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$DirectoryComboBoxModel') extern class GTKFileChooserUI_DirectoryComboBoxModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.ComboBoxModel<Dynamic>
{
	@:overload public function new() : Void;
	
	@:overload public function setSelectedItem(selectedDirectory : Dynamic) : Void;
	
	@:overload public function getSelectedItem() : Dynamic;
	
	@:overload override public function getSize() : Int;
	
	@:overload override public function getElementAt(index : Int) : Dynamic;
	
	
}
/**
* Acts when DirectoryComboBox has changed the selected item.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$DirectoryComboBoxAction') extern class GTKFileChooserUI_DirectoryComboBoxAction extends javax.swing.AbstractAction
{
	@:overload private function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Creates a new folder.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$NewFolderAction') @:internal extern class GTKFileChooserUI_NewFolderAction extends javax.swing.AbstractAction
{
	@:overload private function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$GTKApproveSelectionAction') @:internal extern class GTKFileChooserUI_GTKApproveSelectionAction extends ApproveSelectionAction
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Renames file
*/
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$RenameFileAction') @:internal extern class GTKFileChooserUI_RenameFileAction extends javax.swing.AbstractAction
{
	@:overload private function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Render different filters
*/
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$FilterComboBoxRenderer') extern class GTKFileChooserUI_FilterComboBoxRenderer extends javax.swing.DefaultListCellRenderer implements javax.swing.plaf.UIResource
{
	@:overload override public function getName() : String;
	
	@:overload override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
/**
* Data model for filter combo-box.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKFileChooserUI$FilterComboBoxModel') extern class GTKFileChooserUI_FilterComboBoxModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.ComboBoxModel<Dynamic> implements java.beans.PropertyChangeListener
{
	private var filters : java.NativeArray<javax.swing.filechooser.FileFilter>;
	
	@:overload private function new() : Void;
	
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function setSelectedItem(filter : Dynamic) : Void;
	
	@:overload public function getSelectedItem() : Dynamic;
	
	@:overload override public function getSize() : Int;
	
	@:overload override public function getElementAt(index : Int) : Dynamic;
	
	
}

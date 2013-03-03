package com.sun.java.swing.plaf.motif;
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
extern class MotifFileChooserUI extends javax.swing.plaf.basic.BasicFileChooserUI
{
	@:protected private var directoryList : javax.swing.JList<Dynamic>;
	
	@:protected private var fileList : javax.swing.JList<Dynamic>;
	
	@:protected private var pathField : javax.swing.JTextField;
	
	@:protected private var filterComboBox : javax.swing.JComboBox<Dynamic>;
	
	@:protected private var filenameTextField : javax.swing.JTextField;
	
	@:protected private var approveButton : javax.swing.JButton;
	
	@:overload @:public public function new(filechooser : javax.swing.JFileChooser) : Void;
	
	@:overload @:public override public function getFileName() : String;
	
	@:overload @:public override public function setFileName(filename : String) : Void;
	
	@:overload @:public override public function getDirectoryName() : String;
	
	@:overload @:public override public function setDirectoryName(dirname : String) : Void;
	
	@:overload @:public override public function ensureFileIsVisible(fc : javax.swing.JFileChooser, f : java.io.File) : Void;
	
	@:overload @:public override public function rescanCurrentDirectory(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:public override public function createPropertyChangeListener(fc : javax.swing.JFileChooser) : java.beans.PropertyChangeListener;
	
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function installComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function getBottomPanel() : javax.swing.JPanel;
	
	@:overload @:public override public function uninstallComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected override private function installStrings(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected override private function installIcons(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected override private function uninstallIcons(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function createFilesList() : javax.swing.JScrollPane;
	
	@:overload @:protected private function createDirectoryList() : javax.swing.JScrollPane;
	
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMinimumSize(x : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize(x : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:protected private function align(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function createFilterComboBoxModel() : com.sun.java.swing.plaf.motif.MotifFileChooserUI.MotifFileChooserUI_FilterComboBoxModel;
	
	@:overload @:protected private function createFilterComboBoxRenderer() : com.sun.java.swing.plaf.motif.MotifFileChooserUI.MotifFileChooserUI_FilterComboBoxRenderer;
	
	@:overload @:protected override private function getApproveButton(fc : javax.swing.JFileChooser) : javax.swing.JButton;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifFileChooserUI$FileCellRenderer') extern class MotifFileChooserUI_FileCellRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload @:public override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifFileChooserUI$DirectoryCellRenderer') extern class MotifFileChooserUI_DirectoryCellRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload @:public override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifFileChooserUI$MotifDirectoryListModel') extern class MotifFileChooserUI_MotifDirectoryListModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.event.ListDataListener
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public override public function getElementAt(index : Int) : Dynamic;
	
	@:overload @:public public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function fireContentsChanged() : Void;
	
	@:overload @:public public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifFileChooserUI$MotifFileListModel') extern class MotifFileChooserUI_MotifFileListModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.event.ListDataListener
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public public function contains(o : Dynamic) : Bool;
	
	@:overload @:public public function indexOf(o : Dynamic) : Int;
	
	@:overload @:public override public function getElementAt(index : Int) : Dynamic;
	
	@:overload @:public public function intervalAdded(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function intervalRemoved(e : javax.swing.event.ListDataEvent) : Void;
	
	@:overload @:public public function fireContentsChanged() : Void;
	
	@:overload @:public public function contentsChanged(e : javax.swing.event.ListDataEvent) : Void;
	
	
}
/**
* Render different type sizes and styles.
*/
@:native('com$sun$java$swing$plaf$motif$MotifFileChooserUI$FilterComboBoxRenderer') extern class MotifFileChooserUI_FilterComboBoxRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload @:public override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
/**
* Data model for a type-face selection combo-box.
*/
@:native('com$sun$java$swing$plaf$motif$MotifFileChooserUI$FilterComboBoxModel') extern class MotifFileChooserUI_FilterComboBoxModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.ComboBoxModel<Dynamic> implements java.beans.PropertyChangeListener
{
	@:protected private var filters : java.NativeArray<javax.swing.filechooser.FileFilter>;
	
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function setSelectedItem(filter : Dynamic) : Void;
	
	@:overload @:public public function getSelectedItem() : Dynamic;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public override public function getElementAt(index : Int) : Dynamic;
	
	
}

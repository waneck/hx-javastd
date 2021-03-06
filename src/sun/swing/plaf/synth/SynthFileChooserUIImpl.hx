package sun.swing.plaf.synth;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Synth FileChooserUI implementation.
* <p>
* Note that the classes in the com.sun.java.swing.plaf.synth
* package are not
* part of the core Java APIs. They are a part of Sun's JDK and JRE
* distributions. Although other licensees may choose to distribute
* these classes, developers cannot depend on their availability in
* non-Sun implementations. Additionally this API may change in
* incompatible ways between releases. While this class is public, it
* shoud be considered an implementation detail, and subject to change.
*
* @author Leif Samuelsson
* @author Jeff Dinkins
*/
extern class SynthFileChooserUIImpl extends sun.swing.plaf.synth.SynthFileChooserUI
{
	@:overload @:public public function new(b : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected override private function installDefaults(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:public override public function installComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected override private function installListeners(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected override private function uninstallListeners(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected override private function installStrings(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:public override public function getFileName() : String;
	
	@:overload @:public override public function setFileName(fileName : String) : Void;
	
	@:overload @:public override public function rescanCurrentDirectory(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected override private function doSelectedFileChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected override private function doSelectedFilesChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected override private function doDirectoryChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected override private function doFileSelectionModeChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected override private function doAccessoryChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected override private function doControlButtonsChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected private function addControlButtons() : Void;
	
	@:overload @:protected private function removeControlButtons() : Void;
	
	@:overload @:protected override private function createActionMap() : javax.swing.ActionMap;
	
	@:overload @:protected private function getDirectoryComboBox() : javax.swing.JComponent;
	
	@:overload @:protected private function getDirectoryComboBoxAction() : javax.swing.Action;
	
	@:overload @:protected private function createDirectoryComboBoxRenderer(fc : javax.swing.JFileChooser) : sun.swing.plaf.synth.SynthFileChooserUIImpl.SynthFileChooserUIImpl_DirectoryComboBoxRenderer;
	
	@:overload @:protected private function createDirectoryComboBoxModel(fc : javax.swing.JFileChooser) : sun.swing.plaf.synth.SynthFileChooserUIImpl.SynthFileChooserUIImpl_DirectoryComboBoxModel;
	
	@:overload @:protected private function createFilterComboBoxRenderer() : sun.swing.plaf.synth.SynthFileChooserUIImpl.SynthFileChooserUIImpl_FilterComboBoxRenderer;
	
	@:overload @:protected private function createFilterComboBoxModel() : sun.swing.plaf.synth.SynthFileChooserUIImpl.SynthFileChooserUIImpl_FilterComboBoxModel;
	
	
}
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$SynthFileChooserUIAccessor') @:internal extern class SynthFileChooserUIImpl_SynthFileChooserUIAccessor implements sun.swing.FilePane.FilePane_FileChooserUIAccessor
{
	@:overload @:public public function getFileChooser() : javax.swing.JFileChooser;
	
	@:overload @:public public function getModel() : javax.swing.plaf.basic.BasicDirectoryModel;
	
	@:overload @:public public function createList() : javax.swing.JPanel;
	
	@:overload @:public public function createDetailsView() : javax.swing.JPanel;
	
	@:overload @:public public function isDirectorySelected() : Bool;
	
	@:overload @:public public function getDirectory() : java.io.File;
	
	@:overload @:public public function getChangeToParentDirectoryAction() : javax.swing.Action;
	
	@:overload @:public public function getApproveSelectionAction() : javax.swing.Action;
	
	@:overload @:public public function getNewFolderAction() : javax.swing.Action;
	
	@:overload @:public public function createDoubleClickListener(list : javax.swing.JList<Dynamic>) : java.awt.event.MouseListener;
	
	@:overload @:public public function createListSelectionListener() : javax.swing.event.ListSelectionListener;
	
	
}
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$DirectoryComboBoxRenderer') @:internal extern class SynthFileChooserUIImpl_DirectoryComboBoxRenderer implements javax.swing.ListCellRenderer<Dynamic>
{
	@:overload @:public public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$IndentIcon') @:internal extern class SynthFileChooserUIImpl_IndentIcon implements javax.swing.Icon
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
/**
* Data model for a type-face selection combo-box.
*/
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$DirectoryComboBoxModel') extern class SynthFileChooserUIImpl_DirectoryComboBoxModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.ComboBoxModel<Dynamic>
{
	@:overload @:public public function new() : Void;
	
	/**
	* Adds the directory to the model and sets it to be selected,
	* additionally clears out the previous selected directory and
	* the paths leading up to it, if any.
	*/
	@:overload @:public public function addItem(directory : java.io.File) : Void;
	
	@:overload @:public public function getDepth(i : Int) : Int;
	
	@:overload @:public public function setSelectedItem(selectedDirectory : Dynamic) : Void;
	
	@:overload @:public public function getSelectedItem() : Dynamic;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public override public function getElementAt(index : Int) : Dynamic;
	
	
}
/**
* Acts when DirectoryComboBox has changed the selected item.
*/
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$DirectoryComboBoxAction') extern class SynthFileChooserUIImpl_DirectoryComboBoxAction extends javax.swing.AbstractAction
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Render different type sizes and styles.
*/
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$FilterComboBoxRenderer') extern class SynthFileChooserUIImpl_FilterComboBoxRenderer implements javax.swing.ListCellRenderer<Dynamic>
{
	@:overload @:public public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
/**
* Data model for a type-face selection combo-box.
*/
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$FilterComboBoxModel') extern class SynthFileChooserUIImpl_FilterComboBoxModel extends javax.swing.AbstractListModel<Dynamic> implements javax.swing.ComboBoxModel<Dynamic> implements java.beans.PropertyChangeListener
{
	@:protected private var filters : java.NativeArray<javax.swing.filechooser.FileFilter>;
	
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function setSelectedItem(filter : Dynamic) : Void;
	
	@:overload @:public public function getSelectedItem() : Dynamic;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public override public function getElementAt(index : Int) : Dynamic;
	
	
}
/**
* <code>ButtonAreaLayout</code> behaves in a similar manner to
* <code>FlowLayout</code>. It lays out all components from left to
* right, flushed right. The widths of all components will be set
* to the largest preferred size width.
*/
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$ButtonAreaLayout') @:internal extern class SynthFileChooserUIImpl_ButtonAreaLayout implements java.awt.LayoutManager
{
	@:overload @:public public function addLayoutComponent(string : String, comp : java.awt.Component) : Void;
	
	@:overload @:public public function layoutContainer(container : java.awt.Container) : Void;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	
}
@:native('sun$swing$plaf$synth$SynthFileChooserUIImpl$AlignedLabel') @:internal extern class SynthFileChooserUIImpl_AlignedLabel extends javax.swing.JLabel
{
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	
}

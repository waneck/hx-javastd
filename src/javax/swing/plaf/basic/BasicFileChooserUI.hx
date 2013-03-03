package javax.swing.plaf.basic;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicFileChooserUI extends javax.swing.plaf.FileChooserUI
{
	/* FileView icons */
	@:protected private var directoryIcon : javax.swing.Icon;
	
	@:protected private var fileIcon : javax.swing.Icon;
	
	@:protected private var computerIcon : javax.swing.Icon;
	
	@:protected private var hardDriveIcon : javax.swing.Icon;
	
	@:protected private var floppyDriveIcon : javax.swing.Icon;
	
	@:protected private var newFolderIcon : javax.swing.Icon;
	
	@:protected private var upFolderIcon : javax.swing.Icon;
	
	@:protected private var homeFolderIcon : javax.swing.Icon;
	
	@:protected private var listViewIcon : javax.swing.Icon;
	
	@:protected private var detailsViewIcon : javax.swing.Icon;
	
	@:protected private var viewMenuIcon : javax.swing.Icon;
	
	@:protected private var saveButtonMnemonic : Int;
	
	@:protected private var openButtonMnemonic : Int;
	
	@:protected private var cancelButtonMnemonic : Int;
	
	@:protected private var updateButtonMnemonic : Int;
	
	@:protected private var helpButtonMnemonic : Int;
	
	/**
	* The mnemonic keycode used for the approve button when a directory
	* is selected and the current selection mode is FILES_ONLY.
	*
	* @since 1.4
	*/
	@:require(java4) @:protected private var directoryOpenButtonMnemonic : Int;
	
	@:protected private var saveButtonText : String;
	
	@:protected private var openButtonText : String;
	
	@:protected private var cancelButtonText : String;
	
	@:protected private var updateButtonText : String;
	
	@:protected private var helpButtonText : String;
	
	/**
	* The label text displayed on the approve button when a directory
	* is selected and the current selection mode is FILES_ONLY.
	*
	* @since 1.4
	*/
	@:require(java4) @:protected private var directoryOpenButtonText : String;
	
	@:protected private var saveButtonToolTipText : String;
	
	@:protected private var openButtonToolTipText : String;
	
	@:protected private var cancelButtonToolTipText : String;
	
	@:protected private var updateButtonToolTipText : String;
	
	@:protected private var helpButtonToolTipText : String;
	
	/**
	* The tooltip text displayed on the approve button when a directory
	* is selected and the current selection mode is FILES_ONLY.
	*
	* @since 1.4
	*/
	@:require(java4) @:protected private var directoryOpenButtonToolTipText : String;
	
	/**
	* Creates a {@code BasicFileChooserUI} implementation
	* for the specified component. By default
	* the {@code BasicLookAndFeel} class uses
	* {@code createUI} methods of all basic UIs classes
	* to instantiate UIs.
	*
	* @param c the {@code JFileChooser} which needs a UI
	* @return the {@code BasicFileChooserUI} object
	*
	* @see UIDefaults#getUI(JComponent)
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public public function new(b : javax.swing.JFileChooser) : Void;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public public function installComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:public public function uninstallComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function installListeners(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function uninstallListeners(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function installDefaults(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function installIcons(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function installStrings(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function uninstallDefaults(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function uninstallIcons(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function uninstallStrings(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:protected private function createModel() : Void;
	
	@:overload @:public public function getModel() : javax.swing.plaf.basic.BasicDirectoryModel;
	
	@:overload @:public public function createPropertyChangeListener(fc : javax.swing.JFileChooser) : java.beans.PropertyChangeListener;
	
	@:overload @:public public function getFileName() : String;
	
	@:overload @:public public function getDirectoryName() : String;
	
	@:overload @:public public function setFileName(filename : String) : Void;
	
	@:overload @:public public function setDirectoryName(dirname : String) : Void;
	
	@:overload @:public override public function rescanCurrentDirectory(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:public override public function ensureFileIsVisible(fc : javax.swing.JFileChooser, f : java.io.File) : Void;
	
	@:overload @:public public function getFileChooser() : javax.swing.JFileChooser;
	
	@:overload @:public public function getAccessoryPanel() : javax.swing.JPanel;
	
	@:overload @:protected private function getApproveButton(fc : javax.swing.JFileChooser) : javax.swing.JButton;
	
	@:overload @:public override public function getDefaultButton(fc : javax.swing.JFileChooser) : javax.swing.JButton;
	
	@:overload @:public public function getApproveButtonToolTipText(fc : javax.swing.JFileChooser) : String;
	
	@:overload @:public public function clearIconCache() : Void;
	
	@:overload @:protected private function createDoubleClickListener(fc : javax.swing.JFileChooser, list : javax.swing.JList<Dynamic>) : java.awt.event.MouseListener;
	
	@:overload @:public public function createListSelectionListener(fc : javax.swing.JFileChooser) : javax.swing.event.ListSelectionListener;
	
	/**
	* Property to remember whether a directory is currently selected in the UI.
	*
	* @return <code>true</code> iff a directory is currently selected.
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function isDirectorySelected() : Bool;
	
	/**
	* Property to remember whether a directory is currently selected in the UI.
	* This is normally called by the UI on a selection event.
	*
	* @param b iff a directory is currently selected.
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function setDirectorySelected(b : Bool) : Void;
	
	/**
	* Property to remember the directory that is currently selected in the UI.
	*
	* @return the value of the <code>directory</code> property
	* @see #setDirectory
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getDirectory() : java.io.File;
	
	/**
	* Property to remember the directory that is currently selected in the UI.
	* This is normally called by the UI on a selection event.
	*
	* @param f the <code>File</code> object representing the directory that is
	*          currently selected
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function setDirectory(f : java.io.File) : Void;
	
	/**
	* Returns the default accept all file filter
	*/
	@:overload @:public override public function getAcceptAllFileFilter(fc : javax.swing.JFileChooser) : java.io.FileFilter;
	
	@:overload @:public override public function getFileView(fc : javax.swing.JFileChooser) : javax.swing.filechooser.FileView;
	
	/**
	* Returns the title of this dialog
	*/
	@:overload @:public override public function getDialogTitle(fc : javax.swing.JFileChooser) : String;
	
	@:overload @:public public function getApproveButtonMnemonic(fc : javax.swing.JFileChooser) : Int;
	
	@:overload @:public override public function getApproveButtonText(fc : javax.swing.JFileChooser) : String;
	
	@:overload @:public public function getNewFolderAction() : javax.swing.Action;
	
	@:overload @:public public function getGoHomeAction() : javax.swing.Action;
	
	@:overload @:public public function getChangeToParentDirectoryAction() : javax.swing.Action;
	
	@:overload @:public public function getApproveSelectionAction() : javax.swing.Action;
	
	@:overload @:public public function getCancelSelectionAction() : javax.swing.Action;
	
	@:overload @:public public function getUpdateAction() : javax.swing.Action;
	
	
}
@:native('javax$swing$plaf$basic$BasicFileChooserUI$Handler') @:internal extern class BasicFileChooserUI_Handler implements java.awt.event.MouseListener implements javax.swing.event.ListSelectionListener
{
	@:overload @:public public function mouseClicked(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function valueChanged(evt : javax.swing.event.ListSelectionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicFileChooserUI$DoubleClickListener') extern class BasicFileChooserUI_DoubleClickListener extends java.awt.event.MouseAdapter
{
	@:overload @:public public function new(list : javax.swing.JList<Dynamic>) : Void;
	
	/**
	* The JList used for representing the files is created by subclasses, but the
	* selection is monitored in this class.  The TransferHandler installed in the
	* JFileChooser is also installed in the file list as it is used as the actual
	* transfer source.  The list is updated on a mouse enter to reflect the current
	* data transfer state of the file chooser.
	*/
	@:overload @:public override public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicFileChooserUI$SelectionListener') extern class BasicFileChooserUI_SelectionListener implements javax.swing.event.ListSelectionListener
{
	@:overload @:public public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	
}
/**
* Creates a new folder.
*/
@:native('javax$swing$plaf$basic$BasicFileChooserUI$NewFolderAction') extern class BasicFileChooserUI_NewFolderAction extends javax.swing.AbstractAction
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Acts on the "home" key event or equivalent event.
*/
@:native('javax$swing$plaf$basic$BasicFileChooserUI$GoHomeAction') extern class BasicFileChooserUI_GoHomeAction extends javax.swing.AbstractAction
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicFileChooserUI$ChangeToParentDirectoryAction') extern class BasicFileChooserUI_ChangeToParentDirectoryAction extends javax.swing.AbstractAction
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Responds to an Open or Save request
*/
@:native('javax$swing$plaf$basic$BasicFileChooserUI$ApproveSelectionAction') extern class BasicFileChooserUI_ApproveSelectionAction extends javax.swing.AbstractAction
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/* A file filter which accepts file patterns containing
* the special wildcards *? on Windows and *?[] on Unix.
*/
@:native('javax$swing$plaf$basic$BasicFileChooserUI$GlobFilter') @:internal extern class BasicFileChooserUI_GlobFilter extends java.io.FileFilter
{
	@:overload @:public public function setPattern(globPattern : String) : Void;
	
	@:overload @:public override public function accept(f : java.io.File) : Bool;
	
	@:overload @:public public function getDescription() : String;
	
	
}
/**
* Responds to a cancel request.
*/
@:native('javax$swing$plaf$basic$BasicFileChooserUI$CancelSelectionAction') extern class BasicFileChooserUI_CancelSelectionAction extends javax.swing.AbstractAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Rescans the files in the current directory
*/
@:native('javax$swing$plaf$basic$BasicFileChooserUI$UpdateAction') extern class BasicFileChooserUI_UpdateAction extends javax.swing.AbstractAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicFileChooserUI$AcceptAllFileFilter') extern class BasicFileChooserUI_AcceptAllFileFilter extends java.io.FileFilter
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function accept(f : java.io.File) : Bool;
	
	@:overload @:public public function getDescription() : String;
	
	
}
@:native('javax$swing$plaf$basic$BasicFileChooserUI$BasicFileView') extern class BasicFileChooserUI_BasicFileView extends javax.swing.filechooser.FileView
{
	/* FileView type descriptions */
	@:protected private var iconCache : java.util.Hashtable<java.io.File, javax.swing.Icon>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function clearIconCache() : Void;
	
	@:overload @:public override public function getName(f : java.io.File) : String;
	
	@:overload @:public override public function getDescription(f : java.io.File) : String;
	
	@:overload @:public override public function getTypeDescription(f : java.io.File) : String;
	
	@:overload @:public public function getCachedIcon(f : java.io.File) : javax.swing.Icon;
	
	@:overload @:public public function cacheIcon(f : java.io.File, i : javax.swing.Icon) : Void;
	
	@:overload @:public override public function getIcon(f : java.io.File) : javax.swing.Icon;
	
	@:overload @:public public function isHidden(f : java.io.File) : Null<Bool>;
	
	
}
/**
* Data transfer support for the file chooser.  Since files are currently presented
* as a list, the list support is reused with the added flavor of DataFlavor.javaFileListFlavor
*/
@:native('javax$swing$plaf$basic$BasicFileChooserUI$FileTransferHandler') @:internal extern class BasicFileChooserUI_FileTransferHandler extends javax.swing.TransferHandler implements javax.swing.plaf.UIResource
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
	@:overload @:protected override private function createTransferable(c : javax.swing.JComponent) : java.awt.datatransfer.Transferable;
	
	@:overload @:public override public function getSourceActions(c : javax.swing.JComponent) : Int;
	
	
}
@:native('javax$swing$plaf$basic$BasicFileChooserUI$FileTransferHandler$FileTransferable') @:internal extern class BasicFileChooserUI_FileTransferHandler_FileTransferable extends javax.swing.plaf.basic.BasicTransferable
{
	/**
	* Best format of the file chooser is DataFlavor.javaFileListFlavor.
	*/
	@:overload @:protected override private function getRicherFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* The only richer format supported is the file list flavor
	*/
	@:overload @:protected override private function getRicherData(flavor : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	
}

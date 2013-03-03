package javax.swing;
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
extern class JFileChooser extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/**
	* Type value indicating that the <code>JFileChooser</code> supports an
	* "Open" file operation.
	*/
	@:public @:static @:final public static var OPEN_DIALOG(default, null) : Int;
	
	/**
	* Type value indicating that the <code>JFileChooser</code> supports a
	* "Save" file operation.
	*/
	@:public @:static @:final public static var SAVE_DIALOG(default, null) : Int;
	
	/**
	* Type value indicating that the <code>JFileChooser</code> supports a
	* developer-specified file operation.
	*/
	@:public @:static @:final public static var CUSTOM_DIALOG(default, null) : Int;
	
	/**
	* Return value if cancel is chosen.
	*/
	@:public @:static @:final public static var CANCEL_OPTION(default, null) : Int;
	
	/**
	* Return value if approve (yes, ok) is chosen.
	*/
	@:public @:static @:final public static var APPROVE_OPTION(default, null) : Int;
	
	/**
	* Return value if an error occured.
	*/
	@:public @:static @:final public static var ERROR_OPTION(default, null) : Int;
	
	/** Instruction to display only files. */
	@:public @:static @:final public static var FILES_ONLY(default, null) : Int;
	
	/** Instruction to display only directories. */
	@:public @:static @:final public static var DIRECTORIES_ONLY(default, null) : Int;
	
	/** Instruction to display both files and directories. */
	@:public @:static @:final public static var FILES_AND_DIRECTORIES(default, null) : Int;
	
	/** Instruction to cancel the current selection. */
	@:public @:static @:final public static var CANCEL_SELECTION(default, null) : String;
	
	/**
	* Instruction to approve the current selection
	* (same as pressing yes or ok).
	*/
	@:public @:static @:final public static var APPROVE_SELECTION(default, null) : String;
	
	/** Identifies change in the text on the approve (yes, ok) button. */
	@:public @:static @:final public static var APPROVE_BUTTON_TEXT_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies change in the tooltip text for the approve (yes, ok)
	* button.
	*/
	@:public @:static @:final public static var APPROVE_BUTTON_TOOL_TIP_TEXT_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies change in the mnemonic for the approve (yes, ok) button. */
	@:public @:static @:final public static var APPROVE_BUTTON_MNEMONIC_CHANGED_PROPERTY(default, null) : String;
	
	/** Instruction to display the control buttons. */
	@:public @:static @:final public static var CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies user's directory change. */
	@:public @:static @:final public static var DIRECTORY_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies change in user's single-file selection. */
	@:public @:static @:final public static var SELECTED_FILE_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies change in user's multiple-file selection. */
	@:public @:static @:final public static var SELECTED_FILES_CHANGED_PROPERTY(default, null) : String;
	
	/** Enables multiple-file selections. */
	@:public @:static @:final public static var MULTI_SELECTION_ENABLED_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Says that a different object is being used to find available drives
	* on the system.
	*/
	@:public @:static @:final public static var FILE_SYSTEM_VIEW_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Says that a different object is being used to retrieve file
	* information.
	*/
	@:public @:static @:final public static var FILE_VIEW_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change in the display-hidden-files property. */
	@:public @:static @:final public static var FILE_HIDING_CHANGED_PROPERTY(default, null) : String;
	
	/** User changed the kind of files to display. */
	@:public @:static @:final public static var FILE_FILTER_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change in the kind of selection (single,
	* multiple, etc.).
	*/
	@:public @:static @:final public static var FILE_SELECTION_MODE_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Says that a different accessory component is in use
	* (for example, to preview files).
	*/
	@:public @:static @:final public static var ACCESSORY_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies whether a the AcceptAllFileFilter is used or not.
	*/
	@:public @:static @:final public static var ACCEPT_ALL_FILE_FILTER_USED_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change in the dialog title. */
	@:public @:static @:final public static var DIALOG_TITLE_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change in the type of files displayed (files only,
	* directories only, or both files and directories).
	*/
	@:public @:static @:final public static var DIALOG_TYPE_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change in the list of predefined file filters
	* the user can choose from.
	*/
	@:public @:static @:final public static var CHOOSABLE_FILE_FILTER_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Constructs a <code>JFileChooser</code> pointing to the user's
	* default directory. This default depends on the operating system.
	* It is typically the "My Documents" folder on Windows, and the
	* user's home directory on Unix.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a <code>JFileChooser</code> using the given path.
	* Passing in a <code>null</code>
	* string causes the file chooser to point to the user's default directory.
	* This default depends on the operating system. It is
	* typically the "My Documents" folder on Windows, and the user's
	* home directory on Unix.
	*
	* @param currentDirectoryPath  a <code>String</code> giving the path
	*                          to a file or directory
	*/
	@:overload @:public public function new(currentDirectoryPath : String) : Void;
	
	/**
	* Constructs a <code>JFileChooser</code> using the given <code>File</code>
	* as the path. Passing in a <code>null</code> file
	* causes the file chooser to point to the user's default directory.
	* This default depends on the operating system. It is
	* typically the "My Documents" folder on Windows, and the user's
	* home directory on Unix.
	*
	* @param currentDirectory  a <code>File</code> object specifying
	*                          the path to a file or directory
	*/
	@:overload @:public public function new(currentDirectory : java.io.File) : Void;
	
	/**
	* Constructs a <code>JFileChooser</code> using the given
	* <code>FileSystemView</code>.
	*/
	@:overload @:public public function new(fsv : javax.swing.filechooser.FileSystemView) : Void;
	
	/**
	* Constructs a <code>JFileChooser</code> using the given current directory
	* and <code>FileSystemView</code>.
	*/
	@:overload @:public public function new(currentDirectory : java.io.File, fsv : javax.swing.filechooser.FileSystemView) : Void;
	
	/**
	* Constructs a <code>JFileChooser</code> using the given current directory
	* path and <code>FileSystemView</code>.
	*/
	@:overload @:public public function new(currentDirectoryPath : String, fsv : javax.swing.filechooser.FileSystemView) : Void;
	
	/**
	* Performs common constructor initialization and setup.
	*/
	@:overload @:protected private function setup(view : javax.swing.filechooser.FileSystemView) : Void;
	
	/**
	* Sets the <code>dragEnabled</code> property,
	* which must be <code>true</code> to enable
	* automatic drag handling (the first part of drag and drop)
	* on this component.
	* The <code>transferHandler</code> property needs to be set
	* to a non-<code>null</code> value for the drag to do
	* anything.  The default value of the <code>dragEnabled</code>
	* property
	* is <code>false</code>.
	*
	* <p>
	*
	* When automatic drag handling is enabled,
	* most look and feels begin a drag-and-drop operation
	* whenever the user presses the mouse button over an item
	* and then moves the mouse a few pixels.
	* Setting this property to <code>true</code>
	* can therefore have a subtle effect on
	* how selections behave.
	*
	* <p>
	*
	* Some look and feels might not support automatic drag and drop;
	* they will ignore this property.  You can work around such
	* look and feels by modifying the component
	* to directly call the <code>exportAsDrag</code> method of a
	* <code>TransferHandler</code>.
	*
	* @param b the value to set the <code>dragEnabled</code> property to
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
	@:require(java4) @:overload @:public public function setDragEnabled(b : Bool) : Void;
	
	/**
	* Gets the value of the <code>dragEnabled</code> property.
	*
	* @return  the value of the <code>dragEnabled</code> property
	* @see #setDragEnabled
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getDragEnabled() : Bool;
	
	/**
	* Returns the selected file. This can be set either by the
	* programmer via <code>setSelectedFile</code> or by a user action, such as
	* either typing the filename into the UI or selecting the
	* file from a list in the UI.
	*
	* @see #setSelectedFile
	* @return the selected file
	*/
	@:overload @:public public function getSelectedFile() : java.io.File;
	
	/**
	* Sets the selected file. If the file's parent directory is
	* not the current directory, changes the current directory
	* to be the file's parent directory.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	*
	* @see #getSelectedFile
	*
	* @param file the selected file
	*/
	@:overload @:public public function setSelectedFile(file : java.io.File) : Void;
	
	/**
	* Returns a list of selected files if the file chooser is
	* set to allow multiple selection.
	*/
	@:overload @:public public function getSelectedFiles() : java.NativeArray<java.io.File>;
	
	/**
	* Sets the list of selected files if the file chooser is
	* set to allow multiple selection.
	*
	* @beaninfo
	*       bound: true
	* description: The list of selected files if the chooser is in multiple selection mode.
	*/
	@:overload @:public public function setSelectedFiles(selectedFiles : java.NativeArray<java.io.File>) : Void;
	
	/**
	* Returns the current directory.
	*
	* @return the current directory
	* @see #setCurrentDirectory
	*/
	@:overload @:public public function getCurrentDirectory() : java.io.File;
	
	/**
	* Sets the current directory. Passing in <code>null</code> sets the
	* file chooser to point to the user's default directory.
	* This default depends on the operating system. It is
	* typically the "My Documents" folder on Windows, and the user's
	* home directory on Unix.
	*
	* If the file passed in as <code>currentDirectory</code> is not a
	* directory, the parent of the file will be used as the currentDirectory.
	* If the parent is not traversable, then it will walk up the parent tree
	* until it finds a traversable directory, or hits the root of the
	* file system.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The directory that the JFileChooser is showing files of.
	*
	* @param dir the current directory to point to
	* @see #getCurrentDirectory
	*/
	@:overload @:public public function setCurrentDirectory(dir : java.io.File) : Void;
	
	/**
	* Changes the directory to be set to the parent of the
	* current directory.
	*
	* @see #getCurrentDirectory
	*/
	@:overload @:public public function changeToParentDirectory() : Void;
	
	/**
	* Tells the UI to rescan its files list from the current directory.
	*/
	@:overload @:public public function rescanCurrentDirectory() : Void;
	
	/**
	* Makes sure that the specified file is viewable, and
	* not hidden.
	*
	* @param f  a File object
	*/
	@:overload @:public public function ensureFileIsVisible(f : java.io.File) : Void;
	
	/**
	* Pops up an "Open File" file chooser dialog. Note that the
	* text that appears in the approve button is determined by
	* the L&F.
	*
	* @param    parent  the parent component of the dialog,
	*                  can be <code>null</code>;
	*                  see <code>showDialog</code> for details
	* @return   the return state of the file chooser on popdown:
	* <ul>
	* <li>JFileChooser.CANCEL_OPTION
	* <li>JFileChooser.APPROVE_OPTION
	* <li>JFileChooser.ERROR_OPTION if an error occurs or the
	*                  dialog is dismissed
	* </ul>
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see #showDialog
	*/
	@:overload @:public public function showOpenDialog(parent : java.awt.Component) : Int;
	
	/**
	* Pops up a "Save File" file chooser dialog. Note that the
	* text that appears in the approve button is determined by
	* the L&F.
	*
	* @param    parent  the parent component of the dialog,
	*                  can be <code>null</code>;
	*                  see <code>showDialog</code> for details
	* @return   the return state of the file chooser on popdown:
	* <ul>
	* <li>JFileChooser.CANCEL_OPTION
	* <li>JFileChooser.APPROVE_OPTION
	* <li>JFileChooser.ERROR_OPTION if an error occurs or the
	*                  dialog is dismissed
	* </ul>
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see #showDialog
	*/
	@:overload @:public public function showSaveDialog(parent : java.awt.Component) : Int;
	
	/**
	* Pops a custom file chooser dialog with a custom approve button.
	* For example, the following code
	* pops up a file chooser with a "Run Application" button
	* (instead of the normal "Save" or "Open" button):
	* <pre>
	* filechooser.showDialog(parentFrame, "Run Application");
	* </pre>
	*
	* Alternatively, the following code does the same thing:
	* <pre>
	*    JFileChooser chooser = new JFileChooser(null);
	*    chooser.setApproveButtonText("Run Application");
	*    chooser.showDialog(parentFrame, null);
	* </pre>
	*
	* <!--PENDING(jeff) - the following method should be added to the api:
	*      showDialog(Component parent);-->
	* <!--PENDING(kwalrath) - should specify modality and what
	*      "depends" means.-->
	*
	* <p>
	*
	* The <code>parent</code> argument determines two things:
	* the frame on which the open dialog depends and
	* the component whose position the look and feel
	* should consider when placing the dialog.  If the parent
	* is a <code>Frame</code> object (such as a <code>JFrame</code>)
	* then the dialog depends on the frame and
	* the look and feel positions the dialog
	* relative to the frame (for example, centered over the frame).
	* If the parent is a component, then the dialog
	* depends on the frame containing the component,
	* and is positioned relative to the component
	* (for example, centered over the component).
	* If the parent is <code>null</code>, then the dialog depends on
	* no visible window, and it's placed in a
	* look-and-feel-dependent position
	* such as the center of the screen.
	*
	* @param   parent  the parent component of the dialog;
	*                  can be <code>null</code>
	* @param   approveButtonText the text of the <code>ApproveButton</code>
	* @return  the return state of the file chooser on popdown:
	* <ul>
	* <li>JFileChooser.CANCEL_OPTION
	* <li>JFileChooser.APPROVE_OPTION
	* <li>JFileChooser.ERROR_OPTION if an error occurs or the
	*                  dialog is dismissed
	* </ul>
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload @:public public function showDialog(parent : java.awt.Component, approveButtonText : String) : Int;
	
	/**
	* Creates and returns a new <code>JDialog</code> wrapping
	* <code>this</code> centered on the <code>parent</code>
	* in the <code>parent</code>'s frame.
	* This method can be overriden to further manipulate the dialog,
	* to disable resizing, set the location, etc. Example:
	* <pre>
	*     class MyFileChooser extends JFileChooser {
	*         protected JDialog createDialog(Component parent) throws HeadlessException {
	*             JDialog dialog = super.createDialog(parent);
	*             dialog.setLocation(300, 200);
	*             dialog.setResizable(false);
	*             return dialog;
	*         }
	*     }
	* </pre>
	*
	* @param   parent  the parent component of the dialog;
	*                  can be <code>null</code>
	* @return a new <code>JDialog</code> containing this instance
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function createDialog(parent : java.awt.Component) : javax.swing.JDialog;
	
	/**
	* Returns the value of the <code>controlButtonsAreShown</code>
	* property.
	*
	* @return   the value of the <code>controlButtonsAreShown</code>
	*     property
	*
	* @see #setControlButtonsAreShown
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getControlButtonsAreShown() : Bool;
	
	/**
	* Sets the property
	* that indicates whether the <i>approve</i> and <i>cancel</i>
	* buttons are shown in the file chooser.  This property
	* is <code>true</code> by default.  Look and feels
	* that always show these buttons will ignore the value
	* of this property.
	* This method fires a property-changed event,
	* using the string value of
	* <code>CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY</code>
	* as the name of the property.
	*
	* @param b <code>false</code> if control buttons should not be
	*    shown; otherwise, <code>true</code>
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Sets whether the approve & cancel buttons are shown.
	*
	* @see #getControlButtonsAreShown
	* @see #CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function setControlButtonsAreShown(b : Bool) : Void;
	
	/**
	* Returns the type of this dialog.  The default is
	* <code>JFileChooser.OPEN_DIALOG</code>.
	*
	* @return   the type of dialog to be displayed:
	* <ul>
	* <li>JFileChooser.OPEN_DIALOG
	* <li>JFileChooser.SAVE_DIALOG
	* <li>JFileChooser.CUSTOM_DIALOG
	* </ul>
	*
	* @see #setDialogType
	*/
	@:overload @:public public function getDialogType() : Int;
	
	/**
	* Sets the type of this dialog. Use <code>OPEN_DIALOG</code> when you
	* want to bring up a file chooser that the user can use to open a file.
	* Likewise, use <code>SAVE_DIALOG</code> for letting the user choose
	* a file for saving.
	* Use <code>CUSTOM_DIALOG</code> when you want to use the file
	* chooser in a context other than "Open" or "Save".
	* For instance, you might want to bring up a file chooser that allows
	* the user to choose a file to execute. Note that you normally would not
	* need to set the <code>JFileChooser</code> to use
	* <code>CUSTOM_DIALOG</code>
	* since a call to <code>setApproveButtonText</code> does this for you.
	* The default dialog type is <code>JFileChooser.OPEN_DIALOG</code>.
	*
	* @param dialogType the type of dialog to be displayed:
	* <ul>
	* <li>JFileChooser.OPEN_DIALOG
	* <li>JFileChooser.SAVE_DIALOG
	* <li>JFileChooser.CUSTOM_DIALOG
	* </ul>
	*
	* @exception IllegalArgumentException if <code>dialogType</code> is
	*                          not legal
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The type (open, save, custom) of the JFileChooser.
	*        enum:
	*              OPEN_DIALOG JFileChooser.OPEN_DIALOG
	*              SAVE_DIALOG JFileChooser.SAVE_DIALOG
	*              CUSTOM_DIALOG JFileChooser.CUSTOM_DIALOG
	*
	* @see #getDialogType
	* @see #setApproveButtonText
	*/
	@:overload @:public public function setDialogType(dialogType : Int) : Void;
	
	/**
	* Sets the string that goes in the <code>JFileChooser</code> window's
	* title bar.
	*
	* @param dialogTitle the new <code>String</code> for the title bar
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The title of the JFileChooser dialog window.
	*
	* @see #getDialogTitle
	*
	*/
	@:overload @:public public function setDialogTitle(dialogTitle : String) : Void;
	
	/**
	* Gets the string that goes in the <code>JFileChooser</code>'s titlebar.
	*
	* @see #setDialogTitle
	*/
	@:overload @:public public function getDialogTitle() : String;
	
	/**
	* Sets the tooltip text used in the <code>ApproveButton</code>.
	* If <code>null</code>, the UI object will determine the button's text.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The tooltip text for the ApproveButton.
	*
	* @param toolTipText the tooltip text for the approve button
	* @see #setApproveButtonText
	* @see #setDialogType
	* @see #showDialog
	*/
	@:overload @:public public function setApproveButtonToolTipText(toolTipText : String) : Void;
	
	/**
	* Returns the tooltip text used in the <code>ApproveButton</code>.
	* If <code>null</code>, the UI object will determine the button's text.
	*
	* @return the tooltip text used for the approve button
	*
	* @see #setApproveButtonText
	* @see #setDialogType
	* @see #showDialog
	*/
	@:overload @:public public function getApproveButtonToolTipText() : String;
	
	/**
	* Returns the approve button's mnemonic.
	* @return an integer value for the mnemonic key
	*
	* @see #setApproveButtonMnemonic
	*/
	@:overload @:public public function getApproveButtonMnemonic() : Int;
	
	/**
	* Sets the approve button's mnemonic using a numeric keycode.
	*
	* @param mnemonic  an integer value for the mnemonic key
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The mnemonic key accelerator for the ApproveButton.
	*
	* @see #getApproveButtonMnemonic
	*/
	@:overload @:public public function setApproveButtonMnemonic(mnemonic : Int) : Void;
	
	/**
	* Sets the approve button's mnemonic using a character.
	* @param mnemonic  a character value for the mnemonic key
	*
	* @see #getApproveButtonMnemonic
	*/
	@:overload @:public public function setApproveButtonMnemonic(mnemonic : java.StdTypes.Char16) : Void;
	
	/**
	* Sets the text used in the <code>ApproveButton</code> in the
	* <code>FileChooserUI</code>.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The text that goes in the ApproveButton.
	*
	* @param approveButtonText the text used in the <code>ApproveButton</code>
	*
	* @see #getApproveButtonText
	* @see #setDialogType
	* @see #showDialog
	*/
	@:overload @:public public function setApproveButtonText(approveButtonText : String) : Void;
	
	/**
	* Returns the text used in the <code>ApproveButton</code> in the
	* <code>FileChooserUI</code>.
	* If <code>null</code>, the UI object will determine the button's text.
	*
	* Typically, this would be "Open" or "Save".
	*
	* @return the text used in the <code>ApproveButton</code>
	*
	* @see #setApproveButtonText
	* @see #setDialogType
	* @see #showDialog
	*/
	@:overload @:public public function getApproveButtonText() : String;
	
	/**
	* Gets the list of user choosable file filters.
	*
	* @return a <code>FileFilter</code> array containing all the choosable
	*         file filters
	*
	* @see #addChoosableFileFilter
	* @see #removeChoosableFileFilter
	* @see #resetChoosableFileFilters
	*/
	@:overload @:public public function getChoosableFileFilters() : java.NativeArray<javax.swing.filechooser.FileFilter>;
	
	/**
	* Adds a filter to the list of user choosable file filters.
	* For information on setting the file selection mode, see
	* {@link #setFileSelectionMode setFileSelectionMode}.
	*
	* @param filter the <code>FileFilter</code> to add to the choosable file
	*               filter list
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Adds a filter to the list of user choosable file filters.
	*
	* @see #getChoosableFileFilters
	* @see #removeChoosableFileFilter
	* @see #resetChoosableFileFilters
	* @see #setFileSelectionMode
	*/
	@:overload @:public public function addChoosableFileFilter(filter : javax.swing.filechooser.FileFilter) : Void;
	
	/**
	* Removes a filter from the list of user choosable file filters. Returns
	* true if the file filter was removed.
	*
	* @see #addChoosableFileFilter
	* @see #getChoosableFileFilters
	* @see #resetChoosableFileFilters
	*/
	@:overload @:public public function removeChoosableFileFilter(f : javax.swing.filechooser.FileFilter) : Bool;
	
	/**
	* Resets the choosable file filter list to its starting state. Normally,
	* this removes all added file filters while leaving the
	* <code>AcceptAll</code> file filter.
	*
	* @see #addChoosableFileFilter
	* @see #getChoosableFileFilters
	* @see #removeChoosableFileFilter
	*/
	@:overload @:public public function resetChoosableFileFilters() : Void;
	
	/**
	* Returns the <code>AcceptAll</code> file filter.
	* For example, on Microsoft Windows this would be All Files (*.*).
	*/
	@:overload @:public public function getAcceptAllFileFilter() : javax.swing.filechooser.FileFilter;
	
	/**
	* Returns whether the <code>AcceptAll FileFilter</code> is used.
	* @return true if the <code>AcceptAll FileFilter</code> is used
	* @see #setAcceptAllFileFilterUsed
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function isAcceptAllFileFilterUsed() : Bool;
	
	/**
	* Determines whether the <code>AcceptAll FileFilter</code> is used
	* as an available choice in the choosable filter list.
	* If false, the <code>AcceptAll</code> file filter is removed from
	* the list of available file filters.
	* If true, the <code>AcceptAll</code> file filter will become the
	* the actively used file filter.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Sets whether the AcceptAll FileFilter is used as an available choice in the choosable filter list.
	*
	* @see #isAcceptAllFileFilterUsed
	* @see #getAcceptAllFileFilter
	* @see #setFileFilter
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function setAcceptAllFileFilterUsed(b : Bool) : Void;
	
	/**
	* Returns the accessory component.
	*
	* @return this JFileChooser's accessory component, or null
	* @see #setAccessory
	*/
	@:overload @:public public function getAccessory() : javax.swing.JComponent;
	
	/**
	* Sets the accessory component. An accessory is often used to show a
	* preview image of the selected file; however, it can be used for anything
	* that the programmer wishes, such as extra custom file chooser controls.
	*
	* <p>
	* Note: if there was a previous accessory, you should unregister
	* any listeners that the accessory might have registered with the
	* file chooser.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Sets the accessory component on the JFileChooser.
	*/
	@:overload @:public public function setAccessory(newAccessory : javax.swing.JComponent) : Void;
	
	/**
	* Sets the <code>JFileChooser</code> to allow the user to just
	* select files, just select
	* directories, or select both files and directories.  The default is
	* <code>JFilesChooser.FILES_ONLY</code>.
	*
	* @param mode the type of files to be displayed:
	* <ul>
	* <li>JFileChooser.FILES_ONLY
	* <li>JFileChooser.DIRECTORIES_ONLY
	* <li>JFileChooser.FILES_AND_DIRECTORIES
	* </ul>
	*
	* @exception IllegalArgumentException  if <code>mode</code> is an
	*                          illegal file selection mode
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Sets the types of files that the JFileChooser can choose.
	*        enum: FILES_ONLY JFileChooser.FILES_ONLY
	*              DIRECTORIES_ONLY JFileChooser.DIRECTORIES_ONLY
	*              FILES_AND_DIRECTORIES JFileChooser.FILES_AND_DIRECTORIES
	*
	*
	* @see #getFileSelectionMode
	*/
	@:overload @:public public function setFileSelectionMode(mode : Int) : Void;
	
	/**
	* Returns the current file-selection mode.  The default is
	* <code>JFilesChooser.FILES_ONLY</code>.
	*
	* @return the type of files to be displayed, one of the following:
	* <ul>
	* <li>JFileChooser.FILES_ONLY
	* <li>JFileChooser.DIRECTORIES_ONLY
	* <li>JFileChooser.FILES_AND_DIRECTORIES
	* </ul>
	* @see #setFileSelectionMode
	*/
	@:overload @:public public function getFileSelectionMode() : Int;
	
	/**
	* Convenience call that determines if files are selectable based on the
	* current file selection mode.
	*
	* @see #setFileSelectionMode
	* @see #getFileSelectionMode
	*/
	@:overload @:public public function isFileSelectionEnabled() : Bool;
	
	/**
	* Convenience call that determines if directories are selectable based
	* on the current file selection mode.
	*
	* @see #setFileSelectionMode
	* @see #getFileSelectionMode
	*/
	@:overload @:public public function isDirectorySelectionEnabled() : Bool;
	
	/**
	* Sets the file chooser to allow multiple file selections.
	*
	* @param b true if multiple files may be selected
	* @beaninfo
	*       bound: true
	* description: Sets multiple file selection mode.
	*
	* @see #isMultiSelectionEnabled
	*/
	@:overload @:public public function setMultiSelectionEnabled(b : Bool) : Void;
	
	/**
	* Returns true if multiple files can be selected.
	* @return true if multiple files can be selected
	* @see #setMultiSelectionEnabled
	*/
	@:overload @:public public function isMultiSelectionEnabled() : Bool;
	
	/**
	* Returns true if hidden files are not shown in the file chooser;
	* otherwise, returns false.
	*
	* @return the status of the file hiding property
	* @see #setFileHidingEnabled
	*/
	@:overload @:public public function isFileHidingEnabled() : Bool;
	
	/**
	* Sets file hiding on or off. If true, hidden files are not shown
	* in the file chooser. The job of determining which files are
	* shown is done by the <code>FileView</code>.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Sets file hiding on or off.
	*
	* @param b the boolean value that determines whether file hiding is
	*          turned on
	* @see #isFileHidingEnabled
	*/
	@:overload @:public public function setFileHidingEnabled(b : Bool) : Void;
	
	/**
	* Sets the current file filter. The file filter is used by the
	* file chooser to filter out files from the user's view.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Sets the File Filter used to filter out files of type.
	*
	* @param filter the new current file filter to use
	* @see #getFileFilter
	*/
	@:overload @:public public function setFileFilter(filter : javax.swing.filechooser.FileFilter) : Void;
	
	/**
	* Returns the currently selected file filter.
	*
	* @return the current file filter
	* @see #setFileFilter
	* @see #addChoosableFileFilter
	*/
	@:overload @:public public function getFileFilter() : javax.swing.filechooser.FileFilter;
	
	/**
	* Sets the file view to used to retrieve UI information, such as
	* the icon that represents a file or the type description of a file.
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Sets the File View used to get file type information.
	*
	* @see #getFileView
	*/
	@:overload @:public public function setFileView(fileView : javax.swing.filechooser.FileView) : Void;
	
	/**
	* Returns the current file view.
	*
	* @see #setFileView
	*/
	@:overload @:public public function getFileView() : javax.swing.filechooser.FileView;
	
	/**
	* Returns the filename.
	* @param f the <code>File</code>
	* @return the <code>String</code> containing the filename for
	*          <code>f</code>
	* @see FileView#getName
	*/
	@:overload @:public public function getName(f : java.io.File) : String;
	
	/**
	* Returns the file description.
	* @param f the <code>File</code>
	* @return the <code>String</code> containing the file description for
	*          <code>f</code>
	* @see FileView#getDescription
	*/
	@:overload @:public public function getDescription(f : java.io.File) : String;
	
	/**
	* Returns the file type.
	* @param f the <code>File</code>
	* @return the <code>String</code> containing the file type description for
	*          <code>f</code>
	* @see FileView#getTypeDescription
	*/
	@:overload @:public public function getTypeDescription(f : java.io.File) : String;
	
	/**
	* Returns the icon for this file or type of file, depending
	* on the system.
	* @param f the <code>File</code>
	* @return the <code>Icon</code> for this file, or type of file
	* @see FileView#getIcon
	*/
	@:overload @:public public function getIcon(f : java.io.File) : javax.swing.Icon;
	
	/**
	* Returns true if the file (directory) can be visited.
	* Returns false if the directory cannot be traversed.
	* @param f the <code>File</code>
	* @return true if the file/directory can be traversed, otherwise false
	* @see FileView#isTraversable
	*/
	@:overload @:public public function isTraversable(f : java.io.File) : Bool;
	
	/**
	* Returns true if the file should be displayed.
	* @param f the <code>File</code>
	* @return true if the file should be displayed, otherwise false
	* @see FileFilter#accept
	*/
	@:overload @:public public function accept(f : java.io.File) : Bool;
	
	/**
	* Sets the file system view that the <code>JFileChooser</code> uses for
	* accessing and creating file system resources, such as finding
	* the floppy drive and getting a list of root drives.
	* @param fsv  the new <code>FileSystemView</code>
	*
	* @beaninfo
	*      expert: true
	*       bound: true
	* description: Sets the FileSytemView used to get filesystem information.
	*
	* @see FileSystemView
	*/
	@:overload @:public public function setFileSystemView(fsv : javax.swing.filechooser.FileSystemView) : Void;
	
	/**
	* Returns the file system view.
	* @return the <code>FileSystemView</code> object
	* @see #setFileSystemView
	*/
	@:overload @:public public function getFileSystemView() : javax.swing.filechooser.FileSystemView;
	
	/**
	* Called by the UI when the user hits the Approve button
	* (labeled "Open" or "Save", by default). This can also be
	* called by the programmer.
	* This method causes an action event to fire
	* with the command string equal to
	* <code>APPROVE_SELECTION</code>.
	*
	* @see #APPROVE_SELECTION
	*/
	@:overload @:public public function approveSelection() : Void;
	
	/**
	* Called by the UI when the user chooses the Cancel button.
	* This can also be called by the programmer.
	* This method causes an action event to fire
	* with the command string equal to
	* <code>CANCEL_SELECTION</code>.
	*
	* @see #CANCEL_SELECTION
	*/
	@:overload @:public public function cancelSelection() : Void;
	
	/**
	* Adds an <code>ActionListener</code> to the file chooser.
	*
	* @param l  the listener to be added
	*
	* @see #approveSelection
	* @see #cancelSelection
	*/
	@:overload @:public public function addActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Removes an <code>ActionListener</code> from the file chooser.
	*
	* @param l  the listener to be removed
	*
	* @see #addActionListener
	*/
	@:overload @:public public function removeActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the action listeners
	* registered on this file chooser.
	*
	* @return all of this file chooser's <code>ActionListener</code>s
	*         or an empty
	*         array if no action listeners are currently registered
	*
	* @see #addActionListener
	* @see #removeActionListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type. The event instance
	* is lazily created using the <code>command</code> parameter.
	*
	* @see EventListenerList
	*/
	@:overload @:protected private function fireActionPerformed(command : String) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload @:public override public function updateUI() : Void;
	
	/**
	* Returns a string that specifies the name of the L&F class
	* that renders this component.
	*
	* @return the string "FileChooserUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	* @beaninfo
	*        expert: true
	*   description: A string that specifies the name of the L&F class.
	*/
	@:overload @:public override public function getUIClassID() : String;
	
	/**
	* Gets the UI object which implements the L&F for this component.
	*
	* @return the FileChooserUI object that implements the FileChooserUI L&F
	*/
	@:overload @:public public function getUI() : javax.swing.plaf.FileChooserUI;
	
	/**
	* Returns a string representation of this <code>JFileChooser</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JFileChooser</code>
	*/
	@:overload @:protected override private function paramString() : String;
	
	@:protected private var accessibleContext : javax.accessibility.AccessibleContext;
	
	/**
	* Gets the AccessibleContext associated with this JFileChooser.
	* For file choosers, the AccessibleContext takes the form of an
	* AccessibleJFileChooser.
	* A new AccessibleJFileChooser instance is created if necessary.
	*
	* @return an AccessibleJFileChooser that serves as the
	*         AccessibleContext of this JFileChooser
	*/
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('javax$swing$JFileChooser$WeakPCL') @:internal extern class JFileChooser_WeakPCL implements java.beans.PropertyChangeListener
{
	@:overload @:public public function new(jfc : javax.swing.JFileChooser) : Void;
	
	@:overload @:public public function propertyChange(ev : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JFileChooser</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to file chooser user-interface
* elements.
*/
@:native('javax$swing$JFileChooser$AccessibleJFileChooser') extern class JFileChooser_AccessibleJFileChooser extends javax.swing.JComponent.JComponent_AccessibleJComponent
{
	/**
	* Gets the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}

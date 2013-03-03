package java.awt;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class FileDialog extends java.awt.Dialog
{
	/**
	* This constant value indicates that the purpose of the file
	* dialog window is to locate a file from which to read.
	*/
	@:public @:static @:final public static var LOAD(default, null) : Int;
	
	/**
	* This constant value indicates that the purpose of the file
	* dialog window is to locate a file to which to write.
	*/
	@:public @:static @:final public static var SAVE(default, null) : Int;
	
	/**
	* Creates a file dialog for loading a file.  The title of the
	* file dialog is initially empty.  This is a convenience method for
	* <code>FileDialog(parent, "", LOAD)</code>.
	*
	* @param parent the owner of the dialog
	* @since JDK1.1
	*/
	@:require(java1) @:overload @:public public function new(parent : java.awt.Frame) : Void;
	
	/**
	* Creates a file dialog window with the specified title for loading
	* a file. The files shown are those in the current directory.
	* This is a convenience method for
	* <code>FileDialog(parent, title, LOAD)</code>.
	*
	* @param     parent   the owner of the dialog
	* @param     title    the title of the dialog
	*/
	@:overload @:public public function new(parent : java.awt.Frame, title : String) : Void;
	
	/**
	* Creates a file dialog window with the specified title for loading
	* or saving a file.
	* <p>
	* If the value of <code>mode</code> is <code>LOAD</code>, then the
	* file dialog is finding a file to read, and the files shown are those
	* in the current directory.   If the value of
	* <code>mode</code> is <code>SAVE</code>, the file dialog is finding
	* a place to write a file.
	*
	* @param     parent   the owner of the dialog
	* @param     title   the title of the dialog
	* @param     mode   the mode of the dialog; either
	*          <code>FileDialog.LOAD</code> or <code>FileDialog.SAVE</code>
	* @exception  IllegalArgumentException if an illegal file
	*                 dialog mode is supplied
	* @see       java.awt.FileDialog#LOAD
	* @see       java.awt.FileDialog#SAVE
	*/
	@:overload @:public public function new(parent : java.awt.Frame, title : String, mode : Int) : Void;
	
	/**
	* Creates a file dialog for loading a file.  The title of the
	* file dialog is initially empty.  This is a convenience method for
	* <code>FileDialog(parent, "", LOAD)</code>.
	*
	* @param     parent   the owner of the dialog
	* @exception java.lang.IllegalArgumentException if the <code>parent</code>'s
	*            <code>GraphicsConfiguration</code>
	*            is not from a screen device;
	* @exception java.lang.IllegalArgumentException if <code>parent</code>
	*            is <code>null</code>; this exception is always thrown when
	*            <code>GraphicsEnvironment.isHeadless</code>
	*            returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function new(parent : java.awt.Dialog) : Void;
	
	/**
	* Creates a file dialog window with the specified title for loading
	* a file. The files shown are those in the current directory.
	* This is a convenience method for
	* <code>FileDialog(parent, title, LOAD)</code>.
	*
	* @param     parent   the owner of the dialog
	* @param     title    the title of the dialog; a <code>null</code> value
	*                     will be accepted without causing a
	*                     <code>NullPointerException</code> to be thrown
	* @exception java.lang.IllegalArgumentException if the <code>parent</code>'s
	*            <code>GraphicsConfiguration</code>
	*            is not from a screen device;
	* @exception java.lang.IllegalArgumentException if <code>parent</code>
	*            is <code>null</code>; this exception is always thrown when
	*            <code>GraphicsEnvironment.isHeadless</code>
	*            returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since     1.5
	*/
	@:require(java5) @:overload @:public public function new(parent : java.awt.Dialog, title : String) : Void;
	
	/**
	* Creates a file dialog window with the specified title for loading
	* or saving a file.
	* <p>
	* If the value of <code>mode</code> is <code>LOAD</code>, then the
	* file dialog is finding a file to read, and the files shown are those
	* in the current directory.   If the value of
	* <code>mode</code> is <code>SAVE</code>, the file dialog is finding
	* a place to write a file.
	*
	* @param     parent   the owner of the dialog
	* @param     title    the title of the dialog; a <code>null</code> value
	*                     will be accepted without causing a
	*                     <code>NullPointerException</code> to be thrown
	* @param     mode     the mode of the dialog; either
	*                     <code>FileDialog.LOAD</code> or <code>FileDialog.SAVE</code>
	* @exception java.lang.IllegalArgumentException if an illegal
	*            file dialog mode is supplied;
	* @exception java.lang.IllegalArgumentException if the <code>parent</code>'s
	*            <code>GraphicsConfiguration</code>
	*            is not from a screen device;
	* @exception java.lang.IllegalArgumentException if <code>parent</code>
	*            is <code>null</code>; this exception is always thrown when
	*            <code>GraphicsEnvironment.isHeadless</code>
	*            returns <code>true</code>
	* @see       java.awt.GraphicsEnvironment#isHeadless
	* @see       java.awt.FileDialog#LOAD
	* @see       java.awt.FileDialog#SAVE
	* @since     1.5
	*/
	@:require(java5) @:overload @:public public function new(parent : java.awt.Dialog, title : String, mode : Int) : Void;
	
	/**
	* Creates the file dialog's peer.  The peer allows us to change the look
	* of the file dialog without changing its functionality.
	*/
	@:overload @:public override public function addNotify() : Void;
	
	/**
	* Indicates whether this file dialog box is for loading from a file
	* or for saving to a file.
	*
	* @return   the mode of this file dialog window, either
	*               <code>FileDialog.LOAD</code> or
	*               <code>FileDialog.SAVE</code>
	* @see      java.awt.FileDialog#LOAD
	* @see      java.awt.FileDialog#SAVE
	* @see      java.awt.FileDialog#setMode
	*/
	@:overload @:public public function getMode() : Int;
	
	/**
	* Sets the mode of the file dialog.  If <code>mode</code> is not
	* a legal value, an exception will be thrown and <code>mode</code>
	* will not be set.
	*
	* @param      mode  the mode for this file dialog, either
	*                 <code>FileDialog.LOAD</code> or
	*                 <code>FileDialog.SAVE</code>
	* @see        java.awt.FileDialog#LOAD
	* @see        java.awt.FileDialog#SAVE
	* @see        java.awt.FileDialog#getMode
	* @exception  IllegalArgumentException if an illegal file
	*                 dialog mode is supplied
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public public function setMode(mode : Int) : Void;
	
	/**
	* Gets the directory of this file dialog.
	*
	* @return  the (potentially <code>null</code> or invalid)
	*          directory of this <code>FileDialog</code>
	* @see       java.awt.FileDialog#setDirectory
	*/
	@:overload @:public public function getDirectory() : String;
	
	/**
	* Sets the directory of this file dialog window to be the
	* specified directory. Specifying a <code>null</code> or an
	* invalid directory implies an implementation-defined default.
	* This default will not be realized, however, until the user
	* has selected a file. Until this point, <code>getDirectory()</code>
	* will return the value passed into this method.
	* <p>
	* Specifying "" as the directory is exactly equivalent to
	* specifying <code>null</code> as the directory.
	*
	* @param     dir   the specified directory
	* @see       java.awt.FileDialog#getDirectory
	*/
	@:overload @:public public function setDirectory(dir : String) : Void;
	
	/**
	* Gets the selected file of this file dialog.  If the user
	* selected <code>CANCEL</code>, the returned file is <code>null</code>.
	*
	* @return    the currently selected file of this file dialog window,
	*                or <code>null</code> if none is selected
	* @see       java.awt.FileDialog#setFile
	*/
	@:overload @:public public function getFile() : String;
	
	/**
	* Returns files that the user selects.
	* <p>
	* If the user cancels the file dialog,
	* then the method returns an empty array.
	*
	* @return    files that the user selects or an empty array
	*            if the user cancels the file dialog.
	* @see       #setFile(String)
	* @see       #getFile
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function getFiles() : java.NativeArray<java.io.File>;
	
	/**
	* Sets the selected file for this file dialog window to be the
	* specified file. This file becomes the default file if it is set
	* before the file dialog window is first shown.
	* <p>
	* Specifying "" as the file is exactly equivalent to specifying
	* <code>null</code>
	* as the file.
	*
	* @param    file   the file being set
	* @see      #getFile
	* @see      #getFiles
	*/
	@:overload @:public public function setFile(file : String) : Void;
	
	/**
	* Enables or disables multiple file selection for the file dialog.
	*
	* @param enable    if {@code true}, multiple file selection is enabled;
	*                  {@code false} - disabled.
	* @see #isMultipleMode
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function setMultipleMode(enable : Bool) : Void;
	
	/**
	* Returns whether the file dialog allows the multiple file selection.
	*
	* @return          {@code true} if the file dialog allows the multiple
	*                  file selection; {@code false} otherwise.
	* @see #setMultipleMode
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function isMultipleMode() : Bool;
	
	/**
	* Determines this file dialog's filename filter. A filename filter
	* allows the user to specify which files appear in the file dialog
	* window.  Filename filters do not function in Sun's reference
	* implementation for Microsoft Windows.
	*
	* @return    this file dialog's filename filter
	* @see       java.io.FilenameFilter
	* @see       java.awt.FileDialog#setFilenameFilter
	*/
	@:overload @:public public function getFilenameFilter() : java.io.FilenameFilter;
	
	/**
	* Sets the filename filter for this file dialog window to the
	* specified filter.
	* Filename filters do not function in Sun's reference
	* implementation for Microsoft Windows.
	*
	* @param   filter   the specified filter
	* @see     java.io.FilenameFilter
	* @see     java.awt.FileDialog#getFilenameFilter
	*/
	@:overload @:public @:synchronized public function setFilenameFilter(filter : java.io.FilenameFilter) : Void;
	
	/**
	* Returns a string representing the state of this <code>FileDialog</code>
	* window. This method is intended to be used only for debugging purposes,
	* and the content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return  the parameter string of this file dialog window
	*/
	@:overload @:protected override private function paramString() : String;
	
	
}

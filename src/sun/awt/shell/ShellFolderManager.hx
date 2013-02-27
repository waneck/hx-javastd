package sun.awt.shell;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ShellFolderManager
{
	/**
	* Create a shell folder from a file.
	* Override to return machine-dependent behavior.
	*/
	@:overload public function createShellFolder(file : java.io.File) : sun.awt.shell.ShellFolder;
	
	/**
	* @param key a <code>String</code>
	*  "fileChooserDefaultFolder":
	*    Returns a <code>File</code> - the default shellfolder for a new filechooser
	*  "roots":
	*    Returns a <code>File[]</code> - containing the root(s) of the displayable hieararchy
	*  "fileChooserComboBoxFolders":
	*    Returns a <code>File[]</code> - an array of shellfolders representing the list to
	*    show by default in the file chooser's combobox
	*   "fileChooserShortcutPanelFolders":
	*    Returns a <code>File[]</code> - an array of shellfolders representing well-known
	*    folders, such as Desktop, Documents, History, Network, Home, etc.
	*    This is used in the shortcut panel of the filechooser on Windows 2000
	*    and Windows Me.
	*  "fileChooserIcon <icon>":
	*    Returns an <code>Image</code> - icon can be ListView, DetailsView, UpFolder, NewFolder or
	*    ViewMenu (Windows only).
	*
	* @return An Object matching the key string.
	*/
	@:overload public function get(key : String) : Dynamic;
	
	/**
	* Does <code>dir</code> represent a "computer" such as a node on the network, or
	* "My Computer" on the desktop.
	*/
	@:overload public function isComputerNode(dir : java.io.File) : Bool;
	
	@:overload public function isFileSystemRoot(dir : java.io.File) : Bool;
	
	@:overload private function createInvoker() : sun.awt.shell.ShellFolder.ShellFolder_Invoker;
	
	
}
@:native('sun$awt$shell$ShellFolderManager$DirectInvoker') @:internal extern class ShellFolderManager_DirectInvoker implements sun.awt.shell.ShellFolder.ShellFolder_Invoker
{
	@:overload public function invoke<T>(task : java.util.concurrent.Callable<T>) : T;
	
	
}

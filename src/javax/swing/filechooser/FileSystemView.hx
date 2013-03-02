package javax.swing.filechooser;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
* FileSystemView is JFileChooser's gateway to the
* file system. Since the JDK1.1 File API doesn't allow
* access to such information as root partitions, file type
* information, or hidden file bits, this class is designed
* to intuit as much OS-specific file system information as
* possible.
*
* <p>
*
* Java Licensees may want to provide a different implementation of
* FileSystemView to better handle a given operating system.
*
* @author Jeff Dinkins
*/
//// PENDING(jeff) - need to provide a specification for
//// how Mac/OS2/BeOS/etc file systems can modify FileSystemView
//// to handle their particular type of file system.
extern class FileSystemView
{
	@:overload public static function getFileSystemView() : javax.swing.filechooser.FileSystemView;
	
	@:overload public function new() : Void;
	
	/**
	* Determines if the given file is a root in the navigatable tree(s).
	* Examples: Windows 98 has one root, the Desktop folder. DOS has one root
	* per drive letter, <code>C:\</code>, <code>D:\</code>, etc. Unix has one root,
	* the <code>"/"</code> directory.
	*
	* The default implementation gets information from the <code>ShellFolder</code> class.
	*
	* @param f a <code>File</code> object representing a directory
	* @return <code>true</code> if <code>f</code> is a root in the navigatable tree.
	* @see #isFileSystemRoot
	*/
	@:overload public function isRoot(f : java.io.File) : Bool;
	
	/**
	* Returns true if the file (directory) can be visited.
	* Returns false if the directory cannot be traversed.
	*
	* @param f the <code>File</code>
	* @return <code>true</code> if the file/directory can be traversed, otherwise <code>false</code>
	* @see JFileChooser#isTraversable
	* @see FileView#isTraversable
	* @since 1.4
	*/
	@:require(java4) @:overload public function isTraversable(f : java.io.File) : Null<Bool>;
	
	/**
	* Name of a file, directory, or folder as it would be displayed in
	* a system file browser. Example from Windows: the "M:\" directory
	* displays as "CD-ROM (M:)"
	*
	* The default implementation gets information from the ShellFolder class.
	*
	* @param f a <code>File</code> object
	* @return the file name as it would be displayed by a native file chooser
	* @see JFileChooser#getName
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSystemDisplayName(f : java.io.File) : String;
	
	/**
	* Type description for a file, directory, or folder as it would be displayed in
	* a system file browser. Example from Windows: the "Desktop" folder
	* is desribed as "Desktop".
	*
	* Override for platforms with native ShellFolder implementations.
	*
	* @param f a <code>File</code> object
	* @return the file type description as it would be displayed by a native file chooser
	* or null if no native information is available.
	* @see JFileChooser#getTypeDescription
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSystemTypeDescription(f : java.io.File) : String;
	
	/**
	* Icon for a file, directory, or folder as it would be displayed in
	* a system file browser. Example from Windows: the "M:\" directory
	* displays a CD-ROM icon.
	*
	* The default implementation gets information from the ShellFolder class.
	*
	* @param f a <code>File</code> object
	* @return an icon as it would be displayed by a native file chooser
	* @see JFileChooser#getIcon
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSystemIcon(f : java.io.File) : javax.swing.Icon;
	
	/**
	* On Windows, a file can appear in multiple folders, other than its
	* parent directory in the filesystem. Folder could for example be the
	* "Desktop" folder which is not the same as file.getParentFile().
	*
	* @param folder a <code>File</code> object repesenting a directory or special folder
	* @param file a <code>File</code> object
	* @return <code>true</code> if <code>folder</code> is a directory or special folder and contains <code>file</code>.
	* @since 1.4
	*/
	@:require(java4) @:overload public function isParent(folder : java.io.File, file : java.io.File) : Bool;
	
	/**
	*
	* @param parent a <code>File</code> object repesenting a directory or special folder
	* @param fileName a name of a file or folder which exists in <code>parent</code>
	* @return a File object. This is normally constructed with <code>new
	* File(parent, fileName)</code> except when parent and child are both
	* special folders, in which case the <code>File</code> is a wrapper containing
	* a <code>ShellFolder</code> object.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getChild(parent : java.io.File, fileName : String) : java.io.File;
	
	/**
	* Checks if <code>f</code> represents a real directory or file as opposed to a
	* special folder such as <code>"Desktop"</code>. Used by UI classes to decide if
	* a folder is selectable when doing directory choosing.
	*
	* @param f a <code>File</code> object
	* @return <code>true</code> if <code>f</code> is a real file or directory.
	* @since 1.4
	*/
	@:require(java4) @:overload public function isFileSystem(f : java.io.File) : Bool;
	
	/**
	* Creates a new folder with a default folder name.
	*/
	@:overload @:abstract public function createNewFolder(containingDir : java.io.File) : java.io.File;
	
	/**
	* Returns whether a file is hidden or not.
	*/
	@:overload public function isHiddenFile(f : java.io.File) : Bool;
	
	/**
	* Is dir the root of a tree in the file system, such as a drive
	* or partition. Example: Returns true for "C:\" on Windows 98.
	*
	* @param dir a <code>File</code> object representing a directory
	* @return <code>true</code> if <code>f</code> is a root of a filesystem
	* @see #isRoot
	* @since 1.4
	*/
	@:require(java4) @:overload public function isFileSystemRoot(dir : java.io.File) : Bool;
	
	/**
	* Used by UI classes to decide whether to display a special icon
	* for drives or partitions, e.g. a "hard disk" icon.
	*
	* The default implementation has no way of knowing, so always returns false.
	*
	* @param dir a directory
	* @return <code>false</code> always
	* @since 1.4
	*/
	@:require(java4) @:overload public function isDrive(dir : java.io.File) : Bool;
	
	/**
	* Used by UI classes to decide whether to display a special icon
	* for a floppy disk. Implies isDrive(dir).
	*
	* The default implementation has no way of knowing, so always returns false.
	*
	* @param dir a directory
	* @return <code>false</code> always
	* @since 1.4
	*/
	@:require(java4) @:overload public function isFloppyDrive(dir : java.io.File) : Bool;
	
	/**
	* Used by UI classes to decide whether to display a special icon
	* for a computer node, e.g. "My Computer" or a network server.
	*
	* The default implementation has no way of knowing, so always returns false.
	*
	* @param dir a directory
	* @return <code>false</code> always
	* @since 1.4
	*/
	@:require(java4) @:overload public function isComputerNode(dir : java.io.File) : Bool;
	
	/**
	* Returns all root partitions on this system. For example, on
	* Windows, this would be the "Desktop" folder, while on DOS this
	* would be the A: through Z: drives.
	*/
	@:overload public function getRoots() : java.NativeArray<java.io.File>;
	
	@:overload public function getHomeDirectory() : java.io.File;
	
	/**
	* Return the user's default starting directory for the file chooser.
	*
	* @return a <code>File</code> object representing the default
	*         starting folder
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDefaultDirectory() : java.io.File;
	
	/**
	* Returns a File object constructed in dir from the given filename.
	*/
	@:overload public function createFileObject(dir : java.io.File, filename : String) : java.io.File;
	
	/**
	* Returns a File object constructed from the given path string.
	*/
	@:overload public function createFileObject(path : String) : java.io.File;
	
	/**
	* Gets the list of shown (i.e. not hidden) files.
	*/
	@:overload public function getFiles(dir : java.io.File, useFileHiding : Bool) : java.NativeArray<java.io.File>;
	
	/**
	* Returns the parent directory of <code>dir</code>.
	* @param dir the <code>File</code> being queried
	* @return the parent directory of <code>dir</code>, or
	*   <code>null</code> if <code>dir</code> is <code>null</code>
	*/
	@:overload public function getParentDirectory(dir : java.io.File) : java.io.File;
	
	/**
	* Creates a new <code>File</code> object for <code>f</code> with correct
	* behavior for a file system root directory.
	*
	* @param f a <code>File</code> object representing a file system root
	*          directory, for example "/" on Unix or "C:\" on Windows.
	* @return a new <code>File</code> object
	* @since 1.4
	*/
	@:require(java4) @:overload private function createFileSystemRoot(f : java.io.File) : java.io.File;
	
	
}
@:native('javax$swing$filechooser$FileSystemView$FileSystemRoot') @:internal extern class FileSystemView_FileSystemRoot extends java.io.File
{
	@:overload public function new(f : java.io.File) : Void;
	
	@:overload public function new(s : String) : Void;
	
	@:overload public function isDirectory() : Bool;
	
	@:overload public function getName() : String;
	
	
}
@:internal extern class UnixFileSystemView extends javax.swing.filechooser.FileSystemView
{
	/**
	* Creates a new folder with a default folder name.
	*/
	@:overload override public function createNewFolder(containingDir : java.io.File) : java.io.File;
	
	@:overload override public function isFileSystemRoot(dir : java.io.File) : Bool;
	
	@:overload override public function isDrive(dir : java.io.File) : Bool;
	
	@:overload override public function isFloppyDrive(dir : java.io.File) : Bool;
	
	@:overload override public function isComputerNode(dir : java.io.File) : Bool;
	
	
}
@:internal extern class WindowsFileSystemView extends javax.swing.filechooser.FileSystemView
{
	@:overload override public function isTraversable(f : java.io.File) : Null<Bool>;
	
	@:overload override public function getChild(parent : java.io.File, fileName : String) : java.io.File;
	
	/**
	* Type description for a file, directory, or folder as it would be displayed in
	* a system file browser. Example from Windows: the "Desktop" folder
	* is desribed as "Desktop".
	*
	* The Windows implementation gets information from the ShellFolder class.
	*/
	@:overload override public function getSystemTypeDescription(f : java.io.File) : String;
	
	/**
	* @return the Desktop folder.
	*/
	@:overload override public function getHomeDirectory() : java.io.File;
	
	/**
	* Creates a new folder with a default folder name.
	*/
	@:overload override public function createNewFolder(containingDir : java.io.File) : java.io.File;
	
	@:overload override public function isDrive(dir : java.io.File) : Bool;
	
	@:overload override public function isFloppyDrive(dir : java.io.File) : Bool;
	
	/**
	* Returns a File object constructed from the given path string.
	*/
	@:overload override public function createFileObject(path : String) : java.io.File;
	
	@:overload override private function createFileSystemRoot(f : java.io.File) : java.io.File;
	
	
}
@:internal extern class GenericFileSystemView extends javax.swing.filechooser.FileSystemView
{
	/**
	* Creates a new folder with a default folder name.
	*/
	@:overload override public function createNewFolder(containingDir : java.io.File) : java.io.File;
	
	
}

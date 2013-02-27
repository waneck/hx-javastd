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
extern class ShellFolder extends java.io.File
{
	private var parent : ShellFolder;
	
	/**
	* @return Whether this is a file system shell folder
	*/
	@:overload public function isFileSystem() : Bool;
	
	/**
	* This method must be implemented to make sure that no instances
	* of <code>ShellFolder</code> are ever serialized. If <code>isFileSystem()</code> returns
	* <code>true</code>, then the object should be representable with an instance of
	* <code>java.io.File</code> instead. If not, then the object is most likely
	* depending on some internal (native) state and cannot be serialized.
	*
	* @returns a <code>java.io.File</code> replacement object, or <code>null</code>
	* if no suitable replacement can be found.
	*/
	@:overload @:abstract private function writeReplace() : Dynamic;
	
	/**
	* Returns the path for this object's parent,
	* or <code>null</code> if this object does not name a parent
	* folder.
	*
	* @return  the path as a String for this object's parent,
	* or <code>null</code> if this object does not name a parent
	* folder
	*
	* @see java.io.File#getParent()
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getParent() : String;
	
	/**
	* Returns a File object representing this object's parent,
	* or <code>null</code> if this object does not name a parent
	* folder.
	*
	* @return  a File object representing this object's parent,
	* or <code>null</code> if this object does not name a parent
	* folder
	*
	* @see java.io.File#getParentFile()
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getParentFile() : java.io.File;
	
	@:overload override public function listFiles() : java.NativeArray<java.io.File>;
	
	@:overload public function listFiles(includeHiddenFiles : Bool) : java.NativeArray<java.io.File>;
	
	/**
	* @return Whether this shell folder is a link
	*/
	@:overload @:abstract public function isLink() : Bool;
	
	/**
	* @return The shell folder linked to by this shell folder, or null
	* if this shell folder is not a link
	*/
	@:overload @:abstract public function getLinkLocation() : ShellFolder;
	
	/**
	* @return The name used to display this shell folder
	*/
	@:overload @:abstract public function getDisplayName() : String;
	
	/**
	* @return The type of shell folder as a string
	*/
	@:overload @:abstract public function getFolderType() : String;
	
	/**
	* @return The executable type as a string
	*/
	@:overload @:abstract public function getExecutableType() : String;
	
	/**
	* Compares this ShellFolder with the specified ShellFolder for order.
	*
	* @see #compareTo(Object)
	*/
	@:overload public function compareTo(file2 : java.io.File) : Int;
	
	/**
	* @param getLargeIcon whether to return large icon (ignored in base implementation)
	* @return The icon used to display this shell folder
	*/
	@:overload public function getIcon(getLargeIcon : Bool) : java.awt.Image;
	
	/**
	* Return a shell folder from a file object
	* @exception FileNotFoundException if file does not exist
	*/
	@:overload public static function getShellFolder(file : java.io.File) : ShellFolder;
	
	/**
	* @param key a <code>String</code>
	* @return An Object matching the string <code>key</code>.
	* @see ShellFolderManager#get(String)
	*/
	@:overload public static function get(key : String) : Dynamic;
	
	/**
	* Does <code>dir</code> represent a "computer" such as a node on the network, or
	* "My Computer" on the desktop.
	*/
	@:overload public static function isComputerNode(dir : java.io.File) : Bool;
	
	/**
	* @return Whether this is a file system root directory
	*/
	@:overload public static function isFileSystemRoot(dir : java.io.File) : Bool;
	
	/**
	* Canonicalizes files that don't have symbolic links in their path.
	* Normalizes files that do, preserving symbolic links from being resolved.
	*/
	@:overload public static function getNormalizedFile(f : java.io.File) : java.io.File;
	
	@:overload public static function sort(files : java.util.List<java.io.File>) : Void;
	
	@:overload public function sortChildren(files : java.util.List<java.io.File>) : Void;
	
	@:overload override public function isAbsolute() : Bool;
	
	@:overload override public function getAbsoluteFile() : java.io.File;
	
	@:overload override public function canRead() : Bool;
	
	/**
	* Returns true if folder allows creation of children.
	* True for the "Desktop" folder, but false for the "My Computer"
	* folder.
	*/
	@:overload override public function canWrite() : Bool;
	
	@:overload override public function exists() : Bool;
	
	@:overload override public function isDirectory() : Bool;
	
	@:overload override public function isFile() : Bool;
	
	@:overload override public function lastModified() : haxe.Int64;
	
	@:overload override public function length() : haxe.Int64;
	
	@:overload override public function createNewFile() : Bool;
	
	@:overload override public function delete() : Bool;
	
	@:overload override public function deleteOnExit() : Void;
	
	@:overload override public function mkdir() : Bool;
	
	@:overload override public function mkdirs() : Bool;
	
	@:overload public function renameTo(dest : java.io.File) : Bool;
	
	@:overload override public function setLastModified(time : haxe.Int64) : Bool;
	
	@:overload override public function setReadOnly() : Bool;
	
	@:overload override public function toString() : String;
	
	@:native('getFolderColumns') @:overload public static function _getFolderColumns(dir : java.io.File) : java.NativeArray<sun.awt.shell.ShellFolderColumnInfo>;
	
	@:overload public function getFolderColumns() : java.NativeArray<sun.awt.shell.ShellFolderColumnInfo>;
	
	@:native('getFolderColumnValue') @:overload public static function _getFolderColumnValue(file : java.io.File, column : Int) : Dynamic;
	
	@:overload public function getFolderColumnValue(column : Int) : Dynamic;
	
	/**
	* Invokes the {@code task} which doesn't throw checked exceptions
	* from its {@code call} method. If invokation is interrupted then Thread.currentThread().isInterrupted() will
	* be set and result will be {@code null}
	*/
	@:overload public static function invoke<T>(task : java.util.concurrent.Callable<T>) : T;
	
	/**
	* Invokes the {@code task} which throws checked exceptions from its {@code call} method.
	* If invokation is interrupted then Thread.currentThread().isInterrupted() will
	* be set and InterruptedException will be thrown as well.
	*/
	@:overload public static function invoke<T, E : java.lang.Throwable>(task : java.util.concurrent.Callable<T>, exceptionClass : Class<E>) : T;
	
	
}
/**
* Interface allowing to invoke tasks in different environments on different platforms.
*/
@:native('sun$awt$shell$ShellFolder$Invoker') extern interface ShellFolder_Invoker
{
	/**
	* Invokes a callable task.
	*
	* @param task a task to invoke
	* @throws Exception {@code InterruptedException} or an exception that was thrown from the {@code task}
	* @return the result of {@code task}'s invokation
	*/
	@:overload public function invoke<T>(task : java.util.concurrent.Callable<T>) : T;
	
	
}
package java.io;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Package-private abstract class for the local filesystem abstraction.
*/
@:internal extern class FileSystem
{
	/**
	* Return the FileSystem object representing this platform's local
	* filesystem.
	*/
	@:overload @:native public static function getFileSystem() : java.io.FileSystem;
	
	/**
	* Return the local filesystem's name-separator character.
	*/
	@:overload @:abstract public function getSeparator() : java.StdTypes.Char16;
	
	/**
	* Return the local filesystem's path-separator character.
	*/
	@:overload @:abstract public function getPathSeparator() : java.StdTypes.Char16;
	
	/**
	* Convert the given pathname string to normal form.  If the string is
	* already in normal form then it is simply returned.
	*/
	@:overload @:abstract public function normalize(path : String) : String;
	
	/**
	* Compute the length of this pathname string's prefix.  The pathname
	* string must be in normal form.
	*/
	@:overload @:abstract public function prefixLength(path : String) : Int;
	
	/**
	* Resolve the child pathname string against the parent.
	* Both strings must be in normal form, and the result
	* will be in normal form.
	*/
	@:overload @:abstract public function resolve(parent : String, child : String) : String;
	
	/**
	* Return the parent pathname string to be used when the parent-directory
	* argument in one of the two-argument File constructors is the empty
	* pathname.
	*/
	@:overload @:abstract public function getDefaultParent() : String;
	
	/**
	* Post-process the given URI path string if necessary.  This is used on
	* win32, e.g., to transform "/c:/foo" into "c:/foo".  The path string
	* still has slash separators; code in the File class will translate them
	* after this method returns.
	*/
	@:overload @:abstract public function fromURIPath(path : String) : String;
	
	/**
	* Tell whether or not the given abstract pathname is absolute.
	*/
	@:overload @:abstract public function isAbsolute(f : java.io.File) : Bool;
	
	/**
	* Resolve the given abstract pathname into absolute form.  Invoked by the
	* getAbsolutePath and getCanonicalPath methods in the File class.
	*/
	@:overload @:abstract public function resolve(f : java.io.File) : String;
	
	@:overload @:abstract public function canonicalize(path : String) : String;
	
	/* Constants for simple boolean attributes */
	public static var BA_EXISTS(default, null) : Int;
	
	public static var BA_REGULAR(default, null) : Int;
	
	public static var BA_DIRECTORY(default, null) : Int;
	
	public static var BA_HIDDEN(default, null) : Int;
	
	/**
	* Return the simple boolean attributes for the file or directory denoted
	* by the given abstract pathname, or zero if it does not exist or some
	* other I/O error occurs.
	*/
	@:overload @:abstract public function getBooleanAttributes(f : java.io.File) : Int;
	
	public static var ACCESS_READ(default, null) : Int;
	
	public static var ACCESS_WRITE(default, null) : Int;
	
	public static var ACCESS_EXECUTE(default, null) : Int;
	
	/**
	* Check whether the file or directory denoted by the given abstract
	* pathname may be accessed by this process.  The second argument specifies
	* which access, ACCESS_READ, ACCESS_WRITE or ACCESS_EXECUTE, to check.
	* Return false if access is denied or an I/O error occurs
	*/
	@:overload @:abstract public function checkAccess(f : java.io.File, access : Int) : Bool;
	
	/**
	* Set on or off the access permission (to owner only or to all) to the file
	* or directory denoted by the given abstract pathname, based on the parameters
	* enable, access and oweronly.
	*/
	@:overload @:abstract public function setPermission(f : java.io.File, access : Int, enable : Bool, owneronly : Bool) : Bool;
	
	/**
	* Return the time at which the file or directory denoted by the given
	* abstract pathname was last modified, or zero if it does not exist or
	* some other I/O error occurs.
	*/
	@:overload @:abstract public function getLastModifiedTime(f : java.io.File) : haxe.Int64;
	
	/**
	* Return the length in bytes of the file denoted by the given abstract
	* pathname, or zero if it does not exist, is a directory, or some other
	* I/O error occurs.
	*/
	@:overload @:abstract public function getLength(f : java.io.File) : haxe.Int64;
	
	/**
	* Create a new empty file with the given pathname.  Return
	* <code>true</code> if the file was created and <code>false</code> if a
	* file or directory with the given pathname already exists.  Throw an
	* IOException if an I/O error occurs.
	*/
	@:overload @:abstract public function createFileExclusively(pathname : String) : Bool;
	
	/**
	* Delete the file or directory denoted by the given abstract pathname,
	* returning <code>true</code> if and only if the operation succeeds.
	*/
	@:overload @:abstract public function delete(f : java.io.File) : Bool;
	
	/**
	* List the elements of the directory denoted by the given abstract
	* pathname.  Return an array of strings naming the elements of the
	* directory if successful; otherwise, return <code>null</code>.
	*/
	@:overload @:abstract public function list(f : java.io.File) : java.NativeArray<String>;
	
	/**
	* Create a new directory denoted by the given abstract pathname,
	* returning <code>true</code> if and only if the operation succeeds.
	*/
	@:overload @:abstract public function createDirectory(f : java.io.File) : Bool;
	
	/**
	* Rename the file or directory denoted by the first abstract pathname to
	* the second abstract pathname, returning <code>true</code> if and only if
	* the operation succeeds.
	*/
	@:overload @:abstract public function rename(f1 : java.io.File, f2 : java.io.File) : Bool;
	
	/**
	* Set the last-modified time of the file or directory denoted by the
	* given abstract pathname, returning <code>true</code> if and only if the
	* operation succeeds.
	*/
	@:overload @:abstract public function setLastModifiedTime(f : java.io.File, time : haxe.Int64) : Bool;
	
	/**
	* Mark the file or directory denoted by the given abstract pathname as
	* read-only, returning <code>true</code> if and only if the operation
	* succeeds.
	*/
	@:overload @:abstract public function setReadOnly(f : java.io.File) : Bool;
	
	/**
	* List the available filesystem roots.
	*/
	@:overload @:abstract public function listRoots() : java.NativeArray<java.io.File>;
	
	/* -- Disk usage -- */
	public static var SPACE_TOTAL(default, null) : Int;
	
	public static var SPACE_FREE(default, null) : Int;
	
	public static var SPACE_USABLE(default, null) : Int;
	
	@:overload @:abstract public function getSpace(f : java.io.File, t : Int) : haxe.Int64;
	
	/**
	* Compare two abstract pathnames lexicographically.
	*/
	@:overload @:abstract public function compare(f1 : java.io.File, f2 : java.io.File) : Int;
	
	/**
	* Compute the hash code of an abstract pathname.
	*/
	@:overload @:abstract public function hashCode(f : java.io.File) : Int;
	
	
}

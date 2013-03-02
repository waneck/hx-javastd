package com.sun.rmi.rmid;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
* The ExecPermission class represents permission for rmid to execute
* a specific command to launch an activation group.  An ExecPermission
* consists of a pathname of a command to launch an activation group.
* <P>
* Pathname is the pathname of the file or directory to grant rmid
* execute permission.  A pathname that ends in "/*" (where "/" is
* the file separator character, <code>File.separatorChar</code>) indicates
* all the files and directories contained in that directory. A pathname
* that ends with "/-" indicates (recursively) all files
* and subdirectories contained in that directory. A pathname consisting of
* the special token "&lt;&lt;ALL FILES&gt;&gt;" matches <bold>any</bold> file.
* <P>
* Note: A pathname consisting of a single "*" indicates all the files
* in the current directory, while a pathname consisting of a single "-"
* indicates all the files in the current directory and
* (recursively) all files and subdirectories contained in the current
* directory.
* <P>
*
*
* @author Ann Wollrath
*
* @serial exclude
*/
extern class ExecPermission extends java.security.Permission
{
	/**
	* Creates a new ExecPermission object with the specified path.
	* <i>path</i> is the pathname of a file or directory.
	*
	* <p>A pathname that ends in "/*" (where "/" is
	* the file separator character, <code>File.separatorChar</code>) indicates
	* a directory and all the files contained in that directory. A pathname
	* that ends with "/-" indicates a directory and (recursively) all files
	* and subdirectories contained in that directory. The special pathname
	* "&lt;&lt;ALL FILES&gt;&gt;" matches all files.
	*
	* <p>A pathname consisting of a single "*" indicates all the files
	* in the current directory, while a pathname consisting of a single "-"
	* indicates all the files in the current directory and
	* (recursively) all files and subdirectories contained in the current
	* directory.
	*
	* @param path the pathname of the file/directory.
	*/
	@:overload public function new(path : String) : Void;
	
	/**
	* Creates a new ExecPermission object with the specified path.
	* <i>path</i> is the pathname of a file or directory.
	*
	* <p>A pathname that ends in "/*" (where "/" is
	* the file separator character, <code>File.separatorChar</code>) indicates
	* a directory and all the files contained in that directory. A pathname
	* that ends with "/-" indicates a directory and (recursively) all files
	* and subdirectories contained in that directory. The special pathname
	* "&lt;&lt;ALL FILES&gt;&gt;" matches all files.
	*
	* <p>A pathname consisting of a single "*" indicates all the files
	* in the current directory, while a pathname consisting of a single "-"
	* indicates all the files in the current directory and
	* (recursively) all files and subdirectories contained in the current
	* directory.
	*
	* @param path the pathname of the file/directory.
	* @param actions the action string (unused)
	*/
	@:overload public function new(path : String, actions : String) : Void;
	
	/**
	* Checks if this ExecPermission object "implies" the specified permission.
	* <P>
	* More specifically, this method returns true if:<p>
	* <ul>
	* <li> <i>p</i> is an instanceof ExecPermission,<p> and
	* <li> <i>p</i>'s pathname is implied by this object's
	*      pathname. For example, "/tmp/*" implies "/tmp/foo", since
	*      "/tmp/*" encompasses the "/tmp" directory and all files in that
	*      directory, including the one named "foo".
	* </ul>
	* @param p the permission to check against.
	*
	* @return true if the specified permission is implied by this object,
	* false if not.
	*/
	@:overload override public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two ExecPermission objects for equality.
	* Checks that <i>obj</i>'s class is the same as this object's class
	* and has the same name as this object.
	* <P>
	* @param obj the object we are testing for equality with this object.
	* @return true if <i>obj</i> is an ExecPermission, and has the same
	* pathname as this ExecPermission object, false otherwise.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns the canonical string representation of the actions.
	*
	* @return the canonical string representation of the actions.
	*/
	@:overload override public function getActions() : String;
	
	/**
	* Returns a new PermissionCollection object for storing
	* ExecPermission objects.
	* <p>
	* A ExecPermissionCollection stores a collection of
	* ExecPermission permissions.
	*
	* <p>ExecPermission objects must be stored in a manner that allows
	* them to be inserted in any order, but that also enables the
	* PermissionCollection <code>implies</code> method
	* to be implemented in an efficient (and consistent) manner.
	*
	* @return a new PermissionCollection object suitable for
	* storing ExecPermissions.
	*/
	@:overload override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
/**
* A ExecPermissionCollection stores a collection
* of ExecPermission permissions. ExecPermission objects
* must be stored in a manner that allows them to be inserted in any
* order, but enable the implies function to evaluate the implies
* method in an efficient (and consistent) manner.
*
* @serial include
*/
@:native('com$sun$rmi$rmid$ExecPermission$ExecPermissionCollection') @:internal extern class ExecPermission_ExecPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Create an empty ExecPermissionCollection.
	*/
	@:overload public function new() : Void;
	
	/**
	* Adds a permission to the collection.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       ExecPermission
	*
	* @exception SecurityException - if this ExecPermissionCollection
	*                                object has been marked readonly
	*/
	@:overload override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this set of permissions implies the permissions
	* expressed in "permission".
	*
	* @param p the Permission object to compare
	*
	* @return true if "permission" is a proper subset of a permission in
	* the set, false if not.
	*/
	@:overload override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the ExecPermission objects in the
	* container.
	*
	* @return an enumeration of all the ExecPermission objects.
	*/
	@:overload override public function elements() : java.util.Enumeration<Dynamic>;
	
	
}

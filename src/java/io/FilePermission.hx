package java.io;
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
extern class FilePermission extends java.security.Permission implements java.io.Serializable
{
	/**
	* Creates a new FilePermission object with the specified actions.
	* <i>path</i> is the pathname of a file or directory, and <i>actions</i>
	* contains a comma-separated list of the desired actions granted on the
	* file or directory. Possible actions are
	* "read", "write", "execute", "delete", and "readlink".
	*
	* <p>A pathname that ends in "/*" (where "/" is
	* the file separator character, <code>File.separatorChar</code>)
	* indicates all the files and directories contained in that directory.
	* A pathname that ends with "/-" indicates (recursively) all files and
	* subdirectories contained in that directory. The special pathname
	* "&lt;&lt;ALL FILES&gt;&gt;" matches any file.
	*
	* <p>A pathname consisting of a single "*" indicates all the files
	* in the current directory, while a pathname consisting of a single "-"
	* indicates all the files in the current directory and
	* (recursively) all files and subdirectories contained in the current
	* directory.
	*
	* <p>A pathname containing an empty string represents an empty path.
	*
	* @param path the pathname of the file/directory.
	* @param actions the action string.
	*
	* @throws IllegalArgumentException
	*          If actions is <code>null</code>, empty or contains an action
	*          other than the specified possible actions.
	*/
	@:overload @:public public function new(path : String, actions : String) : Void;
	
	/**
	* Checks if this FilePermission object "implies" the specified permission.
	* <P>
	* More specifically, this method returns true if:<p>
	* <ul>
	* <li> <i>p</i> is an instanceof FilePermission,<p>
	* <li> <i>p</i>'s actions are a proper subset of this
	* object's actions, and <p>
	* <li> <i>p</i>'s pathname is implied by this object's
	*      pathname. For example, "/tmp/*" implies "/tmp/foo", since
	*      "/tmp/*" encompasses all files in the "/tmp" directory,
	*      including the one named "foo".
	* </ul>
	*
	* @param p the permission to check against.
	*
	* @return <code>true</code> if the specified permission is not
	*                  <code>null</code> and is implied by this object,
	*                  <code>false</code> otherwise.
	*/
	@:overload @:public override public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two FilePermission objects for equality. Checks that <i>obj</i> is
	* a FilePermission, and has the same pathname and actions as this object.
	* <P>
	* @param obj the object we are testing for equality with this object.
	* @return <code>true</code> if obj is a FilePermission, and has the same
	*          pathname and actions as this FilePermission object,
	*          <code>false</code> otherwise.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns the "canonical string representation" of the actions.
	* That is, this method always returns present actions in the following order:
	* read, write, execute, delete, readlink. For example, if this FilePermission
	* object allows both write and read actions, a call to <code>getActions</code>
	* will return the string "read,write".
	*
	* @return the canonical string representation of the actions.
	*/
	@:overload @:public override public function getActions() : String;
	
	/**
	* Returns a new PermissionCollection object for storing FilePermission
	* objects.
	* <p>
	* FilePermission objects must be stored in a manner that allows them
	* to be inserted into the collection in any order, but that also enables the
	* PermissionCollection <code>implies</code>
	* method to be implemented in an efficient (and consistent) manner.
	*
	* <p>For example, if you have two FilePermissions:
	* <OL>
	* <LI>  <code>"/tmp/-", "read"</code>
	* <LI>  <code>"/tmp/scratch/foo", "write"</code>
	* </OL>
	*
	* <p>and you are calling the <code>implies</code> method with the FilePermission:
	*
	* <pre>
	*   "/tmp/scratch/foo", "read,write",
	* </pre>
	*
	* then the <code>implies</code> function must
	* take into account both the "/tmp/-" and "/tmp/scratch/foo"
	* permissions, so the effective permission is "read,write",
	* and <code>implies</code> returns true. The "implies" semantics for
	* FilePermissions are handled properly by the PermissionCollection object
	* returned by this <code>newPermissionCollection</code> method.
	*
	* @return a new PermissionCollection object suitable for storing
	* FilePermissions.
	*/
	@:overload @:public override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class FilePermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Create an empty FilePermissions object.
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Adds a permission to the FilePermissions. The key for the hash is
	* permission.path.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       FilePermission
	*
	* @exception SecurityException - if this FilePermissionCollection object
	*                                has been marked readonly
	*/
	@:overload @:public override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this set of permissions implies the permissions
	* expressed in "permission".
	*
	* @param p the Permission object to compare
	*
	* @return true if "permission" is a proper subset of a permission in
	* the set, false if not.
	*/
	@:overload @:public override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the FilePermission objects in the
	* container.
	*
	* @return an enumeration of all the FilePermission objects.
	*/
	@:overload @:public override public function elements() : java.util.Enumeration<Dynamic>;
	
	
}

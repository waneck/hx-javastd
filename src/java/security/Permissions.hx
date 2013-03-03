package java.security;
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
extern class Permissions extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Creates a new Permissions object containing no PermissionCollections.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Adds a permission object to the PermissionCollection for the class the
	* permission belongs to. For example, if <i>permission</i> is a
	* FilePermission, it is added to the FilePermissionCollection stored
	* in this Permissions object.
	*
	* This method creates
	* a new PermissionCollection object (and adds the permission to it)
	* if an appropriate collection does not yet exist. <p>
	*
	* @param permission the Permission object to add.
	*
	* @exception SecurityException if this Permissions object is
	* marked as readonly.
	*
	* @see PermissionCollection#isReadOnly()
	*/
	@:overload @:public override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Checks to see if this object's PermissionCollection for permissions of
	* the specified permission's class implies the permissions
	* expressed in the <i>permission</i> object. Returns true if the
	* combination of permissions in the appropriate PermissionCollection
	* (e.g., a FilePermissionCollection for a FilePermission) together
	* imply the specified permission.
	*
	* <p>For example, suppose there is a FilePermissionCollection in this
	* Permissions object, and it contains one FilePermission that specifies
	* "read" access for  all files in all subdirectories of the "/tmp"
	* directory, and another FilePermission that specifies "write" access
	* for all files in the "/tmp/scratch/foo" directory.
	* Then if the <code>implies</code> method
	* is called with a permission specifying both "read" and "write" access
	* to files in the "/tmp/scratch/foo" directory, <code>true</code> is
	* returned.
	*
	* <p>Additionally, if this PermissionCollection contains the
	* AllPermission, this method will always return true.
	* <p>
	* @param permission the Permission object to check.
	*
	* @return true if "permission" is implied by the permissions in the
	* PermissionCollection it
	* belongs to, false if not.
	*/
	@:overload @:public override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the Permission objects in all the
	* PermissionCollections in this Permissions object.
	*
	* @return an enumeration of all the Permissions.
	*/
	@:overload @:public override public function elements() : java.util.Enumeration<java.security.Permission>;
	
	
}
@:internal extern class PermissionsEnumerator implements java.util.Enumeration<java.security.Permission>
{
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : java.security.Permission;
	
	
}
@:internal extern class PermissionsHash extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Adds a permission to the PermissionsHash.
	*
	* @param permission the Permission object to add.
	*/
	@:overload @:public override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this set of permissions implies the permissions
	* expressed in "permission".
	*
	* @param permission the Permission object to compare
	*
	* @return true if "permission" is a proper subset of a permission in
	* the set, false if not.
	*/
	@:overload @:public override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the Permission objects in the container.
	*
	* @return an enumeration of all the Permissions.
	*/
	@:overload @:public override public function elements() : java.util.Enumeration<java.security.Permission>;
	
	
}

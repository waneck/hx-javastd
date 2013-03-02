package java.security;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AllPermission extends java.security.Permission
{
	/**
	* Creates a new AllPermission object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new AllPermission object. This
	* constructor exists for use by the <code>Policy</code> object
	* to instantiate new Permission objects.
	*
	* @param name ignored
	* @param actions ignored.
	*/
	@:overload public function new(name : String, actions : String) : Void;
	
	/**
	* Checks if the specified permission is "implied" by
	* this object. This method always returns true.
	*
	* @param p the permission to check against.
	*
	* @return return
	*/
	@:overload public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two AllPermission objects for equality. Two AllPermission
	* objects are always equal.
	*
	* @param obj the object we are testing for equality with this object.
	* @return true if <i>obj</i> is an AllPermission, false otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the canonical string representation of the actions.
	*
	* @return the actions.
	*/
	@:overload public function getActions() : String;
	
	/**
	* Returns a new PermissionCollection object for storing AllPermission
	* objects.
	* <p>
	*
	* @return a new PermissionCollection object suitable for
	* storing AllPermissions.
	*/
	@:overload public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class AllPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Create an empty AllPermissions object.
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Adds a permission to the AllPermissions. The key for the hash is
	* permission.path.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       AllPermission
	*
	* @exception SecurityException - if this AllPermissionCollection object
	*                                has been marked readonly
	*/
	@:overload public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this set of permissions implies the permissions
	* expressed in "permission".
	*
	* @param p the Permission object to compare
	*
	* @return always returns true.
	*/
	@:overload public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the AllPermission objects in the
	* container.
	*
	* @return an enumeration of all the AllPermission objects.
	*/
	@:overload public function elements() : java.util.Enumeration<java.security.Permission>;
	
	
}

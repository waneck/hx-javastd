package sun.security.acl;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This is a class that describes one entry that associates users
* or groups with permissions in the ACL.
* The entry may be used as a way of granting or denying permissions.
* @author      Satish Dharmaraj
*/
extern class AclEntryImpl implements java.security.acl.AclEntry
{
	/**
	* Construct an ACL entry that associates a user with permissions
	* in the ACL.
	* @param user The user that is associated with this entry.
	*/
	@:overload public function new(user : java.security.Principal) : Void;
	
	/**
	* Construct a null ACL entry
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets the principal in the entity. If a group or a
	* principal had already been set, a false value is
	* returned, otherwise a true value is returned.
	* @param user The user that is associated with this entry.
	* @return true if the principal is set, false if there is
	* one already.
	*/
	@:overload public function setPrincipal(user : java.security.Principal) : Bool;
	
	/**
	* This method sets the ACL to have negative permissions.
	* That is the user or group is denied the permission set
	* specified in the entry.
	*/
	@:overload public function setNegativePermissions() : Void;
	
	/**
	* Returns true if this is a negative ACL.
	*/
	@:overload public function isNegative() : Bool;
	
	/**
	* A principal or a group can be associated with multiple
	* permissions. This method adds a permission to the ACL entry.
	* @param permission The permission to be associated with
	* the principal or the group in the entry.
	* @return true if the permission was added, false if the
	* permission was already part of the permission set.
	*/
	@:overload public function addPermission(permission : java.security.acl.Permission) : Bool;
	
	/**
	* The method disassociates the permission from the Principal
	* or the Group in this ACL entry.
	* @param permission The permission to be disassociated with
	* the principal or the group in the entry.
	* @return true if the permission is removed, false if the
	* permission is not part of the permission set.
	*/
	@:overload public function removePermission(permission : java.security.acl.Permission) : Bool;
	
	/**
	* Checks if the passed permission is part of the allowed
	* permission set in this entry.
	* @param permission The permission that has to be part of
	* the permission set in the entry.
	* @return true if the permission passed is part of the
	* permission set in the entry, false otherwise.
	*/
	@:overload public function checkPermission(permission : java.security.acl.Permission) : Bool;
	
	/**
	* return an enumeration of the permissions in this ACL entry.
	*/
	@:overload public function permissions() : java.util.Enumeration<java.security.acl.Permission>;
	
	/**
	* Return a string representation of  the contents of the ACL entry.
	*/
	@:overload public function toString() : String;
	
	/**
	* Clones an AclEntry.
	*/
	@:overload @:synchronized public function clone() : Dynamic;
	
	/**
	* Return the Principal associated in this ACL entry.
	* The method returns null if the entry uses a group
	* instead of a principal.
	*/
	@:overload public function getPrincipal() : java.security.Principal;
	
	
}

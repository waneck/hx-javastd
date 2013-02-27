package java.security.acl;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface AclEntry extends java.lang.Cloneable
{
	/**
	* Specifies the principal for which permissions are granted or denied
	* by this ACL entry. If a principal was already set for this ACL entry,
	* false is returned, otherwise true is returned.
	*
	* @param user the principal to be set for this entry.
	*
	* @return true if the principal is set, false if there was
	* already a principal set for this entry.
	*
	* @see #getPrincipal
	*/
	@:overload public function setPrincipal(user : java.security.Principal) : Bool;
	
	/**
	* Returns the principal for which permissions are granted or denied by
	* this ACL entry. Returns null if there is no principal set for this
	* entry yet.
	*
	* @return the principal associated with this entry.
	*
	* @see #setPrincipal
	*/
	@:overload public function getPrincipal() : java.security.Principal;
	
	/**
	* Sets this ACL entry to be a negative one. That is, the associated
	* principal (e.g., a user or a group) will be denied the permission set
	* specified in the entry.
	*
	* Note: ACL entries are by default positive. An entry becomes a
	* negative entry only if this <code>setNegativePermissions</code>
	* method is called on it.
	*/
	@:overload public function setNegativePermissions() : Void;
	
	/**
	* Returns true if this is a negative ACL entry (one denying the
	* associated principal the set of permissions in the entry), false
	* otherwise.
	*
	* @return true if this is a negative ACL entry, false if it's not.
	*/
	@:overload public function isNegative() : Bool;
	
	/**
	* Adds the specified permission to this ACL entry. Note: An entry can
	* have multiple permissions.
	*
	* @param permission the permission to be associated with
	* the principal in this entry.
	*
	* @return true if the permission was added, false if the
	* permission was already part of this entry's permission set.
	*/
	@:overload public function addPermission(permission : java.security.acl.Permission) : Bool;
	
	/**
	* Removes the specified permission from this ACL entry.
	*
	* @param permission the permission to be removed from this entry.
	*
	* @return true if the permission is removed, false if the
	* permission was not part of this entry's permission set.
	*/
	@:overload public function removePermission(permission : java.security.acl.Permission) : Bool;
	
	/**
	* Checks if the specified permission is part of the
	* permission set in this entry.
	*
	* @param permission the permission to be checked for.
	*
	* @return true if the permission is part of the
	* permission set in this entry, false otherwise.
	*/
	@:overload public function checkPermission(permission : java.security.acl.Permission) : Bool;
	
	/**
	* Returns an enumeration of the permissions in this ACL entry.
	*
	* @return an enumeration of the permissions in this ACL entry.
	*/
	@:overload public function permissions() : java.util.Enumeration<java.security.acl.Permission>;
	
	
}

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
* An Access Control List (ACL) is encapsulated by this class.
* @author      Satish Dharmaraj
*/
extern class AclImpl extends sun.security.acl.OwnerImpl implements java.security.acl.Acl
{
	/**
	* Constructor for creating an empty ACL.
	*/
	@:overload @:public public function new(owner : java.security.Principal, name : String) : Void;
	
	/**
	* Sets the name of the ACL.
	* @param caller the principal who is invoking this method.
	* @param name the name of the ACL.
	* @exception NotOwnerException if the caller principal is
	* not on the owners list of the Acl.
	*/
	@:overload @:public public function setName(caller : java.security.Principal, name : String) : Void;
	
	/**
	* Returns the name of the ACL.
	* @return the name of the ACL.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Adds an ACL entry to this ACL. An entry associates a
	* group or a principal with a set of permissions. Each
	* user or group can have one positive ACL entry and one
	* negative ACL entry. If there is one of the type (negative
	* or positive) already in the table, a false value is returned.
	* The caller principal must be a part of the owners list of
	* the ACL in order to invoke this method.
	* @param caller the principal who is invoking this method.
	* @param entry the ACL entry that must be added to the ACL.
	* @return true on success, false if the entry is already present.
	* @exception NotOwnerException if the caller principal
	* is not on the owners list of the Acl.
	*/
	@:overload @:public @:synchronized public function addEntry(caller : java.security.Principal, entry : java.security.acl.AclEntry) : Bool;
	
	/**
	* Removes an ACL entry from this ACL.
	* The caller principal must be a part of the owners list of the ACL
	* in order to invoke this method.
	* @param caller the principal who is invoking this method.
	* @param entry the ACL entry that must be removed from the ACL.
	* @return true on success, false if the entry is not part of the ACL.
	* @exception NotOwnerException if the caller principal is not
	* the owners list of the Acl.
	*/
	@:overload @:public @:synchronized public function removeEntry(caller : java.security.Principal, entry : java.security.acl.AclEntry) : Bool;
	
	/**
	* This method returns the set of allowed permissions for the
	* specified principal. This set of allowed permissions is calculated
	* as follows:
	*
	* If there is no entry for a group or a principal an empty permission
	* set is assumed.
	*
	* The group positive permission set is the union of all
	* the positive permissions of each group that the individual belongs to.
	* The group negative permission set is the union of all
	* the negative permissions of each group that the individual belongs to.
	* If there is a specific permission that occurs in both
	* the postive permission set and the negative permission set,
	* it is removed from both. The group positive and negatoive permission
	* sets are calculated.
	*
	* The individial positive permission set and the individual negative
	* permission set is then calculated. Again abscence of an entry means
	* the empty set.
	*
	* The set of permissions granted to the principal is then calculated using
	* the simple rule: Individual permissions always override the Group permissions.
	* Specifically, individual negative permission set (specific
	* denial of permissions) overrides the group positive permission set.
	* And the individual positive permission set override the group negative
	* permission set.
	*
	* @param user the principal for which the ACL entry is returned.
	* @return The resulting permission set that the principal is allowed.
	*/
	@:overload @:public @:synchronized public function getPermissions(user : java.security.Principal) : java.util.Enumeration<java.security.acl.Permission>;
	
	/**
	* This method checks whether or not the specified principal
	* has the required permission. If permission is denied
	* permission false is returned, a true value is returned otherwise.
	* This method does not authenticate the principal. It presumes that
	* the principal is a valid authenticated principal.
	* @param principal the name of the authenticated principal
	* @param permission the permission that the principal must have.
	* @return true of the principal has the permission desired, false
	* otherwise.
	*/
	@:overload @:public public function checkPermission(principal : java.security.Principal, permission : java.security.acl.Permission) : Bool;
	
	/**
	* returns an enumeration of the entries in this ACL.
	*/
	@:overload @:public @:synchronized public function entries() : java.util.Enumeration<java.security.acl.AclEntry>;
	
	/**
	* return a stringified version of the
	* ACL.
	*/
	@:overload @:public public function toString() : String;
	
	
}
@:internal extern class AclEnumerator implements java.util.Enumeration<java.security.acl.AclEntry>
{
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : java.security.acl.AclEntry;
	
	
}

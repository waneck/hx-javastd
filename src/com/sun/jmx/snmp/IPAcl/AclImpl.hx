package com.sun.jmx.snmp.IPAcl;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Represent an Access Control List (ACL) which is used to guard access to http adaptor.
* <P>
* It is a data structure with multiple ACL entries. Each ACL entry, of interface type
* AclEntry, contains a set of permissions and a set of communities associated with a
* particular principal. (A principal represents an entity such as a host or a group of host).
* Additionally, each ACL entry is specified as being either positive or negative.
* If positive, the permissions are to be granted to the associated principal.
* If negative, the permissions are to be denied.
*
* @see java.security.acl.Acl
*/
@:internal extern class AclImpl extends com.sun.jmx.snmp.IPAcl.OwnerImpl.OwnerImpl implements java.security.acl.Acl.Acl implements java.io.Serializable.Serializable
{
	/**
	* Constructs the ACL with a specified owner
	*
	* @param owner owner of the ACL.
	* @param name  name of this ACL.
	*/
	@:overload public function new(owner : com.sun.jmx.snmp.IPAcl.PrincipalImpl.PrincipalImpl, name : java.lang.String.String) : Void;
	
	/**
	* Sets the name of this ACL.
	*
	* @param caller the principal invoking this method. It must be an owner
	*        of this ACL.
	* @param name the name to be given to this ACL.
	*
	* @exception NotOwnerException if the caller principal is not an owner
	*            of this ACL.
	* @see java.security.Principal
	*/
	@:overload public function setName(caller : java.security.Principal.Principal, name : java.lang.String.String) : Void;
	
	/**
	* Returns the name of this ACL.
	*
	* @return the name of this ACL.
	*/
	@:overload public function getName() : java.lang.String.String;
	
	/**
	* Adds an ACL entry to this ACL. An entry associates a principal (e.g., an individual or a group)
	* with a set of permissions. Each principal can have at most one positive ACL entry
	* (specifying permissions to be granted to the principal) and one negative ACL entry
	* (specifying permissions to be denied). If there is already an ACL entry
	* of the same type (negative or positive) already in the ACL, false is returned.
	*
	* @param caller the principal invoking this method. It must be an owner
	*        of this ACL.
	* @param entry the ACL entry to be added to this ACL.
	* @return true on success, false if an entry of the same type (positive
	*       or negative) for the same principal is already present in this ACL.
	* @exception NotOwnerException if the caller principal is not an owner of
	*       this ACL.
	* @see java.security.Principal
	*/
	@:overload public function addEntry(caller : java.security.Principal.Principal, entry : java.security.acl.AclEntry.AclEntry) : Bool;
	
	/**
	* Removes an ACL entry from this ACL.
	*
	* @param caller the principal invoking this method. It must be an owner
	*        of this ACL.
	* @param entry the ACL entry to be removed from this ACL.
	* @return true on success, false if the entry is not part of this ACL.
	* @exception NotOwnerException if the caller principal is not an owner
	*   of this Acl.
	* @see java.security.Principal
	* @see java.security.acl.AclEntry
	*/
	@:overload public function removeEntry(caller : java.security.Principal.Principal, entry : java.security.acl.AclEntry.AclEntry) : Bool;
	
	/**
	* Removes all ACL entries from this ACL.
	*
	* @param caller the principal invoking this method. It must be an owner
	*        of this ACL.
	* @exception NotOwnerException if the caller principal is not an owner of
	*        this Acl.
	* @see java.security.Principal
	*/
	@:overload public function removeAll(caller : java.security.Principal.Principal) : Void;
	
	/**
	* Returns an enumeration for the set of allowed permissions for
	* the specified principal
	* (representing an entity such as an individual or a group).
	* This set of allowed permissions is calculated as follows:
	* <UL>
	* <LI>If there is no entry in this Access Control List for the specified
	* principal, an empty permission set is returned.</LI>
	* <LI>Otherwise, the principal's group permission sets are determined.
	* (A principal can belong to one or more groups, where a group is a group
	* of principals, represented by the Group interface.)</LI>
	* </UL>
	* @param user the principal whose permission set is to be returned.
	* @return the permission set specifying the permissions the principal
	*     is allowed.
	* @see java.security.Principal
	*/
	@:overload public function getPermissions(user : java.security.Principal.Principal) : java.util.Enumeration.Enumeration<java.security.acl.Permission.Permission>;
	
	/**
	* Returns an enumeration of the entries in this ACL. Each element in the
	* enumeration is of type AclEntry.
	*
	* @return an enumeration of the entries in this ACL.
	*/
	@:overload public function entries() : java.util.Enumeration.Enumeration<java.security.acl.AclEntry.AclEntry>;
	
	/**
	* Checks whether or not the specified principal has the specified
	* permission.
	* If it does, true is returned, otherwise false is returned.
	* More specifically, this method checks whether the passed permission
	* is a member of the allowed permission set of the specified principal.
	* The allowed permission set is determined by the same algorithm as is
	* used by the getPermissions method.
	*
	* @param user the principal, assumed to be a valid authenticated Principal.
	* @param perm the permission to be checked for.
	* @return true if the principal has the specified permission,
	*         false otherwise.
	* @see java.security.Principal
	* @see java.security.Permission
	*/
	@:overload public function checkPermission(user : java.security.Principal.Principal, perm : java.security.acl.Permission) : Bool;
	
	/**
	* Checks whether or not the specified principal has the specified
	* permission.
	* If it does, true is returned, otherwise false is returned.
	* More specifically, this method checks whether the passed permission
	* is a member of the allowed permission set of the specified principal.
	* The allowed permission set is determined by the same algorithm as is
	* used by the getPermissions method.
	*
	* @param user the principal, assumed to be a valid authenticated Principal.
	* @param community the community name associated with the principal.
	* @param perm the permission to be checked for.
	* @return true if the principal has the specified permission, false
	*        otherwise.
	* @see java.security.Principal
	* @see java.security.Permission
	*/
	@:overload public function checkPermission(user : java.security.Principal.Principal, community : java.lang.String.String, perm : java.security.acl.Permission) : Bool;
	
	/**
	* Checks whether or not the specified community string is defined.
	*
	* @param community the community name associated with the principal.
	*
	* @return true if the specified community string is defined, false
	*      otherwise.
	* @see java.security.Principal
	* @see java.security.Permission
	*/
	@:overload public function checkCommunity(community : java.lang.String.String) : Bool;
	
	/**
	* Returns a string representation of the ACL contents.
	*
	* @return a string representation of the ACL contents.
	*/
	@:overload public function toString() : java.lang.String.String;
	
	
}

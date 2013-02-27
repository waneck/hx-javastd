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
* This class implements a group of principals.
* @author      Satish Dharmaraj
*/
extern class GroupImpl implements java.security.acl.Group
{
	/**
	* Constructs a Group object with no members.
	* @param groupName the name of the group
	*/
	@:overload public function new(groupName : String) : Void;
	
	/**
	* adds the specified member to the group.
	* @param user The principal to add to the group.
	* @return true if the member was added - false if the
	* member could not be added.
	*/
	@:overload public function addMember(user : java.security.Principal) : Bool;
	
	/**
	* removes the specified member from the group.
	* @param user The principal to remove from the group.
	* @param true if the principal was removed false if
	* the principal was not a member
	*/
	@:overload public function removeMember(user : java.security.Principal) : Bool;
	
	/**
	* returns the enumeration of the members in the group.
	*/
	@:overload public function members() : java.util.Enumeration<java.security.Principal>;
	
	/**
	* This function returns true if the group passed matches
	* the group represented in this interface.
	* @param another The group to compare this group to.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function equals(another : java.security.acl.Group) : Bool;
	
	/**
	* Prints a stringified version of the group.
	*/
	@:overload public function toString() : String;
	
	/**
	* return a hashcode for the principal.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* returns true if the passed principal is a member of the group.
	* @param member The principal whose membership must be checked for.
	* @return true if the principal is a member of this group,
	* false otherwise
	*/
	@:overload public function isMember(member : java.security.Principal) : Bool;
	
	/**
	* return the name of the principal.
	*/
	@:overload public function getName() : String;
	
	
}

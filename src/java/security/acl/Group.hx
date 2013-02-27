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
extern interface Group extends java.security.Principal
{
	/**
	* Adds the specified member to the group.
	*
	* @param user the principal to add to this group.
	*
	* @return true if the member was successfully added,
	* false if the principal was already a member.
	*/
	@:overload public function addMember(user : java.security.Principal) : Bool;
	
	/**
	* Removes the specified member from the group.
	*
	* @param user the principal to remove from this group.
	*
	* @return true if the principal was removed, or
	* false if the principal was not a member.
	*/
	@:overload public function removeMember(user : java.security.Principal) : Bool;
	
	/**
	* Returns true if the passed principal is a member of the group.
	* This method does a recursive search, so if a principal belongs to a
	* group which is a member of this group, true is returned.
	*
	* @param member the principal whose membership is to be checked.
	*
	* @return true if the principal is a member of this group,
	* false otherwise.
	*/
	@:overload public function isMember(member : java.security.Principal) : Bool;
	
	/**
	* Returns an enumeration of the members in the group.
	* The returned objects can be instances of either Principal
	* or Group (which is a subclass of Principal).
	*
	* @return an enumeration of the group members.
	*/
	@:overload public function members() : java.util.Enumeration<java.security.Principal>;
	
	
}

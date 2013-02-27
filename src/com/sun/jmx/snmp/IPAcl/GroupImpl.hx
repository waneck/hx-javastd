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
* This class is used to represent a subnet mask (a group of hosts
* matching the same
* IP mask).
*
*/
@:internal extern class GroupImpl extends com.sun.jmx.snmp.IPAcl.PrincipalImpl.PrincipalImpl implements java.security.acl.Group.Group implements java.io.Serializable.Serializable
{
	/**
	* Constructs an empty group.
	* @exception UnknownHostException Not implemented
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a group using the specified subnet mask.
	*
	* @param mask The subnet mask to use to build the group.
	* @exception UnknownHostException if the subnet mask cann't be built.
	*/
	@:overload public function new(mask : java.lang.String.String) : Void;
	
	/**
	* Adds the specified member to the group.
	*
	* @param p the principal to add to this group.
	* @return true if the member was successfully added, false if the
	*     principal was already a member.
	*/
	@:overload public function addMember(p : java.security.Principal.Principal) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	/**
	* Compares this group to the specified object. Returns true if the object
	* passed in matches the group represented.
	*
	* @param p the object to compare with.
	* @return true if the object passed in matches the subnet mask,
	*   false otherwise.
	*/
	@:overload override public function equals(p : java.lang.Object.Object) : Bool;
	
	/**
	* Returns true if the passed principal is a member of the group.
	*
	* @param p the principal whose membership is to be checked.
	* @return true if the principal is a member of this group, false otherwise.
	*/
	@:overload public function isMember(p : java.security.Principal.Principal) : Bool;
	
	/**
	* Returns an enumeration which contains the subnet mask.
	*
	* @return an enumeration which contains the subnet mask.
	*/
	@:overload public function members() : java.util.Enumeration.Enumeration<java.security.Principal.Principal>;
	
	/**
	* Removes the specified member from the group. (Not implemented)
	*
	* @param p the principal to remove from this group.
	* @return allways return true.
	*/
	@:overload public function removeMember(p : java.security.Principal.Principal) : Bool;
	
	/**
	* Prints a string representation of this group.
	*
	* @return  a string representation of this group.
	*/
	@:overload override public function toString() : java.lang.String.String;
	
	
}

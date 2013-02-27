package javax.management.relation;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class RoleUnresolved implements java.io.Serializable
{
	/**
	* Constructor.
	*
	* @param name  name of the role
	* @param value  value of the role (if problem when setting the
	* role)
	* @param pbType  type of problem (according to known problem types,
	* listed as static final members).
	*
	* @exception IllegalArgumentException  if null parameter or incorrect
	* problem type
	*/
	@:overload public function new(name : String, value : java.util.List<javax.management.ObjectName>, pbType : Int) : Void;
	
	/**
	* Retrieves role name.
	*
	* @return the role name.
	*
	* @see #setRoleName
	*/
	@:overload public function getRoleName() : String;
	
	/**
	* Retrieves role value.
	*
	* @return an ArrayList of ObjectName objects, the one provided to be set
	* in given role. Null if the unresolved role is returned for a read
	* access.
	*
	* @see #setRoleValue
	*/
	@:overload public function getRoleValue() : java.util.List<javax.management.ObjectName>;
	
	/**
	* Retrieves problem type.
	*
	* @return an integer corresponding to a problem, those being described as
	* static final members of current class.
	*
	* @see #setProblemType
	*/
	@:overload public function getProblemType() : Int;
	
	/**
	* Sets role name.
	*
	* @param name the new role name.
	*
	* @exception IllegalArgumentException  if null parameter
	*
	* @see #getRoleName
	*/
	@:overload public function setRoleName(name : String) : Void;
	
	/**
	* Sets role value.
	*
	* @param value  List of ObjectName objects for referenced
	* MBeans not set in role.
	*
	* @see #getRoleValue
	*/
	@:overload public function setRoleValue(value : java.util.List<javax.management.ObjectName>) : Void;
	
	/**
	* Sets problem type.
	*
	* @param pbType  integer corresponding to a problem. Must be one of
	* those described as static final members of current class.
	*
	* @exception IllegalArgumentException  if incorrect problem type
	*
	* @see #getProblemType
	*/
	@:overload public function setProblemType(pbType : Int) : Void;
	
	/**
	* Clone this object.
	*
	* @return an independent clone.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Return a string describing this object.
	*
	* @return a description of this RoleUnresolved object.
	*/
	@:overload public function toString() : String;
	
	
}

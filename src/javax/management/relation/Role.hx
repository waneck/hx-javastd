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
extern class Role implements java.io.Serializable
{
	/**
	* <p>Make a new Role object.
	* No check is made that the ObjectNames in the role value exist in
	* an MBean server.  That check will be made when the role is set
	* in a relation.
	*
	* @param roleName  role name
	* @param roleValue  role value (List of ObjectName objects)
	*
	* @exception IllegalArgumentException  if null parameter
	*/
	@:overload @:public public function new(roleName : String, roleValue : java.util.List<javax.management.ObjectName>) : Void;
	
	/**
	* Retrieves role name.
	*
	* @return the role name.
	*
	* @see #setRoleName
	*/
	@:overload @:public public function getRoleName() : String;
	
	/**
	* Retrieves role value.
	*
	* @return ArrayList of ObjectName objects for referenced MBeans.
	*
	* @see #setRoleValue
	*/
	@:overload @:public public function getRoleValue() : java.util.List<javax.management.ObjectName>;
	
	/**
	* Sets role name.
	*
	* @param roleName  role name
	*
	* @exception IllegalArgumentException  if null parameter
	*
	* @see #getRoleName
	*/
	@:overload @:public public function setRoleName(roleName : String) : Void;
	
	/**
	* Sets role value.
	*
	* @param roleValue  List of ObjectName objects for referenced
	* MBeans.
	*
	* @exception IllegalArgumentException  if null parameter
	*
	* @see #getRoleValue
	*/
	@:overload @:public public function setRoleValue(roleValue : java.util.List<javax.management.ObjectName>) : Void;
	
	/**
	* Returns a string describing the role.
	*
	* @return the description of the role.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Clone the role object.
	*
	* @return a Role that is an independent copy of the current Role object.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns a string for the given role value.
	*
	* @param roleValue  List of ObjectName objects
	*
	* @return A String consisting of the ObjectNames separated by
	* newlines (\n).
	*
	* @exception IllegalArgumentException  if null parameter
	*/
	@:overload @:public @:static public static function roleValueToString(roleValue : java.util.List<javax.management.ObjectName>) : String;
	
	
}

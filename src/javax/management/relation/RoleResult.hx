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
extern class RoleResult implements java.io.Serializable
{
	/**
	* Constructor.
	*
	* @param list  list of roles successfully accessed.
	* @param unresolvedList  list of roles not accessed (with problem
	* descriptions).
	*/
	@:overload public function new(list : javax.management.relation.RoleList, unresolvedList : javax.management.relation.RoleUnresolvedList) : Void;
	
	/**
	* Retrieves list of roles successfully accessed.
	*
	* @return a RoleList
	*
	* @see #setRoles
	*/
	@:overload public function getRoles() : javax.management.relation.RoleList;
	
	/**
	* Retrieves list of roles unsuccessfully accessed.
	*
	* @return a RoleUnresolvedList.
	*
	* @see #setRolesUnresolved
	*/
	@:overload public function getRolesUnresolved() : javax.management.relation.RoleUnresolvedList;
	
	/**
	* Sets list of roles successfully accessed.
	*
	* @param list  list of roles successfully accessed
	*
	* @see #getRoles
	*/
	@:overload public function setRoles(list : javax.management.relation.RoleList) : Void;
	
	/**
	* Sets list of roles unsuccessfully accessed.
	*
	* @param unresolvedList  list of roles unsuccessfully accessed
	*
	* @see #getRolesUnresolved
	*/
	@:overload public function setRolesUnresolved(unresolvedList : javax.management.relation.RoleUnresolvedList) : Void;
	
	
}

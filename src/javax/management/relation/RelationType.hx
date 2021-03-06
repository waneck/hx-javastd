package javax.management.relation;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface RelationType extends java.io.Serializable
{
	/**
	* Returns the relation type name.
	*
	* @return the relation type name.
	*/
	@:overload @:public public function getRelationTypeName() : String;
	
	/**
	* Returns the list of role definitions (ArrayList of RoleInfo objects).
	*
	* @return an {@link ArrayList} of {@link RoleInfo}.
	*/
	@:overload @:public public function getRoleInfos() : java.util.List<javax.management.relation.RoleInfo>;
	
	/**
	* Returns the role info (RoleInfo object) for the given role info name
	* (null if not found).
	*
	* @param roleInfoName  role info name
	*
	* @return RoleInfo object providing role definition
	* does not exist
	*
	* @exception IllegalArgumentException  if null parameter
	* @exception RoleInfoNotFoundException  if no role info with that name in
	* relation type.
	*/
	@:overload @:public public function getRoleInfo(roleInfoName : String) : javax.management.relation.RoleInfo;
	
	
}

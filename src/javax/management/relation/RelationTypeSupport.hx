package javax.management.relation;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class RelationTypeSupport implements javax.management.relation.RelationType
{
	/**
	* Constructor where all role definitions are dynamically created and
	* passed as parameter.
	*
	* @param relationTypeName  Name of relation type
	* @param roleInfoArray  List of role definitions (RoleInfo objects)
	*
	* @exception IllegalArgumentException  if null parameter
	* @exception InvalidRelationTypeException  if:
	* <P>- the same name has been used for two different roles
	* <P>- no role info provided
	* <P>- one null role info provided
	*/
	@:overload @:public public function new(relationTypeName : String, roleInfoArray : java.NativeArray<javax.management.relation.RoleInfo>) : Void;
	
	/**
	* Constructor to be used for subclasses.
	*
	* @param relationTypeName  Name of relation type.
	*
	* @exception IllegalArgumentException  if null parameter.
	*/
	@:overload @:protected private function new(relationTypeName : String) : Void;
	
	/**
	* Returns the relation type name.
	*
	* @return the relation type name.
	*/
	@:overload @:public public function getRelationTypeName() : String;
	
	/**
	* Returns the list of role definitions (ArrayList of RoleInfo objects).
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
	
	/**
	* Add a role info.
	* This method of course should not be used after the creation of the
	* relation type, because updating it would invalidate that the relations
	* created associated to that type still conform to it.
	* Can throw a RuntimeException if trying to update a relation type
	* declared in the Relation Service.
	*
	* @param roleInfo  role info to be added.
	*
	* @exception IllegalArgumentException  if null parameter.
	* @exception InvalidRelationTypeException  if there is already a role
	*  info in current relation type with the same name.
	*/
	@:overload @:protected private function addRoleInfo(roleInfo : javax.management.relation.RoleInfo) : Void;
	
	
}

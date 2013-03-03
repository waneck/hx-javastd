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
extern interface Relation
{
	/**
	* Retrieves role value for given role name.
	* <P>Checks if the role exists and is readable according to the relation
	* type.
	*
	* @param roleName  name of role
	*
	* @return the ArrayList of ObjectName objects being the role value
	*
	* @exception IllegalArgumentException  if null role name
	* @exception RoleNotFoundException  if:
	* <P>- there is no role with given name
	* <P>- the role is not readable.
	* @exception RelationServiceNotRegisteredException  if the Relation
	* Service is not registered in the MBean Server
	*
	* @see #setRole
	*/
	@:overload @:public public function getRole(roleName : String) : java.util.List<javax.management.ObjectName>;
	
	/**
	* Retrieves values of roles with given names.
	* <P>Checks for each role if it exists and is readable according to the
	* relation type.
	*
	* @param roleNameArray  array of names of roles to be retrieved
	*
	* @return a RoleResult object, including a RoleList (for roles
	* successfully retrieved) and a RoleUnresolvedList (for roles not
	* retrieved).
	*
	* @exception IllegalArgumentException  if null role name
	* @exception RelationServiceNotRegisteredException  if the Relation
	* Service is not registered in the MBean Server
	*
	* @see #setRoles
	*/
	@:overload @:public public function getRoles(roleNameArray : java.NativeArray<String>) : javax.management.relation.RoleResult;
	
	/**
	* Returns the number of MBeans currently referenced in the given role.
	*
	* @param roleName  name of role
	*
	* @return the number of currently referenced MBeans in that role
	*
	* @exception IllegalArgumentException  if null role name
	* @exception RoleNotFoundException  if there is no role with given name
	*/
	@:overload @:public public function getRoleCardinality(roleName : String) : Null<Int>;
	
	/**
	* Returns all roles present in the relation.
	*
	* @return a RoleResult object, including a RoleList (for roles
	* successfully retrieved) and a RoleUnresolvedList (for roles not
	* readable).
	*
	* @exception RelationServiceNotRegisteredException  if the Relation
	* Service is not registered in the MBean Server
	*/
	@:overload @:public public function getAllRoles() : javax.management.relation.RoleResult;
	
	/**
	* Returns all roles in the relation without checking read mode.
	*
	* @return a RoleList.
	*/
	@:overload @:public public function retrieveAllRoles() : javax.management.relation.RoleList;
	
	/**
	* Sets the given role.
	* <P>Will check the role according to its corresponding role definition
	* provided in relation's relation type
	* <P>Will send a notification (RelationNotification with type
	* RELATION_BASIC_UPDATE or RELATION_MBEAN_UPDATE, depending if the
	* relation is a MBean or not).
	*
	* @param role  role to be set (name and new value)
	*
	* @exception IllegalArgumentException  if null role
	* @exception RoleNotFoundException  if there is no role with the supplied
	* role's name or if the role is not writable (no test on the write access
	* mode performed when initializing the role)
	* @exception InvalidRoleValueException  if value provided for
	* role is not valid, i.e.:
	* <P>- the number of referenced MBeans in given value is less than
	* expected minimum degree
	* <P>- the number of referenced MBeans in provided value exceeds expected
	* maximum degree
	* <P>- one referenced MBean in the value is not an Object of the MBean
	* class expected for that role
	* <P>- a MBean provided for that role does not exist.
	* @exception RelationServiceNotRegisteredException  if the Relation
	* Service is not registered in the MBean Server
	* @exception RelationTypeNotFoundException  if the relation type has not
	* been declared in the Relation Service.
	* @exception RelationNotFoundException  if the relation has not been
	* added in the Relation Service.
	*
	* @see #getRole
	*/
	@:overload @:public public function setRole(role : javax.management.relation.Role) : Void;
	
	/**
	* Sets the given roles.
	* <P>Will check the role according to its corresponding role definition
	* provided in relation's relation type
	* <P>Will send one notification (RelationNotification with type
	* RELATION_BASIC_UPDATE or RELATION_MBEAN_UPDATE, depending if the
	* relation is a MBean or not) per updated role.
	*
	* @param roleList  list of roles to be set
	*
	* @return a RoleResult object, including a RoleList (for roles
	* successfully set) and a RoleUnresolvedList (for roles not
	* set).
	*
	* @exception IllegalArgumentException  if null role list
	* @exception RelationServiceNotRegisteredException  if the Relation
	* Service is not registered in the MBean Server
	* @exception RelationTypeNotFoundException  if the relation type has not
	* been declared in the Relation Service.
	* @exception RelationNotFoundException  if the relation MBean has not been
	* added in the Relation Service.
	*
	* @see #getRoles
	*/
	@:overload @:public public function setRoles(roleList : javax.management.relation.RoleList) : javax.management.relation.RoleResult;
	
	/**
	* Callback used by the Relation Service when a MBean referenced in a role
	* is unregistered.
	* <P>The Relation Service will call this method to let the relation
	* take action to reflect the impact of such unregistration.
	* <P>BEWARE. the user is not expected to call this method.
	* <P>Current implementation is to set the role with its current value
	* (list of ObjectNames of referenced MBeans) without the unregistered
	* one.
	*
	* @param objectName  ObjectName of unregistered MBean
	* @param roleName  name of role where the MBean is referenced
	*
	* @exception IllegalArgumentException  if null parameter
	* @exception RoleNotFoundException  if role does not exist in the
	* relation or is not writable
	* @exception InvalidRoleValueException  if role value does not conform to
	* the associated role info (this will never happen when called from the
	* Relation Service)
	* @exception RelationServiceNotRegisteredException  if the Relation
	* Service is not registered in the MBean Server
	* @exception RelationTypeNotFoundException  if the relation type has not
	* been declared in the Relation Service.
	* @exception RelationNotFoundException  if this method is called for a
	* relation MBean not added in the Relation Service.
	*/
	@:overload @:public public function handleMBeanUnregistration(objectName : javax.management.ObjectName, roleName : String) : Void;
	
	/**
	* Retrieves MBeans referenced in the various roles of the relation.
	*
	* @return a HashMap mapping:
	* <P> ObjectName -> ArrayList of String (role names)
	*/
	@:overload @:public public function getReferencedMBeans() : java.util.Map<javax.management.ObjectName, java.util.List<String>>;
	
	/**
	* Returns name of associated relation type.
	*
	* @return the name of the relation type.
	*/
	@:overload @:public public function getRelationTypeName() : String;
	
	/**
	* Returns ObjectName of the Relation Service handling the relation.
	*
	* @return the ObjectName of the Relation Service.
	*/
	@:overload @:public public function getRelationServiceName() : javax.management.ObjectName;
	
	/**
	* Returns relation identifier (used to uniquely identify the relation
	* inside the Relation Service).
	*
	* @return the relation id.
	*/
	@:overload @:public public function getRelationId() : String;
	
	
}

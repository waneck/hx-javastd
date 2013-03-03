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
extern class RelationNotification extends javax.management.Notification
{
	/**
	* Type for the creation of an internal relation.
	*/
	@:public @:static @:final public static var RELATION_BASIC_CREATION(default, null) : String;
	
	/**
	* Type for the relation MBean added into the Relation Service.
	*/
	@:public @:static @:final public static var RELATION_MBEAN_CREATION(default, null) : String;
	
	/**
	* Type for an update of an internal relation.
	*/
	@:public @:static @:final public static var RELATION_BASIC_UPDATE(default, null) : String;
	
	/**
	* Type for the update of a relation MBean.
	*/
	@:public @:static @:final public static var RELATION_MBEAN_UPDATE(default, null) : String;
	
	/**
	* Type for the removal from the Relation Service of an internal relation.
	*/
	@:public @:static @:final public static var RELATION_BASIC_REMOVAL(default, null) : String;
	
	/**
	* Type for the removal from the Relation Service of a relation MBean.
	*/
	@:public @:static @:final public static var RELATION_MBEAN_REMOVAL(default, null) : String;
	
	/**
	* Creates a notification for either a relation creation (RelationSupport
	* object created internally in the Relation Service, or an MBean added as a
	* relation) or for a relation removal from the Relation Service.
	*
	* @param notifType  type of the notification; either:
	* <P>- RELATION_BASIC_CREATION
	* <P>- RELATION_MBEAN_CREATION
	* <P>- RELATION_BASIC_REMOVAL
	* <P>- RELATION_MBEAN_REMOVAL
	* @param sourceObj  source object, sending the notification.  This is either
	* an ObjectName or a RelationService object.  In the latter case it must be
	* the MBean emitting the notification; the MBean Server will rewrite the
	* source to be the ObjectName under which that MBean is registered.
	* @param sequence  sequence number to identify the notification
	* @param timeStamp  time stamp
	* @param message  human-readable message describing the notification
	* @param id  relation id identifying the relation in the Relation
	* Service
	* @param typeName  name of the relation type
	* @param objectName  ObjectName of the relation object if it is an MBean
	* (null for relations internally handled by the Relation Service)
	* @param unregMBeanList  list of ObjectNames of referenced MBeans
	* expected to be unregistered due to relation removal (only for removal,
	* due to CIM qualifiers, can be null)
	*
	* @exception IllegalArgumentException  if:
	* <P>- no value for the notification type
	* <P>- the notification type is not RELATION_BASIC_CREATION,
	* RELATION_MBEAN_CREATION, RELATION_BASIC_REMOVAL or
	* RELATION_MBEAN_REMOVAL
	* <P>- no source object
	* <P>- the source object is not a Relation Service
	* <P>- no relation id
	* <P>- no relation type name
	*/
	@:overload @:public public function new(notifType : String, sourceObj : Dynamic, sequence : haxe.Int64, timeStamp : haxe.Int64, message : String, id : String, typeName : String, objectName : javax.management.ObjectName, unregMBeanList : java.util.List<javax.management.ObjectName>) : Void;
	
	/**
	* Creates a notification for a role update in a relation.
	*
	* @param notifType  type of the notification; either:
	* <P>- RELATION_BASIC_UPDATE
	* <P>- RELATION_MBEAN_UPDATE
	* @param sourceObj  source object, sending the notification. This is either
	* an ObjectName or a RelationService object.  In the latter case it must be
	* the MBean emitting the notification; the MBean Server will rewrite the
	* source to be the ObjectName under which that MBean is registered.
	* @param sequence  sequence number to identify the notification
	* @param timeStamp  time stamp
	* @param message  human-readable message describing the notification
	* @param id  relation id identifying the relation in the Relation
	* Service
	* @param typeName  name of the relation type
	* @param objectName  ObjectName of the relation object if it is an MBean
	* (null for relations internally handled by the Relation Service)
	* @param name  name of the updated role
	* @param newValue  new role value (List of ObjectName objects)
	* @param oldValue  old role value (List of ObjectName objects)
	*
	* @exception IllegalArgumentException  if null parameter
	*/
	@:overload @:public public function new(notifType : String, sourceObj : Dynamic, sequence : haxe.Int64, timeStamp : haxe.Int64, message : String, id : String, typeName : String, objectName : javax.management.ObjectName, name : String, newValue : java.util.List<javax.management.ObjectName>, oldValue : java.util.List<javax.management.ObjectName>) : Void;
	
	/**
	* Returns the relation identifier of created/removed/updated relation.
	*
	* @return the relation id.
	*/
	@:overload @:public public function getRelationId() : String;
	
	/**
	* Returns the relation type name of created/removed/updated relation.
	*
	* @return the relation type name.
	*/
	@:overload @:public public function getRelationTypeName() : String;
	
	/**
	* Returns the ObjectName of the
	* created/removed/updated relation.
	*
	* @return the ObjectName if the relation is an MBean, otherwise null.
	*/
	@:overload @:public public function getObjectName() : javax.management.ObjectName;
	
	/**
	* Returns the list of ObjectNames of MBeans expected to be unregistered
	* due to a relation removal (only for relation removal).
	*
	* @return a {@link List} of {@link ObjectName}.
	*/
	@:overload @:public public function getMBeansToUnregister() : java.util.List<javax.management.ObjectName>;
	
	/**
	* Returns name of updated role of updated relation (only for role update).
	*
	* @return the name of the updated role.
	*/
	@:overload @:public public function getRoleName() : String;
	
	/**
	* Returns old value of updated role (only for role update).
	*
	* @return the old value of the updated role.
	*/
	@:overload @:public public function getOldRoleValue() : java.util.List<javax.management.ObjectName>;
	
	/**
	* Returns new value of updated role (only for role update).
	*
	* @return the new value of the updated role.
	*/
	@:overload @:public public function getNewRoleValue() : java.util.List<javax.management.ObjectName>;
	
	
}

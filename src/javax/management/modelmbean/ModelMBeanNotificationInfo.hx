package javax.management.modelmbean;
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
/*
* @author    IBM Corp.
*
* Copyright IBM Corp. 1999-2000.  All rights reserved.
*/
extern class ModelMBeanNotificationInfo extends javax.management.MBeanNotificationInfo implements javax.management.DescriptorAccess
{
	/**
	* Constructs a ModelMBeanNotificationInfo object with a default
	* descriptor.
	*
	* @param notifTypes The array of strings (in dot notation) containing
	*     the notification types that may be emitted.
	* @param name The name of the Notification class.
	* @param description A human readable description of the
	*     Notification. Optional.
	**/
	@:overload public function new(notifTypes : java.NativeArray<String>, name : String, description : String) : Void;
	
	/**
	* Constructs a ModelMBeanNotificationInfo object.
	*
	* @param notifTypes The array of strings (in dot notation)
	*        containing the notification types that may be emitted.
	* @param name The name of the Notification class.
	* @param description A human readable description of the Notification.
	*        Optional.
	* @param descriptor An instance of Descriptor containing the
	*        appropriate metadata for this instance of the
	*        MBeanNotificationInfo. If it is null a default descriptor
	*        will be created. If the descriptor does not contain the
	*        fields "displayName" or "severity",
	*        the missing ones are added with their default values.
	*
	* @exception RuntimeOperationsException Wraps an
	*    {@link IllegalArgumentException}. The descriptor is invalid, or
	*    descriptor field "name" is not equal to parameter name, or
	*    descriptor field "descriptorType" is not equal to "notification".
	*
	**/
	@:overload public function new(notifTypes : java.NativeArray<String>, name : String, description : String, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Constructs a new ModelMBeanNotificationInfo object from this
	* ModelMBeanNotfication Object.
	*
	* @param inInfo the ModelMBeanNotificationInfo to be duplicated
	*
	**/
	@:overload public function new(inInfo : javax.management.modelmbean.ModelMBeanNotificationInfo) : Void;
	
	/**
	* Creates and returns a new ModelMBeanNotificationInfo which is a
	* duplicate of this ModelMBeanNotificationInfo.
	**/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns a copy of the associated Descriptor for the
	* ModelMBeanNotificationInfo.
	*
	* @return Descriptor associated with the
	* ModelMBeanNotificationInfo object.
	*
	* @see #setDescriptor
	**/
	@:overload override public function getDescriptor() : javax.management.Descriptor;
	
	/**
	* Sets associated Descriptor (full replace) for the
	* ModelMBeanNotificationInfo If the new Descriptor is null,
	* then the associated Descriptor reverts to a default
	* descriptor.  The Descriptor is validated before it is
	* assigned.  If the new Descriptor is invalid, then a
	* RuntimeOperationsException wrapping an
	* IllegalArgumentException is thrown.
	*
	* @param inDescriptor replaces the Descriptor associated with the
	* ModelMBeanNotification interface
	*
	* @exception RuntimeOperationsException Wraps an
	* {@link IllegalArgumentException} for invalid Descriptor.
	*
	* @see #getDescriptor
	**/
	@:overload public function setDescriptor(inDescriptor : javax.management.Descriptor) : Void;
	
	/**
	* Returns a human readable string containing
	* ModelMBeanNotificationInfo.
	*
	* @return a string describing this object.
	**/
	@:overload public function toString() : String;
	
	
}

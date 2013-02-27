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
extern class ModelMBeanOperationInfo extends javax.management.MBeanOperationInfo implements javax.management.DescriptorAccess
{
	/**
	* Constructs a ModelMBeanOperationInfo object with a default
	* descriptor. The {@link Descriptor} of the constructed
	* object will include fields contributed by any annotations
	* on the {@code Method} object that contain the {@link
	* DescriptorKey} meta-annotation.
	*
	* @param operationMethod The java.lang.reflect.Method object
	* describing the MBean operation.
	* @param description A human readable description of the operation.
	*/
	@:overload public function new(description : String, operationMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Constructs a ModelMBeanOperationInfo object. The {@link
	* Descriptor} of the constructed object will include fields
	* contributed by any annotations on the {@code Method} object
	* that contain the {@link DescriptorKey} meta-annotation.
	*
	* @param operationMethod The java.lang.reflect.Method object
	* describing the MBean operation.
	* @param description A human readable description of the
	* operation.
	* @param descriptor An instance of Descriptor containing the
	* appropriate metadata for this instance of the
	* ModelMBeanOperationInfo.  If it is null a default
	* descriptor will be created. If the descriptor does not
	* contain the fields
	* "displayName" or "role", the missing ones are added with
	* their default values.
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException. The descriptor is invalid; or
	* descriptor field "name" is not equal to
	* operation name; or descriptor field "DescriptorType" is
	* not equal to "operation"; or descriptor
	* optional field "role" is present but not equal to "operation",
	* "getter", or "setter".
	*
	*/
	@:overload public function new(description : String, operationMethod : java.lang.reflect.Method, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Constructs a ModelMBeanOperationInfo object with a default descriptor.
	*
	* @param name The name of the method.
	* @param description A human readable description of the operation.
	* @param signature MBeanParameterInfo objects describing the
	* parameters(arguments) of the method.
	* @param type The type of the method's return value.
	* @param impact The impact of the method, one of INFO, ACTION,
	* ACTION_INFO, UNKNOWN.
	*/
	@:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.MBeanParameterInfo>, type : String, impact : Int) : Void;
	
	/**
	* Constructs a ModelMBeanOperationInfo object.
	*
	* @param name The name of the method.
	* @param description A human readable description of the operation.
	* @param signature MBeanParameterInfo objects describing the
	* parameters(arguments) of the method.
	* @param type The type of the method's return value.
	* @param impact The impact of the method, one of INFO, ACTION,
	* ACTION_INFO, UNKNOWN.
	* @param descriptor An instance of Descriptor containing the
	* appropriate metadata for this instance of the
	* MBeanOperationInfo. If it is null then a default descriptor
	* will be created.  If the descriptor does not contain
	* fields "displayName" or "role",
	* the missing ones are added with their default values.
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException. The descriptor is invalid; or
	* descriptor field "name" is not equal to
	* operation name; or descriptor field "DescriptorType" is
	* not equal to "operation"; or descriptor optional
	* field "role" is present but not equal to "operation", "getter", or
	* "setter".
	*/
	@:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.MBeanParameterInfo>, type : String, impact : Int, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Constructs a new ModelMBeanOperationInfo object from this
	* ModelMBeanOperation Object.
	*
	* @param inInfo the ModelMBeanOperationInfo to be duplicated
	*
	*/
	@:overload public function new(inInfo : ModelMBeanOperationInfo) : Void;
	
	/**
	* Creates and returns a new ModelMBeanOperationInfo which is a
	* duplicate of this ModelMBeanOperationInfo.
	*
	*/
	@:overload override public function clone() : Dynamic;
	
	/**
	* Returns a copy of the associated Descriptor of the
	* ModelMBeanOperationInfo.
	*
	* @return Descriptor associated with the
	* ModelMBeanOperationInfo object.
	*
	* @see #setDescriptor
	*/
	@:overload override public function getDescriptor() : javax.management.Descriptor;
	
	/**
	* Sets associated Descriptor (full replace) for the
	* ModelMBeanOperationInfo If the new Descriptor is null, then
	* the associated Descriptor reverts to a default descriptor.
	* The Descriptor is validated before it is assigned.  If the
	* new Descriptor is invalid, then a
	* RuntimeOperationsException wrapping an
	* IllegalArgumentException is thrown.
	*
	* @param inDescriptor replaces the Descriptor associated with the
	* ModelMBeanOperation.
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException for invalid Descriptor.
	*
	* @see #getDescriptor
	*/
	@:overload public function setDescriptor(inDescriptor : javax.management.Descriptor) : Void;
	
	/**
	* Returns a string containing the entire contents of the
	* ModelMBeanOperationInfo in human readable form.
	*/
	@:overload override public function toString() : String;
	
	
}

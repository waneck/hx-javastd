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
extern class ModelMBeanConstructorInfo extends javax.management.MBeanConstructorInfo implements javax.management.DescriptorAccess
{
	/**
	* Constructs a ModelMBeanConstructorInfo object with a default
	* descriptor.  The {@link Descriptor} of the constructed
	* object will include fields contributed by any annotations on
	* the {@code Constructor} object that contain the {@link
	* DescriptorKey} meta-annotation.
	*
	* @param description A human readable description of the constructor.
	* @param constructorMethod The java.lang.reflect.Constructor object
	* describing the MBean constructor.
	*/
	@:overload public function new(description : String, constructorMethod : java.lang.reflect.Constructor<Dynamic>) : Void;
	
	/**
	* Constructs a ModelMBeanConstructorInfo object.  The {@link
	* Descriptor} of the constructed object will include fields
	* contributed by any annotations on the {@code Constructor}
	* object that contain the {@link DescriptorKey}
	* meta-annotation.
	*
	* @param description A human readable description of the constructor.
	* @param constructorMethod The java.lang.reflect.Constructor object
	* describing the ModelMBean constructor.
	* @param descriptor An instance of Descriptor containing the
	* appropriate metadata for this instance of the
	* ModelMBeanConstructorInfo.  If it is null, then a default
	* descriptor will be created. If the descriptor does not
	* contain the field "displayName" this field is added in the
	* descriptor with its default value.
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException. The descriptor is invalid, or
	* descriptor field "name" is not equal to name
	* parameter, or descriptor field "descriptorType" is
	* not equal to "operation" or descriptor field "role" is
	* present but not equal to "constructor".
	*/
	@:overload public function new(description : String, constructorMethod : java.lang.reflect.Constructor<Dynamic>, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Constructs a ModelMBeanConstructorInfo object with a default descriptor.
	*
	* @param name The name of the constructor.
	* @param description A human readable description of the constructor.
	* @param signature MBeanParameterInfo object array describing the parameters(arguments) of the constructor.
	*/
	@:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.MBeanParameterInfo>) : Void;
	
	/**
	* Constructs a ModelMBeanConstructorInfo object.
	*
	* @param name The name of the constructor.
	* @param description A human readable description of the constructor.
	* @param signature MBeanParameterInfo objects describing the parameters(arguments) of the constructor.
	* @param descriptor An instance of Descriptor containing the appropriate metadata
	*                   for this instance of the MBeanConstructorInfo. If it is null then a default descriptor will be created.
	* If the descriptor does not contain the field "displayName" this field
	* is added in the descriptor with its default value.
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException. The descriptor is invalid, or
	* descriptor field "name" is not equal to name
	* parameter, or descriptor field "descriptorType" is
	* not equal to "operation" or descriptor field "role" is
	* present but not equal to "constructor".
	*/
	@:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.MBeanParameterInfo>, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Creates and returns a new ModelMBeanConstructorInfo which is a duplicate of this ModelMBeanConstructorInfo.
	*
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns a copy of the associated Descriptor.
	*
	* @return Descriptor associated with the
	* ModelMBeanConstructorInfo object.
	*
	* @see #setDescriptor
	*/
	@:overload override public function getDescriptor() : javax.management.Descriptor;
	
	/**
	* Sets associated Descriptor (full replace) of
	* ModelMBeanConstructorInfo.  If the new Descriptor is null,
	* then the associated Descriptor reverts to a default
	* descriptor.  The Descriptor is validated before it is
	* assigned.  If the new Descriptor is invalid, then a
	* RuntimeOperationsException wrapping an
	* IllegalArgumentException is thrown.
	*
	* @param inDescriptor replaces the Descriptor associated with
	* the ModelMBeanConstructor. If the descriptor does not
	* contain all the following fields, the missing ones are added with
	* their default values: displayName, name, role, descriptorType.
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException.  The descriptor is invalid, or
	* descriptor field "name" is present but not equal to name
	* parameter, or descriptor field "descriptorType" is present
	* but not equal to "operation" or descriptor field "role" is
	* present but not equal to "constructor".
	*
	* @see #getDescriptor
	*/
	@:overload public function setDescriptor(inDescriptor : javax.management.Descriptor) : Void;
	
	/**
	* Returns a string containing the entire contents of the ModelMBeanConstructorInfo in human readable form.
	*/
	@:overload public function toString() : String;
	
	
}

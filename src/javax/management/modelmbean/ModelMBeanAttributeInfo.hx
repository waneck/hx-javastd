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
extern class ModelMBeanAttributeInfo extends javax.management.MBeanAttributeInfo implements javax.management.DescriptorAccess
{
	/**
	* Constructs a ModelMBeanAttributeInfo object with a default
	* descriptor. The {@link Descriptor} of the constructed
	* object will include fields contributed by any annotations
	* on the {@code Method} objects that contain the {@link
	* DescriptorKey} meta-annotation.
	*
	* @param name The name of the attribute.
	* @param description A human readable description of the attribute. Optional.
	* @param getter The method used for reading the attribute value.
	*          May be null if the property is write-only.
	* @param setter The method used for writing the attribute value.
	*          May be null if the attribute is read-only.
	* @exception IntrospectionException There is a consistency
	* problem in the definition of this attribute.
	*
	*/
	@:overload public function new(name : String, description : String, getter : java.lang.reflect.Method, setter : java.lang.reflect.Method) : Void;
	
	/**
	* Constructs a ModelMBeanAttributeInfo object.  The {@link
	* Descriptor} of the constructed object will include fields
	* contributed by any annotations on the {@code Method}
	* objects that contain the {@link DescriptorKey}
	* meta-annotation.
	*
	* @param name The name of the attribute.
	* @param description A human readable description of the attribute. Optional.
	* @param getter The method used for reading the attribute value.
	*          May be null if the property is write-only.
	* @param setter The method used for writing the attribute value.
	*          May be null if the attribute is read-only.
	* @param descriptor An instance of Descriptor containing the
	* appropriate metadata for this instance of the Attribute. If
	* it is null, then a default descriptor will be created.  If
	* the descriptor does not contain the field "displayName" this field is added
	* in the descriptor with its default value.
	* @exception IntrospectionException There is a consistency
	* problem in the definition of this attribute.
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException. The descriptor is invalid, or descriptor
	* field "name" is not equal to name parameter, or descriptor field
	* "descriptorType" is not equal to "attribute".
	*
	*/
	@:overload public function new(name : String, description : String, getter : java.lang.reflect.Method, setter : java.lang.reflect.Method, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Constructs a ModelMBeanAttributeInfo object with a default descriptor.
	*
	* @param name The name of the attribute
	* @param type The type or class name of the attribute
	* @param description A human readable description of the attribute.
	* @param isReadable True if the attribute has a getter method, false otherwise.
	* @param isWritable True if the attribute has a setter method, false otherwise.
	* @param isIs True if the attribute has an "is" getter, false otherwise.
	*
	*/
	@:overload public function new(name : String, type : String, description : String, isReadable : Bool, isWritable : Bool, isIs : Bool) : Void;
	
	/**
	* Constructs a ModelMBeanAttributeInfo object.
	*
	* @param name The name of the attribute
	* @param type The type or class name of the attribute
	* @param description A human readable description of the attribute.
	* @param isReadable True if the attribute has a getter method, false otherwise.
	* @param isWritable True if the attribute has a setter method, false otherwise.
	* @param isIs True if the attribute has an "is" getter, false otherwise.
	* @param descriptor An instance of Descriptor containing the
	* appropriate metadata for this instance of the Attribute. If
	* it is null then a default descriptor will be created.  If
	* the descriptor does not contain the field "displayName" this field
	* is added in the descriptor with its default value.
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException. The descriptor is invalid, or descriptor
	* field "name" is not equal to name parameter, or descriptor field
	* "descriptorType" is not equal to "attribute".
	*
	*/
	@:overload public function new(name : String, type : String, description : String, isReadable : Bool, isWritable : Bool, isIs : Bool, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Constructs a new ModelMBeanAttributeInfo object from this
	* ModelMBeanAttributeInfo Object.  A default descriptor will
	* be created.
	*
	* @param inInfo the ModelMBeanAttributeInfo to be duplicated
	*/
	@:overload public function new(inInfo : ModelMBeanAttributeInfo) : Void;
	
	/**
	* Gets a copy of the associated Descriptor for the
	* ModelMBeanAttributeInfo.
	*
	* @return Descriptor associated with the
	* ModelMBeanAttributeInfo object.
	*
	* @see #setDescriptor
	*/
	@:overload override public function getDescriptor() : javax.management.Descriptor;
	
	/**
	* Sets associated Descriptor (full replace) for the
	* ModelMBeanAttributeDescriptor.  If the new Descriptor is
	* null, then the associated Descriptor reverts to a default
	* descriptor.  The Descriptor is validated before it is
	* assigned.  If the new Descriptor is invalid, then a
	* RuntimeOperationsException wrapping an
	* IllegalArgumentException is thrown.
	* @param inDescriptor replaces the Descriptor associated with the
	* ModelMBeanAttributeInfo
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException for an invalid Descriptor
	*
	* @see #getDescriptor
	*/
	@:overload public function setDescriptor(inDescriptor : javax.management.Descriptor) : Void;
	
	/**
	* Creates and returns a new ModelMBeanAttributeInfo which is a duplicate of this ModelMBeanAttributeInfo.
	*
	* @exception RuntimeOperationsException for illegal value for
	* field Names or field Values.  If the descriptor construction
	* fails for any reason, this exception will be thrown.
	*/
	@:overload override public function clone() : Dynamic;
	
	/**
	* Returns a human-readable version of the
	* ModelMBeanAttributeInfo instance.
	*/
	@:overload override public function toString() : String;
	
	
}

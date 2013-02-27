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
extern class ModelMBeanInfoSupport extends javax.management.MBeanInfo implements javax.management.modelmbean.ModelMBeanInfo
{
	/**
	* Constructs a ModelMBeanInfoSupport which is a duplicate of the given
	* ModelMBeanInfo.  The returned object is a shallow copy of the given
	* object.  Neither the Descriptor nor the contained arrays
	* ({@code ModelMBeanAttributeInfo[]} etc) are cloned.  This method is
	* chiefly of interest to modify the Descriptor of the returned instance
	* via {@link #setDescriptor setDescriptor} without affecting the
	* Descriptor of the original object.
	*
	* @param mbi the ModelMBeanInfo instance from which the ModelMBeanInfo
	* being created is initialized.
	*/
	@:overload public function new(mbi : javax.management.modelmbean.ModelMBeanInfo) : Void;
	
	/**
	* Creates a ModelMBeanInfoSupport with the provided information,
	* but the descriptor is a default.
	* The default descriptor is: name=className, descriptorType="mbean",
	* displayName=className, persistPolicy="never", log="F", visibility="1"
	*
	* @param className classname of the MBean
	* @param description human readable description of the
	* ModelMBean
	* @param attributes array of ModelMBeanAttributeInfo objects
	* which have descriptors
	* @param constructors array of ModelMBeanConstructorInfo
	* objects which have descriptors
	* @param operations array of ModelMBeanOperationInfo objects
	* which have descriptors
	* @param notifications array of ModelMBeanNotificationInfo
	* objects which have descriptors
	*/
	@:overload public function new(className : String, description : String, attributes : java.NativeArray<javax.management.modelmbean.ModelMBeanAttributeInfo>, constructors : java.NativeArray<javax.management.modelmbean.ModelMBeanConstructorInfo>, operations : java.NativeArray<javax.management.modelmbean.ModelMBeanOperationInfo>, notifications : java.NativeArray<javax.management.modelmbean.ModelMBeanNotificationInfo>) : Void;
	
	/**
	* Creates a ModelMBeanInfoSupport with the provided information
	* and the descriptor given in parameter.
	*
	* @param className classname of the MBean
	* @param description human readable description of the
	* ModelMBean
	* @param attributes array of ModelMBeanAttributeInfo objects
	* which have descriptors
	* @param constructors array of ModelMBeanConstructorInfo
	* objects which have descriptor
	* @param operations array of ModelMBeanOperationInfo objects
	* which have descriptor
	* @param notifications array of ModelMBeanNotificationInfo
	* objects which have descriptor
	* @param mbeandescriptor descriptor to be used as the
	* MBeanDescriptor containing MBean wide policy. If the
	* descriptor is null, a default descriptor will be constructed.
	* The default descriptor is:
	* name=className, descriptorType="mbean", displayName=className,
	* persistPolicy="never", log="F", visibility="1".  If the descriptor
	* does not contain all of these fields, the missing ones are
	* added with these default values.
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException for invalid descriptor passed in
	* parameter.  (see {@link #getMBeanDescriptor
	* getMBeanDescriptor} for the definition of a valid MBean
	* descriptor.)
	*/
	@:overload public function new(className : String, description : String, attributes : java.NativeArray<javax.management.modelmbean.ModelMBeanAttributeInfo>, constructors : java.NativeArray<javax.management.modelmbean.ModelMBeanConstructorInfo>, operations : java.NativeArray<javax.management.modelmbean.ModelMBeanOperationInfo>, notifications : java.NativeArray<javax.management.modelmbean.ModelMBeanNotificationInfo>, mbeandescriptor : javax.management.Descriptor) : Void;
	
	/**
	* Returns a shallow clone of this instance.  Neither the Descriptor nor
	* the contained arrays ({@code ModelMBeanAttributeInfo[]} etc) are
	* cloned.  This method is chiefly of interest to modify the Descriptor
	* of the clone via {@link #setDescriptor setDescriptor} without affecting
	* the Descriptor of the original object.
	*
	* @return a shallow clone of this instance.
	*/
	@:overload override public function clone() : Dynamic;
	
	@:overload public function getDescriptors(inDescriptorType : String) : java.NativeArray<javax.management.Descriptor>;
	
	@:overload public function setDescriptors(inDescriptors : java.NativeArray<javax.management.Descriptor>) : Void;
	
	/**
	* Returns a Descriptor requested by name.
	*
	* @param inDescriptorName The name of the descriptor.
	*
	* @return Descriptor containing a descriptor for the ModelMBean with the
	*         same name. If no descriptor is found, null is returned.
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException
	*            for null name.
	*
	* @see #setDescriptor
	*/
	@:overload public function getDescriptor(inDescriptorName : String) : javax.management.Descriptor;
	
	@:overload public function getDescriptor(inDescriptorName : String, inDescriptorType : String) : javax.management.Descriptor;
	
	@:overload public function setDescriptor(inDescriptor : javax.management.Descriptor, inDescriptorType : String) : Void;
	
	@:overload public function getAttribute(inName : String) : javax.management.modelmbean.ModelMBeanAttributeInfo;
	
	@:overload public function getOperation(inName : String) : javax.management.modelmbean.ModelMBeanOperationInfo;
	
	/**
	* Returns the ModelMBeanConstructorInfo requested by name.
	* If no ModelMBeanConstructorInfo exists for this name null is returned.
	*
	* @param inName the name of the constructor.
	*
	* @return the constructor info for the named constructor, or null
	* if there is none.
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException
	*            for a null constructor name.
	*/
	@:overload public function getConstructor(inName : String) : javax.management.modelmbean.ModelMBeanConstructorInfo;
	
	@:overload public function getNotification(inName : String) : javax.management.modelmbean.ModelMBeanNotificationInfo;
	
	/**
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getDescriptor() : javax.management.Descriptor;
	
	@:overload public function getMBeanDescriptor() : javax.management.Descriptor;
	
	@:overload public function setMBeanDescriptor(inMBeanDescriptor : javax.management.Descriptor) : Void;
	
	
}

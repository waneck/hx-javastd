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
extern interface ModelMBeanInfo
{
	/**
	* Returns a Descriptor array consisting of all
	* Descriptors for the ModelMBeanInfo of type inDescriptorType.
	*
	* @param inDescriptorType value of descriptorType field that must be set for the descriptor
	* to be returned.  Must be "mbean", "attribute", "operation", "constructor" or "notification".
	* If it is null or empty then all types will be returned.
	*
	* @return Descriptor array containing all descriptors for the ModelMBean if type inDescriptorType.
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException when the descriptorType in parameter is
	* not one of: "mbean", "attribute", "operation", "constructor", "notification", empty or null.
	*
	* @see #setDescriptors
	*/
	@:overload public function getDescriptors(inDescriptorType : String) : java.NativeArray<javax.management.Descriptor>;
	
	/**
	* Adds or replaces descriptors in the ModelMBeanInfo.
	*
	* @param inDescriptors The descriptors to be set in the ModelMBeanInfo. Null
	* elements of the list will be ignored.  All descriptors must have name and descriptorType fields.
	*
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException for a null or invalid descriptor.
	* @exception MBeanException Wraps a distributed communication Exception.
	*
	* @see #getDescriptors
	*/
	@:overload public function setDescriptors(inDescriptors : java.NativeArray<javax.management.Descriptor>) : Void;
	
	/**
	* Returns a Descriptor requested by name and descriptorType.
	*
	* @param inDescriptorName The name of the descriptor.
	* @param inDescriptorType The type of the descriptor being
	* requested.  If this is null or empty then all types are
	* searched. Valid types are 'mbean', 'attribute', 'constructor'
	* 'operation', and 'notification'. This value will be equal to
	* the 'descriptorType' field in the descriptor that is returned.
	*
	* @return Descriptor containing the descriptor for the ModelMBean
	* with the same name and descriptorType.  If no descriptor is
	* found, null is returned.
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException for a null descriptor name or null or invalid type.
	* The type must be "mbean","attribute", "constructor", "operation", or "notification".
	*
	* @see #setDescriptor
	*/
	@:overload public function getDescriptor(inDescriptorName : String, inDescriptorType : String) : javax.management.Descriptor;
	
	/**
	* Sets descriptors in the info array of type inDescriptorType
	* for the ModelMBean.  The setDescriptor method of the
	* corresponding ModelMBean*Info will be called to set the
	* specified descriptor.
	*
	* @param inDescriptor The descriptor to be set in the
	* ModelMBean. It must NOT be null.  All descriptors must have
	* name and descriptorType fields.
	* @param inDescriptorType The type of the descriptor being
	* set. If this is null then the descriptorType field in the
	* descriptor is used. If specified this value must be set in
	* the descriptorType field in the descriptor. Must be
	* "mbean","attribute", "constructor", "operation", or
	* "notification".
	*
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException for illegal or null arguments or
	* if the name field of the descriptor is not found in the
	* corresponding MBeanAttributeInfo or MBeanConstructorInfo or
	* MBeanNotificationInfo or MBeanOperationInfo.
	* @exception MBeanException Wraps a distributed communication
	* Exception.
	*
	* @see #getDescriptor
	*/
	@:overload public function setDescriptor(inDescriptor : javax.management.Descriptor, inDescriptorType : String) : Void;
	
	/**
	* <p>Returns the ModelMBean's descriptor which contains MBean wide
	* policies.  This descriptor contains metadata about the MBean and default
	* policies for persistence and caching.</p>
	*
	* <P id="descriptor">
	* The fields in the descriptor are defined, but not limited to, the
	* following.  Note that when the Type in this table is Number, a String
	* that is the decimal representation of a Long can also be used.</P>
	*
	* <table border="1" cellpadding="5">
	* <tr><th>Name</th><th>Type</th><th>Meaning</th></tr>
	* <tr><td>name</td><td>String</td>
	*     <td>MBean name.</td></tr>
	* <tr><td>descriptorType</td><td>String</td>
	*     <td>Must be "mbean".</td></tr>
	* <tr><td>displayName</td><td>String</td>
	*     <td>Name of MBean to be used in displays.</td></tr>
	* <tr><td>persistPolicy</td><td>String</td>
	*     <td>One of: OnUpdate|OnTimer|NoMoreOftenThan|OnUnregister|Always|Never.
	*         See the section "MBean Descriptor Fields" in the JMX specification
	*         document.</td></tr>
	* <tr><td>persistLocation</td><td>String</td>
	*     <td>The fully qualified directory name where the MBean should be
	*         persisted (if appropriate).</td></tr>
	* <tr><td>persistFile</td><td>String</td>
	*     <td>File name into which the MBean should be persisted.</td></tr>
	* <tr><td>persistPeriod</td><td>Number</td>
	*     <td>Frequency of persist cycle in seconds, for OnTime and
	*         NoMoreOftenThan PersistPolicy</td></tr>
	* <tr><td>currencyTimeLimit</td><td>Number</td>
	*     <td>How long cached value is valid: &lt;0 never, =0 always,
	*         &gt;0 seconds.</td></tr>
	* <tr><td>log</td><td>String</td>
	*     <td>t: log all notifications, f: log no notifications.</td></tr>
	* <tr><td>logfile</td><td>String</td>
	*     <td>Fully qualified filename to log events to.</td></tr>
	* <tr><td>visibility</td><td>Number</td>
	*     <td>1-4 where 1: always visible 4: rarely visible.</td></tr>
	* <tr><td>export</td><td>String</td>
	*     <td>Name to be used to export/expose this MBean so that it is
	*         findable by other JMX Agents.</td></tr>
	* <tr><td>presentationString</td><td>String</td>
	*     <td>XML formatted string to allow presentation of data to be
	*         associated with the MBean.</td></tr>
	* </table>
	*
	* <P>
	* The default descriptor is: name=className,descriptorType="mbean", displayName=className,
	*  persistPolicy="never",log="F",visibility="1"
	* If the descriptor does not contain all these fields, they will be added with these default values.
	*
	* <p><b>Note:</b> because of inconsistencies in previous versions of
	* this specification, it is recommended not to use negative or zero
	* values for <code>currencyTimeLimit</code>.  To indicate that a
	* cached value is never valid, omit the
	* <code>currencyTimeLimit</code> field.  To indicate that it is
	* always valid, use a very large number for this field.</p>
	*
	* @return the MBean descriptor.
	*
	* @exception MBeanException Wraps a distributed communication
	* Exception.
	*
	* @exception RuntimeOperationsException a {@link
	* RuntimeException} occurred while getting the descriptor.
	*
	* @see #setMBeanDescriptor
	*/
	@:overload public function getMBeanDescriptor() : javax.management.Descriptor;
	
	/**
	* Sets the ModelMBean's descriptor.  This descriptor contains default, MBean wide
	* metadata about the MBean and default policies for persistence and caching. This operation
	* does a complete replacement of the descriptor, no merging is done. If the descriptor to
	* set to is null then the default descriptor will be created.
	* The default descriptor is: name=className,descriptorType="mbean", displayName=className,
	*  persistPolicy="never",log="F",visibility="1"
	* If the descriptor does not contain all these fields, they will be added with these default values.
	*
	* See {@link #getMBeanDescriptor getMBeanDescriptor} method javadoc for description of valid field names.
	*
	* @param inDescriptor the descriptor to set.
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException  for invalid descriptor.
	*
	*
	* @see #getMBeanDescriptor
	*/
	@:overload public function setMBeanDescriptor(inDescriptor : javax.management.Descriptor) : Void;
	
	/**
	* Returns a ModelMBeanAttributeInfo requested by name.
	*
	* @param inName The name of the ModelMBeanAttributeInfo to get.
	* If no ModelMBeanAttributeInfo exists for this name null is returned.
	*
	* @return the attribute info for the named attribute, or null
	* if there is none.
	*
	* @exception MBeanException Wraps a distributed communication
	* Exception.
	* @exception RuntimeOperationsException Wraps an
	* IllegalArgumentException for a null attribute name.
	*
	*/
	@:overload public function getAttribute(inName : String) : javax.management.modelmbean.ModelMBeanAttributeInfo;
	
	/**
	* Returns a ModelMBeanOperationInfo requested by name.
	*
	* @param inName The name of the ModelMBeanOperationInfo to get.
	* If no ModelMBeanOperationInfo exists for this name null is returned.
	*
	* @return the operation info for the named operation, or null
	* if there is none.
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException for a null operation name.
	*
	*/
	@:overload public function getOperation(inName : String) : javax.management.modelmbean.ModelMBeanOperationInfo;
	
	/**
	* Returns a ModelMBeanNotificationInfo requested by name.
	*
	* @param inName The name of the ModelMBeanNotificationInfo to get.
	* If no ModelMBeanNotificationInfo exists for this name null is returned.
	*
	* @return the info for the named notification, or null if there
	* is none.
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException for a null notification name.
	*
	*/
	@:overload public function getNotification(inName : String) : javax.management.modelmbean.ModelMBeanNotificationInfo;
	
	/**
	* Returns the list of attributes exposed for management.
	* Each attribute is described by an <CODE>MBeanAttributeInfo</CODE> object.
	*
	* @return  An array of <CODE>MBeanAttributeInfo</CODE> objects.
	*/
	@:overload public function getAttributes() : java.NativeArray<javax.management.MBeanAttributeInfo>;
	
	/**
	* Returns the name of the Java class of the MBean described by
	* this <CODE>MBeanInfo</CODE>.
	*
	* @return the Java class name.
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Returns the list of the public constructors  of the MBean.
	* Each constructor is described by an <CODE>MBeanConstructorInfo</CODE> object.
	*
	* @return  An array of <CODE>MBeanConstructorInfo</CODE> objects.
	*/
	@:overload public function getConstructors() : java.NativeArray<javax.management.MBeanConstructorInfo>;
	
	/**
	* Returns a human readable description of the MBean.
	*
	* @return the description.
	*/
	@:overload public function getDescription() : String;
	
	/**
	* Returns the list of the notifications emitted by the MBean.
	* Each notification is described by an <CODE>MBeanNotificationInfo</CODE> object.
	* <P>
	* In addition to any notification specified by the application,
	* a ModelMBean may always send also two additional notifications:
	* <UL>
	* <LI> One with descriptor name "GENERIC" and displayName "jmx.modelmbean.generic"
	* <LI> Second is a standard attribute change notification
	*      with descriptor name "ATTRIBUTE_CHANGE" and displayName "jmx.attribute.change"
	* </UL>
	* Thus any implementation of ModelMBeanInfo should always add those two notifications
	* in addition to those specified by the application.
	*
	* @return  An array of <CODE>MBeanNotificationInfo</CODE> objects.
	*/
	@:overload public function getNotifications() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	/**
	* Returns the list of operations  of the MBean.
	* Each operation is described by an <CODE>MBeanOperationInfo</CODE> object.
	*
	* @return  An array of <CODE>MBeanOperationInfo</CODE> objects.
	*/
	@:overload public function getOperations() : java.NativeArray<javax.management.MBeanOperationInfo>;
	
	
}

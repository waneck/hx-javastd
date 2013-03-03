package javax.management.openmbean;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
//// java import
////
//// jmx import
////
extern interface OpenMBeanInfo
{
	/**
	* Returns the fully qualified Java class name of the open MBean
	* instances this <tt>OpenMBeanInfo</tt> describes.
	*
	* @return the class name.
	*/
	@:overload @:public public function getClassName() : String;
	
	/**
	* Returns a human readable description of the type of open MBean
	* instances this <tt>OpenMBeanInfo</tt> describes.
	*
	* @return the description.
	*/
	@:overload @:public public function getDescription() : String;
	
	/**
	* Returns an array of <tt>OpenMBeanAttributeInfo</tt> instances
	* describing each attribute in the open MBean described by this
	* <tt>OpenMBeanInfo</tt> instance.  Each instance in the returned
	* array should actually be a subclass of
	* <tt>MBeanAttributeInfo</tt> which implements the
	* <tt>OpenMBeanAttributeInfo</tt> interface (typically {@link
	* OpenMBeanAttributeInfoSupport}).
	*
	* @return the attribute array.
	*/
	@:overload @:public public function getAttributes() : java.NativeArray<javax.management.MBeanAttributeInfo>;
	
	/**
	* Returns an array of <tt>OpenMBeanOperationInfo</tt> instances
	* describing each operation in the open MBean described by this
	* <tt>OpenMBeanInfo</tt> instance.  Each instance in the returned
	* array should actually be a subclass of
	* <tt>MBeanOperationInfo</tt> which implements the
	* <tt>OpenMBeanOperationInfo</tt> interface (typically {@link
	* OpenMBeanOperationInfoSupport}).
	*
	* @return the operation array.
	*/
	@:overload @:public public function getOperations() : java.NativeArray<javax.management.MBeanOperationInfo>;
	
	/**
	* Returns an array of <tt>OpenMBeanConstructorInfo</tt> instances
	* describing each constructor in the open MBean described by this
	* <tt>OpenMBeanInfo</tt> instance.  Each instance in the returned
	* array should actually be a subclass of
	* <tt>MBeanConstructorInfo</tt> which implements the
	* <tt>OpenMBeanConstructorInfo</tt> interface (typically {@link
	* OpenMBeanConstructorInfoSupport}).
	*
	* @return the constructor array.
	*/
	@:overload @:public public function getConstructors() : java.NativeArray<javax.management.MBeanConstructorInfo>;
	
	/**
	* Returns an array of <tt>MBeanNotificationInfo</tt> instances
	* describing each notification emitted by the open MBean
	* described by this <tt>OpenMBeanInfo</tt> instance.
	*
	* @return the notification array.
	*/
	@:overload @:public public function getNotifications() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	
}

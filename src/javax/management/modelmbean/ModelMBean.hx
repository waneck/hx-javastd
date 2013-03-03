package javax.management.modelmbean;
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
/*
* @author    IBM Corp.
*
* Copyright IBM Corp. 1999-2000.  All rights reserved.
*/
extern interface ModelMBean extends javax.management.DynamicMBean extends javax.management.PersistentMBean extends javax.management.modelmbean.ModelMBeanNotificationBroadcaster
{
	/**
	* Initializes a ModelMBean object using ModelMBeanInfo passed in.
	* This method makes it possible to set a customized ModelMBeanInfo on
	* the ModelMBean as long as it is not registered with the MBeanServer.
	* <br>
	* Once the ModelMBean's ModelMBeanInfo (with Descriptors) are
	* customized and set on the ModelMBean, the  ModelMBean can be
	* registered with the MBeanServer.
	* <P>
	* If the ModelMBean is currently registered, this method throws
	* a {@link javax.management.RuntimeOperationsException} wrapping an
	* {@link IllegalStateException}
	*
	* @param inModelMBeanInfo The ModelMBeanInfo object to be used
	*        by the ModelMBean.
	*
	* @exception MBeanException Wraps a distributed communication
	*        Exception.
	* @exception RuntimeOperationsException
	* <ul><li>Wraps an {@link IllegalArgumentException} if
	*         the MBeanInfo passed in parameter is null.</li>
	*     <li>Wraps an {@link IllegalStateException} if the ModelMBean
	*         is currently registered in the MBeanServer.</li>
	* </ul>
	*
	**/
	@:overload @:public public function setModelMBeanInfo(inModelMBeanInfo : javax.management.modelmbean.ModelMBeanInfo) : Void;
	
	/**
	* Sets the instance handle of the object against which to
	* execute all methods in this ModelMBean management interface
	* (MBeanInfo and Descriptors).
	*
	* @param mr Object that is the managed resource
	* @param mr_type The type of reference for the managed resource.  Can be: ObjectReference,
	*               Handle, IOR, EJBHandle, RMIReference.
	*               If the MBeanServer cannot process the mr_type passed in, an InvalidTargetTypeException
	*               will be thrown.
	*
	*
	* @exception MBeanException The initializer of the object has thrown an exception.
	* @exception RuntimeOperationsException Wraps an IllegalArgumentException:
	*       The managed resource type passed in parameter is null.
	* @exception InstanceNotFoundException The managed resource object could not be found
	* @exception InvalidTargetObjectTypeException The managed resource type cannot be processed by the
	* ModelMBean or JMX Agent.
	*/
	@:overload @:public public function setManagedResource(mr : Dynamic, mr_type : String) : Void;
	
	
}

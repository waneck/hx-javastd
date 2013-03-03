package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MBeanServerDelegateImpl extends javax.management.MBeanServerDelegate implements javax.management.DynamicMBean implements javax.management.MBeanRegistration
{
	@:overload @:public public function new() : Void;
	
	@:overload @:final @:public public function preRegister(server : javax.management.MBeanServer, name : javax.management.ObjectName) : javax.management.ObjectName;
	
	@:overload @:final @:public public function postRegister(registrationDone : Null<Bool>) : Void;
	
	@:overload @:final @:public public function preDeregister() : Void;
	
	@:overload @:final @:public public function postDeregister() : Void;
	
	/**
	* Obtains the value of a specific attribute of the MBeanServerDelegate.
	*
	* @param attribute The name of the attribute to be retrieved
	*
	* @return  The value of the attribute retrieved.
	*
	* @exception AttributeNotFoundException
	* @exception MBeanException
	*            Wraps a <CODE>java.lang.Exception</CODE> thrown by the
	*            MBean's getter.
	*/
	@:overload @:public public function getAttribute(attribute : String) : Dynamic;
	
	/**
	* This method always fail since all MBeanServerDelegateMBean attributes
	* are read-only.
	*
	* @param attribute The identification of the attribute to
	* be set and  the value it is to be set to.
	*
	* @exception AttributeNotFoundException
	*/
	@:overload @:public public function setAttribute(attribute : javax.management.Attribute) : Void;
	
	/**
	* Makes it possible to get the values of several attributes of
	* the MBeanServerDelegate.
	*
	* @param attributes A list of the attributes to be retrieved.
	*
	* @return  The list of attributes retrieved.
	*
	*/
	@:overload @:public public function getAttributes(attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	/**
	* This method always return an empty list since all
	* MBeanServerDelegateMBean attributes are read-only.
	*
	* @param attributes A list of attributes: The identification of the
	* attributes to be set and  the values they are to be set to.
	*
	* @return  The list of attributes that were set, with their new values.
	*          In fact, this method always return an empty list since all
	*          MBeanServerDelegateMBean attributes are read-only.
	*/
	@:overload @:public public function setAttributes(attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	/**
	* Always fails since the MBeanServerDelegate MBean has no operation.
	*
	* @param actionName The name of the action to be invoked.
	* @param params An array containing the parameters to be set when the
	*        action is invoked.
	* @param signature An array containing the signature of the action.
	*
	* @return  The object returned by the action, which represents
	*          the result of invoking the action on the MBean specified.
	*
	* @exception MBeanException  Wraps a <CODE>java.lang.Exception</CODE>
	*         thrown by the MBean's invoked method.
	* @exception ReflectionException  Wraps a
	*      <CODE>java.lang.Exception</CODE> thrown while trying to invoke
	*      the method.
	*/
	@:overload @:public public function invoke(actionName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Provides the MBeanInfo describing the MBeanServerDelegate.
	*
	* @return  The MBeanInfo describing the MBeanServerDelegate.
	*
	*/
	@:overload @:public public function getMBeanInfo() : javax.management.MBeanInfo;
	
	
}

package javax.management;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
/**
* Defines the methods that should be implemented by
* a Dynamic MBean (MBean that exposes a dynamic management interface).
*
* @since 1.5
*/
@:require(java5) extern interface DynamicMBean
{
	/**
	* Obtain the value of a specific attribute of the Dynamic MBean.
	*
	* @param attribute The name of the attribute to be retrieved
	*
	* @return  The value of the attribute retrieved.
	*
	* @exception AttributeNotFoundException
	* @exception MBeanException  Wraps a <CODE>java.lang.Exception</CODE> thrown by the MBean's getter.
	* @exception ReflectionException  Wraps a <CODE>java.lang.Exception</CODE> thrown while trying to invoke the getter.
	*
	* @see #setAttribute
	*/
	@:overload @:public public function getAttribute(attribute : String) : Dynamic;
	
	/**
	* Set the value of a specific attribute of the Dynamic MBean.
	*
	* @param attribute The identification of the attribute to
	* be set and  the value it is to be set to.
	*
	* @exception AttributeNotFoundException
	* @exception InvalidAttributeValueException
	* @exception MBeanException Wraps a <CODE>java.lang.Exception</CODE> thrown by the MBean's setter.
	* @exception ReflectionException Wraps a <CODE>java.lang.Exception</CODE> thrown while trying to invoke the MBean's setter.
	*
	* @see #getAttribute
	*/
	@:overload @:public public function setAttribute(attribute : javax.management.Attribute) : Void;
	
	/**
	* Get the values of several attributes of the Dynamic MBean.
	*
	* @param attributes A list of the attributes to be retrieved.
	*
	* @return  The list of attributes retrieved.
	*
	* @see #setAttributes
	*/
	@:overload @:public public function getAttributes(attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	/**
	* Sets the values of several attributes of the Dynamic MBean.
	*
	* @param attributes A list of attributes: The identification of the
	* attributes to be set and  the values they are to be set to.
	*
	* @return  The list of attributes that were set, with their new values.
	*
	* @see #getAttributes
	*/
	@:overload @:public public function setAttributes(attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	/**
	* Allows an action to be invoked on the Dynamic MBean.
	*
	* @param actionName The name of the action to be invoked.
	* @param params An array containing the parameters to be set when the action is
	* invoked.
	* @param signature An array containing the signature of the action. The class objects will
	* be loaded through the same class loader as the one used for loading the
	* MBean on which the action is invoked.
	*
	* @return  The object returned by the action, which represents the result of
	* invoking the action on the MBean specified.
	*
	* @exception MBeanException  Wraps a <CODE>java.lang.Exception</CODE> thrown by the MBean's invoked method.
	* @exception ReflectionException  Wraps a <CODE>java.lang.Exception</CODE> thrown while trying to invoke the method
	*/
	@:overload @:public public function invoke(actionName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Provides the exposed attributes and actions of the Dynamic MBean using an MBeanInfo object.
	*
	* @return  An instance of <CODE>MBeanInfo</CODE> allowing all attributes and actions
	* exposed by this Dynamic MBean to be retrieved.
	*
	*/
	@:overload @:public public function getMBeanInfo() : javax.management.MBeanInfo;
	
	
}

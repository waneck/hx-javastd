package javax.management;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectInstance implements java.io.Serializable
{
	/**
	* Allows an object instance to be created given a string representation of
	* an object name and the full class name, including the package name.
	*
	* @param objectName  A string representation of the object name.
	* @param className The full class name, including the package
	* name, of the object instance.  If the MBean is a Dynamic MBean
	* the class name corresponds to its {@link
	* DynamicMBean#getMBeanInfo()
	* getMBeanInfo()}<code>.getClassName()</code>.
	*
	* @exception MalformedObjectNameException The string passed as a
	* parameter does not have the right format.
	*
	*/
	@:overload public function new(objectName : String, className : String) : Void;
	
	/**
	* Allows an object instance to be created given an object name and
	* the full class name, including the package name.
	*
	* @param objectName  The object name.
	* @param className  The full class name, including the package
	* name, of the object instance.  If the MBean is a Dynamic MBean
	* the class name corresponds to its {@link
	* DynamicMBean#getMBeanInfo()
	* getMBeanInfo()}<code>.getClassName()</code>.
	* If the MBean is a Dynamic MBean the class name should be retrieved
	* from the <CODE>MBeanInfo</CODE> it provides.
	*
	*/
	@:overload public function new(objectName : javax.management.ObjectName, className : String) : Void;
	
	/**
	* Compares the current object instance with another object instance.
	*
	* @param object  The object instance that the current object instance is
	*     to be compared with.
	*
	* @return  True if the two object instances are equal, otherwise false.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the object name part.
	*
	* @return the object name.
	*/
	@:overload public function getObjectName() : javax.management.ObjectName;
	
	/**
	* Returns the class part.
	*
	* @return the class name.
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Returns a string representing this ObjectInstance object. The format of this string
	* is not specified, but users can expect that two ObjectInstances return the same
	* string if and only if they are equal.
	*/
	@:overload public function toString() : String;
	
	
}

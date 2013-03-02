package javax.management.relation;
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
extern class RoleInfo implements java.io.Serializable
{
	/**
	* To specify an unlimited cardinality.
	*/
	public static var ROLE_CARDINALITY_INFINITY(default, null) : Int;
	
	/**
	* Constructor.
	*
	* @param roleName  name of the role.
	* @param mbeanClassName  name of the class of MBean(s) expected to
	* be referenced in corresponding role.  If an MBean <em>M</em> is in
	* this role, then the MBean server must return true for
	* {@link MBeanServer#isInstanceOf isInstanceOf(M, mbeanClassName)}.
	* @param read  flag to indicate if the corresponding role
	* can be read
	* @param write  flag to indicate if the corresponding role
	* can be set
	* @param min  minimum degree for role, i.e. minimum number of
	* MBeans to provide in corresponding role
	* Must be less than or equal to <tt>max</tt>.
	* (ROLE_CARDINALITY_INFINITY for unlimited)
	* @param max  maximum degree for role, i.e. maximum number of
	* MBeans to provide in corresponding role
	* Must be greater than or equal to <tt>min</tt>
	* (ROLE_CARDINALITY_INFINITY for unlimited)
	* @param descr  description of the role (can be null)
	*
	* @exception IllegalArgumentException  if null parameter
	* @exception InvalidRoleInfoException  if the minimum degree is
	* greater than the maximum degree.
	* @exception ClassNotFoundException As of JMX 1.2, this exception
	* can no longer be thrown.  It is retained in the declaration of
	* this class for compatibility with existing code.
	* @exception NotCompliantMBeanException  if the class mbeanClassName
	* is not a MBean class.
	*/
	@:overload public function new(roleName : String, mbeanClassName : String, read : Bool, write : Bool, min : Int, max : Int, descr : String) : Void;
	
	/**
	* Constructor.
	*
	* @param roleName  name of the role
	* @param mbeanClassName  name of the class of MBean(s) expected to
	* be referenced in corresponding role.  If an MBean <em>M</em> is in
	* this role, then the MBean server must return true for
	* {@link MBeanServer#isInstanceOf isInstanceOf(M, mbeanClassName)}.
	* @param read  flag to indicate if the corresponding role
	* can be read
	* @param write  flag to indicate if the corresponding role
	* can be set
	*
	* <P>Minimum and maximum degrees defaulted to 1.
	* <P>Description of role defaulted to null.
	*
	* @exception IllegalArgumentException  if null parameter
	* @exception ClassNotFoundException As of JMX 1.2, this exception
	* can no longer be thrown.  It is retained in the declaration of
	* this class for compatibility with existing code.
	* @exception NotCompliantMBeanException As of JMX 1.2, this
	* exception can no longer be thrown.  It is retained in the
	* declaration of this class for compatibility with existing code.
	*/
	@:overload public function new(roleName : String, mbeanClassName : String, read : Bool, write : Bool) : Void;
	
	/**
	* Constructor.
	*
	* @param roleName  name of the role
	* @param mbeanClassName  name of the class of MBean(s) expected to
	* be referenced in corresponding role.  If an MBean <em>M</em> is in
	* this role, then the MBean server must return true for
	* {@link MBeanServer#isInstanceOf isInstanceOf(M, mbeanClassName)}.
	*
	* <P>IsReadable and IsWritable defaulted to true.
	* <P>Minimum and maximum degrees defaulted to 1.
	* <P>Description of role defaulted to null.
	*
	* @exception IllegalArgumentException  if null parameter
	* @exception ClassNotFoundException As of JMX 1.2, this exception
	* can no longer be thrown.  It is retained in the declaration of
	* this class for compatibility with existing code.
	* @exception NotCompliantMBeanException As of JMX 1.2, this
	* exception can no longer be thrown.  It is retained in the
	* declaration of this class for compatibility with existing code.
	*/
	@:overload public function new(roleName : String, mbeanClassName : String) : Void;
	
	/**
	* Copy constructor.
	*
	* @param roleInfo the <tt>RoleInfo</tt> instance to be copied.
	*
	* @exception IllegalArgumentException  if null parameter
	*/
	@:overload public function new(roleInfo : javax.management.relation.RoleInfo) : Void;
	
	/**
	* Returns the name of the role.
	*
	* @return the name of the role.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns read access mode for the role (true if it is readable).
	*
	* @return true if the role is readable.
	*/
	@:overload public function isReadable() : Bool;
	
	/**
	* Returns write access mode for the role (true if it is writable).
	*
	* @return true if the role is writable.
	*/
	@:overload public function isWritable() : Bool;
	
	/**
	* Returns description text for the role.
	*
	* @return the description of the role.
	*/
	@:overload public function getDescription() : String;
	
	/**
	* Returns minimum degree for corresponding role reference.
	*
	* @return the minimum degree.
	*/
	@:overload public function getMinDegree() : Int;
	
	/**
	* Returns maximum degree for corresponding role reference.
	*
	* @return the maximum degree.
	*/
	@:overload public function getMaxDegree() : Int;
	
	/**
	* <p>Returns name of type of MBean expected to be referenced in
	* corresponding role.</p>
	*
	* @return the name of the referenced type.
	*/
	@:overload public function getRefMBeanClassName() : String;
	
	/**
	* Returns true if the <tt>value</tt> parameter is greater than or equal to
	* the expected minimum degree, false otherwise.
	*
	* @param value  the value to be checked
	*
	* @return true if greater than or equal to minimum degree, false otherwise.
	*/
	@:overload public function checkMinDegree(value : Int) : Bool;
	
	/**
	* Returns true if the <tt>value</tt> parameter is lower than or equal to
	* the expected maximum degree, false otherwise.
	*
	* @param value  the value to be checked
	*
	* @return true if lower than or equal to maximum degree, false otherwise.
	*/
	@:overload public function checkMaxDegree(value : Int) : Bool;
	
	/**
	* Returns a string describing the role info.
	*
	* @return a description of the role info.
	*/
	@:overload public function toString() : String;
	
	
}

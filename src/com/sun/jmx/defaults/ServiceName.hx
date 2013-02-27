package com.sun.jmx.defaults;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Used for storing default values used by JMX services.
*
* @since 1.5
*/
@:require(java5) extern class ServiceName
{
	/**
	* The object name of the MBeanServer delegate object
	* <BR>
	* The value is <CODE>JMImplementation:type=MBeanServerDelegate</CODE>.
	*/
	public static var DELEGATE(default, null) : String;
	
	/**
	* The default key properties for registering the class loader of the
	* MLet service.
	* <BR>
	* The value is <CODE>type=MLet</CODE>.
	*/
	public static var MLET(default, null) : String;
	
	/**
	* The default domain.
	* <BR>
	* The value is <CODE>DefaultDomain</CODE>.
	*/
	public static var DOMAIN(default, null) : String;
	
	/**
	* The name of the JMX specification implemented by this product.
	* <BR>
	* The value is <CODE>Java Management Extensions</CODE>.
	*/
	public static var JMX_SPEC_NAME(default, null) : String;
	
	/**
	* The version of the JMX specification implemented by this product.
	* <BR>
	* The value is <CODE>1.4</CODE>.
	*/
	public static var JMX_SPEC_VERSION(default, null) : String;
	
	/**
	* The vendor of the JMX specification implemented by this product.
	* <BR>
	* The value is <CODE>Oracle Corporation</CODE>.
	*/
	public static var JMX_SPEC_VENDOR(default, null) : String;
	
	/**
	* The name of this product implementing the  JMX specification.
	* <BR>
	* The value is <CODE>JMX</CODE>.
	*/
	public static var JMX_IMPL_NAME(default, null) : String;
	
	/**
	* The name of the vendor of this product implementing the
	* JMX specification.
	* <BR>
	* The value is <CODE>Oracle Corporation</CODE>.
	*/
	public static var JMX_IMPL_VENDOR(default, null) : String;
	
	
}

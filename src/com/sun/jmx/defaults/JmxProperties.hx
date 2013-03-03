package com.sun.jmx.defaults;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class JmxProperties
{
	/**
	* References the property that specifies the directory where
	* the native libraries will be stored before the MLet Service
	* loads them into memory.
	* <p>
	* Property Name: <B>jmx.mlet.library.dir</B>
	*/
	@:public @:static @:final public static var JMX_INITIAL_BUILDER(default, null) : String;
	
	/**
	* References the property that specifies the directory where
	* the native libraries will be stored before the MLet Service
	* loads them into memory.
	* <p>
	* Property Name: <B>jmx.mlet.library.dir</B>
	*/
	@:public @:static @:final public static var MLET_LIB_DIR(default, null) : String;
	
	/**
	* References the property that specifies the full name of the JMX
	* specification implemented by this product.
	* <p>
	* Property Name: <B>jmx.specification.name</B>
	*/
	@:public @:static @:final public static var JMX_SPEC_NAME(default, null) : String;
	
	/**
	* References the property that specifies the version of the JMX
	* specification implemented by this product.
	* <p>
	* Property Name: <B>jmx.specification.version</B>
	*/
	@:public @:static @:final public static var JMX_SPEC_VERSION(default, null) : String;
	
	/**
	* References the property that specifies the vendor of the JMX
	* specification implemented by this product.
	* <p>
	* Property Name: <B>jmx.specification.vendor</B>
	*/
	@:public @:static @:final public static var JMX_SPEC_VENDOR(default, null) : String;
	
	/**
	* References the property that specifies the full name of this product
	* implementing the  JMX specification.
	* <p>
	* Property Name: <B>jmx.implementation.name</B>
	*/
	@:public @:static @:final public static var JMX_IMPL_NAME(default, null) : String;
	
	/**
	* References the property that specifies the name of the vendor of this
	* product implementing the  JMX specification.
	* <p>
	* Property Name: <B>jmx.implementation.vendor</B>
	*/
	@:public @:static @:final public static var JMX_IMPL_VENDOR(default, null) : String;
	
	/**
	* References the property that specifies the version of this product
	* implementing the  JMX specification.
	* <p>
	* Property Name: <B>jmx.implementation.version</B>
	*/
	@:public @:static @:final public static var JMX_IMPL_VERSION(default, null) : String;
	
	/**
	* Logger name for MBean Server information.
	*/
	@:public @:static @:final public static var MBEANSERVER_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for MBean Server information.
	*/
	@:public @:static @:final public static var MBEANSERVER_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for MLet service information.
	*/
	@:public @:static @:final public static var MLET_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for MLet service information.
	*/
	@:public @:static @:final public static var MLET_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for Monitor information.
	*/
	@:public @:static @:final public static var MONITOR_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for Monitor information.
	*/
	@:public @:static @:final public static var MONITOR_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for Timer information.
	*/
	@:public @:static @:final public static var TIMER_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for Timer information.
	*/
	@:public @:static @:final public static var TIMER_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for Event Management information.
	*/
	@:public @:static @:final public static var NOTIFICATION_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for Event Management information.
	*/
	@:public @:static @:final public static var NOTIFICATION_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for Relation Service.
	*/
	@:public @:static @:final public static var RELATION_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for Relation Service.
	*/
	@:public @:static @:final public static var RELATION_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for Model MBean.
	*/
	@:public @:static @:final public static var MODELMBEAN_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for Model MBean.
	*/
	@:public @:static @:final public static var MODELMBEAN_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for all other JMX classes.
	*/
	@:public @:static @:final public static var MISC_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for all other JMX classes.
	*/
	@:public @:static @:final public static var MISC_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for SNMP.
	*/
	@:public @:static @:final public static var SNMP_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for SNMP.
	*/
	@:public @:static @:final public static var SNMP_LOGGER(default, null) : java.util.logging.Logger;
	
	/**
	* Logger name for SNMP Adaptor.
	*/
	@:public @:static @:final public static var SNMP_ADAPTOR_LOGGER_NAME(default, null) : String;
	
	/**
	* Logger for SNMP Adaptor.
	*/
	@:public @:static @:final public static var SNMP_ADAPTOR_LOGGER(default, null) : java.util.logging.Logger;
	
	
}

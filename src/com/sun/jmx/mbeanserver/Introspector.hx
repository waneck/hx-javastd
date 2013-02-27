package com.sun.jmx.mbeanserver;
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
extern class Introspector
{
	/**
	* Tell whether a MBean of the given class is a Dynamic MBean.
	* This method does nothing more than returning
	* <pre>
	* javax.management.DynamicMBean.class.isAssignableFrom(c)
	* </pre>
	* This method does not check for any JMX MBean compliance:
	* <ul><li>If <code>true</code> is returned, then instances of
	*     <code>c</code> are DynamicMBean.</li>
	*     <li>If <code>false</code> is returned, then no further
	*     assumption can be made on instances of <code>c</code>.
	*     In particular, instances of <code>c</code> may, or may not
	*     be JMX standard MBeans.</li>
	* </ul>
	* @param c The class of the MBean under examination.
	* @return <code>true</code> if instances of <code>c</code> are
	*         Dynamic MBeans, <code>false</code> otherwise.
	*
	**/
	@:overload @:final public static function isDynamic(c : Class<Dynamic>) : Bool;
	
	/**
	* Basic method for testing that a MBean of a given class can be
	* instantiated by the MBean server.<p>
	* This method checks that:
	* <ul><li>The given class is a concrete class.</li>
	*     <li>The given class exposes at least one public constructor.</li>
	* </ul>
	* If these conditions are not met, throws a NotCompliantMBeanException.
	* @param c The class of the MBean we want to create.
	* @exception NotCompliantMBeanException if the MBean class makes it
	*            impossible to instantiate the MBean from within the
	*            MBeanServer.
	*
	**/
	@:overload public static function testCreation(c : Class<Dynamic>) : Void;
	
	@:overload public static function checkCompliance(mbeanClass : Class<Dynamic>) : Void;
	
	@:overload public static function makeDynamicMBean<T>(mbean : T) : javax.management.DynamicMBean;
	
	/**
	* Basic method for testing if a given class is a JMX compliant MBean.
	*
	* @param baseClass The class to be tested
	*
	* @return <code>null</code> if the MBean is a DynamicMBean,
	*         the computed {@link javax.management.MBeanInfo} otherwise.
	* @exception NotCompliantMBeanException The specified class is not a
	*            JMX compliant MBean
	*/
	@:overload public static function testCompliance(baseClass : Class<Dynamic>) : javax.management.MBeanInfo;
	
	@:overload public static function testComplianceMXBeanInterface(interfaceClass : Class<Dynamic>) : Void;
	
	/**
	* Basic method for testing if a given class is a JMX compliant
	* Standard MBean.  This method is only called by the legacy code
	* in com.sun.management.jmx.
	*
	* @param baseClass The class to be tested.
	*
	* @param mbeanInterface the MBean interface that the class implements,
	* or null if the interface must be determined by introspection.
	*
	* @return the computed {@link javax.management.MBeanInfo}.
	* @exception NotCompliantMBeanException The specified class is not a
	*            JMX compliant Standard MBean
	*/
	@:overload @:synchronized public static function testCompliance(baseClass : Class<Dynamic>, mbeanInterface : Class<Dynamic>) : javax.management.MBeanInfo;
	
	/**
	* Get the MBean interface implemented by a JMX Standard
	* MBean class. This method is only called by the legacy
	* code in "com.sun.management.jmx".
	*
	* @param baseClass The class to be tested.
	*
	* @return The MBean interface implemented by the MBean.
	*         Return <code>null</code> if the MBean is a DynamicMBean,
	*         or if no MBean interface is found.
	*/
	@:overload public static function getMBeanInterface(baseClass : Class<Dynamic>) : Class<Dynamic>;
	
	/**
	* Get the MBean interface implemented by a JMX Standard MBean class.
	*
	* @param baseClass The class to be tested.
	*
	* @return The MBean interface implemented by the Standard MBean.
	*
	* @throws NotCompliantMBeanException The specified class is
	* not a JMX compliant Standard MBean.
	*/
	@:overload public static function getStandardMBeanInterface<T>(baseClass : Class<T>) : Class<T>;
	
	/**
	* Get the MXBean interface implemented by a JMX MXBean class.
	*
	* @param baseClass The class to be tested.
	*
	* @return The MXBean interface implemented by the MXBean.
	*
	* @throws NotCompliantMBeanException The specified class is
	* not a JMX compliant MXBean.
	*/
	@:overload public static function getMXBeanInterface<T>(baseClass : Class<T>) : Class<T>;
	
	@:overload public static function descriptorForElement(elmt : java.lang.reflect.AnnotatedElement) : javax.management.Descriptor;
	
	@:overload public static function descriptorForAnnotations(annots : java.NativeArray<java.lang.annotation.Annotation>) : javax.management.Descriptor;
	
	@:overload public static function elementFromComplex(complex : Dynamic, element : String) : Dynamic;
	
	
}
/**
* A simple introspector that uses reflection to analyze a class and
* identify its "getter" methods. This class is intended for use only when
* Java Beans is not present (which implies that there isn't explicit
* information about the bean available).
*/
@:native('com$sun$jmx$mbeanserver$Introspector$SimpleIntrospector') @:internal extern class Introspector_SimpleIntrospector
{
	
}
/**
* A class that provides access to the JavaBeans Introspector and
* PropertyDescriptors without creating a static dependency on java.beans.
*/
@:native('com$sun$jmx$mbeanserver$Introspector$BeansHelper') @:internal extern class Introspector_BeansHelper
{
	
}

package com.sun.jmx.remote.security;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanServerAccessController implements javax.management.remote.MBeanServerForwarder
{
	/**
	* <p>An object of this class implements the MBeanServer interface
	* and, for each of its methods, calls an appropriate checking method
	* and then forwards the request to a wrapped MBeanServer object.  The
	* checking method may throw a RuntimeException if the operation is
	* not allowed; in this case the request is not forwarded to the
	* wrapped object.</p>
	*
	* <p>A typical use of this class is to insert it between a connector server
	* such as the RMI connector and the MBeanServer with which the connector
	* is associated.  Requests from the connector client can then be filtered
	* and those operations that are not allowed, or not allowed in a particular
	* context, can be rejected by throwing a <code>SecurityException</code>
	* in the corresponding <code>check*</code> method.</p>
	*
	* <p>This is an abstract class, because in its implementation none of
	* the checking methods does anything.  To be useful, it must be
	* subclassed and at least one of the checking methods overridden to
	* do some checking.  Some or all of the MBeanServer methods may also
	* be overridden, for instance if the default checking behavior is
	* inappropriate.</p>
	*
	* <p>If there is no SecurityManager, then the access controller will refuse
	* to create an MBean that is a ClassLoader, which includes MLets, or to
	* execute the method addURL on an MBean that is an MLet. This prevents
	* people from opening security holes unintentionally. Otherwise, it
	* would not be obvious that granting write access grants the ability to
	* download and execute arbitrary code in the target MBean server. Advanced
	* users who do want the ability to use MLets are presumably advanced enough
	* to handle policy files and security managers.</p>
	*/
	@:overload public function getMBeanServer() : javax.management.MBeanServer;
	
	@:overload public function setMBeanServer(mbs : javax.management.MBeanServer) : Void;
	
	/**
	* Check if the caller can do read operations. This method does
	* nothing if so, otherwise throws SecurityException.
	*/
	@:overload @:abstract private function checkRead() : Void;
	
	/**
	* Check if the caller can do write operations.  This method does
	* nothing if so, otherwise throws SecurityException.
	*/
	@:overload @:abstract private function checkWrite() : Void;
	
	/**
	* Check if the caller can create the named class.  The default
	* implementation of this method calls {@link #checkWrite()}.
	*/
	@:overload private function checkCreate(className : String) : Void;
	
	/**
	* Check if the caller can unregister the named MBean.  The default
	* implementation of this method calls {@link #checkWrite()}.
	*/
	@:overload private function checkUnregister(name : javax.management.ObjectName) : Void;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* Call <code>checkCreate(className)</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function createMBean(className : String, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* Call <code>checkCreate(className)</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	/**
	* Call <code>checkCreate(className)</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* Call <code>checkCreate(className)</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function deserialize(name : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function deserialize(className : String, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function deserialize(className : String, loaderName : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getAttribute(name : javax.management.ObjectName, attribute : String) : Dynamic;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getAttributes(name : javax.management.ObjectName, attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getClassLoader(loaderName : javax.management.ObjectName) : java.lang.ClassLoader;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getClassLoaderFor(mbeanName : javax.management.ObjectName) : java.lang.ClassLoader;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getClassLoaderRepository() : javax.management.loading.ClassLoaderRepository;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getDefaultDomain() : String;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getDomains() : java.NativeArray<String>;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getMBeanCount() : Null<Int>;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getMBeanInfo(name : javax.management.ObjectName) : javax.management.MBeanInfo;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function getObjectInstance(name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* Call <code>checkCreate(className)</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function instantiate(className : String) : Dynamic;
	
	/**
	* Call <code>checkCreate(className)</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function instantiate(className : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Call <code>checkCreate(className)</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName) : Dynamic;
	
	/**
	* Call <code>checkCreate(className)</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Call <code>checkWrite()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function invoke(name : javax.management.ObjectName, operationName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function isInstanceOf(name : javax.management.ObjectName, className : String) : Bool;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function isRegistered(name : javax.management.ObjectName) : Bool;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function queryMBeans(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectInstance>;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function queryNames(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectName>;
	
	/**
	* Call <code>checkWrite()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function registerMBean(object : Dynamic, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener) : Void;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName) : Void;
	
	/**
	* Call <code>checkRead()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* Call <code>checkWrite()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function setAttribute(name : javax.management.ObjectName, attribute : javax.management.Attribute) : Void;
	
	/**
	* Call <code>checkWrite()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function setAttributes(name : javax.management.ObjectName, attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	/**
	* Call <code>checkUnregister()</code>, then forward this method to the
	* wrapped object.
	*/
	@:overload public function unregisterMBean(name : javax.management.ObjectName) : Void;
	
	
}

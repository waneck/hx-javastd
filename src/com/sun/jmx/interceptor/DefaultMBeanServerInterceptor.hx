package com.sun.jmx.interceptor;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
//// JMX RI
extern class DefaultMBeanServerInterceptor implements com.sun.jmx.interceptor.MBeanServerInterceptor
{
	/**
	* Creates a DefaultMBeanServerInterceptor with the specified
	* repository instance.
	* <p>Do not forget to call <code>initialize(outer,delegate)</code>
	* before using this object.
	* @param outer A pointer to the MBeanServer object that must be
	*        passed to the MBeans when invoking their
	*        {@link javax.management.MBeanRegistration} interface.
	* @param delegate A pointer to the MBeanServerDelegate associated
	*        with the new MBeanServer. The new MBeanServer must register
	*        this MBean in its MBean repository.
	* @param instantiator The MBeanInstantiator that will be used to
	*        instantiate MBeans and take care of class loading issues.
	* @param repository The repository to use for this MBeanServer.
	*/
	@:overload public function new(outer : javax.management.MBeanServer, delegate : javax.management.MBeanServerDelegate, instantiator : com.sun.jmx.mbeanserver.MBeanInstantiator, repository : com.sun.jmx.mbeanserver.Repository) : Void;
	
	@:overload public function createMBean(className : String, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	@:overload public function registerMBean(object : Dynamic, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	@:overload public function unregisterMBean(name : javax.management.ObjectName) : Void;
	
	@:overload public function getObjectInstance(name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	@:overload public function queryMBeans(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectInstance>;
	
	@:overload public function queryNames(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectName>;
	
	@:overload public function isRegistered(name : javax.management.ObjectName) : Bool;
	
	@:overload public function getDomains() : java.NativeArray<String>;
	
	@:overload public function getMBeanCount() : Null<Int>;
	
	@:overload public function getAttribute(name : javax.management.ObjectName, attribute : String) : Dynamic;
	
	@:overload public function getAttributes(name : javax.management.ObjectName, attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	@:overload public function setAttribute(name : javax.management.ObjectName, attribute : javax.management.Attribute) : Void;
	
	@:overload public function setAttributes(name : javax.management.ObjectName, attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	@:overload public function invoke(name : javax.management.ObjectName, operationName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	@:overload public function getDefaultDomain() : String;
	
	/*
	* Notification handling.
	*
	* This is not trivial, because the MBeanServer translates the
	* source of a received notification from a reference to an MBean
	* into the ObjectName of that MBean.  While that does make
	* notification sending easier for MBean writers, it comes at a
	* considerable cost.  We need to replace the source of a
	* notification, which is basically wrong if there are also
	* listeners registered directly with the MBean (without going
	* through the MBean server).  We also need to wrap the listener
	* supplied by the client of the MBeanServer with a listener that
	* performs the substitution before forwarding.  This is why we
	* strongly discourage people from putting MBean references in the
	* source of their notifications.  Instead they should arrange to
	* put the ObjectName there themselves.
	*
	* However, existing code relies on the substitution, so we are
	* stuck with it.
	*
	* Here's how we handle it.  When you add a listener, we make a
	* ListenerWrapper around it.  We look that up in the
	* listenerWrappers map, and if there was already a wrapper for
	* that listener with the given ObjectName, we reuse it.  This map
	* is a WeakHashMap, so a listener that is no longer registered
	* with any MBean can be garbage collected.
	*
	* We cannot use simpler solutions such as always creating a new
	* wrapper or always registering the same listener with the MBean
	* and using the handback to find the client's original listener.
	* The reason is that we need to support the removeListener
	* variant that removes all (listener,filter,handback) triples on
	* a broadcaster that have a given listener.  And we do not have
	* any way to inspect a broadcaster's internal list of triples.
	* So the same client listener must always map to the same
	* listener registered with the broadcaster.
	*
	* Another possible solution would be to map from ObjectName to
	* list of listener wrappers (or IdentityHashMap of listener
	* wrappers), making this list the first time a listener is added
	* on a given MBean, and removing it when the MBean is removed.
	* This is probably more costly in memory, but could be useful if
	* some day we don't want to rely on weak references.
	*/
	@:overload public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function getMBeanInfo(name : javax.management.ObjectName) : javax.management.MBeanInfo;
	
	@:overload public function isInstanceOf(name : javax.management.ObjectName, className : String) : Bool;
	
	/**
	* <p>Return the {@link java.lang.ClassLoader} that was used for
	* loading the class of the named MBean.
	* @param mbeanName The ObjectName of the MBean.
	* @return The ClassLoader used for that MBean.
	* @exception InstanceNotFoundException if the named MBean is not found.
	*/
	@:overload public function getClassLoaderFor(mbeanName : javax.management.ObjectName) : java.lang.ClassLoader;
	
	/**
	* <p>Return the named {@link java.lang.ClassLoader}.
	* @param loaderName The ObjectName of the ClassLoader.
	* @return The named ClassLoader.
	* @exception InstanceNotFoundException if the named ClassLoader
	* is not found.
	*/
	@:overload public function getClassLoader(loaderName : javax.management.ObjectName) : java.lang.ClassLoader;
	
	@:overload public function instantiate(className : String) : Dynamic;
	
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName) : Dynamic;
	
	@:overload public function instantiate(className : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	@:overload public function deserialize(name : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	@:overload public function deserialize(className : String, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	@:overload public function deserialize(className : String, loaderName : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	@:overload public function getClassLoaderRepository() : javax.management.loading.ClassLoaderRepository;
	
	
}
@:native('com$sun$jmx$interceptor$DefaultMBeanServerInterceptor$ListenerWrapper') @:internal extern class DefaultMBeanServerInterceptor_ListenerWrapper implements javax.management.NotificationListener
{
	@:overload public function handleNotification(notification : javax.management.Notification, handback : Dynamic) : Void;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
/**
* A RegistrationContext that makes it possible to perform additional
* post registration actions (or post unregistration actions) outside
* of the repository lock, once postRegister (or postDeregister) has
* been called.
* The method {@code done()} will be called in registerMBean or
* unregisterMBean, at the end.
*/
@:native('com$sun$jmx$interceptor$DefaultMBeanServerInterceptor$ResourceContext') @:internal extern interface DefaultMBeanServerInterceptor_ResourceContext extends com.sun.jmx.mbeanserver.Repository.Repository_RegistrationContext
{
	@:overload public function done() : Void;
	
	
}

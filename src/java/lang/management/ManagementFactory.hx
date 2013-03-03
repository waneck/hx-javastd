package java.lang.management;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ManagementFactory
{
	/**
	* String representation of the
	* <tt>ObjectName</tt> for the {@link ClassLoadingMXBean}.
	*/
	@:public @:final @:static public static var CLASS_LOADING_MXBEAN_NAME(default, null) : String;
	
	/**
	* String representation of the
	* <tt>ObjectName</tt> for the {@link CompilationMXBean}.
	*/
	@:public @:final @:static public static var COMPILATION_MXBEAN_NAME(default, null) : String;
	
	/**
	* String representation of the
	* <tt>ObjectName</tt> for the {@link MemoryMXBean}.
	*/
	@:public @:final @:static public static var MEMORY_MXBEAN_NAME(default, null) : String;
	
	/**
	* String representation of the
	* <tt>ObjectName</tt> for the {@link OperatingSystemMXBean}.
	*/
	@:public @:final @:static public static var OPERATING_SYSTEM_MXBEAN_NAME(default, null) : String;
	
	/**
	* String representation of the
	* <tt>ObjectName</tt> for the {@link RuntimeMXBean}.
	*/
	@:public @:final @:static public static var RUNTIME_MXBEAN_NAME(default, null) : String;
	
	/**
	* String representation of the
	* <tt>ObjectName</tt> for the {@link ThreadMXBean}.
	*/
	@:public @:final @:static public static var THREAD_MXBEAN_NAME(default, null) : String;
	
	/**
	* The domain name and the type key property in
	* the <tt>ObjectName</tt> for a {@link GarbageCollectorMXBean}.
	* The unique <tt>ObjectName</tt> for a <tt>GarbageCollectorMXBean</tt>
	* can be formed by appending this string with
	* "<tt>,name=</tt><i>collector's name</i>".
	*/
	@:public @:final @:static public static var GARBAGE_COLLECTOR_MXBEAN_DOMAIN_TYPE(default, null) : String;
	
	/**
	* The domain name and the type key property in
	* the <tt>ObjectName</tt> for a {@link MemoryManagerMXBean}.
	* The unique <tt>ObjectName</tt> for a <tt>MemoryManagerMXBean</tt>
	* can be formed by appending this string with
	* "<tt>,name=</tt><i>manager's name</i>".
	*/
	@:public @:final @:static public static var MEMORY_MANAGER_MXBEAN_DOMAIN_TYPE(default, null) : String;
	
	/**
	* The domain name and the type key property in
	* the <tt>ObjectName</tt> for a {@link MemoryPoolMXBean}.
	* The unique <tt>ObjectName</tt> for a <tt>MemoryPoolMXBean</tt>
	* can be formed by appending this string with
	* <tt>,name=</tt><i>pool's name</i>.
	*/
	@:public @:final @:static public static var MEMORY_POOL_MXBEAN_DOMAIN_TYPE(default, null) : String;
	
	/**
	* Returns the managed bean for the class loading system of
	* the Java virtual machine.
	*
	* @return a {@link ClassLoadingMXBean} object for
	* the Java virtual machine.
	*/
	@:overload @:public @:static public static function getClassLoadingMXBean() : java.lang.management.ClassLoadingMXBean;
	
	/**
	* Returns the managed bean for the memory system of
	* the Java virtual machine.
	*
	* @return a {@link MemoryMXBean} object for the Java virtual machine.
	*/
	@:overload @:public @:static public static function getMemoryMXBean() : java.lang.management.MemoryMXBean;
	
	/**
	* Returns the managed bean for the thread system of
	* the Java virtual machine.
	*
	* @return a {@link ThreadMXBean} object for the Java virtual machine.
	*/
	@:overload @:public @:static public static function getThreadMXBean() : java.lang.management.ThreadMXBean;
	
	/**
	* Returns the managed bean for the runtime system of
	* the Java virtual machine.
	*
	* @return a {@link RuntimeMXBean} object for the Java virtual machine.

	*/
	@:overload @:public @:static public static function getRuntimeMXBean() : java.lang.management.RuntimeMXBean;
	
	/**
	* Returns the managed bean for the compilation system of
	* the Java virtual machine.  This method returns <tt>null</tt>
	* if the Java virtual machine has no compilation system.
	*
	* @return a {@link CompilationMXBean} object for the Java virtual
	*   machine or <tt>null</tt> if the Java virtual machine has
	*   no compilation system.
	*/
	@:overload @:public @:static public static function getCompilationMXBean() : java.lang.management.CompilationMXBean;
	
	/**
	* Returns the managed bean for the operating system on which
	* the Java virtual machine is running.
	*
	* @return an {@link OperatingSystemMXBean} object for
	* the Java virtual machine.
	*/
	@:overload @:public @:static public static function getOperatingSystemMXBean() : java.lang.management.OperatingSystemMXBean;
	
	/**
	* Returns a list of {@link MemoryPoolMXBean} objects in the
	* Java virtual machine.
	* The Java virtual machine can have one or more memory pools.
	* It may add or remove memory pools during execution.
	*
	* @return a list of <tt>MemoryPoolMXBean</tt> objects.
	*
	*/
	@:overload @:public @:static public static function getMemoryPoolMXBeans() : java.util.List<java.lang.management.MemoryPoolMXBean>;
	
	/**
	* Returns a list of {@link MemoryManagerMXBean} objects
	* in the Java virtual machine.
	* The Java virtual machine can have one or more memory managers.
	* It may add or remove memory managers during execution.
	*
	* @return a list of <tt>MemoryManagerMXBean</tt> objects.
	*
	*/
	@:overload @:public @:static public static function getMemoryManagerMXBeans() : java.util.List<java.lang.management.MemoryManagerMXBean>;
	
	/**
	* Returns a list of {@link GarbageCollectorMXBean} objects
	* in the Java virtual machine.
	* The Java virtual machine may have one or more
	* <tt>GarbageCollectorMXBean</tt> objects.
	* It may add or remove <tt>GarbageCollectorMXBean</tt>
	* during execution.
	*
	* @return a list of <tt>GarbageCollectorMXBean</tt> objects.
	*
	*/
	@:overload @:public @:static public static function getGarbageCollectorMXBeans() : java.util.List<java.lang.management.GarbageCollectorMXBean>;
	
	/**
	* Returns the platform {@link javax.management.MBeanServer MBeanServer}.
	* On the first call to this method, it first creates the platform
	* {@code MBeanServer} by calling the
	* {@link javax.management.MBeanServerFactory#createMBeanServer
	* MBeanServerFactory.createMBeanServer}
	* method and registers each platform MXBean in this platform
	* {@code MBeanServer} with its
	* {@link PlatformManagedObject#getObjectName ObjectName}.
	* This method, in subsequent calls, will simply return the
	* initially created platform {@code MBeanServer}.
	* <p>
	* MXBeans that get created and destroyed dynamically, for example,
	* memory {@link MemoryPoolMXBean pools} and
	* {@link MemoryManagerMXBean managers},
	* will automatically be registered and deregistered into the platform
	* {@code MBeanServer}.
	* <p>
	* If the system property {@code javax.management.builder.initial}
	* is set, the platform {@code MBeanServer} creation will be done
	* by the specified {@link javax.management.MBeanServerBuilder}.
	* <p>
	* It is recommended that this platform MBeanServer also be used
	* to register other application managed beans
	* besides the platform MXBeans.
	* This will allow all MBeans to be published through the same
	* {@code MBeanServer} and hence allow for easier network publishing
	* and discovery.
	* Name conflicts with the platform MXBeans should be avoided.
	*
	* @return the platform {@code MBeanServer}; the platform
	*         MXBeans are registered into the platform {@code MBeanServer}
	*         at the first time this method is called.
	*
	* @exception SecurityException if there is a security manager
	* and the caller does not have the permission required by
	* {@link javax.management.MBeanServerFactory#createMBeanServer}.
	*
	* @see javax.management.MBeanServerFactory
	* @see javax.management.MBeanServerFactory#createMBeanServer
	*/
	@:overload @:public @:static @:synchronized public static function getPlatformMBeanServer() : javax.management.MBeanServer;
	
	/**
	* Returns a proxy for a platform MXBean interface of a
	* given <a href="#MXBeanNames">MXBean name</a>
	* that forwards its method calls through the given
	* <tt>MBeanServerConnection</tt>.
	*
	* <p>This method is equivalent to:
	* <blockquote>
	* {@link java.lang.reflect.Proxy#newProxyInstance
	*        Proxy.newProxyInstance}<tt>(mxbeanInterface.getClassLoader(),
	*        new Class[] { mxbeanInterface }, handler)</tt>
	* </blockquote>
	*
	* where <tt>handler</tt> is an {@link java.lang.reflect.InvocationHandler
	* InvocationHandler} to which method invocations to the MXBean interface
	* are dispatched. This <tt>handler</tt> converts an input parameter
	* from an MXBean data type to its mapped open type before forwarding
	* to the <tt>MBeanServer</tt> and converts a return value from
	* an MXBean method call through the <tt>MBeanServer</tt>
	* from an open type to the corresponding return type declared in
	* the MXBean interface.
	*
	* <p>
	* If the MXBean is a notification emitter (i.e.,
	* it implements
	* {@link javax.management.NotificationEmitter NotificationEmitter}),
	* both the <tt>mxbeanInterface</tt> and <tt>NotificationEmitter</tt>
	* will be implemented by this proxy.
	*
	* <p>
	* <b>Notes:</b>
	* <ol>
	* <li>Using an MXBean proxy is a convenience remote access to
	* a platform MXBean of a running virtual machine.  All method
	* calls to the MXBean proxy are forwarded to an
	* <tt>MBeanServerConnection</tt> where
	* {@link java.io.IOException IOException} may be thrown
	* when the communication problem occurs with the connector server.
	* An application remotely accesses the platform MXBeans using
	* proxy should prepare to catch <tt>IOException</tt> as if
	* accessing with the <tt>MBeanServerConnector</tt> interface.</li>
	*
	* <li>When a client application is designed to remotely access MXBeans
	* for a running virtual machine whose version is different than
	* the version on which the application is running,
	* it should prepare to catch
	* {@link java.io.InvalidObjectException InvalidObjectException}
	* which is thrown when an MXBean proxy receives a name of an
	* enum constant which is missing in the enum class loaded in
	* the client application. </li>
	*
	* <li>{@link javax.management.MBeanServerInvocationHandler
	* MBeanServerInvocationHandler} or its
	* {@link javax.management.MBeanServerInvocationHandler#newProxyInstance
	* newProxyInstance} method cannot be used to create
	* a proxy for a platform MXBean. The proxy object created
	* by <tt>MBeanServerInvocationHandler</tt> does not handle
	* the properties of the platform MXBeans described in
	* the <a href="#MXBean">class specification</a>.
	*</li>
	* </ol>
	*
	* @param connection the <tt>MBeanServerConnection</tt> to forward to.
	* @param mxbeanName the name of a platform MXBean within
	* <tt>connection</tt> to forward to. <tt>mxbeanName</tt> must be
	* in the format of {@link ObjectName ObjectName}.
	* @param mxbeanInterface the MXBean interface to be implemented
	* by the proxy.
	*
	* @throws IllegalArgumentException if
	* <ul>
	* <li><tt>mxbeanName</tt> is not with a valid
	*     {@link ObjectName ObjectName} format, or</li>
	* <li>the named MXBean in the <tt>connection</tt> is
	*     not a MXBean provided by the platform, or</li>
	* <li>the named MXBean is not registered in the
	*     <tt>MBeanServerConnection</tt>, or</li>
	* <li>the named MXBean is not an instance of the given
	*     <tt>mxbeanInterface</tt></li>
	* </ul>
	*
	* @throws java.io.IOException if a communication problem
	* occurred when accessing the <tt>MBeanServerConnection</tt>.
	*/
	@:overload @:public @:static public static function newPlatformMXBeanProxy<T>(connection : javax.management.MBeanServerConnection, mxbeanName : String, mxbeanInterface : Class<T>) : T;
	
	/**
	* Returns the platform MXBean implementing
	* the given {@code mxbeanInterface} which is specified
	* to have one single instance in the Java virtual machine.
	* This method may return {@code null} if the management interface
	* is not implemented in the Java virtual machine (for example,
	* a Java virtual machine with no compilation system does not
	* implement {@link CompilationMXBean});
	* otherwise, this method is equivalent to calling:
	* <pre>
	*    {@link #getPlatformMXBeans(Class)
	*      getPlatformMXBeans(mxbeanInterface)}.get(0);
	* </pre>
	*
	* @param mxbeanInterface a management interface for a platform
	*     MXBean with one single instance in the Java virtual machine
	*     if implemented.
	*
	* @return the platform MXBean that implements
	* {@code mxbeanInterface}, or {@code null} if not exist.
	*
	* @throws IllegalArgumentException if {@code mxbeanInterface}
	* is not a platform management interface or
	* not a singleton platform MXBean.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function getPlatformMXBean<T : java.lang.management.PlatformManagedObject>(mxbeanInterface : Class<T>) : T;
	
	/**
	* Returns the list of platform MXBeans implementing
	* the given {@code mxbeanInterface} in the Java
	* virtual machine.
	* The returned list may contain zero, one, or more instances.
	* The number of instances in the returned list is defined
	* in the specification of the given management interface.
	* The order is undefined and there is no guarantee that
	* the list returned is in the same order as previous invocations.
	*
	* @param mxbeanInterface a management interface for a platform
	*                        MXBean
	*
	* @return the list of platform MXBeans that implement
	* {@code mxbeanInterface}.
	*
	* @throws IllegalArgumentException if {@code mxbeanInterface}
	* is not a platform management interface.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function getPlatformMXBeans<T : java.lang.management.PlatformManagedObject>(mxbeanInterface : Class<T>) : java.util.List<T>;
	
	/**
	* Returns the platform MXBean proxy for
	* {@code mxbeanInterface} which is specified to have one single
	* instance in a Java virtual machine and the proxy will
	* forward the method calls through the given {@code MBeanServerConnection}.
	* This method may return {@code null} if the management interface
	* is not implemented in the Java virtual machine being monitored
	* (for example, a Java virtual machine with no compilation system
	* does not implement {@link CompilationMXBean});
	* otherwise, this method is equivalent to calling:
	* <pre>
	*     {@link #getPlatformMXBeans(MBeanServerConnection, Class)
	*        getPlatformMXBeans(connection, mxbeanInterface)}.get(0);
	* </pre>
	*
	* @param connection the {@code MBeanServerConnection} to forward to.
	* @param mxbeanInterface a management interface for a platform
	*     MXBean with one single instance in the Java virtual machine
	*     being monitored, if implemented.
	*
	* @return the platform MXBean proxy for
	* forwarding the method calls of the {@code mxbeanInterface}
	* through the given {@code MBeanServerConnection},
	* or {@code null} if not exist.
	*
	* @throws IllegalArgumentException if {@code mxbeanInterface}
	* is not a platform management interface or
	* not a singleton platform MXBean.
	* @throws java.io.IOException if a communication problem
	* occurred when accessing the {@code MBeanServerConnection}.
	*
	* @see #newPlatformMXBeanProxy
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function getPlatformMXBean<T : java.lang.management.PlatformManagedObject>(connection : javax.management.MBeanServerConnection, mxbeanInterface : Class<T>) : T;
	
	/**
	* Returns the list of the platform MXBean proxies for
	* forwarding the method calls of the {@code mxbeanInterface}
	* through the given {@code MBeanServerConnection}.
	* The returned list may contain zero, one, or more instances.
	* The number of instances in the returned list is defined
	* in the specification of the given management interface.
	* The order is undefined and there is no guarantee that
	* the list returned is in the same order as previous invocations.
	*
	* @param connection the {@code MBeanServerConnection} to forward to.
	* @param mxbeanInterface a management interface for a platform
	*                        MXBean
	*
	* @return the list of platform MXBean proxies for
	* forwarding the method calls of the {@code mxbeanInterface}
	* through the given {@code MBeanServerConnection}.
	*
	* @throws IllegalArgumentException if {@code mxbeanInterface}
	* is not a platform management interface.
	*
	* @throws java.io.IOException if a communication problem
	* occurred when accessing the {@code MBeanServerConnection}.
	*
	* @see #newPlatformMXBeanProxy
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function getPlatformMXBeans<T : java.lang.management.PlatformManagedObject>(connection : javax.management.MBeanServerConnection, mxbeanInterface : Class<T>) : java.util.List<T>;
	
	/**
	* Returns the set of {@code Class} objects, subinterface of
	* {@link PlatformManagedObject}, representing
	* all management interfaces for
	* monitoring and managing the Java platform.
	*
	* @return the set of {@code Class} objects, subinterface of
	* {@link PlatformManagedObject} representing
	* the management interfaces for
	* monitoring and managing the Java platform.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function getPlatformManagementInterfaces() : java.util.Set<Class<java.lang.management.PlatformManagedObject>>;
	
	
}

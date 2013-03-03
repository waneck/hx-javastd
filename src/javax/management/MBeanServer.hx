package javax.management;
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
//// java import
extern interface MBeanServer extends javax.management.MBeanServerConnection
{
	/**
	* {@inheritDoc}
	* <p>If this method successfully creates an MBean, a notification
	* is sent as described <a href="#notif">above</a>.</p>
	*
	* @throws RuntimeOperationsException {@inheritDoc}
	* @throws RuntimeMBeanException {@inheritDoc}
	* @throws RuntimeErrorException {@inheritDoc}
	*/
	@:overload @:public public function createMBean(className : String, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* {@inheritDoc}
	* <p>If this method successfully creates an MBean, a notification
	* is sent as described <a href="#notif">above</a>.</p>
	*
	* @throws RuntimeOperationsException {@inheritDoc}
	* @throws RuntimeMBeanException {@inheritDoc}
	* @throws RuntimeErrorException {@inheritDoc}
	*/
	@:overload @:public public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* {@inheritDoc}
	* <p>If this method successfully creates an MBean, a notification
	* is sent as described <a href="#notif">above</a>.</p>
	*
	* @throws RuntimeOperationsException {@inheritDoc}
	* @throws RuntimeMBeanException {@inheritDoc}
	* @throws RuntimeErrorException {@inheritDoc}
	*/
	@:overload @:public public function createMBean(className : String, name : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	/**
	* {@inheritDoc}
	* <p>If this method successfully creates an MBean, a notification
	* is sent as described <a href="#notif">above</a>.</p>
	*
	* @throws RuntimeOperationsException {@inheritDoc}
	* @throws RuntimeMBeanException {@inheritDoc}
	* @throws RuntimeErrorException {@inheritDoc}
	*/
	@:overload @:public public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	/**
	* <p>Registers a pre-existing object as an MBean with the MBean
	* server. If the object name given is null, the MBean must
	* provide its own name by implementing the {@link
	* javax.management.MBeanRegistration MBeanRegistration} interface
	* and returning the name from the {@link
	* MBeanRegistration#preRegister preRegister} method.
	*
	* <p>If this method successfully registers an MBean, a notification
	* is sent as described <a href="#notif">above</a>.</p>
	*
	* @param object The  MBean to be registered as an MBean.
	* @param name The object name of the MBean. May be null.
	*
	* @return An <CODE>ObjectInstance</CODE>, containing the
	* <CODE>ObjectName</CODE> and the Java class name of the newly
	* registered MBean.  If the contained <code>ObjectName</code>
	* is <code>n</code>, the contained Java class name is
	* <code>{@link #getMBeanInfo getMBeanInfo(n)}.getClassName()</code>.
	*
	* @exception InstanceAlreadyExistsException The MBean is already
	* under the control of the MBean server.
	* @exception MBeanRegistrationException The
	* <CODE>preRegister</CODE> (<CODE>MBeanRegistration</CODE>
	* interface) method of the MBean has thrown an exception. The
	* MBean will not be registered.
	* @exception RuntimeMBeanException If the <CODE>postRegister</CODE>
	* (<CODE>MBeanRegistration</CODE> interface) method of the MBean throws a
	* <CODE>RuntimeException</CODE>, the <CODE>registerMBean</CODE> method will
	* throw a <CODE>RuntimeMBeanException</CODE>, although the MBean
	* registration succeeded. In such a case, the MBean will be actually
	* registered even though the <CODE>registerMBean</CODE> method
	* threw an exception.  Note that <CODE>RuntimeMBeanException</CODE> can
	* also be thrown by <CODE>preRegister</CODE>, in which case the MBean
	* will not be registered.
	* @exception RuntimeErrorException If the <CODE>postRegister</CODE>
	* (<CODE>MBeanRegistration</CODE> interface) method of the MBean throws an
	* <CODE>Error</CODE>, the <CODE>registerMBean</CODE> method will
	* throw a <CODE>RuntimeErrorException</CODE>, although the MBean
	* registration succeeded. In such a case, the MBean will be actually
	* registered even though the <CODE>registerMBean</CODE> method
	* threw an exception.  Note that <CODE>RuntimeErrorException</CODE> can
	* also be thrown by <CODE>preRegister</CODE>, in which case the MBean
	* will not be registered.
	* @exception NotCompliantMBeanException This object is not a JMX
	* compliant MBean
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: The object
	* passed in parameter is null or no object name is specified.
	* @see javax.management.MBeanRegistration
	*/
	@:overload @:public public function registerMBean(object : Dynamic, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* {@inheritDoc}
	*
	* <p>If this method successfully unregisters an MBean, a notification
	* is sent as described <a href="#notif">above</a>.</p>
	*
	* @throws RuntimeOperationsException {@inheritDoc}
	* @throws RuntimeMBeanException {@inheritDoc}
	* @throws RuntimeErrorException {@inheritDoc}
	*/
	@:overload @:public public function unregisterMBean(name : javax.management.ObjectName) : Void;
	
	@:overload @:public public function getObjectInstance(name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* {@inheritDoc}
	* @throws RuntimeOperationsException {@inheritDoc}
	*/
	@:overload @:public public function queryMBeans(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectInstance>;
	
	/**
	* {@inheritDoc}
	* @throws RuntimeOperationsException {@inheritDoc}
	*/
	@:overload @:public public function queryNames(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectName>;
	
	/**
	* @throws RuntimeOperationsException {@inheritDoc}
	*/
	@:overload @:public public function isRegistered(name : javax.management.ObjectName) : Bool;
	
	/**
	* Returns the number of MBeans registered in the MBean server.
	*
	* @return the number of registered MBeans, wrapped in an Integer.
	* If the caller's permissions are restricted, this number may
	* be greater than the number of MBeans the caller can access.
	*/
	@:overload @:public public function getMBeanCount() : Null<Int>;
	
	/**
	* @throws RuntimeOperationsException {@inheritDoc}
	*/
	@:overload @:public public function getAttribute(name : javax.management.ObjectName, attribute : String) : Dynamic;
	
	/**
	* @throws RuntimeOperationsException {@inheritDoc}
	*/
	@:overload @:public public function getAttributes(name : javax.management.ObjectName, attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	/**
	* @throws RuntimeOperationsException {@inheritDoc}
	*/
	@:overload @:public public function setAttribute(name : javax.management.ObjectName, attribute : javax.management.Attribute) : Void;
	
	/**
	* @throws RuntimeOperationsException {@inheritDoc}
	*/
	@:overload @:public public function setAttributes(name : javax.management.ObjectName, attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	@:overload @:public public function invoke(name : javax.management.ObjectName, operationName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	@:overload @:public public function getDefaultDomain() : String;
	
	@:overload @:public public function getDomains() : java.NativeArray<String>;
	
	/**
	* {@inheritDoc}
	* If the source of the notification
	* is a reference to an MBean object, the MBean server will replace it
	* by that MBean's ObjectName.  Otherwise the source is unchanged.
	*/
	@:overload @:public public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* {@inheritDoc}
	* @throws RuntimeOperationsException {@inheritDoc}
	*/
	@:overload @:public public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:public public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName) : Void;
	
	@:overload @:public public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:public public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener) : Void;
	
	@:overload @:public public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:public public function getMBeanInfo(name : javax.management.ObjectName) : javax.management.MBeanInfo;
	
	@:overload @:public public function isInstanceOf(name : javax.management.ObjectName, className : String) : Bool;
	
	/**
	* <p>Instantiates an object using the list of all class loaders
	* registered in the MBean server's {@link
	* javax.management.loading.ClassLoaderRepository Class Loader
	* Repository}.  The object's class should have a public
	* constructor.  This method returns a reference to the newly
	* created object.  The newly created object is not registered in
	* the MBean server.</p>
	*
	* <p>This method is equivalent to {@link
	* #instantiate(String,Object[],String[])
	* instantiate(className, (Object[]) null, (String[]) null)}.</p>
	*
	* @param className The class name of the object to be instantiated.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps a
	* <CODE>java.lang.ClassNotFoundException</CODE> or the
	* <CODE>java.lang.Exception</CODE> that occurred when trying to
	* invoke the object's constructor.
	* @exception MBeanException The constructor of the object has
	* thrown an exception
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: The className
	* passed in parameter is null.
	*/
	@:overload @:public public function instantiate(className : String) : Dynamic;
	
	/**
	* <p>Instantiates an object using the class Loader specified by its
	* <CODE>ObjectName</CODE>.  If the loader name is null, the
	* ClassLoader that loaded the MBean Server will be used.  The
	* object's class should have a public constructor.  This method
	* returns a reference to the newly created object.  The newly
	* created object is not registered in the MBean server.</p>
	*
	* <p>This method is equivalent to {@link
	* #instantiate(String,ObjectName,Object[],String[])
	* instantiate(className, loaderName, (Object[]) null, (String[])
	* null)}.</p>
	*
	* @param className The class name of the MBean to be instantiated.
	* @param loaderName The object name of the class loader to be used.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps a
	* <CODE>java.lang.ClassNotFoundException</CODE> or the
	* <CODE>java.lang.Exception</CODE> that occurred when trying to
	* invoke the object's constructor.
	* @exception MBeanException The constructor of the object has
	* thrown an exception.
	* @exception InstanceNotFoundException The specified class loader
	* is not registered in the MBeanServer.
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: The className
	* passed in parameter is null.
	*/
	@:overload @:public public function instantiate(className : String, loaderName : javax.management.ObjectName) : Dynamic;
	
	/**
	* <p>Instantiates an object using the list of all class loaders
	* registered in the MBean server {@link
	* javax.management.loading.ClassLoaderRepository Class Loader
	* Repository}.  The object's class should have a public
	* constructor.  The call returns a reference to the newly created
	* object.  The newly created object is not registered in the
	* MBean server.</p>
	*
	* @param className The class name of the object to be instantiated.
	* @param params An array containing the parameters of the
	* constructor to be invoked.
	* @param signature An array containing the signature of the
	* constructor to be invoked.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps a
	* <CODE>java.lang.ClassNotFoundException</CODE> or the
	* <CODE>java.lang.Exception</CODE> that occurred when trying to
	* invoke the object's constructor.
	* @exception MBeanException The constructor of the object has
	* thrown an exception
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: The className
	* passed in parameter is null.
	*/
	@:overload @:public public function instantiate(className : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* <p>Instantiates an object. The class loader to be used is
	* identified by its object name. If the object name of the loader
	* is null, the ClassLoader that loaded the MBean server will be
	* used.  The object's class should have a public constructor.
	* The call returns a reference to the newly created object.  The
	* newly created object is not registered in the MBean server.</p>
	*
	* @param className The class name of the object to be instantiated.
	* @param params An array containing the parameters of the
	* constructor to be invoked.
	* @param signature An array containing the signature of the
	* constructor to be invoked.
	* @param loaderName The object name of the class loader to be used.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps a <CODE>java.lang.ClassNotFoundException</CODE> or the <CODE>java.lang.Exception</CODE> that
	* occurred when trying to invoke the object's constructor.
	* @exception MBeanException The constructor of the object has
	* thrown an exception
	* @exception InstanceNotFoundException The specified class loader
	* is not registered in the MBean server.
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: The className
	* passed in parameter is null.
	*/
	@:overload @:public public function instantiate(className : String, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* <p>De-serializes a byte array in the context of the class loader
	* of an MBean.</p>
	*
	* @param name The name of the MBean whose class loader should be
	* used for the de-serialization.
	* @param data The byte array to be de-sererialized.
	*
	* @return The de-serialized object stream.
	*
	* @exception InstanceNotFoundException The MBean specified is not
	* found.
	* @exception OperationsException Any of the usual Input/Output
	* related exceptions.
	*
	* @deprecated Use {@link #getClassLoaderFor getClassLoaderFor} to
	* obtain the appropriate class loader for deserialization.
	*/
	@:overload @:public public function deserialize(name : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* <p>De-serializes a byte array in the context of a given MBean
	* class loader.  The class loader is found by loading the class
	* <code>className</code> through the {@link
	* javax.management.loading.ClassLoaderRepository Class Loader
	* Repository}.  The resultant class's class loader is the one to
	* use.
	*
	* @param className The name of the class whose class loader should be
	* used for the de-serialization.
	* @param data The byte array to be de-sererialized.
	*
	* @return  The de-serialized object stream.
	*
	* @exception OperationsException Any of the usual Input/Output
	* related exceptions.
	* @exception ReflectionException The specified class could not be
	* loaded by the class loader repository
	*
	* @deprecated Use {@link #getClassLoaderRepository} to obtain the
	* class loader repository and use it to deserialize.
	*/
	@:overload @:public public function deserialize(className : String, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* <p>De-serializes a byte array in the context of a given MBean
	* class loader.  The class loader is the one that loaded the
	* class with name "className".  The name of the class loader to
	* be used for loading the specified class is specified.  If null,
	* the MBean Server's class loader will be used.</p>
	*
	* @param className The name of the class whose class loader should be
	* used for the de-serialization.
	* @param data The byte array to be de-sererialized.
	* @param loaderName The name of the class loader to be used for
	* loading the specified class.  If null, the MBean Server's class
	* loader will be used.
	*
	* @return  The de-serialized object stream.
	*
	* @exception InstanceNotFoundException The specified class loader
	* MBean is not found.
	* @exception OperationsException Any of the usual Input/Output
	* related exceptions.
	* @exception ReflectionException The specified class could not be
	* loaded by the specified class loader.
	*
	* @deprecated Use {@link #getClassLoader getClassLoader} to obtain
	* the class loader for deserialization.
	*/
	@:overload @:public public function deserialize(className : String, loaderName : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* <p>Return the {@link java.lang.ClassLoader} that was used for
	* loading the class of the named MBean.</p>
	*
	* @param mbeanName The ObjectName of the MBean.
	*
	* @return The ClassLoader used for that MBean.  If <var>l</var>
	* is the MBean's actual ClassLoader, and <var>r</var> is the
	* returned value, then either:
	*
	* <ul>
	* <li><var>r</var> is identical to <var>l</var>; or
	* <li>the result of <var>r</var>{@link
	* ClassLoader#loadClass(String) .loadClass(<var>s</var>)} is the
	* same as <var>l</var>{@link ClassLoader#loadClass(String)
	* .loadClass(<var>s</var>)} for any string <var>s</var>.
	* </ul>
	*
	* What this means is that the ClassLoader may be wrapped in
	* another ClassLoader for security or other reasons.
	*
	* @exception InstanceNotFoundException if the named MBean is not found.
	*
	*/
	@:overload @:public public function getClassLoaderFor(mbeanName : javax.management.ObjectName) : java.lang.ClassLoader;
	
	/**
	* <p>Return the named {@link java.lang.ClassLoader}.</p>
	*
	* @param loaderName The ObjectName of the ClassLoader.  May be
	* null, in which case the MBean server's own ClassLoader is
	* returned.
	*
	* @return The named ClassLoader.  If <var>l</var> is the actual
	* ClassLoader with that name, and <var>r</var> is the returned
	* value, then either:
	*
	* <ul>
	* <li><var>r</var> is identical to <var>l</var>; or
	* <li>the result of <var>r</var>{@link
	* ClassLoader#loadClass(String) .loadClass(<var>s</var>)} is the
	* same as <var>l</var>{@link ClassLoader#loadClass(String)
	* .loadClass(<var>s</var>)} for any string <var>s</var>.
	* </ul>
	*
	* What this means is that the ClassLoader may be wrapped in
	* another ClassLoader for security or other reasons.
	*
	* @exception InstanceNotFoundException if the named ClassLoader is
	*    not found.
	*
	*/
	@:overload @:public public function getClassLoader(loaderName : javax.management.ObjectName) : java.lang.ClassLoader;
	
	/**
	* <p>Return the ClassLoaderRepository for this MBeanServer.
	* @return The ClassLoaderRepository for this MBeanServer.
	*
	*/
	@:overload @:public public function getClassLoaderRepository() : javax.management.loading.ClassLoaderRepository;
	
	
}

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
extern class JmxMBeanServer implements com.sun.jmx.mbeanserver.SunJmxMBeanServer
{
	/** Control the default locking policy of the repository.
	*  By default, we will be using a fair locking policy.
	**/
	public static var DEFAULT_FAIR_LOCK_POLICY(default, null) : Bool;
	
	/**
	* Tell whether {@link MBeanServerInterceptor}s are enabled on this
	* object.
	* @return <code>true</code> if {@link MBeanServerInterceptor}s are
	*         enabled.
	* @see #newMBeanServer(java.lang.String,javax.management.MBeanServer,javax.management.MBeanServerDelegate,boolean)
	**/
	@:overload public function interceptorsEnabled() : Bool;
	
	/**
	* Return the MBeanInstantiator associated to this MBeanServer.
	* @exception UnsupportedOperationException if
	*            {@link MBeanServerInterceptor}s
	*            are not enabled on this object.
	* @see #interceptorsEnabled
	**/
	@:overload public function getMBeanInstantiator() : com.sun.jmx.mbeanserver.MBeanInstantiator;
	
	/**
	* Instantiates and registers an MBean in the MBean server.
	* The MBean server will use its
	* {@link javax.management.loading.ClassLoaderRepository Default Loader Repository}
	* to load the class of the MBean.
	* An object name is associated to the MBean.
	* If the object name given is null, the MBean can automatically
	* provide its own name by implementing the
	* {@link javax.management.MBeanRegistration MBeanRegistration} interface.
	* The call returns an <CODE>ObjectInstance</CODE> object representing
	* the newly created MBean.
	*
	* @param className The class name of the MBean to be instantiated.
	* @param name The object name of the MBean. May be null.
	*
	* @return  An <CODE>ObjectInstance</CODE>, containing the
	*     <CODE>ObjectName</CODE> and the Java class name of the newly
	*     instantiated MBean.
	*
	* @exception ReflectionException Wraps an
	*     <CODE>{@link java.lang.ClassNotFoundException}</CODE> or an
	*     <CODE>{@link java.lang.Exception}</CODE> that occurred
	*     when trying to invoke the MBean's constructor.
	* @exception InstanceAlreadyExistsException The MBean is already
	*     under the control of the MBean server.
	* @exception MBeanRegistrationException The <CODE>preRegister()</CODE>
	*     (<CODE>MBeanRegistration</CODE> interface) method of the MBean
	*     has thrown an exception. The MBean will not be registered.
	* @exception MBeanException The constructor of the MBean has thrown
	*     an exception.
	* @exception NotCompliantMBeanException This class is not a JMX
	*     compliant MBean.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>:
	*     The className passed in parameter is null, the
	*     <CODE>ObjectName</CODE> passed in parameter contains a pattern
	*     or no <CODE>ObjectName</CODE> is specified for the MBean.
	*
	*/
	@:overload public function createMBean(className : String, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* Instantiates and registers an MBean in the MBean server.
	* The class loader to be used is identified by its object  name.
	* An object name is associated to the MBean.
	* If the object name  of the loader is null, the ClassLoader that
	* loaded the MBean server will be used.
	* If the MBean's object name given is null, the MBean can
	* automatically provide its own name by implementing the
	* {@link javax.management.MBeanRegistration MBeanRegistration} interface.
	* The call returns an <CODE>ObjectInstance</CODE> object representing
	* the newly created MBean.
	*
	* @param className The class name of the MBean to be instantiated.
	* @param name The object name of the MBean. May be null.
	* @param loaderName The object name of the class loader to be used.
	*
	* @return  An <CODE>ObjectInstance</CODE>, containing the
	*     <CODE>ObjectName</CODE> and the Java class name
	*     of the newly instantiated MBean.
	*
	* @exception ReflectionException  Wraps an
	*     <CODE>{@link java.lang.ClassNotFoundException}</CODE> or an
	*     <CODE>{@link java.lang.Exception}</CODE> that occurred when trying
	*     to invoke the MBean's constructor.
	* @exception InstanceAlreadyExistsException The MBean is already
	*     under the control of the MBean server.
	* @exception MBeanRegistrationException The <CODE>preRegister()</CODE>
	*     (<CODE>MBeanRegistration</CODE>  interface) method of the MBean
	*     has thrown an exception. The MBean will not be registered.
	* @exception MBeanException The constructor of the MBean has thrown
	*     an exception
	* @exception NotCompliantMBeanException This class is not a JMX
	*     compliant MBean.
	* @exception InstanceNotFoundException The specified class loader
	*     is not registered in the MBean server.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The
	*     className passed in parameter is null, the <CODE>ObjectName</CODE>
	*     passed in parameter contains a pattern or no
	*     <CODE>ObjectName</CODE> is specified for the MBean.
	*/
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* Instantiates and registers an MBean in the MBean server.
	* The MBean server will use its
	* {@link javax.management.loading.ClassLoaderRepository Default Loader Repository}
	* to load the class of the MBean.
	* An object name is associated to the MBean.
	* If the object name given is null, the MBean can automatically
	* provide its own name by implementing the
	* {@link javax.management.MBeanRegistration MBeanRegistration} interface.
	* The call returns an <CODE>ObjectInstance</CODE> object representing
	* the newly created MBean.
	*
	* @param className The class name of the MBean to be instantiated.
	* @param name The object name of the MBean. May be null.
	* @param params An array containing the parameters of the constructor
	*     to be invoked.
	* @param signature An array containing the signature of the
	*     constructor to be invoked.
	*
	* @return  An <CODE>ObjectInstance</CODE>, containing the
	*     <CODE>ObjectName</CODE> and the Java class name
	*     of the newly instantiated MBean.
	*
	* @exception ReflectionException Wraps a
	*     <CODE>{@link java.lang.ClassNotFoundException}</CODE> or an
	*     <CODE>{@link java.lang.Exception}</CODE> that occurred
	*     when trying to invoke the MBean's constructor.
	* @exception InstanceAlreadyExistsException The MBean is already
	*     under the control of the MBean server.
	* @exception MBeanRegistrationException The <CODE>preRegister()</CODE>
	*     (<CODE>MBeanRegistration</CODE>  interface) method of the MBean
	*     has thrown an exception. The MBean will not be registered.
	* @exception MBeanException The constructor of the MBean has
	*     thrown an exception.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The
	*     className passed in parameter is null, the <CODE>ObjectName</CODE>
	*     passed in parameter contains a pattern or no
	*     <CODE>ObjectName</CODE> is specified for the MBean.
	*
	*/
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	/**
	* Instantiates and registers an MBean in the MBean server.
	* The class loader to be used is identified by its object name.
	* An object name is associated to the MBean. If the object name
	* of the loader is not specified, the ClassLoader that loaded the
	* MBean server will be used.
	* If  the MBean object name given is null, the MBean can automatically
	* provide its own name by implementing the
	* {@link javax.management.MBeanRegistration MBeanRegistration} interface.
	* The call returns an <CODE>ObjectInstance</CODE> object representing
	* the newly created MBean.
	*
	* @param className The class name of the MBean to be instantiated.
	* @param name The object name of the MBean. May be null.
	* @param params An array containing the parameters of the constructor
	*      to be invoked.
	* @param signature An array containing the signature of the
	*     constructor to be invoked.
	* @param loaderName The object name of the class loader to be used.
	*
	* @return  An <CODE>ObjectInstance</CODE>, containing the
	*     <CODE>ObjectName</CODE> and the Java class name of the newly
	*     instantiated MBean.
	*
	* @exception ReflectionException Wraps a
	*     <CODE>{@link java.lang.ClassNotFoundException}</CODE> or an
	*     <CODE>{@link java.lang.Exception}</CODE>
	*     that occurred when trying to invoke the MBean's constructor.
	* @exception InstanceAlreadyExistsException The MBean is already
	*     under the control of the MBean server.
	* @exception MBeanRegistrationException The <CODE>preRegister()</CODE>
	*     (<CODE>MBeanRegistration</CODE>  interface) method of the MBean
	*     has thrown an exception. The MBean will not be registered.
	* @exception MBeanException The constructor of the MBean has
	*      thrown an exception
	* @exception InstanceNotFoundException The specified class loader is
	*      not registered in the MBean server.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The
	*     className passed in parameter is null, the <CODE>ObjectName</CODE>
	*     passed in parameter contains a pattern or no
	*     <CODE>ObjectName</CODE> is specified for the MBean.
	*
	*/
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	/**
	* Registers a pre-existing object as an MBean with the MBean server.
	* If the object name given is null, the MBean may automatically
	* provide its own name by implementing the
	* {@link javax.management.MBeanRegistration MBeanRegistration}  interface.
	* The call returns an <CODE>ObjectInstance</CODE> object representing
	* the registered MBean.
	*
	* @param object The  MBean to be registered as an MBean.
	* @param name The object name of the MBean. May be null.
	*
	* @return The <CODE>ObjectInstance</CODE> for the MBean that has been
	*      registered.
	*
	* @exception InstanceAlreadyExistsException The MBean is already
	*      under the control of the MBean server.
	* @exception MBeanRegistrationException The <CODE>preRegister()</CODE>
	*      (<CODE>MBeanRegistration</CODE>  interface) method of the MBean
	*      has thrown an exception. The MBean will not be registered.
	* @exception NotCompliantMBeanException This object is not a JMX
	*      compliant MBean
	* @exception RuntimeOperationsException Wraps an
	*      <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The
	*      object passed in parameter is null or no object name is specified.
	*
	*/
	@:overload public function registerMBean(object : Dynamic, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* De-registers an MBean from the MBean server. The MBean is identified by
	* its object name. Once the method has been invoked, the MBean may
	* no longer be accessed by its object name.
	*
	* @param name The object name of the MBean to be de-registered.
	*
	* @exception InstanceNotFoundException The MBean specified is not
	*     registered in the MBean server.
	* @exception MBeanRegistrationException The <code>preDeregister()</code>
	*     (<CODE>MBeanRegistration</CODE>  interface) method of the MBean
	*     has thrown an exception.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The
	*     object name in parameter is null or the MBean you are when
	*     trying to de-register is the
	*     {@link javax.management.MBeanServerDelegate MBeanServerDelegate}
	*     MBean.
	**/
	@:overload public function unregisterMBean(name : javax.management.ObjectName) : Void;
	
	/**
	* Gets the <CODE>ObjectInstance</CODE> for a given MBean registered
	* with the MBean server.
	*
	* @param name The object name of the MBean.
	*
	* @return The <CODE>ObjectInstance</CODE> associated to the MBean
	*       specified by <VAR>name</VAR>.
	*
	* @exception InstanceNotFoundException The MBean specified is not
	*       registered in the MBean server.
	*/
	@:overload public function getObjectInstance(name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	/**
	* Gets MBeans controlled by the MBean server. This method allows any
	* of the following to be obtained: All MBeans, a set of MBeans specified
	* by pattern matching on the <CODE>ObjectName</CODE> and/or a Query
	* expression, a specific MBean. When the object name is null or no
	* domain and key properties are specified, all objects are to be
	* selected (and filtered if a query is specified). It returns the
	* set of <CODE>ObjectInstance</CODE> objects (containing the
	* <CODE>ObjectName</CODE> and the Java Class name) for
	* the selected MBeans.
	*
	* @param name The object name pattern identifying the MBeans to
	*      be retrieved. If null or or no domain and key properties
	*      are specified, all the MBeans registered will be retrieved.
	* @param query The query expression to be applied for selecting
	*      MBeans. If null no query expression will be applied for
	*      selecting MBeans.
	*
	* @return  A set containing the <CODE>ObjectInstance</CODE> objects
	*      for the selected MBeans.
	*      If no MBean satisfies the query an empty list is returned.
	*
	*/
	@:overload public function queryMBeans(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectInstance>;
	
	/**
	* Gets the names of MBeans controlled by the MBean server. This method
	* enables any of the following to be obtained: The names of all MBeans,
	* the names of a set of MBeans specified by pattern matching on the
	* <CODE>ObjectName</CODE> and/or a Query expression, a specific
	* MBean name (equivalent to testing whether an MBean is registered).
	* When the object name is null or or no domain and key properties are
	* specified, all objects are selected (and filtered if a query is
	* specified). It returns the set of ObjectNames for the MBeans
	* selected.
	*
	* @param name The object name pattern identifying the MBeans to be
	*     retrieved. If null or no domain and key properties are
	*     specified, all the MBeans registered will be retrieved.
	* @param query The query expression to be applied for selecting
	*     MBeans. If null no query expression will be applied for
	*     selecting MBeans.
	*
	* @return  A set containing the ObjectNames for the MBeans selected.
	*     If no MBean satisfies the query, an empty list is returned.
	*
	*/
	@:overload public function queryNames(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectName>;
	
	/**
	* Checks whether an MBean, identified by its object name, is already
	* registered with the MBean server.
	*
	* @param name The object name of the MBean to be checked.
	*
	* @return  True if the MBean is already registered in the MBean server,
	*     false otherwise.
	*
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The object
	*      name in parameter is null.
	*
	*/
	@:overload public function isRegistered(name : javax.management.ObjectName) : Bool;
	
	/**
	* Returns the number of MBeans registered in the MBean server.
	*/
	@:overload public function getMBeanCount() : Null<Int>;
	
	/**
	* Gets the value of a specific attribute of a named MBean. The MBean
	* is identified by its object name.
	*
	* @param name The object name of the MBean from which the attribute
	*     is to be retrieved.
	* @param attribute A String specifying the name of the attribute to be
	*     retrieved.
	*
	* @return  The value of the retrieved attribute.
	*
	* @exception AttributeNotFoundException The attribute specified
	*     is not accessible in the MBean.
	* @exception MBeanException  Wraps an exception thrown by the
	*     MBean's getter.
	* @exception InstanceNotFoundException The MBean specified is not
	*     registered in the MBean server.
	* @exception ReflectionException  Wraps an
	*     <CODE>{@link java.lang.Exception}</CODE> thrown when trying to
	*     invoke the setter.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>:
	*     The object name in parameter is null or the attribute in
	*     parameter is null.
	*/
	@:overload public function getAttribute(name : javax.management.ObjectName, attribute : String) : Dynamic;
	
	/**
	* Enables the values of several attributes of a named MBean. The MBean
	* is identified by its object name.
	*
	* @param name The object name of the MBean from which the attributes are
	*     retrieved.
	* @param attributes A list of the attributes to be retrieved.
	*
	* @return The list of the retrieved attributes.
	*
	* @exception InstanceNotFoundException The MBean specified is not
	*     registered in the MBean server.
	* @exception ReflectionException An exception occurred when trying
	*     to invoke the getAttributes method of a Dynamic MBean.
	* @exception RuntimeOperationsException Wrap an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The
	*     object name in parameter is null or attributes in parameter
	*     is null.
	*
	*/
	@:overload public function getAttributes(name : javax.management.ObjectName, attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	/**
	* Sets the value of a specific attribute of a named MBean. The MBean
	* is identified by its object name.
	*
	* @param name The name of the MBean within which the attribute is
	*     to be set.
	* @param attribute The identification of the attribute to be set
	*     and the value it is to be set to.
	*
	* @exception InstanceNotFoundException The MBean specified is
	*     not registered in the MBean server.
	* @exception AttributeNotFoundException The attribute specified is
	*     not accessible in the MBean.
	* @exception InvalidAttributeValueException The value specified for
	*     the attribute is not valid.
	* @exception MBeanException Wraps an exception thrown by the
	*     MBean's setter.
	* @exception ReflectionException  Wraps an
	*     <CODE>{@link java.lang.Exception}</CODE> thrown when trying
	*     to invoke the setter.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The
	*     object name in parameter is null or the attribute in parameter
	*     is null.
	*/
	@:overload public function setAttribute(name : javax.management.ObjectName, attribute : javax.management.Attribute) : Void;
	
	/**
	* Sets the values of several attributes of a named MBean. The MBean is
	* identified by its object name.
	*
	* @param name The object name of the MBean within which the
	*     attributes are to  be set.
	* @param attributes A list of attributes: The identification of the
	*     attributes to be set and  the values they are to be set to.
	*
	* @return  The list of attributes that were set, with their new values.
	*
	* @exception InstanceNotFoundException The MBean specified is not
	*      registered in the MBean server.
	* @exception ReflectionException An exception occurred when trying
	*      to invoke the getAttributes method of a Dynamic MBean.
	* @exception RuntimeOperationsException Wraps an
	*      <CODE>{@link java.lang.IllegalArgumentException}</CODE>:
	*     The object name in parameter is null or  attributes in
	*     parameter is null.
	*
	*/
	@:overload public function setAttributes(name : javax.management.ObjectName, attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	/**
	* Invokes an operation on an MBean.
	*
	* @param name The object name of the MBean on which the method is to be
	*     invoked.
	* @param operationName The name of the operation to be invoked.
	* @param params An array containing the parameters to be set when
	*     the operation is invoked
	* @param signature An array containing the signature of the operation.
	*     The class objects will be loaded using the same class loader as
	*     the one used for loading the MBean on which the operation was
	*     invoked.
	*
	* @return  The object returned by the operation, which represents the
	*      result ofinvoking the operation on the  MBean specified.
	*
	* @exception InstanceNotFoundException The MBean specified is not
	*       registered in the MBean server.
	* @exception MBeanException  Wraps an exception thrown by the MBean's
	*       invoked method.
	* @exception ReflectionException  Wraps an
	*       <CODE>{@link java.lang.Exception}</CODE> thrown while trying
	*        to invoke the method.
	*
	*/
	@:overload public function invoke(name : javax.management.ObjectName, operationName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Returns the default domain used for naming the MBean.
	* The default domain name is used as the domain part in the ObjectName
	* of MBeans if no domain is specified by the user.
	*/
	@:overload public function getDefaultDomain() : String;
	
	@:overload public function getDomains() : java.NativeArray<String>;
	
	/**
	* Adds a listener to a registered MBean.
	*
	* @param name The name of the MBean on which the listener should be added.
	* @param listener The listener object which will handle the
	*        notifications emitted by the registered MBean.
	* @param filter The filter object. If filter is null, no filtering
	*        will be performed before handling notifications.
	* @param handback The context to be sent to the listener when a
	*        notification is emitted.
	*
	* @exception InstanceNotFoundException The MBean name provided does
	*       not match any of the registered MBeans.
	*/
	@:overload public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* Adds a listener to a registered MBean.
	*
	* @param name The name of the MBean on which the listener should be added.
	* @param listener The object name of the listener which will handle the
	*        notifications emitted by the registered MBean.
	* @param filter The filter object. If filter is null, no filtering will
	*        be performed before handling notifications.
	* @param handback The context to be sent to the listener when a
	*        notification is emitted.
	*
	* @exception InstanceNotFoundException The MBean name of the
	*       notification listener or of the notification broadcaster
	*       does not match any of the registered MBeans.
	*/
	@:overload public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* This method discovers the attributes and operations that an MBean exposes
	* for management.
	*
	* @param name The name of the MBean to analyze
	*
	* @return  An instance of <CODE>MBeanInfo</CODE> allowing the retrieval of
	* all attributes and operations of this MBean.
	*
	* @exception IntrospectionException An exception occurs during
	* introspection.
	* @exception InstanceNotFoundException The MBean specified is not found.
	* @exception ReflectionException An exception occurred when trying to
	* invoke the getMBeanInfo of a Dynamic MBean.
	*/
	@:overload public function getMBeanInfo(name : javax.management.ObjectName) : javax.management.MBeanInfo;
	
	/**
	* Instantiates an object using the list of all class loaders registered
	* in the MBean server (using its
	* {@link javax.management.loading.ClassLoaderRepository Default Loader Repository}).
	* The object's class should have a public constructor.
	* It returns a reference to the newly created object.
	* The newly created object is not registered in the MBean server.
	*
	* @param className The class name of the object to be instantiated.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps the
	*     <CODE>{@link java.lang.ClassNotFoundException}</CODE> or the
	*     <CODE>{@link java.lang.Exception}</CODE> that
	*     occurred when trying to invoke the object's constructor.
	* @exception MBeanException The constructor of the object has thrown
	*     an exception.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>:
	*     The className passed in parameter is null.
	*
	*/
	@:overload public function instantiate(className : String) : Dynamic;
	
	/**
	* Instantiates an object using the class Loader specified by its
	* <CODE>ObjectName</CODE>.
	* If the loader name is null, the ClassLoader that loaded the
	* MBean Server will be used.
	* The object's class should have a public constructor.
	* It returns a reference to the newly created object.
	* The newly created object is not registered in the MBean server.
	*
	* @param className The class name of the MBean to be instantiated.
	* @param loaderName The object name of the class loader to be used.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps the
	*     <CODE>{@link java.lang.ClassNotFoundException}</CODE> or the
	*     <CODE>{@link java.lang.Exception}</CODE> that
	*     occurred when trying to invoke the object's constructor.
	* @exception MBeanException The constructor of the object has thrown
	*     an exception.
	* @exception InstanceNotFoundException The specified class loader
	*     is not registered in the MBaenServer.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>: The
	*     className passed in parameter is null.
	*
	*/
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName) : Dynamic;
	
	/**
	* Instantiates an object using the list of all class loaders registered
	* in the MBean server (using its
	* {@link javax.management.loading.ClassLoaderRepository Default Loader Repository}).
	* The object's class should have a public constructor.
	* The call returns a reference to the newly created object.
	* The newly created object is not registered in the MBean server.
	*
	* @param className The class name of the object to be instantiated.
	* @param params An array containing the parameters of the constructor
	*     to be invoked.
	* @param signature An array containing the signature of the
	*     constructor to be invoked.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps the
	*     <CODE>{@link java.lang.ClassNotFoundException}</CODE> or the
	*     <CODE>{@link java.lang.Exception}</CODE> that
	*     occurred when trying to invoke the object's constructor.
	* @exception MBeanException The constructor of the object has thrown
	*     an exception.
	* @exception RuntimeOperationsException Wraps an
	*     <CODE>{@link java.lang.IllegalArgumentException}</CODE>:
	*     The className passed in parameter is null.
	*
	*/
	@:overload public function instantiate(className : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Instantiates an object. The class loader to be used is identified
	* by its object name. If the object name of the loader is null,
	* the ClassLoader that loaded the MBean server will be used.
	* The object's class should have a public constructor.
	* The call returns a reference to the newly created object.
	* The newly created object is not registered in the MBean server.
	*
	* @param className The class name of the object to be instantiated.
	* @param params An array containing the parameters of the constructor
	*     to be invoked.
	* @param signature An array containing the signature of the constructor
	*     to be invoked.
	* @param loaderName The object name of the class loader to be used.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps the
	*    <CODE>{@link java.lang.ClassNotFoundException}</CODE> or the
	*    <CODE>{@link java.lang.Exception}</CODE> that
	*    occurred when trying to invoke the object's constructor.
	* @exception MBeanException The constructor of the object has thrown
	*    an exception.
	* @exception InstanceNotFoundException The specified class loader
	*    is not registered in the MBean server.
	* @exception RuntimeOperationsException Wraps an
	*    <CODE>{@link java.lang.IllegalArgumentException}</CODE>:
	*    The className passed in parameter is null.
	*
	*/
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Returns true if the MBean specified is an instance of the specified
	* class, false otherwise.
	*
	* @param name The <CODE>ObjectName</CODE> of the MBean.
	* @param className The name of the class.
	*
	* @return true if the MBean specified is an instance of the specified
	*     class, false otherwise.
	*
	* @exception InstanceNotFoundException The MBean specified is not
	*     registered in the MBean server.
	*/
	@:overload public function isInstanceOf(name : javax.management.ObjectName, className : String) : Bool;
	
	/**
	* De-serializes a byte array in the context of the class loader
	* of an MBean.
	*
	* @param name The name of the MBean whose class loader should
	*     be used for the de-serialization.
	* @param data The byte array to be de-sererialized.
	*
	* @return  The de-serialized object stream.
	*
	* @exception InstanceNotFoundException The MBean specified is not
	*     found.
	* @exception OperationsException Any of the usual Input/Output
	*     related exceptions.
	*
	*/
	@:overload public function deserialize(name : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* De-serializes a byte array in the context of a given MBean class loader.
	* The class loader is the one that loaded the class with name "className".
	*
	* @param className The name of the class whose class loader should be
	*      used for the de-serialization.
	* @param data The byte array to be de-sererialized.
	*
	* @return  The de-serialized object stream.
	*
	* @exception OperationsException Any of the usual Input/Output
	*      related exceptions.
	* @exception ReflectionException The specified class could not be
	*      loaded by the default loader repository
	*
	*/
	@:overload public function deserialize(className : String, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* De-serializes a byte array in the context of a given MBean class loader.
	* The class loader is the one that loaded the class with name "className".
	* The name of the class loader to be used for loading the specified
	* class is specified.
	* If null, the MBean Server's class loader will be used.
	*
	* @param className The name of the class whose class loader should be
	*     used for the de-serialization.
	* @param data The byte array to be de-sererialized.
	* @param loaderName The name of the class loader to be used for
	*     loading the specified class.
	*     If null, the MBean Server's class loader will be used.
	*
	* @return  The de-serialized object stream.
	*
	* @exception InstanceNotFoundException The specified class loader
	*     MBean is not found.
	* @exception OperationsException Any of the usual Input/Output
	*     related exceptions.
	* @exception ReflectionException The specified class could not
	*     be loaded by the specified class loader.
	*
	*/
	@:overload public function deserialize(className : String, loaderName : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* Return the MBeanServerInterceptor.
	* @exception UnsupportedOperationException if
	*            {@link MBeanServerInterceptor}s
	*            are not enabled on this object.
	* @see #interceptorsEnabled
	**/
	@:overload @:synchronized public function getMBeanServerInterceptor() : javax.management.MBeanServer;
	
	/**
	* Set the MBeanServerInterceptor.
	* @exception UnsupportedOperationException if
	*            {@link MBeanServerInterceptor}s
	*            are not enabled on this object.
	* @see #interceptorsEnabled
	**/
	@:overload @:synchronized public function setMBeanServerInterceptor(interceptor : javax.management.MBeanServer) : Void;
	
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
	
	/**
	* <p>Return the ClassLoaderRepository for that MBeanServer.
	* @return The ClassLoaderRepository for that MBeanServer.
	**/
	@:overload public function getClassLoaderRepository() : javax.management.loading.ClassLoaderRepository;
	
	@:overload public function getMBeanServerDelegate() : javax.management.MBeanServerDelegate;
	
	/**
	* This method creates a new MBeanServerDelegate for a new MBeanServer.
	* When creating a new MBeanServer the
	* {@link javax.management.MBeanServerBuilder} first calls this method
	* in order to create a new MBeanServerDelegate.
	* <br>Then it calls
	* <code>newMBeanServer(defaultDomain,outer,delegate,interceptors)</code>
	* passing the <var>delegate</var> that should be used by the MBeanServer
	* implementation.
	* <p>Note that the passed <var>delegate</var> might not be directly the
	* MBeanServerDelegate that was returned by this method. It could
	* be, for instance, a new object wrapping the previously
	* returned object.
	*
	* @return A new {@link javax.management.MBeanServerDelegate}.
	**/
	@:overload public static function newMBeanServerDelegate() : javax.management.MBeanServerDelegate;
	
	/**
	* This method creates a new MBeanServer implementation object.
	* When creating a new MBeanServer the
	* {@link javax.management.MBeanServerBuilder} first calls
	* <code>newMBeanServerDelegate()</code> in order to obtain a new
	* {@link javax.management.MBeanServerDelegate} for the new
	* MBeanServer. Then it calls
	* <code>newMBeanServer(defaultDomain,outer,delegate)</code>
	* passing the <var>delegate</var> that should be used by the
	* MBeanServer  implementation.
	* <p>Note that the passed <var>delegate</var> might not be directly the
	* MBeanServerDelegate that was returned by this implementation. It could
	* be, for instance, a new object wrapping the previously
	* returned delegate.
	* <p>The <var>outer</var> parameter is a pointer to the MBeanServer that
	* should be passed to the {@link javax.management.MBeanRegistration}
	* interface when registering MBeans inside the MBeanServer.
	* If <var>outer</var> is <code>null</code>, then the MBeanServer
	* implementation is free to use its own <code>this</code> pointer when
	* invoking the {@link javax.management.MBeanRegistration} interface.
	* <p>This makes it possible for a MBeanServer implementation to wrap
	* another MBeanServer implementation, in order to implement, e.g,
	* security checks, or to prevent access to the actual MBeanServer
	* implementation by returning a pointer to a wrapping object.
	*
	* @param defaultDomain Default domain of the new MBeanServer.
	* @param outer A pointer to the MBeanServer object that must be
	*        passed to the MBeans when invoking their
	*        {@link javax.management.MBeanRegistration} interface.
	* @param delegate A pointer to the MBeanServerDelegate associated
	*        with the new MBeanServer. The new MBeanServer must register
	*        this MBean in its MBean repository.
	* @param interceptors If <code>true</code>,
	*        {@link MBeanServerInterceptor}s will be enabled (default is
	*        <code>false</code>).
	*        Note: this parameter is not taken into account by this
	*        implementation - the default value <code>false</code> is
	*        always used.
	* @return A new private implementation of an MBeanServer.
	* @see #interceptorsEnabled
	* @see javax.management.MBeanServerBuilder
	* @see com.sun.jmx.mbeanserver.JmxMBeanServerBuilder
	**/
	@:overload public static function newMBeanServer(defaultDomain : String, outer : javax.management.MBeanServer, delegate : javax.management.MBeanServerDelegate, interceptors : Bool) : javax.management.MBeanServer;
	
	
}

package javax.management.modelmbean;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
/*
* @author    IBM Corp.
*
* Copyright IBM Corp. 1999-2000.  All rights reserved.
*/
/* java imports */
extern class RequiredModelMBean implements javax.management.modelmbean.ModelMBean implements javax.management.MBeanRegistration implements javax.management.NotificationEmitter
{
	/**
	* Constructs an <CODE>RequiredModelMBean</CODE> with an empty
	* ModelMBeanInfo.
	* <P>
	* The RequiredModelMBean's MBeanInfo and Descriptors
	* can be customized using the {@link #setModelMBeanInfo} method.
	* After the RequiredModelMBean's MBeanInfo and Descriptors are
	* customized, the RequiredModelMBean can be registered with
	* the MBeanServer.
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	*
	* @exception RuntimeOperationsException Wraps a {@link
	* RuntimeException} during the construction of the object.
	**/
	@:overload public function new() : Void;
	
	/**
	* Constructs a RequiredModelMBean object using ModelMBeanInfo passed in.
	* As long as the RequiredModelMBean is not registered
	* with the MBeanServer yet, the RequiredModelMBean's MBeanInfo and
	* Descriptors can be customized using the {@link #setModelMBeanInfo}
	* method.
	* After the RequiredModelMBean's MBeanInfo and Descriptors are
	* customized, the RequiredModelMBean can be registered with the
	* MBeanServer.
	*
	* @param mbi The ModelMBeanInfo object to be used by the
	*            RequiredModelMBean. The given ModelMBeanInfo is cloned
	*            and modified as specified by {@link #setModelMBeanInfo}
	*
	* @exception MBeanException Wraps a distributed communication Exception.
	* @exception RuntimeOperationsException Wraps an
	*    {link java.lang.IllegalArgumentException}:
	*          The MBeanInfo passed in parameter is null.
	*
	**/
	@:overload public function new(mbi : javax.management.modelmbean.ModelMBeanInfo) : Void;
	
	/**
	* Initializes a ModelMBean object using ModelMBeanInfo passed in.
	* This method makes it possible to set a customized ModelMBeanInfo on
	* the ModelMBean as long as it is not registered with the MBeanServer.
	* <br>
	* Once the ModelMBean's ModelMBeanInfo (with Descriptors) are
	* customized and set on the ModelMBean, the  ModelMBean be
	* registered with the MBeanServer.
	* <P>
	* If the ModelMBean is currently registered, this method throws
	* a {@link javax.management.RuntimeOperationsException} wrapping an
	* {@link IllegalStateException}
	* <P>
	* If the given <var>inModelMBeanInfo</var> does not contain any
	* {@link ModelMBeanNotificationInfo} for the <code>GENERIC</code>
	* or <code>ATTRIBUTE_CHANGE</code> notifications, then the
	* RequiredModelMBean will supply its own default
	* {@link ModelMBeanNotificationInfo ModelMBeanNotificationInfo}s for
	* those missing notifications.
	*
	* @param mbi The ModelMBeanInfo object to be used
	*        by the ModelMBean.
	*
	* @exception MBeanException Wraps a distributed communication
	*        Exception.
	* @exception RuntimeOperationsException
	* <ul><li>Wraps an {@link IllegalArgumentException} if
	*         the MBeanInfo passed in parameter is null.</li>
	*     <li>Wraps an {@link IllegalStateException} if the ModelMBean
	*         is currently registered in the MBeanServer.</li>
	* </ul>
	*
	**/
	@:overload public function setModelMBeanInfo(mbi : javax.management.modelmbean.ModelMBeanInfo) : Void;
	
	/**
	* Sets the instance handle of the object against which to
	* execute all methods in this ModelMBean management interface
	* (MBeanInfo and Descriptors).
	*
	* @param mr Object that is the managed resource
	* @param mr_type The type of reference for the managed resource.
	*     <br>Can be: "ObjectReference", "Handle", "IOR", "EJBHandle",
	*         or "RMIReference".
	*     <br>In this implementation only "ObjectReference" is supported.
	*
	* @exception MBeanException The initializer of the object has
	*            thrown an exception.
	* @exception InstanceNotFoundException The managed resource
	*            object could not be found
	* @exception InvalidTargetObjectTypeException The managed
	*            resource type should be "ObjectReference".
	* @exception RuntimeOperationsException Wraps a {@link
	*            RuntimeException} when setting the resource.
	**/
	@:overload public function setManagedResource(mr : Dynamic, mr_type : String) : Void;
	
	/**
	* <p>Instantiates this MBean instance with the data found for
	* the MBean in the persistent store.  The data loaded could include
	* attribute and operation values.</p>
	*
	* <p>This method should be called during construction or
	* initialization of this instance, and before the MBean is
	* registered with the MBeanServer.</p>
	*
	* <p>If the implementation of this class does not support
	* persistence, an {@link MBeanException} wrapping a {@link
	* ServiceNotFoundException} is thrown.</p>
	*
	* @exception MBeanException Wraps another exception, or
	* persistence is not supported
	* @exception RuntimeOperationsException Wraps exceptions from the
	* persistence mechanism
	* @exception InstanceNotFoundException Could not find or load
	* this MBean from persistent storage
	*/
	@:overload public function load() : Void;
	
	/**
	* <p>Captures the current state of this MBean instance and writes
	* it out to the persistent store.  The state stored could include
	* attribute and operation values.</p>
	*
	* <p>If the implementation of this class does not support
	* persistence, an {@link MBeanException} wrapping a {@link
	* ServiceNotFoundException} is thrown.</p>
	*
	* <p>Persistence policy from the MBean and attribute descriptor
	* is used to guide execution of this method. The MBean should be
	* stored if 'persistPolicy' field is:</p>
	*
	* <PRE>  != "never"
	*   = "always"
	*   = "onTimer" and now > 'lastPersistTime' + 'persistPeriod'
	*   = "NoMoreOftenThan" and now > 'lastPersistTime' + 'persistPeriod'
	*   = "onUnregister"
	* </PRE>
	*
	* <p>Do not store the MBean if 'persistPolicy' field is:</p>
	* <PRE>
	*    = "never"
	*    = "onUpdate"
	*    = "onTimer" && now < 'lastPersistTime' + 'persistPeriod'
	* </PRE>
	*
	* @exception MBeanException Wraps another exception, or
	* persistence is not supported
	* @exception RuntimeOperationsException Wraps exceptions from the
	* persistence mechanism
	* @exception InstanceNotFoundException Could not find/access the
	* persistent store
	*/
	@:overload public function store() : Void;
	
	/**
	* Returns the attributes, operations, constructors and notifications
	* that this RequiredModelMBean exposes for management.
	*
	* @return  An instance of ModelMBeanInfo allowing retrieval all
	*          attributes, operations, and Notifications of this MBean.
	*
	**/
	@:overload public function getMBeanInfo() : javax.management.MBeanInfo;
	
	/*
	The requirement to be able to invoke methods on the
	RequiredModelMBean class itself makes this method considerably
	more complicated than it might otherwise be.  Note that, unlike
	earlier versions, we do not allow you to invoke such methods if
	they are not explicitly mentioned in the ModelMBeanInfo.  Doing
	so was potentially a security problem, and certainly very
	surprising.

	We do not look for the method in the RequiredModelMBean class
	itself if:
	(a) there is a "targetObject" field in the Descriptor for the
	operation; or
	(b) there is a "class" field in the Descriptor for the operation
	and the named class is not RequiredModelMBean or one of its
	superinterfaces; or
	(c) the name of the operation is not the name of a method in
	RequiredModelMBean (this is just an optimization).

	In cases (a) and (b), if you have gone to the trouble of adding
	those fields specifically for this operation then presumably you
	do not want RequiredModelMBean's methods to be called.

	We have to pay attention to class loading issues.  If the
	"class" field is present, the named class has to be resolved
	relative to RequiredModelMBean's class loader to test the
	condition (b) above, and relative to the managed resource's
	class loader to ensure that the managed resource is in fact of
	the named class (or a subclass).  The class names in the sig
	array likewise have to be resolved, first against
	RequiredModelMBean's class loader, then against the managed
	resource's class loader.  There is no point in using any other
	loader because when we call Method.invoke we must call it on
	a Method that is implemented by the target object.
	*/
	@:overload public function invoke(opName : String, opArgs : java.NativeArray<Dynamic>, sig : java.NativeArray<String>) : Dynamic;
	
	/**
	* Returns the value of a specific attribute defined for this
	* ModelMBean.
	* The last value returned by an attribute may be cached in the
	* attribute's descriptor.
	* The valid value will be in the 'value' field if there is one.
	* If the 'currencyTimeLimit' field in the descriptor is:
	* <UL>
	* <LI>  <b>&lt;0</b> Then the value is not cached and is never valid.
	*       The getter method is invoked for the attribute.
	*       The 'value' and 'lastUpdatedTimeStamp' fields are cleared.</LI>
	* <LI>  <b>=0</b> Then the value is always cached and always valid.
	*       The 'value' field is returned. If there is no'value' field
	*       then the getter method is invoked for the attribute.
	*       The 'lastUpdatedTimeStamp' field and `value' fields are set
	*       to the attribute's value and the current time stamp.</LI>
	* <LI>  <b>&gt;0</b> Represents the number of seconds that the 'value'
	*       field is valid.
	*       The 'value' field is no longer valid when
	*       'lastUpdatedTimeStamp' + 'currencyTimeLimit' &gt; Now.
	*   <UL>
	*        <LI>When 'value' is valid, 'value' is returned.</LI>
	*        <LI>When 'value' is no longer valid then the getter
	*            method is invoked for the attribute.
	*            The 'lastUpdatedTimeStamp' field and `value' fields
	*            are updated.</LI>
	*   </UL></LI>
	* </UL>
	*
	* <p><b>Note:</b> because of inconsistencies in previous versions of
	* this specification, it is recommended not to use negative or zero
	* values for <code>currencyTimeLimit</code>.  To indicate that a
	* cached value is never valid, omit the
	* <code>currencyTimeLimit</code> field.  To indicate that it is
	* always valid, use a very large number for this field.</p>
	*
	* <p>If the 'getMethod' field contains the name of a valid
	* operation descriptor, then the method described by the
	* operation descriptor is executed.  The response from the
	* method is returned as the value of the attribute.  If the
	* operation fails or the returned value is not compatible with
	* the declared type of the attribute, an exception will be thrown.</p>
	*
	* <p>If no 'getMethod' field is defined then the default value of the
	* attribute is returned. If the returned value is not compatible with
	* the declared type of the attribute, an exception will be thrown.</p>
	*
	* <p>The declared type of the attribute is the String returned by
	* {@link ModelMBeanAttributeInfo#getType()}.  A value is compatible
	* with this type if one of the following is true:
	* <ul>
	* <li>the value is null;</li>
	* <li>the declared name is a primitive type name (such as "int")
	*     and the value is an instance of the corresponding wrapper
	*     type (such as java.lang.Integer);</li>
	* <li>the name of the value's class is identical to the declared name;</li>
	* <li>the declared name can be loaded by the value's class loader and
	*     produces a class to which the value can be assigned.</li>
	* </ul>
	*
	* <p>In this implementation, in every case where the getMethod needs to
	* be called, because the method is invoked through the standard "invoke"
	* method and thus needs operationInfo, an operation must be specified
	* for that getMethod so that the invocation works correctly.</p>
	*
	* @param attrName A String specifying the name of the
	* attribute to be retrieved. It must match the name of a
	* ModelMBeanAttributeInfo.
	*
	* @return The value of the retrieved attribute from the
	* descriptor 'value' field or from the invocation of the
	* operation in the 'getMethod' field of the descriptor.
	*
	* @exception AttributeNotFoundException The specified attribute is
	*    not accessible in the MBean.
	*    The following cases may result in an AttributeNotFoundException:
	*    <UL>
	*      <LI> No ModelMBeanInfo was found for the Model MBean.</LI>
	*      <LI> No ModelMBeanAttributeInfo was found for the specified
	*           attribute name.</LI>
	*      <LI> The ModelMBeanAttributeInfo isReadable method returns
	*           'false'.</LI>
	*    </UL>
	* @exception MBeanException  Wraps one of the following Exceptions:
	*    <UL>
	*      <LI> {@link InvalidAttributeValueException}: A wrong value type
	*           was received from the attribute's getter method or
	*           no 'getMethod' field defined in the descriptor for
	*           the attribute and no default value exists.</LI>
	*      <LI> {@link ServiceNotFoundException}: No
	*           ModelMBeanOperationInfo defined for the attribute's
	*           getter method or no descriptor associated with the
	*           ModelMBeanOperationInfo or the managed resource is
	*           null.</LI>
	*      <LI> {@link InvalidTargetObjectTypeException} The 'targetType'
	*           field value is not 'objectReference'.</LI>
	*      <LI> An Exception thrown by the managed object's getter.</LI>
	*    </UL>
	* @exception ReflectionException  Wraps an {@link java.lang.Exception}
	*    thrown while trying to invoke the getter.
	* @exception RuntimeOperationsException Wraps an
	*    {@link IllegalArgumentException}: The attribute name in
	*    parameter is null.
	*
	* @see #setAttribute(javax.management.Attribute)
	**/
	@:overload public function getAttribute(attrName : String) : Dynamic;
	
	/**
	* Returns the values of several attributes in the ModelMBean.
	* Executes a getAttribute for each attribute name in the
	* attrNames array passed in.
	*
	* @param attrNames A String array of names of the attributes
	* to be retrieved.
	*
	* @return The array of the retrieved attributes.
	*
	* @exception RuntimeOperationsException Wraps an
	* {@link IllegalArgumentException}: The object name in parameter is
	* null or attributes in parameter is null.
	*
	* @see #setAttributes(javax.management.AttributeList)
	*/
	@:overload public function getAttributes(attrNames : java.NativeArray<String>) : javax.management.AttributeList;
	
	/**
	* Sets the value of a specific attribute of a named ModelMBean.
	*
	* If the 'setMethod' field of the attribute's descriptor
	* contains the name of a valid operation descriptor, then the
	* method described by the operation descriptor is executed.
	* In this implementation, the operation descriptor must be specified
	* correctly and assigned to the modelMBeanInfo so that the 'setMethod'
	* works correctly.
	* The response from the method is set as the value of the attribute
	* in the descriptor.
	*
	* <p>If currencyTimeLimit is &gt; 0, then the new value for the
	* attribute is cached in the attribute descriptor's
	* 'value' field and the 'lastUpdatedTimeStamp' field is set to
	* the current time stamp.
	*
	* <p>If the persist field of the attribute's descriptor is not null
	* then Persistence policy from the attribute descriptor is used to
	* guide storing the attribute in a persistent store.
	* <br>Store the MBean if 'persistPolicy' field is:
	* <UL>
	* <Li> != "never"</Li>
	* <Li> = "always"</Li>
	* <Li> = "onUpdate"</Li>
	* <Li> = "onTimer" and now &gt; 'lastPersistTime' + 'persistPeriod'</Li>
	* <Li> = "NoMoreOftenThan" and now &gt; 'lastPersistTime' +
	*         'persistPeriod'</Li>
	* </UL>
	* Do not store the MBean if 'persistPolicy' field is:
	* <UL>
	* <Li> = "never"</Li>
	* <Li> = "onTimer" && now &lt; 'lastPersistTime' + 'persistPeriod'</Li>
	* <Li> = "onUnregister"</Li>
	* <Li> = "NoMoreOftenThan" and now &lt; 'lastPersistTime' +
	*        'persistPeriod'</Li>
	* </UL>
	*
	* <p>The ModelMBeanInfo of the Model MBean is stored in a file.
	*
	* @param attribute The Attribute instance containing the name of
	*        the attribute to be set and the value it is to be set to.
	*
	*
	* @exception AttributeNotFoundException The specified attribute is
	*   not accessible in the MBean.
	*   <br>The following cases may result in an AttributeNotFoundException:
	*   <UL>
	*     <LI> No ModelMBeanAttributeInfo is found for the specified
	*          attribute.</LI>
	*     <LI> The ModelMBeanAttributeInfo's isWritable method returns
	*          'false'.</LI>
	*   </UL>
	* @exception InvalidAttributeValueException No descriptor is defined
	*   for the specified attribute.
	* @exception MBeanException Wraps one of the following Exceptions:
	*   <UL>
	*     <LI> An Exception thrown by the managed object's setter.</LI>
	*     <LI> A {@link ServiceNotFoundException} if a setMethod field is
	*          defined in the descriptor for the attribute and the managed
	*          resource is null; or if no setMethod field is defined and
	*          caching is not enabled for the attribute.
	*          Note that if there is no getMethod field either, then caching
	*          is automatically enabled.</LI>
	*     <LI> {@link InvalidTargetObjectTypeException} The 'targetType'
	*          field value is not 'objectReference'.</LI>
	*     <LI> An Exception thrown by the managed object's getter.</LI>
	*   </UL>
	* @exception ReflectionException  Wraps an {@link java.lang.Exception}
	*   thrown while trying to invoke the setter.
	* @exception RuntimeOperationsException Wraps an
	*   {@link IllegalArgumentException}: The attribute in parameter is
	*   null.
	*
	* @see #getAttribute(java.lang.String)
	**/
	@:overload public function setAttribute(attribute : javax.management.Attribute) : Void;
	
	/**
	* Sets the values of an array of attributes of this ModelMBean.
	* Executes the setAttribute() method for each attribute in the list.
	*
	* @param attributes A list of attributes: The identification of the
	* attributes to be set and  the values they are to be set to.
	*
	* @return  The array of attributes that were set, with their new
	*    values in Attribute instances.
	*
	* @exception RuntimeOperationsException Wraps an
	*   {@link IllegalArgumentException}: The object name in parameter
	*   is null or attributes in parameter is null.
	*
	* @see #getAttributes
	**/
	@:overload public function setAttributes(attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	/**
	* Registers an object which implements the NotificationListener
	* interface as a listener.  This
	* object's 'handleNotification()' method will be invoked when any
	* notification is issued through or by the ModelMBean.  This does
	* not include attributeChangeNotifications.  They must be registered
	* for independently.
	*
	* @param listener The listener object which will handles
	*        notifications emitted by the registered MBean.
	* @param filter The filter object. If null, no filtering will be
	*        performed before handling notifications.
	* @param handback The context to be sent to the listener with
	*        the notification when a notification is emitted.
	*
	* @exception IllegalArgumentException The listener cannot be null.
	*
	* @see #removeNotificationListener
	*/
	@:overload public function addNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* Removes a listener for Notifications from the RequiredModelMBean.
	*
	* @param listener The listener name which was handling notifications
	*    emitted by the registered MBean.
	*    This method will remove all information related to this listener.
	*
	* @exception ListenerNotFoundException The listener is not registered
	*    in the MBean or is null.
	*
	* @see #addNotificationListener
	**/
	@:overload public function removeNotificationListener(listener : javax.management.NotificationListener) : Void;
	
	@:overload public function removeNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function sendNotification(ntfyObj : javax.management.Notification) : Void;
	
	@:overload public function sendNotification(ntfyText : String) : Void;
	
	/**
	* Returns the array of Notifications always generated by the
	* RequiredModelMBean.
	* <P>
	*
	* RequiredModelMBean may always send also two additional notifications:
	* <UL>
	*   <LI> One with descriptor <code>"name=GENERIC,descriptorType=notification,log=T,severity=6,displayName=jmx.modelmbean.generic"</code></LI>
	*   <LI> Second is a standard attribute change notification
	*        with descriptor <code>"name=ATTRIBUTE_CHANGE,descriptorType=notification,log=T,severity=6,displayName=jmx.attribute.change"</code></LI>
	* </UL>
	* Thus these two notifications are always added to those specified
	* by the application.
	*
	* @return MBeanNotificationInfo[]
	*
	**/
	@:overload public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	@:overload public function addAttributeChangeNotificationListener(inlistener : javax.management.NotificationListener, inAttributeName : String, inhandback : Dynamic) : Void;
	
	@:overload public function removeAttributeChangeNotificationListener(inlistener : javax.management.NotificationListener, inAttributeName : String) : Void;
	
	@:overload public function sendAttributeChangeNotification(ntfyObj : javax.management.AttributeChangeNotification) : Void;
	
	@:overload public function sendAttributeChangeNotification(inOldVal : javax.management.Attribute, inNewVal : javax.management.Attribute) : Void;
	
	/**
	* Return the Class Loader Repository used to perform class loading.
	* Subclasses may wish to redefine this method in order to return
	* the appropriate {@link javax.management.loading.ClassLoaderRepository}
	* that should be used in this object.
	*
	* @return the Class Loader Repository.
	*
	*/
	@:overload private function getClassLoaderRepository() : javax.management.loading.ClassLoaderRepository;
	
	/**
	* Allows the MBean to perform any operations it needs before
	* being registered in the MBean server.  If the name of the MBean
	* is not specified, the MBean can provide a name for its
	* registration.  If any exception is raised, the MBean will not be
	* registered in the MBean server.
	* <P>
	* In order to ensure proper run-time semantics of RequireModelMBean,
	* Any subclass of RequiredModelMBean overloading or overriding this
	* method should call <code>super.preRegister(server, name)</code>
	* in its own <code>preRegister</code> implementation.
	*
	* @param server The MBean server in which the MBean will be registered.
	*
	* @param name The object name of the MBean.  This name is null if
	* the name parameter to one of the <code>createMBean</code> or
	* <code>registerMBean</code> methods in the {@link MBeanServer}
	* interface is null.  In that case, this method must return a
	* non-null ObjectName for the new MBean.
	*
	* @return The name under which the MBean is to be registered.
	* This value must not be null.  If the <code>name</code>
	* parameter is not null, it will usually but not necessarily be
	* the returned value.
	*
	* @exception java.lang.Exception This exception will be caught by
	* the MBean server and re-thrown as an
	* {@link javax.management.MBeanRegistrationException
	* MBeanRegistrationException}.
	*/
	@:overload public function preRegister(server : javax.management.MBeanServer, name : javax.management.ObjectName) : javax.management.ObjectName;
	
	/**
	* Allows the MBean to perform any operations needed after having been
	* registered in the MBean server or after the registration has failed.
	* <P>
	* In order to ensure proper run-time semantics of RequireModelMBean,
	* Any subclass of RequiredModelMBean overloading or overriding this
	* method should call <code>super.postRegister(registrationDone)</code>
	* in its own <code>postRegister</code> implementation.
	*
	* @param registrationDone Indicates whether or not the MBean has
	* been successfully registered in the MBean server. The value
	* false means that the registration phase has failed.
	*/
	@:overload public function postRegister(registrationDone : Null<Bool>) : Void;
	
	/**
	* Allows the MBean to perform any operations it needs before
	* being unregistered by the MBean server.
	* <P>
	* In order to ensure proper run-time semantics of RequireModelMBean,
	* Any subclass of RequiredModelMBean overloading or overriding this
	* method should call <code>super.preDeregister()</code> in its own
	* <code>preDeregister</code> implementation.
	*
	* @exception java.lang.Exception This exception will be caught by
	* the MBean server and re-thrown as an
	* {@link javax.management.MBeanRegistrationException
	* MBeanRegistrationException}.
	*/
	@:overload public function preDeregister() : Void;
	
	/**
	* Allows the MBean to perform any operations needed after having been
	* unregistered in the MBean server.
	* <P>
	* In order to ensure proper run-time semantics of RequireModelMBean,
	* Any subclass of RequiredModelMBean overloading or overriding this
	* method should call <code>super.postDeregister()</code> in its own
	* <code>postDeregister</code> implementation.
	*/
	@:overload public function postDeregister() : Void;
	
	
}

package javax.management;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class StandardMBean implements javax.management.DynamicMBean implements javax.management.MBeanRegistration
{
	/**
	* <p>Make a DynamicMBean out of the object
	* <var>implementation</var>, using the specified
	* <var>mbeanInterface</var> class.</p>
	*
	* @param implementation The implementation of this MBean.
	* @param mbeanInterface The Management Interface exported by this
	*        MBean's implementation. If <code>null</code>, then this
	*        object will use standard JMX design pattern to determine
	*        the management interface associated with the given
	*        implementation.
	* @param <T> Allows the compiler to check
	* that {@code implementation} does indeed implement the class
	* described by {@code mbeanInterface}.  The compiler can only
	* check this if {@code mbeanInterface} is a class literal such
	* as {@code MyMBean.class}.
	*
	* @exception IllegalArgumentException if the given
	*    <var>implementation</var> is null.
	* @exception NotCompliantMBeanException if the <var>mbeanInterface</var>
	*    does not follow JMX design patterns for Management Interfaces, or
	*    if the given <var>implementation</var> does not implement the
	*    specified interface.
	**/
	@:overload public function new<T>(implementation : T, mbeanInterface : Class<T>) : Void;
	
	/**
	* <p>Make a DynamicMBean out of <var>this</var>, using the specified
	* <var>mbeanInterface</var> class.</p>
	*
	* <p>Calls {@link #StandardMBean(java.lang.Object, java.lang.Class)
	*       this(this,mbeanInterface)}.
	* This constructor is reserved to subclasses.</p>
	*
	* @param mbeanInterface The Management Interface exported by this
	*        MBean.
	*
	* @exception NotCompliantMBeanException if the <var>mbeanInterface</var>
	*    does not follow JMX design patterns for Management Interfaces, or
	*    if <var>this</var> does not implement the specified interface.
	**/
	@:overload private function new(mbeanInterface : Class<Dynamic>) : Void;
	
	/**
	* <p>Make a DynamicMBean out of the object
	* <var>implementation</var>, using the specified
	* <var>mbeanInterface</var> class, and choosing whether the
	* resultant MBean is an MXBean.  This constructor can be used
	* to make either Standard MBeans or MXBeans.  Unlike the
	* constructor {@link #StandardMBean(Object, Class)}, it
	* does not throw NotCompliantMBeanException.</p>
	*
	* @param implementation The implementation of this MBean.
	* @param mbeanInterface The Management Interface exported by this
	*        MBean's implementation. If <code>null</code>, then this
	*        object will use standard JMX design pattern to determine
	*        the management interface associated with the given
	*        implementation.
	* @param isMXBean If true, the {@code mbeanInterface} parameter
	* names an MXBean interface and the resultant MBean is an MXBean.
	* @param <T> Allows the compiler to check
	* that {@code implementation} does indeed implement the class
	* described by {@code mbeanInterface}.  The compiler can only
	* check this if {@code mbeanInterface} is a class literal such
	* as {@code MyMBean.class}.
	*
	* @exception IllegalArgumentException if the given
	*    <var>implementation</var> is null, or if the <var>mbeanInterface</var>
	*    does not follow JMX design patterns for Management Interfaces, or
	*    if the given <var>implementation</var> does not implement the
	*    specified interface.
	*
	* @since 1.6
	**/
	@:require(java6) @:overload public function new<T>(implementation : T, mbeanInterface : Class<T>, isMXBean : Bool) : Void;
	
	/**
	* <p>Make a DynamicMBean out of <var>this</var>, using the specified
	* <var>mbeanInterface</var> class, and choosing whether the resulting
	* MBean is an MXBean.  This constructor can be used
	* to make either Standard MBeans or MXBeans.  Unlike the
	* constructor {@link #StandardMBean(Object, Class)}, it
	* does not throw NotCompliantMBeanException.</p>
	*
	* <p>Calls {@link #StandardMBean(java.lang.Object, java.lang.Class, boolean)
	*       this(this, mbeanInterface, isMXBean)}.
	* This constructor is reserved to subclasses.</p>
	*
	* @param mbeanInterface The Management Interface exported by this
	*        MBean.
	* @param isMXBean If true, the {@code mbeanInterface} parameter
	* names an MXBean interface and the resultant MBean is an MXBean.
	*
	* @exception IllegalArgumentException if the <var>mbeanInterface</var>
	*    does not follow JMX design patterns for Management Interfaces, or
	*    if <var>this</var> does not implement the specified interface.
	*
	* @since 1.6
	**/
	@:require(java6) @:overload private function new(mbeanInterface : Class<Dynamic>, isMXBean : Bool) : Void;
	
	/**
	* <p>Replace the implementation object wrapped in this object.</p>
	*
	* @param implementation The new implementation of this Standard MBean
	* (or MXBean). The <code>implementation</code> object must implement
	* the Standard MBean (or MXBean) interface that was supplied when this
	* <code>StandardMBean</code> was constructed.
	*
	* @exception IllegalArgumentException if the given
	* <var>implementation</var> is null.
	*
	* @exception NotCompliantMBeanException if the given
	* <var>implementation</var> does not implement the
	* Standard MBean (or MXBean) interface that was
	* supplied at construction.
	*
	* @see #getImplementation
	**/
	@:overload public function setImplementation(implementation : Dynamic) : Void;
	
	/**
	* Get the implementation of this Standard MBean (or MXBean).
	* @return The implementation of this Standard MBean (or MXBean).
	*
	* @see #setImplementation
	**/
	@:overload public function getImplementation() : Dynamic;
	
	/**
	* Get the Management Interface of this Standard MBean (or MXBean).
	* @return The management interface of this Standard MBean (or MXBean).
	**/
	@:overload @:final public function getMBeanInterface() : Class<Dynamic>;
	
	/**
	* Get the class of the implementation of this Standard MBean (or MXBean).
	* @return The class of the implementation of this Standard MBean (or MXBean).
	**/
	@:overload public function getImplementationClass() : Class<Dynamic>;
	
	@:overload public function getAttribute(attribute : String) : Dynamic;
	
	@:overload public function setAttribute(attribute : javax.management.Attribute) : Void;
	
	@:overload public function getAttributes(attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	@:overload public function setAttributes(attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	@:overload public function invoke(actionName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	/**
	* Get the {@link MBeanInfo} for this MBean.
	* <p>
	* This method implements
	* {@link javax.management.DynamicMBean#getMBeanInfo()
	*   DynamicMBean.getMBeanInfo()}.
	* <p>
	* This method first calls {@link #getCachedMBeanInfo()} in order to
	* retrieve the cached MBeanInfo for this MBean, if any. If the
	* MBeanInfo returned by {@link #getCachedMBeanInfo()} is not null,
	* then it is returned.<br>
	* Otherwise, this method builds a default MBeanInfo for this MBean,
	* using the Management Interface specified for this MBean.
	* <p>
	* While building the MBeanInfo, this method calls the customization
	* hooks that make it possible for subclasses to supply their custom
	* descriptions, parameter names, etc...<br>
	* Finally, it calls {@link #cacheMBeanInfo(javax.management.MBeanInfo)
	* cacheMBeanInfo()} in order to cache the new MBeanInfo.
	* @return The cached MBeanInfo for that MBean, if not null, or a
	*         newly built MBeanInfo if none was cached.
	**/
	@:overload public function getMBeanInfo() : javax.management.MBeanInfo;
	
	/**
	* Customization hook:
	* Get the className that will be used in the MBeanInfo returned by
	* this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom class name.  The default implementation returns
	* {@link MBeanInfo#getClassName() info.getClassName()}.
	* @param info The default MBeanInfo derived by reflection.
	* @return the class name for the new MBeanInfo.
	**/
	@:overload private function getClassName(info : javax.management.MBeanInfo) : String;
	
	/**
	* Customization hook:
	* Get the description that will be used in the MBeanInfo returned by
	* this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom MBean description.  The default implementation returns
	* {@link MBeanInfo#getDescription() info.getDescription()}.
	* @param info The default MBeanInfo derived by reflection.
	* @return the description for the new MBeanInfo.
	**/
	@:overload private function getDescription(info : javax.management.MBeanInfo) : String;
	
	/**
	* <p>Customization hook:
	* Get the description that will be used in the MBeanFeatureInfo
	* returned by this MBean.</p>
	*
	* <p>Subclasses may redefine this method in order to supply
	* their custom description.  The default implementation returns
	* {@link MBeanFeatureInfo#getDescription()
	* info.getDescription()}.</p>
	*
	* <p>This method is called by
	*      {@link #getDescription(MBeanAttributeInfo)},
	*      {@link #getDescription(MBeanOperationInfo)},
	*      {@link #getDescription(MBeanConstructorInfo)}.</p>
	*
	* @param info The default MBeanFeatureInfo derived by reflection.
	* @return the description for the given MBeanFeatureInfo.
	**/
	@:overload private function getDescription(info : javax.management.MBeanFeatureInfo) : String;
	
	/**
	* Customization hook:
	* Get the description that will be used in the MBeanAttributeInfo
	* returned by this MBean.
	*
	* <p>Subclasses may redefine this method in order to supply their
	* custom description.  The default implementation returns {@link
	* #getDescription(MBeanFeatureInfo)
	* getDescription((MBeanFeatureInfo) info)}.
	* @param info The default MBeanAttributeInfo derived by reflection.
	* @return the description for the given MBeanAttributeInfo.
	**/
	@:overload private function getDescription(info : javax.management.MBeanAttributeInfo) : String;
	
	/**
	* Customization hook:
	* Get the description that will be used in the MBeanConstructorInfo
	* returned by this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom description.
	* The default implementation returns {@link
	* #getDescription(MBeanFeatureInfo)
	* getDescription((MBeanFeatureInfo) info)}.
	* @param info The default MBeanConstructorInfo derived by reflection.
	* @return the description for the given MBeanConstructorInfo.
	**/
	@:overload private function getDescription(info : javax.management.MBeanConstructorInfo) : String;
	
	/**
	* Customization hook:
	* Get the description that will be used for the  <var>sequence</var>
	* MBeanParameterInfo of the MBeanConstructorInfo returned by this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom description.  The default implementation returns
	* {@link MBeanParameterInfo#getDescription() param.getDescription()}.
	*
	* @param ctor  The default MBeanConstructorInfo derived by reflection.
	* @param param The default MBeanParameterInfo derived by reflection.
	* @param sequence The sequence number of the parameter considered
	*        ("0" for the first parameter, "1" for the second parameter,
	*        etc...).
	* @return the description for the given MBeanParameterInfo.
	**/
	@:overload private function getDescription(ctor : javax.management.MBeanConstructorInfo, param : javax.management.MBeanParameterInfo, sequence : Int) : String;
	
	/**
	* Customization hook:
	* Get the name that will be used for the <var>sequence</var>
	* MBeanParameterInfo of the MBeanConstructorInfo returned by this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom parameter name.  The default implementation returns
	* {@link MBeanParameterInfo#getName() param.getName()}.
	*
	* @param ctor  The default MBeanConstructorInfo derived by reflection.
	* @param param The default MBeanParameterInfo derived by reflection.
	* @param sequence The sequence number of the parameter considered
	*        ("0" for the first parameter, "1" for the second parameter,
	*        etc...).
	* @return the name for the given MBeanParameterInfo.
	**/
	@:overload private function getParameterName(ctor : javax.management.MBeanConstructorInfo, param : javax.management.MBeanParameterInfo, sequence : Int) : String;
	
	/**
	* Customization hook:
	* Get the description that will be used in the MBeanOperationInfo
	* returned by this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom description.  The default implementation returns
	* {@link #getDescription(MBeanFeatureInfo)
	* getDescription((MBeanFeatureInfo) info)}.
	* @param info The default MBeanOperationInfo derived by reflection.
	* @return the description for the given MBeanOperationInfo.
	**/
	@:overload private function getDescription(info : javax.management.MBeanOperationInfo) : String;
	
	/**
	* Customization hook:
	* Get the <var>impact</var> flag of the operation that will be used in
	* the MBeanOperationInfo returned by this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom impact flag.  The default implementation returns
	* {@link MBeanOperationInfo#getImpact() info.getImpact()}.
	* @param info The default MBeanOperationInfo derived by reflection.
	* @return the impact flag for the given MBeanOperationInfo.
	**/
	@:overload private function getImpact(info : javax.management.MBeanOperationInfo) : Int;
	
	/**
	* Customization hook:
	* Get the name that will be used for the <var>sequence</var>
	* MBeanParameterInfo of the MBeanOperationInfo returned by this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom parameter name.  The default implementation returns
	* {@link MBeanParameterInfo#getName() param.getName()}.
	*
	* @param op    The default MBeanOperationInfo derived by reflection.
	* @param param The default MBeanParameterInfo derived by reflection.
	* @param sequence The sequence number of the parameter considered
	*        ("0" for the first parameter, "1" for the second parameter,
	*        etc...).
	* @return the name to use for the given MBeanParameterInfo.
	**/
	@:overload private function getParameterName(op : javax.management.MBeanOperationInfo, param : javax.management.MBeanParameterInfo, sequence : Int) : String;
	
	/**
	* Customization hook:
	* Get the description that will be used for the  <var>sequence</var>
	* MBeanParameterInfo of the MBeanOperationInfo returned by this MBean.
	* <br>
	* Subclasses may redefine this method in order to supply their
	* custom description.  The default implementation returns
	* {@link MBeanParameterInfo#getDescription() param.getDescription()}.
	*
	* @param op    The default MBeanOperationInfo derived by reflection.
	* @param param The default MBeanParameterInfo derived by reflection.
	* @param sequence The sequence number of the parameter considered
	*        ("0" for the first parameter, "1" for the second parameter,
	*        etc...).
	* @return the description for the given MBeanParameterInfo.
	**/
	@:overload private function getDescription(op : javax.management.MBeanOperationInfo, param : javax.management.MBeanParameterInfo, sequence : Int) : String;
	
	/**
	* Customization hook:
	* Get the MBeanConstructorInfo[] that will be used in the MBeanInfo
	* returned by this MBean.
	* <br>
	* By default, this method returns <code>null</code> if the wrapped
	* implementation is not <var>this</var>. Indeed, if the wrapped
	* implementation is not this object itself, it will not be possible
	* to recreate a wrapped implementation by calling the implementation
	* constructors through <code>MBeanServer.createMBean(...)</code>.<br>
	* Otherwise, if the wrapped implementation is <var>this</var>,
	* <var>ctors</var> is returned.
	* <br>
	* Subclasses may redefine this method in order to modify this
	* behavior, if needed.
	* @param ctors The default MBeanConstructorInfo[] derived by reflection.
	* @param impl  The wrapped implementation. If <code>null</code> is
	*        passed, the wrapped implementation is ignored and
	*        <var>ctors</var> is returned.
	* @return the MBeanConstructorInfo[] for the new MBeanInfo.
	**/
	@:overload private function getConstructors(ctors : java.NativeArray<javax.management.MBeanConstructorInfo>, impl : Dynamic) : java.NativeArray<javax.management.MBeanConstructorInfo>;
	
	/**
	* Customization hook:
	* Return the MBeanInfo cached for this object.
	*
	* <p>Subclasses may redefine this method in order to implement their
	* own caching policy.  The default implementation stores one
	* {@link MBeanInfo} object per instance.
	*
	* @return The cached MBeanInfo, or null if no MBeanInfo is cached.
	*
	* @see #cacheMBeanInfo(MBeanInfo)
	**/
	@:overload private function getCachedMBeanInfo() : javax.management.MBeanInfo;
	
	/**
	* Customization hook:
	* cache the MBeanInfo built for this object.
	*
	* <p>Subclasses may redefine this method in order to implement
	* their own caching policy.  The default implementation stores
	* <code>info</code> in this instance.  A subclass can define
	* other policies, such as not saving <code>info</code> (so it is
	* reconstructed every time {@link #getMBeanInfo()} is called) or
	* sharing a unique {@link MBeanInfo} object when several
	* <code>StandardMBean</code> instances have equal {@link
	* MBeanInfo} values.
	*
	* @param info the new <code>MBeanInfo</code> to cache.  Any
	* previously cached value is discarded.  This parameter may be
	* null, in which case there is no new cached value.
	**/
	@:overload private function cacheMBeanInfo(info : javax.management.MBeanInfo) : Void;
	
	/**
	* <p>Allows the MBean to perform any operations it needs before
	* being registered in the MBean server.  If the name of the MBean
	* is not specified, the MBean can provide a name for its
	* registration.  If any exception is raised, the MBean will not be
	* registered in the MBean server.</p>
	*
	* <p>The default implementation of this method returns the {@code name}
	* parameter.  It does nothing else for
	* Standard MBeans.  For MXBeans, it records the {@code MBeanServer}
	* and {@code ObjectName} parameters so they can be used to translate
	* inter-MXBean references.</p>
	*
	* <p>It is good practice for a subclass that overrides this method
	* to call the overridden method via {@code super.preRegister(...)}.
	* This is necessary if this object is an MXBean that is referenced
	* by attributes or operations in other MXBeans.</p>
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
	* @throws IllegalArgumentException if this is an MXBean and
	* {@code name} is null.
	*
	* @throws InstanceAlreadyExistsException if this is an MXBean and
	* it has already been registered under another name (in this
	* MBean Server or another).
	*
	* @throws Exception no other checked exceptions are thrown by
	* this method but {@code Exception} is declared so that subclasses
	* can override the method and throw their own exceptions.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function preRegister(server : javax.management.MBeanServer, name : javax.management.ObjectName) : javax.management.ObjectName;
	
	/**
	* <p>Allows the MBean to perform any operations needed after having been
	* registered in the MBean server or after the registration has failed.</p>
	*
	* <p>The default implementation of this method does nothing for
	* Standard MBeans.  For MXBeans, it undoes any work done by
	* {@link #preRegister preRegister} if registration fails.</p>
	*
	* <p>It is good practice for a subclass that overrides this method
	* to call the overridden method via {@code super.postRegister(...)}.
	* This is necessary if this object is an MXBean that is referenced
	* by attributes or operations in other MXBeans.</p>
	*
	* @param registrationDone Indicates whether or not the MBean has
	* been successfully registered in the MBean server. The value
	* false means that the registration phase has failed.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function postRegister(registrationDone : Null<Bool>) : Void;
	
	/**
	* <p>Allows the MBean to perform any operations it needs before
	* being unregistered by the MBean server.</p>
	*
	* <p>The default implementation of this method does nothing.</p>
	*
	* <p>It is good practice for a subclass that overrides this method
	* to call the overridden method via {@code super.preDeregister(...)}.</p>
	*
	* @throws Exception no checked exceptions are throw by this method
	* but {@code Exception} is declared so that subclasses can override
	* this method and throw their own exceptions.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function preDeregister() : Void;
	
	/**
	* <p>Allows the MBean to perform any operations needed after having been
	* unregistered in the MBean server.</p>
	*
	* <p>The default implementation of this method does nothing for
	* Standard MBeans.  For MXBeans, it removes any information that
	* was recorded by the {@link #preRegister preRegister} method.</p>
	*
	* <p>It is good practice for a subclass that overrides this method
	* to call the overridden method via {@code super.postRegister(...)}.
	* This is necessary if this object is an MXBean that is referenced
	* by attributes or operations in other MXBeans.</p>
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function postDeregister() : Void;
	
	
}
@:native('javax$management$StandardMBean$MBeanInfoSafeAction') @:internal extern class StandardMBean_MBeanInfoSafeAction implements java.security.PrivilegedAction<Null<Bool>>
{
	@:overload public function run() : Null<Bool>;
	
	
}

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
extern class MBeanServerInvocationHandler implements java.lang.reflect.InvocationHandler
{
	/**
	* <p>Invocation handler that forwards methods through an MBean
	* server to a Standard MBean.  This constructor may be called
	* instead of relying on {@link
	* JMX#newMBeanProxy(MBeanServerConnection, ObjectName, Class)
	* JMX.newMBeanProxy}, for instance if you need to supply a
	* different {@link ClassLoader} to {@link Proxy#newProxyInstance
	* Proxy.newProxyInstance}.</p>
	*
	* <p>This constructor is not appropriate for an MXBean.  Use
	* {@link #MBeanServerInvocationHandler(MBeanServerConnection,
	* ObjectName, boolean)} for that.  This constructor is equivalent
	* to {@code new MBeanServerInvocationHandler(connection,
	* objectName, false)}.</p>
	*
	* @param connection the MBean server connection through which all
	* methods of a proxy using this handler will be forwarded.
	*
	* @param objectName the name of the MBean within the MBean server
	* to which methods will be forwarded.
	*/
	@:overload @:public public function new(connection : javax.management.MBeanServerConnection, objectName : javax.management.ObjectName) : Void;
	
	/**
	* <p>Invocation handler that can forward methods through an MBean
	* server to a Standard MBean or MXBean.  This constructor may be called
	* instead of relying on {@link
	* JMX#newMXBeanProxy(MBeanServerConnection, ObjectName, Class)
	* JMX.newMXBeanProxy}, for instance if you need to supply a
	* different {@link ClassLoader} to {@link Proxy#newProxyInstance
	* Proxy.newProxyInstance}.</p>
	*
	* @param connection the MBean server connection through which all
	* methods of a proxy using this handler will be forwarded.
	*
	* @param objectName the name of the MBean within the MBean server
	* to which methods will be forwarded.
	*
	* @param isMXBean if true, the proxy is for an {@link MXBean}, and
	* appropriate mappings will be applied to method parameters and return
	* values.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(connection : javax.management.MBeanServerConnection, objectName : javax.management.ObjectName, isMXBean : Bool) : Void;
	
	/**
	* <p>The MBean server connection through which the methods of
	* a proxy using this handler are forwarded.</p>
	*
	* @return the MBean server connection.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getMBeanServerConnection() : javax.management.MBeanServerConnection;
	
	/**
	* <p>The name of the MBean within the MBean server to which methods
	* are forwarded.
	*
	* @return the object name.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getObjectName() : javax.management.ObjectName;
	
	/**
	* <p>If true, the proxy is for an MXBean, and appropriate mappings
	* are applied to method parameters and return values.
	*
	* @return whether the proxy is for an MXBean.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function isMXBean() : Bool;
	
	/**
	* <p>Return a proxy that implements the given interface by
	* forwarding its methods through the given MBean server to the
	* named MBean.  As of 1.6, the methods {@link
	* JMX#newMBeanProxy(MBeanServerConnection, ObjectName, Class)} and
	* {@link JMX#newMBeanProxy(MBeanServerConnection, ObjectName, Class,
	* boolean)} are preferred to this method.</p>
	*
	* <p>This method is equivalent to {@link Proxy#newProxyInstance
	* Proxy.newProxyInstance}<code>(interfaceClass.getClassLoader(),
	* interfaces, handler)</code>.  Here <code>handler</code> is the
	* result of {@link #MBeanServerInvocationHandler new
	* MBeanServerInvocationHandler(connection, objectName)}, and
	* <code>interfaces</code> is an array that has one element if
	* <code>notificationBroadcaster</code> is false and two if it is
	* true.  The first element of <code>interfaces</code> is
	* <code>interfaceClass</code> and the second, if present, is
	* <code>NotificationEmitter.class</code>.
	*
	* @param connection the MBean server to forward to.
	* @param objectName the name of the MBean within
	* <code>connection</code> to forward to.
	* @param interfaceClass the management interface that the MBean
	* exports, which will also be implemented by the returned proxy.
	* @param notificationBroadcaster make the returned proxy
	* implement {@link NotificationEmitter} by forwarding its methods
	* via <code>connection</code>. A call to {@link
	* NotificationBroadcaster#addNotificationListener} on the proxy will
	* result in a call to {@link
	* MBeanServerConnection#addNotificationListener(ObjectName,
	* NotificationListener, NotificationFilter, Object)}, and likewise
	* for the other methods of {@link NotificationBroadcaster} and {@link
	* NotificationEmitter}.
	*
	* @param <T> allows the compiler to know that if the {@code
	* interfaceClass} parameter is {@code MyMBean.class}, for example,
	* then the return type is {@code MyMBean}.
	*
	* @return the new proxy instance.
	*
	* @see JMX#newMBeanProxy(MBeanServerConnection, ObjectName, Class)
	*/
	@:overload @:public @:static public static function newProxyInstance<T>(connection : javax.management.MBeanServerConnection, objectName : javax.management.ObjectName, interfaceClass : Class<T>, notificationBroadcaster : Bool) : T;
	
	@:overload @:public public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}

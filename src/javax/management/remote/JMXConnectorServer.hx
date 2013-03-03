package javax.management.remote;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class JMXConnectorServer extends javax.management.NotificationBroadcasterSupport implements javax.management.remote.JMXConnectorServerMBean implements javax.management.MBeanRegistration implements javax.management.remote.JMXAddressable
{
	/**
	* <p>Name of the attribute that specifies the authenticator for a
	* connector server.  The value associated with this attribute, if
	* any, must be an object that implements the interface {@link
	* JMXAuthenticator}.</p>
	*/
	@:public @:static @:final public static var AUTHENTICATOR(default, null) : String;
	
	/**
	* <p>Constructs a connector server that will be registered as an
	* MBean in the MBean server it is attached to.  This constructor
	* is typically called by one of the <code>createMBean</code>
	* methods when creating, within an MBean server, a connector
	* server that makes it available remotely.</p>
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* <p>Constructs a connector server that is attached to the given
	* MBean server.  A connector server that is created in this way
	* can be registered in a different MBean server, or not registered
	* in any MBean server.</p>
	*
	* @param mbeanServer the MBean server that this connector server
	* is attached to.  Null if this connector server will be attached
	* to an MBean server by being registered in it.
	*/
	@:overload @:public public function new(mbeanServer : javax.management.MBeanServer) : Void;
	
	/**
	* <p>Returns the MBean server that this connector server is
	* attached to.</p>
	*
	* @return the MBean server that this connector server is attached
	* to, or null if it is not yet attached to an MBean server.
	*/
	@:overload @:public @:synchronized public function getMBeanServer() : javax.management.MBeanServer;
	
	@:overload @:public @:synchronized public function setMBeanServerForwarder(mbsf : javax.management.remote.MBeanServerForwarder) : Void;
	
	@:overload @:public public function getConnectionIds() : java.NativeArray<String>;
	
	/**
	* <p>Returns a client stub for this connector server.  A client
	* stub is a serializable object whose {@link
	* JMXConnector#connect(Map) connect} method can be used to make
	* one new connection to this connector server.</p>
	*
	* <p>A given connector need not support the generation of client
	* stubs.  However, the connectors specified by the JMX Remote API do
	* (JMXMP Connector and RMI Connector).</p>
	*
	* <p>The default implementation of this method uses {@link
	* #getAddress} and {@link JMXConnectorFactory} to generate the
	* stub, with code equivalent to the following:</p>
	*
	* <pre>
	* JMXServiceURL addr = {@link #getAddress() getAddress()};
	* return {@link JMXConnectorFactory#newJMXConnector(JMXServiceURL, Map)
	*          JMXConnectorFactory.newJMXConnector(addr, env)};
	* </pre>
	*
	* <p>A connector server for which this is inappropriate must
	* override this method so that it either implements the
	* appropriate logic or throws {@link
	* UnsupportedOperationException}.</p>
	*
	* @param env client connection parameters of the same sort that
	* could be provided to {@link JMXConnector#connect(Map)
	* JMXConnector.connect(Map)}.  Can be null, which is equivalent
	* to an empty map.
	*
	* @return a client stub that can be used to make a new connection
	* to this connector server.
	*
	* @exception UnsupportedOperationException if this connector
	* server does not support the generation of client stubs.
	*
	* @exception IllegalStateException if the JMXConnectorServer is
	* not started (see {@link JMXConnectorServerMBean#isActive()}).
	*
	* @exception IOException if a communications problem means that a
	* stub cannot be created.
	**/
	@:overload @:public public function toJMXConnector(env : java.util.Map<String, Dynamic>) : javax.management.remote.JMXConnector;
	
	/**
	* <p>Returns an array indicating the notifications that this MBean
	* sends. The implementation in <code>JMXConnectorServer</code>
	* returns an array with one element, indicating that it can emit
	* notifications of class {@link JMXConnectionNotification} with
	* the types defined in that class.  A subclass that can emit other
	* notifications should return an array that contains this element
	* plus descriptions of the other notifications.</p>
	*
	* @return the array of possible notifications.
	*/
	@:overload @:public override public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	/**
	* <p>Called by a subclass when a new client connection is opened.
	* Adds <code>connectionId</code> to the list returned by {@link
	* #getConnectionIds()}, then emits a {@link
	* JMXConnectionNotification} with type {@link
	* JMXConnectionNotification#OPENED}.</p>
	*
	* @param connectionId the ID of the new connection.  This must be
	* different from the ID of any connection previously opened by
	* this connector server.
	*
	* @param message the message for the emitted {@link
	* JMXConnectionNotification}.  Can be null.  See {@link
	* Notification#getMessage()}.
	*
	* @param userData the <code>userData</code> for the emitted
	* {@link JMXConnectionNotification}.  Can be null.  See {@link
	* Notification#getUserData()}.
	*
	* @exception NullPointerException if <code>connectionId</code> is
	* null.
	*/
	@:overload @:protected private function connectionOpened(connectionId : String, message : String, userData : Dynamic) : Void;
	
	/**
	* <p>Called by a subclass when a client connection is closed
	* normally.  Removes <code>connectionId</code> from the list returned
	* by {@link #getConnectionIds()}, then emits a {@link
	* JMXConnectionNotification} with type {@link
	* JMXConnectionNotification#CLOSED}.</p>
	*
	* @param connectionId the ID of the closed connection.
	*
	* @param message the message for the emitted {@link
	* JMXConnectionNotification}.  Can be null.  See {@link
	* Notification#getMessage()}.
	*
	* @param userData the <code>userData</code> for the emitted
	* {@link JMXConnectionNotification}.  Can be null.  See {@link
	* Notification#getUserData()}.
	*
	* @exception NullPointerException if <code>connectionId</code>
	* is null.
	*/
	@:overload @:protected private function connectionClosed(connectionId : String, message : String, userData : Dynamic) : Void;
	
	/**
	* <p>Called by a subclass when a client connection fails.
	* Removes <code>connectionId</code> from the list returned by
	* {@link #getConnectionIds()}, then emits a {@link
	* JMXConnectionNotification} with type {@link
	* JMXConnectionNotification#FAILED}.</p>
	*
	* @param connectionId the ID of the failed connection.
	*
	* @param message the message for the emitted {@link
	* JMXConnectionNotification}.  Can be null.  See {@link
	* Notification#getMessage()}.
	*
	* @param userData the <code>userData</code> for the emitted
	* {@link JMXConnectionNotification}.  Can be null.  See {@link
	* Notification#getUserData()}.
	*
	* @exception NullPointerException if <code>connectionId</code> is
	* null.
	*/
	@:overload @:protected private function connectionFailed(connectionId : String, message : String, userData : Dynamic) : Void;
	
	/**
	* <p>Called by an MBean server when this connector server is
	* registered in that MBean server.  This connector server becomes
	* attached to the MBean server and its {@link #getMBeanServer()}
	* method will return <code>mbs</code>.</p>
	*
	* <p>If this connector server is already attached to an MBean
	* server, this method has no effect.  The MBean server it is
	* attached to is not necessarily the one it is being registered
	* in.</p>
	*
	* @param mbs the MBean server in which this connection server is
	* being registered.
	*
	* @param name The object name of the MBean.
	*
	* @return The name under which the MBean is to be registered.
	*
	* @exception NullPointerException if <code>mbs</code> or
	* <code>name</code> is null.
	*/
	@:overload @:public @:synchronized public function preRegister(mbs : javax.management.MBeanServer, name : javax.management.ObjectName) : javax.management.ObjectName;
	
	@:overload @:public public function postRegister(registrationDone : Null<Bool>) : Void;
	
	/**
	* <p>Called by an MBean server when this connector server is
	* unregistered from that MBean server.  If this connector server
	* was attached to that MBean server by being registered in it,
	* and if the connector server is still active,
	* then unregistering it will call the {@link #stop stop} method.
	* If the <code>stop</code> method throws an exception, the
	* unregistration attempt will fail.  It is recommended to call
	* the <code>stop</code> method explicitly before unregistering
	* the MBean.</p>
	*
	* @exception IOException if thrown by the {@link #stop stop} method.
	*/
	@:overload @:public @:synchronized public function preDeregister() : Void;
	
	@:overload @:public public function postDeregister() : Void;
	
	/**
	* <p>The attributes for this connector server.</p>
	*
	* @return a read-only map containing the attributes for this
	* connector server.  Attributes whose values are not serializable
	* are omitted from this map.  If there are no serializable
	* attributes, the returned map is empty.
	*/
	@:overload @:public public function getAttributes() : java.util.Map<String, Dynamic>;
	
	/**
	* <p>Deactivates the connector server, that is, stops listening for
	* client connections.  Calling this method will also close all
	* client connections that were made by this server.  After this
	* method returns, whether normally or with an exception, the
	* connector server will not create any new client
	* connections.</p>
	*
	* <p>Once a connector server has been stopped, it cannot be started
	* again.</p>
	*
	* <p>Calling this method when the connector server has already
	* been stopped has no effect.  Calling this method when the
	* connector server has not yet been started will disable the
	* connector server object permanently.</p>
	*
	* <p>If closing a client connection produces an exception, that
	* exception is not thrown from this method.  A {@link
	* JMXConnectionNotification} with type {@link
	* JMXConnectionNotification#FAILED} is emitted from this MBean
	* with the connection ID of the connection that could not be
	* closed.</p>
	*
	* <p>Closing a connector server is a potentially slow operation.
	* For example, if a client machine with an open connection has
	* crashed, the close operation might have to wait for a network
	* protocol timeout.  Callers that do not want to block in a close
	* operation should do it in a separate thread.</p>
	*
	* @exception IOException if the server cannot be closed cleanly.
	* When this exception is thrown, the server has already attempted
	* to close all client connections.  All client connections are
	* closed except possibly those that generated exceptions when the
	* server attempted to close them.
	*/
	@:overload @:public public function stop() : Void;
	
	/**
	* <p>Activates the connector server, that is, starts listening for
	* client connections.  Calling this method when the connector
	* server is already active has no effect.  Calling this method
	* when the connector server has been stopped will generate an
	* {@link IOException}.</p>
	*
	* @exception IOException if it is not possible to start listening
	* or if the connector server has been stopped.
	*
	* @exception IllegalStateException if the connector server has
	* not been attached to an MBean server.
	*/
	@:overload @:public public function start() : Void;
	
	/**
	* <p>The address of this object.</p>
	*
	* @return the address of this object, or null if it
	* does not have one.
	*/
	@:overload @:public public function getAddress() : javax.management.remote.JMXServiceURL;
	
	/**
	* <p>Determines whether the connector server is active.  A connector
	* server starts being active when its {@link #start start} method
	* returns successfully and remains active until either its
	* {@link #stop stop} method is called or the connector server
	* fails.</p>
	*
	* @return true if the connector server is active.
	*/
	@:overload @:public public function isActive() : Bool;
	
	
}

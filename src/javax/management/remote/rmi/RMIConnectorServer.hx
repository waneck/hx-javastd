package javax.management.remote.rmi;
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
extern class RMIConnectorServer extends javax.management.remote.JMXConnectorServer
{
	/**
	* <p>Name of the attribute that specifies whether the {@link
	* RMIServer} stub that represents an RMI connector server should
	* override an existing stub at the same address.  The value
	* associated with this attribute, if any, should be a string that
	* is equal, ignoring case, to <code>"true"</code> or
	* <code>"false"</code>.  The default value is false.</p>
	*/
	public static var JNDI_REBIND_ATTRIBUTE(default, null) : String;
	
	/**
	* <p>Name of the attribute that specifies the {@link
	* RMIClientSocketFactory} for the RMI objects created in
	* conjunction with this connector. The value associated with this
	* attribute must be of type <code>RMIClientSocketFactory</code> and can
	* only be specified in the <code>Map</code> argument supplied when
	* creating a connector server.</p>
	*/
	public static var RMI_CLIENT_SOCKET_FACTORY_ATTRIBUTE(default, null) : String;
	
	/**
	* <p>Name of the attribute that specifies the {@link
	* RMIServerSocketFactory} for the RMI objects created in
	* conjunction with this connector. The value associated with this
	* attribute must be of type <code>RMIServerSocketFactory</code> and can
	* only be specified in the <code>Map</code> argument supplied when
	* creating a connector server.</p>
	*/
	public static var RMI_SERVER_SOCKET_FACTORY_ATTRIBUTE(default, null) : String;
	
	/**
	* <p>Makes an <code>RMIConnectorServer</code>.
	* This is equivalent to calling {@link #RMIConnectorServer(
	* JMXServiceURL,Map,RMIServerImpl,MBeanServer)
	* RMIConnectorServer(directoryURL,environment,null,null)}</p>
	*
	* @param url the URL defining how to create the connector server.
	* Cannot be null.
	*
	* @param environment attributes governing the creation and
	* storing of the RMI object.  Can be null, which is equivalent to
	* an empty Map.
	*
	* @exception IllegalArgumentException if <code>url</code> is null.
	*
	* @exception MalformedURLException if <code>url</code> does not
	* conform to the syntax for an RMI connector, or if its protocol
	* is not recognized by this implementation. Only "rmi" and "iiop"
	* are valid when this constructor is used.
	*
	* @exception IOException if the connector server cannot be created
	* for some reason or if it is inevitable that its {@link #start()
	* start} method will fail.
	*/
	@:overload public function new(url : javax.management.remote.JMXServiceURL, environment : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* <p>Makes an <code>RMIConnectorServer</code> for the given MBean
	* server.
	* This is equivalent to calling {@link #RMIConnectorServer(
	* JMXServiceURL,Map,RMIServerImpl,MBeanServer)
	* RMIConnectorServer(directoryURL,environment,null,mbeanServer)}</p>
	*
	* @param url the URL defining how to create the connector server.
	* Cannot be null.
	*
	* @param environment attributes governing the creation and
	* storing of the RMI object.  Can be null, which is equivalent to
	* an empty Map.
	*
	* @param mbeanServer the MBean server to which the new connector
	* server is attached, or null if it will be attached by being
	* registered as an MBean in the MBean server.
	*
	* @exception IllegalArgumentException if <code>url</code> is null.
	*
	* @exception MalformedURLException if <code>url</code> does not
	* conform to the syntax for an RMI connector, or if its protocol
	* is not recognized by this implementation. Only "rmi" and "iiop"
	* are valid when this constructor is used.
	*
	* @exception IOException if the connector server cannot be created
	* for some reason or if it is inevitable that its {@link #start()
	* start} method will fail.
	*/
	@:overload public function new(url : javax.management.remote.JMXServiceURL, environment : java.util.Map<String, Dynamic>, mbeanServer : javax.management.MBeanServer) : Void;
	
	/**
	* <p>Makes an <code>RMIConnectorServer</code> for the given MBean
	* server.</p>
	*
	* @param url the URL defining how to create the connector server.
	* Cannot be null.
	*
	* @param environment attributes governing the creation and
	* storing of the RMI object.  Can be null, which is equivalent to
	* an empty Map.
	*
	* @param rmiServerImpl An implementation of the RMIServer interface,
	*  consistent with the protocol type specified in <var>url</var>.
	*  If this parameter is non null, the protocol type specified by
	*  <var>url</var> is not constrained, and is assumed to be valid.
	*  Otherwise, only "rmi" and "iiop" will be recognized.
	*
	* @param mbeanServer the MBean server to which the new connector
	* server is attached, or null if it will be attached by being
	* registered as an MBean in the MBean server.
	*
	* @exception IllegalArgumentException if <code>url</code> is null.
	*
	* @exception MalformedURLException if <code>url</code> does not
	* conform to the syntax for an RMI connector, or if its protocol
	* is not recognized by this implementation. Only "rmi" and "iiop"
	* are recognized when <var>rmiServerImpl</var> is null.
	*
	* @exception IOException if the connector server cannot be created
	* for some reason or if it is inevitable that its {@link #start()
	* start} method will fail.
	*
	* @see #start
	*/
	@:overload public function new(url : javax.management.remote.JMXServiceURL, environment : java.util.Map<String, Dynamic>, rmiServerImpl : javax.management.remote.rmi.RMIServerImpl, mbeanServer : javax.management.MBeanServer) : Void;
	
	/**
	* <p>Returns a client stub for this connector server.  A client
	* stub is a serializable object whose {@link
	* JMXConnector#connect(Map) connect} method can be used to make
	* one new connection to this connector server.</p>
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
	* not started (see {@link #isActive()}).
	*
	* @exception IOException if a communications problem means that a
	* stub cannot be created.
	**/
	@:overload override public function toJMXConnector(env : java.util.Map<String, Dynamic>) : javax.management.remote.JMXConnector;
	
	/**
	* <p>Activates the connector server, that is starts listening for
	* client connections.  Calling this method when the connector
	* server is already active has no effect.  Calling this method
	* when the connector server has been stopped will generate an
	* <code>IOException</code>.</p>
	*
	* <p>The behavior of this method when called for the first time
	* depends on the parameters that were supplied at construction,
	* as described below.</p>
	*
	* <p>First, an object of a subclass of {@link RMIServerImpl} is
	* required, to export the connector server through RMI:</p>
	*
	* <ul>
	*
	* <li>If an <code>RMIServerImpl</code> was supplied to the
	* constructor, it is used.
	*
	* <li>Otherwise, if the protocol part of the
	* <code>JMXServiceURL</code> supplied to the constructor was
	* <code>iiop</code>, an object of type {@link RMIIIOPServerImpl}
	* is created.
	*
	* <li>Otherwise, if the <code>JMXServiceURL</code>
	* was null, or its protocol part was <code>rmi</code>, an object
	* of type {@link RMIJRMPServerImpl} is created.
	*
	* <li>Otherwise, the implementation can create an
	* implementation-specific {@link RMIServerImpl} or it can throw
	* {@link MalformedURLException}.
	*
	* </ul>
	*
	* <p>If the given address includes a JNDI directory URL as
	* specified in the package documentation for {@link
	* javax.management.remote.rmi}, then this
	* <code>RMIConnectorServer</code> will bootstrap by binding the
	* <code>RMIServerImpl</code> to the given address.</p>
	*
	* <p>If the URL path part of the <code>JMXServiceURL</code> was
	* empty or a single slash (<code>/</code>), then the RMI object
	* will not be bound to a directory.  Instead, a reference to it
	* will be encoded in the URL path of the RMIConnectorServer
	* address (returned by {@link #getAddress()}).  The encodings for
	* <code>rmi</code> and <code>iiop</code> are described in the
	* package documentation for {@link
	* javax.management.remote.rmi}.</p>
	*
	* <p>The behavior when the URL path is neither empty nor a JNDI
	* directory URL, or when the protocol is neither <code>rmi</code>
	* nor <code>iiop</code>, is implementation defined, and may
	* include throwing {@link MalformedURLException} when the
	* connector server is created or when it is started.</p>
	*
	* @exception IllegalStateException if the connector server has
	* not been attached to an MBean server.
	* @exception IOException if the connector server cannot be
	* started.
	*/
	@:overload @:synchronized override public function start() : Void;
	
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
	* JMXConnectionNotification} is emitted from this MBean with the
	* connection ID of the connection that could not be closed.</p>
	*
	* <p>Closing a connector server is a potentially slow operation.
	* For example, if a client machine with an open connection has
	* crashed, the close operation might have to wait for a network
	* protocol timeout.  Callers that do not want to block in a close
	* operation should do it in a separate thread.</p>
	*
	* <p>This method calls the method {@link RMIServerImpl#close()
	* close} on the connector server's <code>RMIServerImpl</code>
	* object.</p>
	*
	* <p>If the <code>RMIServerImpl</code> was bound to a JNDI
	* directory by the {@link #start() start} method, it is unbound
	* from the directory by this method.</p>
	*
	* @exception IOException if the server cannot be closed cleanly,
	* or if the <code>RMIServerImpl</code> cannot be unbound from the
	* directory.  When this exception is thrown, the server has
	* already attempted to close all client connections, if
	* appropriate; to call {@link RMIServerImpl#close()}; and to
	* unbind the <code>RMIServerImpl</code> from its directory, if
	* appropriate.  All client connections are closed except possibly
	* those that generated exceptions when the server attempted to
	* close them.
	*/
	@:overload override public function stop() : Void;
	
	@:overload @:synchronized override public function isActive() : Bool;
	
	@:overload override public function getAddress() : javax.management.remote.JMXServiceURL;
	
	@:overload override public function getAttributes() : java.util.Map<String, Dynamic>;
	
	@:overload @:synchronized override public function setMBeanServerForwarder(mbsf : javax.management.remote.MBeanServerForwarder) : Void;
	
	/* We repeat the definitions of connection{Opened,Closed,Failed}
	here so that they are accessible to other classes in this package
	even though they have protected access.  */
	@:overload override private function connectionOpened(connectionId : String, message : String, userData : Dynamic) : Void;
	
	@:overload override private function connectionClosed(connectionId : String, message : String, userData : Dynamic) : Void;
	
	@:overload override private function connectionFailed(connectionId : String, message : String, userData : Dynamic) : Void;
	
	
}

package javax.management.remote.rmi;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class RMIConnector implements javax.management.remote.JMXConnector implements java.io.Serializable implements javax.management.remote.JMXAddressable
{
	/**
	* <p>Constructs an <code>RMIConnector</code> that will connect
	* the RMI connector server with the given address.</p>
	*
	* <p>The address can refer directly to the connector server,
	* using one of the following syntaxes:</p>
	*
	* <pre>
	* service:jmx:rmi://<em>[host[:port]]</em>/stub/<em>encoded-stub</em>
	* service:jmx:iiop://<em>[host[:port]]</em>/ior/<em>encoded-IOR</em>
	* </pre>
	*
	* <p>(Here, the square brackets <code>[]</code> are not part of the
	* address but indicate that the host and port are optional.)</p>
	*
	* <p>The address can instead indicate where to find an RMI stub
	* through JNDI, using one of the following syntaxes:</p>
	*
	* <pre>
	* service:jmx:rmi://<em>[host[:port]]</em>/jndi/<em>jndi-name</em>
	* service:jmx:iiop://<em>[host[:port]]</em>/jndi/<em>jndi-name</em>
	* </pre>
	*
	* <p>An implementation may also recognize additional address
	* syntaxes, for example:</p>
	*
	* <pre>
	* service:jmx:iiop://<em>[host[:port]]</em>/stub/<em>encoded-stub</em>
	* </pre>
	*
	* @param url the address of the RMI connector server.
	*
	* @param environment additional attributes specifying how to make
	* the connection.  For JNDI-based addresses, these attributes can
	* usefully include JNDI attributes recognized by {@link
	* InitialContext#InitialContext(Hashtable) InitialContext}.  This
	* parameter can be null, which is equivalent to an empty Map.
	*
	* @exception IllegalArgumentException if <code>url</code>
	* is null.
	*/
	@:overload public function new(url : javax.management.remote.JMXServiceURL, environment : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* <p>Constructs an <code>RMIConnector</code> using the given RMI stub.
	*
	* @param rmiServer an RMI stub representing the RMI connector server.
	* @param environment additional attributes specifying how to make
	* the connection.  This parameter can be null, which is
	* equivalent to an empty Map.
	*
	* @exception IllegalArgumentException if <code>rmiServer</code>
	* is null.
	*/
	@:overload public function new(rmiServer : javax.management.remote.rmi.RMIServer, environment : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* <p>Returns a string representation of this object.  In general,
	* the <code>toString</code> method returns a string that
	* "textually represents" this object. The result should be a
	* concise but informative representation that is easy for a
	* person to read.</p>
	*
	* @return a String representation of this object.
	**/
	@:overload public function toString() : String;
	
	/**
	* <p>The address of this connector.</p>
	*
	* @return the address of this connector, or null if it
	* does not have one.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getAddress() : javax.management.remote.JMXServiceURL;
	
	@:overload public function connect() : Void;
	
	@:overload @:synchronized public function connect(environment : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:synchronized public function getConnectionId() : String;
	
	@:overload @:synchronized public function getMBeanServerConnection() : javax.management.MBeanServerConnection;
	
	@:overload @:synchronized public function getMBeanServerConnection(delegationSubject : javax.security.auth.Subject) : javax.management.MBeanServerConnection;
	
	@:overload public function addConnectionNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function removeConnectionNotificationListener(listener : javax.management.NotificationListener) : Void;
	
	@:overload public function removeConnectionNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:synchronized public function close() : Void;
	
	
}
@:native('javax$management$remote$rmi$RMIConnector$RemoteMBeanServerConnection') @:internal extern class RMIConnector_RemoteMBeanServerConnection implements javax.management.MBeanServerConnection
{
	@:overload public function new() : Void;
	
	@:overload public function new(delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload public function createMBean(className : String, name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	@:overload public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : javax.management.ObjectInstance;
	
	@:overload public function unregisterMBean(name : javax.management.ObjectName) : Void;
	
	@:overload public function getObjectInstance(name : javax.management.ObjectName) : javax.management.ObjectInstance;
	
	@:overload public function queryMBeans(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectInstance>;
	
	@:overload public function queryNames(name : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<javax.management.ObjectName>;
	
	@:overload public function isRegistered(name : javax.management.ObjectName) : Bool;
	
	@:overload public function getMBeanCount() : Null<Int>;
	
	@:overload public function getAttribute(name : javax.management.ObjectName, attribute : String) : Dynamic;
	
	@:overload public function getAttributes(name : javax.management.ObjectName, attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	@:overload public function setAttribute(name : javax.management.ObjectName, attribute : javax.management.Attribute) : Void;
	
	@:overload public function setAttributes(name : javax.management.ObjectName, attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	@:overload public function invoke(name : javax.management.ObjectName, operationName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	@:overload public function getDefaultDomain() : String;
	
	@:overload public function getDomains() : java.NativeArray<String>;
	
	@:overload public function getMBeanInfo(name : javax.management.ObjectName) : javax.management.MBeanInfo;
	
	@:overload public function isInstanceOf(name : javax.management.ObjectName, className : String) : Bool;
	
	@:overload public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener) : Void;
	
	@:overload public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	
}
@:native('javax$management$remote$rmi$RMIConnector$RMINotifClient') @:internal extern class RMIConnector_RMINotifClient extends com.sun.jmx.remote.internal.ClientNotifForwarder
{
	@:overload public function new(cl : java.lang.ClassLoader, env : java.util.Map<String, Dynamic>) : Void;
	
	@:overload override private function fetchNotifs(clientSequenceNumber : haxe.Int64, maxNotifications : Int, timeout : haxe.Int64) : javax.management.remote.NotificationResult;
	
	@:overload override private function addListenerForMBeanRemovedNotif() : Null<Int>;
	
	@:overload override private function removeListenerForMBeanRemovedNotif(id : Null<Int>) : Void;
	
	@:overload override private function lostNotifs(message : String, number : haxe.Int64) : Void;
	
	
}
@:native('javax$management$remote$rmi$RMIConnector$RMIClientCommunicatorAdmin') @:internal extern class RMIConnector_RMIClientCommunicatorAdmin extends com.sun.jmx.remote.internal.ClientCommunicatorAdmin
{
	@:overload public function new(period : haxe.Int64) : Void;
	
	@:overload public function gotIOException(ioe : java.io.IOException) : Void;
	
	@:overload public function reconnectNotificationListeners(old : java.NativeArray<com.sun.jmx.remote.internal.ClientListenerInfo>) : Void;
	
	@:overload private function checkConnection() : Void;
	
	@:overload private function doStart() : Void;
	
	@:overload private function doStop() : Void;
	
	
}
@:native('javax$management$remote$rmi$RMIConnector$ObjectInputStreamWithLoader') @:internal extern class RMIConnector_ObjectInputStreamWithLoader extends java.io.ObjectInputStream
{
	@:overload override private function resolveClass(classDesc : java.io.ObjectStreamClass) : Class<Dynamic>;
	
	
}

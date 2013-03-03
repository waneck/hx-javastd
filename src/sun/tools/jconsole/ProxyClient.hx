package sun.tools.jconsole;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ProxyClient implements com.sun.tools.jconsole.JConsoleContext
{
	/**
	* Returns true if the underlying RMI registry is SSL-protected.
	*
	* @exception UnsupportedOperationException If this {@code ProxyClient}
	* does not denote a JMX connector for a JMX VM agent.
	*/
	@:overload @:public public function isSslRmiRegistry() : Bool;
	
	/**
	* Returns true if the retrieved RMI stub is SSL-protected.
	*
	* @exception UnsupportedOperationException If this {@code ProxyClient}
	* does not denote a JMX connector for a JMX VM agent.
	*/
	@:overload @:public public function isSslRmiStub() : Bool;
	
	/**
	* Returns true if this {@code ProxyClient} denotes
	* a JMX connector for a JMX VM agent.
	*/
	@:overload @:public public function isVmConnector() : Bool;
	
	@:overload @:public public function getConnectionState() : com.sun.tools.jconsole.JConsoleContext.JConsoleContext_ConnectionState;
	
	/**
	* Gets a proxy client for a given local virtual machine.
	*/
	@:overload @:public @:static public static function getProxyClient(lvm : sun.tools.jconsole.LocalVirtualMachine) : sun.tools.jconsole.ProxyClient;
	
	@:overload @:public @:static public static function getConnectionName(lvm : sun.tools.jconsole.LocalVirtualMachine) : String;
	
	/**
	* Gets a proxy client for a given JMXServiceURL.
	*/
	@:overload @:public @:static public static function getProxyClient(url : String, userName : String, password : String) : sun.tools.jconsole.ProxyClient;
	
	@:overload @:public @:static public static function getConnectionName(url : String, userName : String) : String;
	
	/**
	* Gets a proxy client for a given "hostname:port".
	*/
	@:overload @:public @:static public static function getProxyClient(hostName : String, port : Int, userName : String, password : String) : sun.tools.jconsole.ProxyClient;
	
	@:overload @:public @:static public static function getConnectionName(hostName : String, port : Int, userName : String) : String;
	
	@:overload @:public public function connectionName() : String;
	
	@:overload @:public public function getDisplayName() : String;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function getMBeanServerConnection() : javax.management.MBeanServerConnection;
	
	@:overload @:public public function getSnapshotMBeanServerConnection() : sun.tools.jconsole.ProxyClient.ProxyClient_SnapshotMBeanServerConnection;
	
	@:overload @:public public function getUrl() : String;
	
	@:overload @:public public function getHostName() : String;
	
	@:overload @:public public function getPort() : Int;
	
	@:overload @:public public function getVmid() : Int;
	
	@:overload @:public public function getUserName() : String;
	
	@:overload @:public public function getPassword() : String;
	
	@:overload @:public public function disconnect() : Void;
	
	/**
	* Returns the list of domains in which any MBean is
	* currently registered.
	*/
	@:overload @:public public function getDomains() : java.NativeArray<String>;
	
	/**
	* Returns a map of MBeans with ObjectName as the key and MBeanInfo value
	* of a given domain.  If domain is <tt>null</tt>, all MBeans
	* are returned.  If no MBean found, an empty map is returned.
	*
	*/
	@:overload @:public public function getMBeans(domain : String) : java.util.Map<javax.management.ObjectName, javax.management.MBeanInfo>;
	
	/**
	* Returns a list of attributes of a named MBean.
	*
	*/
	@:overload @:public public function getAttributes(name : javax.management.ObjectName, attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	/**
	* Set the value of a specific attribute of a named MBean.
	*/
	@:overload @:public public function setAttribute(name : javax.management.ObjectName, attribute : javax.management.Attribute) : Void;
	
	/**
	* Invokes an operation of a named MBean.
	*
	* @throws MBeanException Wraps an exception thrown by
	*      the MBean's invoked method.
	*/
	@:overload @:public public function invoke(name : javax.management.ObjectName, operationName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	@:overload @:public @:synchronized public function getClassLoadingMXBean() : java.lang.management.ClassLoadingMXBean;
	
	@:overload @:public @:synchronized public function getCompilationMXBean() : java.lang.management.CompilationMXBean;
	
	@:overload @:public public function getMemoryPoolProxies() : java.util.Collection<sun.tools.jconsole.MemoryPoolProxy>;
	
	@:overload @:public @:synchronized public function getGarbageCollectorMXBeans() : java.util.Collection<java.lang.management.GarbageCollectorMXBean>;
	
	@:overload @:public @:synchronized public function getMemoryMXBean() : java.lang.management.MemoryMXBean;
	
	@:overload @:public @:synchronized public function getRuntimeMXBean() : java.lang.management.RuntimeMXBean;
	
	@:overload @:public @:synchronized public function getThreadMXBean() : java.lang.management.ThreadMXBean;
	
	@:overload @:public @:synchronized public function getOperatingSystemMXBean() : java.lang.management.OperatingSystemMXBean;
	
	@:overload @:public @:synchronized public function getSunOperatingSystemMXBean() : com.sun.management.OperatingSystemMXBean;
	
	@:overload @:public @:synchronized public function getHotSpotDiagnosticMXBean() : com.sun.management.HotSpotDiagnosticMXBean;
	
	@:overload @:public public function getMXBean<T>(objName : javax.management.ObjectName, interfaceClass : Class<T>) : T;
	
	@:overload @:public public function findDeadlockedThreads() : java.NativeArray<haxe.Int64>;
	
	@:overload @:public @:synchronized public function markAsDead() : Void;
	
	@:overload @:public public function isDead() : Bool;
	
	@:overload @:public public function isRegistered(name : javax.management.ObjectName) : Bool;
	
	@:overload @:public public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public public function addWeakPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	
}
/**
* The PropertyChangeListener is handled via a WeakReference
* so as not to pin down the listener.
*/
@:native('sun$tools$jconsole$ProxyClient$WeakPCL') @:internal extern class ProxyClient_WeakPCL extends java.lang.ref.WeakReference<java.beans.PropertyChangeListener> implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(pce : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$ProxyClient$SnapshotMBeanServerConnection') extern interface ProxyClient_SnapshotMBeanServerConnection extends javax.management.MBeanServerConnection
{
	/**
	* Flush all cached values of attributes.
	*/
	@:overload @:public public function flush() : Void;
	
	
}
@:native('sun$tools$jconsole$ProxyClient$Snapshot') extern class ProxyClient_Snapshot
{
	@:overload @:public @:static public static function newSnapshot(mbsc : javax.management.MBeanServerConnection) : sun.tools.jconsole.ProxyClient.ProxyClient_SnapshotMBeanServerConnection;
	
	
}
@:native('sun$tools$jconsole$ProxyClient$SnapshotInvocationHandler') @:internal extern class ProxyClient_SnapshotInvocationHandler implements java.lang.reflect.InvocationHandler
{
	@:overload @:public public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
@:native('sun$tools$jconsole$ProxyClient$SnapshotInvocationHandler$NameValueMap') @:internal extern class ProxyClient_SnapshotInvocationHandler_NameValueMap extends java.util.HashMap<String, Dynamic>
{
	
}

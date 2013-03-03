package javax.management.remote.rmi;
/*
* Copyright (c) 2002, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class RMIConnectionImpl implements javax.management.remote.rmi.RMIConnection implements java.rmi.server.Unreferenced
{
	/**
	* Constructs a new {@link RMIConnection}. This connection can be
	* used with either the JRMP or IIOP transport. This object does
	* not export itself: it is the responsibility of the caller to
	* export it appropriately (see {@link
	* RMIJRMPServerImpl#makeClient(String,Subject)} and {@link
	* RMIIIOPServerImpl#makeClient(String,Subject)}.
	*
	* @param rmiServer The RMIServerImpl object for which this
	* connection is created.  The behavior is unspecified if this
	* parameter is null.
	* @param connectionId The ID for this connection.  The behavior
	* is unspecified if this parameter is null.
	* @param defaultClassLoader The default ClassLoader to be used
	* when deserializing marshalled objects.  Can be null, to signify
	* the bootstrap class loader.
	* @param subject the authenticated subject to be used for
	* authorization.  Can be null, to signify that no subject has
	* been authenticated.
	* @param env the environment containing attributes for the new
	* <code>RMIServerImpl</code>.  Can be null, equivalent to an
	* empty map.
	*/
	@:overload @:public public function new(rmiServer : javax.management.remote.rmi.RMIServerImpl, connectionId : String, defaultClassLoader : java.lang.ClassLoader, subject : javax.security.auth.Subject, env : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:public public function getConnectionId() : String;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function unreferenced() : Void;
	
	@:overload @:public public function createMBean(className : String, name : javax.management.ObjectName, delegationSubject : javax.security.auth.Subject) : javax.management.ObjectInstance;
	
	@:overload @:public public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName, delegationSubject : javax.security.auth.Subject) : javax.management.ObjectInstance;
	
	@:overload @:public public function createMBean(className : String, name : javax.management.ObjectName, params : java.rmi.MarshalledObject<Dynamic>, signature : java.NativeArray<String>, delegationSubject : javax.security.auth.Subject) : javax.management.ObjectInstance;
	
	@:overload @:public public function createMBean(className : String, name : javax.management.ObjectName, loaderName : javax.management.ObjectName, params : java.rmi.MarshalledObject<Dynamic>, signature : java.NativeArray<String>, delegationSubject : javax.security.auth.Subject) : javax.management.ObjectInstance;
	
	@:overload @:public public function unregisterMBean(name : javax.management.ObjectName, delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload @:public public function getObjectInstance(name : javax.management.ObjectName, delegationSubject : javax.security.auth.Subject) : javax.management.ObjectInstance;
	
	@:overload @:public public function queryMBeans(name : javax.management.ObjectName, query : java.rmi.MarshalledObject<Dynamic>, delegationSubject : javax.security.auth.Subject) : java.util.Set<javax.management.ObjectInstance>;
	
	@:overload @:public public function queryNames(name : javax.management.ObjectName, query : java.rmi.MarshalledObject<Dynamic>, delegationSubject : javax.security.auth.Subject) : java.util.Set<javax.management.ObjectName>;
	
	@:overload @:public public function isRegistered(name : javax.management.ObjectName, delegationSubject : javax.security.auth.Subject) : Bool;
	
	@:overload @:public public function getMBeanCount(delegationSubject : javax.security.auth.Subject) : Null<Int>;
	
	@:overload @:public public function getAttribute(name : javax.management.ObjectName, attribute : String, delegationSubject : javax.security.auth.Subject) : Dynamic;
	
	@:overload @:public public function getAttributes(name : javax.management.ObjectName, attributes : java.NativeArray<String>, delegationSubject : javax.security.auth.Subject) : javax.management.AttributeList;
	
	@:overload @:public public function setAttribute(name : javax.management.ObjectName, attribute : java.rmi.MarshalledObject<Dynamic>, delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload @:public public function setAttributes(name : javax.management.ObjectName, attributes : java.rmi.MarshalledObject<Dynamic>, delegationSubject : javax.security.auth.Subject) : javax.management.AttributeList;
	
	@:overload @:public public function invoke(name : javax.management.ObjectName, operationName : String, params : java.rmi.MarshalledObject<Dynamic>, signature : java.NativeArray<String>, delegationSubject : javax.security.auth.Subject) : Dynamic;
	
	@:overload @:public public function getDefaultDomain(delegationSubject : javax.security.auth.Subject) : String;
	
	@:overload @:public public function getDomains(delegationSubject : javax.security.auth.Subject) : java.NativeArray<String>;
	
	@:overload @:public public function getMBeanInfo(name : javax.management.ObjectName, delegationSubject : javax.security.auth.Subject) : javax.management.MBeanInfo;
	
	@:overload @:public public function isInstanceOf(name : javax.management.ObjectName, className : String, delegationSubject : javax.security.auth.Subject) : Bool;
	
	@:overload @:public public function addNotificationListeners(names : java.NativeArray<javax.management.ObjectName>, filters : java.NativeArray<java.rmi.MarshalledObject<Dynamic>>, delegationSubjects : java.NativeArray<javax.security.auth.Subject>) : java.NativeArray<Null<Int>>;
	
	@:overload @:public public function addNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : java.rmi.MarshalledObject<Dynamic>, handback : java.rmi.MarshalledObject<Dynamic>, delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload @:public public function removeNotificationListeners(name : javax.management.ObjectName, listenerIDs : java.NativeArray<Null<Int>>, delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload @:public public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload @:public public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.ObjectName, filter : java.rmi.MarshalledObject<Dynamic>, handback : java.rmi.MarshalledObject<Dynamic>, delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload @:public public function fetchNotifications(clientSequenceNumber : haxe.Int64, maxNotifications : Int, timeout : haxe.Int64) : javax.management.remote.NotificationResult;
	
	/**
	* <p>Returns a string representation of this object.  In general,
	* the <code>toString</code> method returns a string that
	* "textually represents" this object. The result should be a
	* concise but informative representation that is easy for a
	* person to read.</p>
	*
	* @return a String representation of this object.
	**/
	@:overload @:public public function toString() : String;
	
	
}
@:native('javax$management$remote$rmi$RMIConnectionImpl$PrivilegedOperation') @:internal extern class RMIConnectionImpl_PrivilegedOperation implements java.security.PrivilegedExceptionAction<Dynamic>
{
	@:overload @:public public function new(operation : Int, params : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public public function run() : Dynamic;
	
	
}
@:native('javax$management$remote$rmi$RMIConnectionImpl$RMIServerCommunicatorAdmin') @:internal extern class RMIConnectionImpl_RMIServerCommunicatorAdmin extends com.sun.jmx.remote.internal.ServerCommunicatorAdmin
{
	@:overload @:public public function new(timeout : haxe.Int64) : Void;
	
	@:overload @:protected override private function doStop() : Void;
	
	
}
@:native('javax$management$remote$rmi$RMIConnectionImpl$SetCcl') @:internal extern class RMIConnectionImpl_SetCcl implements java.security.PrivilegedExceptionAction<java.lang.ClassLoader>
{
	@:overload @:public public function run() : java.lang.ClassLoader;
	
	
}
@:native('javax$management$remote$rmi$RMIConnectionImpl$CombinedClassLoader') @:internal extern class RMIConnectionImpl_CombinedClassLoader extends java.lang.ClassLoader
{
	@:overload @:protected override private function loadClass(name : String, resolve : Bool) : Class<Dynamic>;
	
	
}
@:native('javax$management$remote$rmi$RMIConnectionImpl$CombinedClassLoader$ClassLoaderWrapper') @:internal extern class RMIConnectionImpl_CombinedClassLoader_ClassLoaderWrapper extends java.lang.ClassLoader
{
	@:overload @:protected override private function loadClass(name : String, resolve : Bool) : Class<Dynamic>;
	
	
}

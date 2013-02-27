package com.sun.xml.internal.ws.server;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class MonitorBase
{
	/**
	* Endpoint monitoring is ON by default.
	*
	* prop    |  no assert | assert/no mon | assert/mon off | assert/mon on
	* -------------------------------------------------------------------
	* not set |    on      |      on       |     off        |     on
	* false   |    off     |      off      |     off        |     off
	* true    |    on      |      on       |     off        |     on
	*/
	@:overload public function createManagedObjectManager(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	/**
	* Client monitoring is OFF by default because there is
	* no standard stub.close() method.  Therefore people do
	* not typically close a stub when they are done with it
	* (even though the RI does provide a .close).
	* <pre>
	* prop    |  no assert | assert/no mon | assert/mon off | assert/mon on
	* -------------------------------------------------------------------
	* not set |    off     |      off      |     off        |     on
	* false   |    off     |      off      |     off        |     off
	* true    |    on      |      on       |     off        |     on
	* </pre>
	*/
	@:overload public function createManagedObjectManager(stub : com.sun.xml.internal.ws.client.Stub) : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	@:overload public static function closeMOM(mom : com.sun.org.glassfish.gmbal.ManagedObjectManager) : Void;
	
	
}
@:internal extern interface DummyWebServiceFeature
{
	
}
@:internal extern class RewritingMOM implements com.sun.org.glassfish.gmbal.ManagedObjectManager
{
	@:overload public function suspendJMXRegistration() : Void;
	
	@:overload public function resumeJMXRegistration() : Void;
	
	@:overload public function createRoot() : com.sun.org.glassfish.gmbal.GmbalMBean;
	
	@:overload public function createRoot(root : Dynamic) : com.sun.org.glassfish.gmbal.GmbalMBean;
	
	@:overload public function createRoot(root : Dynamic, name : String) : com.sun.org.glassfish.gmbal.GmbalMBean;
	
	@:overload public function getRoot() : Dynamic;
	
	@:overload public function register(parent : Dynamic, obj : Dynamic, name : String) : com.sun.org.glassfish.gmbal.GmbalMBean;
	
	@:overload public function register(parent : Dynamic, obj : Dynamic) : com.sun.org.glassfish.gmbal.GmbalMBean;
	
	@:overload public function registerAtRoot(obj : Dynamic, name : String) : com.sun.org.glassfish.gmbal.GmbalMBean;
	
	@:overload public function registerAtRoot(obj : Dynamic) : com.sun.org.glassfish.gmbal.GmbalMBean;
	
	@:overload public function unregister(obj : Dynamic) : Void;
	
	@:overload public function getObjectName(obj : Dynamic) : javax.management.ObjectName;
	
	@:overload public function getAMXClient(obj : Dynamic) : com.sun.org.glassfish.gmbal.AMXClient;
	
	@:overload public function getObject(oname : javax.management.ObjectName) : Dynamic;
	
	@:overload public function stripPrefix(str : java.NativeArray<String>) : Void;
	
	@:overload public function stripPackagePrefix() : Void;
	
	@:overload public function getDomain() : String;
	
	@:overload public function setMBeanServer(server : javax.management.MBeanServer) : Void;
	
	@:overload public function getMBeanServer() : javax.management.MBeanServer;
	
	@:overload public function setResourceBundle(rb : java.util.ResourceBundle) : Void;
	
	@:overload public function getResourceBundle() : java.util.ResourceBundle;
	
	@:overload public function addAnnotation(element : java.lang.reflect.AnnotatedElement, annotation : java.lang.annotation.Annotation) : Void;
	
	@:overload public function setRegistrationDebug(level : RegistrationDebugLevel) : Void;
	
	@:overload public function setRuntimeDebug(flag : Bool) : Void;
	
	@:overload public function setTypelibDebug(level : Int) : Void;
	
	@:overload public function dumpSkeleton(obj : Dynamic) : String;
	
	@:overload public function suppressDuplicateRootReport(suppressReport : Bool) : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function setJMXRegistrationDebug(x : Bool) : Void;
	
	@:overload public function isManagedObject(x : Dynamic) : Bool;
	
	
}

package com.sun.org.glassfish.gmbal;
/*
* Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights reserved.
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
* To change this template, choose Tools | Templates
* and open the template in the editor.
*/
@:internal extern class ManagedObjectManagerNOPImpl implements com.sun.org.glassfish.gmbal.ManagedObjectManager
{
	@:overload public function suspendJMXRegistration() : Void;
	
	@:overload public function resumeJMXRegistration() : Void;
	
	@:overload public function isManagedObject(obj : Dynamic) : Bool;
	
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
	
	@:overload public function getObject(oname : javax.management.ObjectName) : Dynamic;
	
	@:overload public function stripPrefix(str : java.NativeArray<String>) : Void;
	
	@:overload public function getDomain() : String;
	
	@:overload public function setMBeanServer(server : javax.management.MBeanServer) : Void;
	
	@:overload public function getMBeanServer() : javax.management.MBeanServer;
	
	@:overload public function setResourceBundle(rb : java.util.ResourceBundle) : Void;
	
	@:overload public function getResourceBundle() : java.util.ResourceBundle;
	
	@:overload public function addAnnotation(element : java.lang.reflect.AnnotatedElement, annotation : java.lang.annotation.Annotation) : Void;
	
	@:overload public function setRegistrationDebug(level : com.sun.org.glassfish.gmbal.ManagedObjectManager.ManagedObjectManager_RegistrationDebugLevel) : Void;
	
	@:overload public function setRuntimeDebug(flag : Bool) : Void;
	
	@:overload public function dumpSkeleton(obj : Dynamic) : String;
	
	@:overload public function close() : Void;
	
	@:overload public function setTypelibDebug(level : Int) : Void;
	
	@:overload public function stripPackagePrefix() : Void;
	
	@:overload public function suppressDuplicateRootReport(suppressReport : Bool) : Void;
	
	@:overload public function getAMXClient(obj : Dynamic) : com.sun.org.glassfish.gmbal.AMXClient;
	
	@:overload public function setJMXRegistrationDebug(flag : Bool) : Void;
	
	
}

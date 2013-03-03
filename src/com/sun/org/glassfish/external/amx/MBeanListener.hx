package com.sun.org.glassfish.external.amx;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* Listens for registration of MBeans of various types.
* Intended usage is for subsystems to lazy-load only when the Parent
* MBean is registered.
*/
extern class MBeanListener<T> implements javax.management.NotificationListener
{
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function getType() : String;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getMBeanServer() : javax.management.MBeanServerConnection;
	
	@:overload @:public public function getCallback() : T;
	
	/**
	* Listener for a specific MBean.
	* Caller must call {@link #start} to start listening.
	* @param server
	* @param objectName
	* @param callback
	*/
	@:overload @:public public function new(server : javax.management.MBeanServerConnection, objectName : javax.management.ObjectName, _callback : T) : Void;
	
	/**
	* Listener for all MBeans of specified type, with or without a name.
	* Caller must call {@link #start} to start listening.
	* @param server
	* @param type type of the MBean (as found in the ObjectName)
	* @param callback
	*/
	@:overload @:public public function new(server : javax.management.MBeanServerConnection, domain : String, type : String, _callback : T) : Void;
	
	/**
	* Listener for MBeans of specified type, with specified name (or any name
	* if null is passed for the name).
	* Caller must call {@link #start} to start listening.
	* @param server
	* @param type type of the MBean (as found in the ObjectName)
	* @param name name of the MBean, or null if none
	* @param callback
	*/
	@:overload @:public public function new(server : javax.management.MBeanServerConnection, domain : String, type : String, name : String, _callback : T) : Void;
	
	/**
	Start listening.  If the required MBean(s) are already present, the callback
	will be synchronously made before returning.  It is also possible that the
	callback could happen twice for the same MBean.
	*/
	@:overload @:public public function startListening() : Void;
	
	/** unregister the listener */
	@:overload @:public public function stopListening() : Void;
	
	@:overload @:public public function handleNotification(notifIn : javax.management.Notification, handback : Dynamic) : Void;
	
	
}
/** Callback interface.  */
@:native('com$sun$org$glassfish$external$amx$MBeanListener$Callback') extern interface MBeanListener_Callback
{
	@:overload @:public public function mbeanRegistered(objectName : javax.management.ObjectName, listener : com.sun.org.glassfish.external.amx.MBeanListener<Dynamic>) : Void;
	
	@:overload @:public public function mbeanUnregistered(objectName : javax.management.ObjectName, listener : com.sun.org.glassfish.external.amx.MBeanListener<Dynamic>) : Void;
	
	
}
/**
Default callback implementation, can be subclassed if needed
Remembers only the last MBean that was seen.
*/
@:native('com$sun$org$glassfish$external$amx$MBeanListener$CallbackImpl') extern class MBeanListener_CallbackImpl implements com.sun.org.glassfish.external.amx.MBeanListener.MBeanListener_Callback
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(stopAtFirst : Bool) : Void;
	
	@:overload @:public public function getRegistered() : javax.management.ObjectName;
	
	@:overload @:public public function getUnregistered() : javax.management.ObjectName;
	
	@:protected @:final private var mLatch(default, null) : java.util.concurrent.CountDownLatch;
	
	/** Optional: wait for the CountDownLatch to fire
	If used, the subclass should countDown() the latch when the
	appropriate event happens
	*/
	@:overload @:public public function await() : Void;
	
	@:overload @:public public function mbeanRegistered(objectName : javax.management.ObjectName, listener : com.sun.org.glassfish.external.amx.MBeanListener<Dynamic>) : Void;
	
	@:overload @:public public function mbeanUnregistered(objectName : javax.management.ObjectName, listener : com.sun.org.glassfish.external.amx.MBeanListener<Dynamic>) : Void;
	
	
}

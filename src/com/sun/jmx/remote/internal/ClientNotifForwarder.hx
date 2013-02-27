package com.sun.jmx.remote.internal;
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
extern class ClientNotifForwarder
{
	@:overload public function new(env : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload public function new(defaultClassLoader : java.lang.ClassLoader, env : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Called to to fetch notifications from a server.
	*/
	@:overload @:abstract private function fetchNotifs(clientSequenceNumber : haxe.Int64, maxNotifications : Int, timeout : haxe.Int64) : javax.management.remote.NotificationResult;
	
	@:overload @:abstract private function addListenerForMBeanRemovedNotif() : Null<Int>;
	
	@:overload @:abstract private function removeListenerForMBeanRemovedNotif(id : Null<Int>) : Void;
	
	/**
	* Used to send out a notification about lost notifs
	*/
	@:overload @:abstract private function lostNotifs(message : String, number : haxe.Int64) : Void;
	
	@:overload @:synchronized public function addNotificationListener(listenerID : Null<Int>, name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic, delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload @:synchronized public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener) : java.NativeArray<Null<Int>>;
	
	@:overload @:synchronized public function removeNotificationListener(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Null<Int>;
	
	@:overload @:synchronized public function removeNotificationListener(name : javax.management.ObjectName) : java.NativeArray<Null<Int>>;
	
	/*
	* Called when a connector is doing reconnection. Like <code>postReconnection</code>,
	* this method is intended to be called only by a client connector:
	* <code>RMIConnector</code> and <code>ClientIntermediary</code>.
	* Call this method will set the flag beingReconnection to <code>true</code>,
	* and the thread used to fetch notifis will be stopped, a new thread can be
	* created only after the method <code>postReconnection</code> is called.
	*
	* It is caller's responsiblity to not re-call this method before calling
	* <code>postReconnection</code>.
	*/
	@:overload @:synchronized public function preReconnection() : java.NativeArray<com.sun.jmx.remote.internal.ClientListenerInfo>;
	
	/**
	* Called after reconnection is finished.
	* This method is intended to be called only by a client connector:
	* <code>RMIConnector</code> and <code>ClientIntermediary</code>.
	*/
	@:overload @:synchronized public function postReconnection(listenerInfos : java.NativeArray<com.sun.jmx.remote.internal.ClientListenerInfo>) : Void;
	
	@:overload @:synchronized public function terminate() : Void;
	
	
}
/* An Executor that allows at most one executing and one pending
Runnable.  It uses at most one thread -- as soon as there is
no pending Runnable the thread can exit.  Another thread is
created as soon as there is a new pending Runnable.  This
Executor is adapted for use in a situation where each Runnable
usually schedules up another Runnable.  On return from the
first one, the second one is immediately executed.  So this
just becomes a complicated way to write a while loop, but with
the advantage that you can replace it with another Executor,
for instance one that you are using to execute a bunch of other
unrelated work.

You might expect that a java.util.concurrent.ThreadPoolExecutor
with corePoolSize=0 and maximumPoolSize=1 would have the same
behavior, but it does not.  A ThreadPoolExecutor only creates
a new thread when a new task is submitted and the number of
existing threads is < corePoolSize.  This can never happen when
corePoolSize=0, so new threads are never created.  Surprising,
but there you are.
*/
@:native('com$sun$jmx$remote$internal$ClientNotifForwarder$LinearExecutor') @:internal extern class ClientNotifForwarder_LinearExecutor implements java.util.concurrent.Executor
{
	@:overload @:synchronized public function execute(command : java.lang.Runnable) : Void;
	
	
}
@:native('com$sun$jmx$remote$internal$ClientNotifForwarder$NotifFetcher') @:internal extern class ClientNotifForwarder_NotifFetcher implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}

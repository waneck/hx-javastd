package javax.management;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class NotificationBroadcasterSupport implements javax.management.NotificationEmitter
{
	/**
	* Constructs a NotificationBroadcasterSupport where each listener is invoked by the
	* thread sending the notification. This constructor is equivalent to
	* {@link NotificationBroadcasterSupport#NotificationBroadcasterSupport(Executor,
	* MBeanNotificationInfo[] info) NotificationBroadcasterSupport(null, null)}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a NotificationBroadcasterSupport where each listener is invoked using
	* the given {@link java.util.concurrent.Executor}. When {@link #sendNotification
	* sendNotification} is called, a listener is selected if it was added with a null
	* {@link NotificationFilter}, or if {@link NotificationFilter#isNotificationEnabled
	* isNotificationEnabled} returns true for the notification being sent. The call to
	* <code>NotificationFilter.isNotificationEnabled</code> takes place in the thread
	* that called <code>sendNotification</code>. Then, for each selected listener,
	* {@link Executor#execute executor.execute} is called with a command
	* that calls the <code>handleNotification</code> method.
	* This constructor is equivalent to
	* {@link NotificationBroadcasterSupport#NotificationBroadcasterSupport(Executor,
	* MBeanNotificationInfo[] info) NotificationBroadcasterSupport(executor, null)}.
	* @param executor an executor used by the method <code>sendNotification</code> to
	* send each notification. If it is null, the thread calling <code>sendNotification</code>
	* will invoke the <code>handleNotification</code> method itself.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(executor : java.util.concurrent.Executor) : Void;
	
	/**
	* <p>Constructs a NotificationBroadcasterSupport with information
	* about the notifications that may be sent.  Each listener is
	* invoked by the thread sending the notification.  This
	* constructor is equivalent to {@link
	* NotificationBroadcasterSupport#NotificationBroadcasterSupport(Executor,
	* MBeanNotificationInfo[] info)
	* NotificationBroadcasterSupport(null, info)}.</p>
	*
	* <p>If the <code>info</code> array is not empty, then it is
	* cloned by the constructor as if by {@code info.clone()}, and
	* each call to {@link #getNotificationInfo()} returns a new
	* clone.</p>
	*
	* @param info an array indicating, for each notification this
	* MBean may send, the name of the Java class of the notification
	* and the notification type.  Can be null, which is equivalent to
	* an empty array.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(info : java.NativeArray<javax.management.MBeanNotificationInfo>) : Void;
	
	/**
	* <p>Constructs a NotificationBroadcasterSupport with information about the notifications that may be sent,
	* and where each listener is invoked using the given {@link java.util.concurrent.Executor}.</p>
	*
	* <p>When {@link #sendNotification sendNotification} is called, a
	* listener is selected if it was added with a null {@link
	* NotificationFilter}, or if {@link
	* NotificationFilter#isNotificationEnabled isNotificationEnabled}
	* returns true for the notification being sent. The call to
	* <code>NotificationFilter.isNotificationEnabled</code> takes
	* place in the thread that called
	* <code>sendNotification</code>. Then, for each selected
	* listener, {@link Executor#execute executor.execute} is called
	* with a command that calls the <code>handleNotification</code>
	* method.</p>
	*
	* <p>If the <code>info</code> array is not empty, then it is
	* cloned by the constructor as if by {@code info.clone()}, and
	* each call to {@link #getNotificationInfo()} returns a new
	* clone.</p>
	*
	* @param executor an executor used by the method
	* <code>sendNotification</code> to send each notification. If it
	* is null, the thread calling <code>sendNotification</code> will
	* invoke the <code>handleNotification</code> method itself.
	*
	* @param info an array indicating, for each notification this
	* MBean may send, the name of the Java class of the notification
	* and the notification type.  Can be null, which is equivalent to
	* an empty array.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(executor : java.util.concurrent.Executor, info : java.NativeArray<javax.management.MBeanNotificationInfo>) : Void;
	
	/**
	* Adds a listener.
	*
	* @param listener The listener to receive notifications.
	* @param filter The filter object. If filter is null, no
	* filtering will be performed before handling notifications.
	* @param handback An opaque object to be sent back to the
	* listener when a notification is emitted. This object cannot be
	* used by the Notification broadcaster object. It should be
	* resent unchanged with the notification to the listener.
	*
	* @exception IllegalArgumentException thrown if the listener is null.
	*
	* @see #removeNotificationListener
	*/
	@:overload @:public public function addNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:public public function removeNotificationListener(listener : javax.management.NotificationListener) : Void;
	
	@:overload @:public public function removeNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:public public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	/**
	* Sends a notification.
	*
	* If an {@code Executor} was specified in the constructor, it will be given one
	* task per selected listener to deliver the notification to that listener.
	*
	* @param notification The notification to send.
	*/
	@:overload @:public public function sendNotification(notification : javax.management.Notification) : Void;
	
	/**
	* <p>This method is called by {@link #sendNotification
	* sendNotification} for each listener in order to send the
	* notification to that listener.  It can be overridden in
	* subclasses to change the behavior of notification delivery,
	* for instance to deliver the notification in a separate
	* thread.</p>
	*
	* <p>The default implementation of this method is equivalent to
	* <pre>
	* listener.handleNotification(notif, handback);
	* </pre>
	*
	* @param listener the listener to which the notification is being
	* delivered.
	* @param notif the notification being delivered to the listener.
	* @param handback the handback object that was supplied when the
	* listener was added.
	*
	*/
	@:overload @:protected private function handleNotification(listener : javax.management.NotificationListener, notif : javax.management.Notification, handback : Dynamic) : Void;
	
	
}
@:native('javax$management$NotificationBroadcasterSupport$ListenerInfo') @:internal extern class NotificationBroadcasterSupport_ListenerInfo
{
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	
}
@:native('javax$management$NotificationBroadcasterSupport$WildcardListenerInfo') @:internal extern class NotificationBroadcasterSupport_WildcardListenerInfo extends javax.management.NotificationBroadcasterSupport.NotificationBroadcasterSupport_ListenerInfo
{
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	
}
@:native('javax$management$NotificationBroadcasterSupport$SendNotifJob') @:internal extern class NotificationBroadcasterSupport_SendNotifJob implements java.lang.Runnable
{
	@:overload @:public public function new(notif : javax.management.Notification, listenerInfo : javax.management.NotificationBroadcasterSupport.NotificationBroadcasterSupport_ListenerInfo) : Void;
	
	@:overload @:public public function run() : Void;
	
	
}

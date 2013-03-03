package javax.management;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface NotificationBroadcaster
{
	/**
	* Adds a listener to this MBean.
	*
	* @param listener The listener object which will handle the
	* notifications emitted by the broadcaster.
	* @param filter The filter object. If filter is null, no
	* filtering will be performed before handling notifications.
	* @param handback An opaque object to be sent back to the
	* listener when a notification is emitted. This object cannot be
	* used by the Notification broadcaster object. It should be
	* resent unchanged with the notification to the listener.
	*
	* @exception IllegalArgumentException Listener parameter is null.
	*
	* @see #removeNotificationListener
	*/
	@:overload @:public public function addNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	/**
	* Removes a listener from this MBean.  If the listener
	* has been registered with different handback objects or
	* notification filters, all entries corresponding to the listener
	* will be removed.
	*
	* @param listener A listener that was previously added to this
	* MBean.
	*
	* @exception ListenerNotFoundException The listener is not
	* registered with the MBean.
	*
	* @see #addNotificationListener
	* @see NotificationEmitter#removeNotificationListener
	*/
	@:overload @:public public function removeNotificationListener(listener : javax.management.NotificationListener) : Void;
	
	/**
	* <p>Returns an array indicating, for each notification this
	* MBean may send, the name of the Java class of the notification
	* and the notification type.</p>
	*
	* <p>It is not illegal for the MBean to send notifications not
	* described in this array.  However, some clients of the MBean
	* server may depend on the array being complete for their correct
	* functioning.</p>
	*
	* @return the array of possible notifications.
	*/
	@:overload @:public public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	
}

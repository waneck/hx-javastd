package javax.management.remote;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class TargetedNotification implements java.io.Serializable
{
	/**
	* <p>Constructs a <code>TargetedNotification</code> object.  The
	* object contains a pair (Notification, Listener ID).
	* The Listener ID identifies the client listener to which that
	* notification is targeted. The client listener ID is one
	* previously returned by the connector server in response to an
	* <code>addNotificationListener</code> request.</p>
	* @param notification Notification emitted from the MBean server.
	* @param listenerID   The ID of the listener to which this
	*        notification is targeted.
	* @exception IllegalArgumentException if the <var>listenerID</var>
	*        or <var>notification</var> is null.
	*/
	@:overload @:public public function new(notification : javax.management.Notification, listenerID : Null<Int>) : Void;
	
	/**
	* <p>The emitted notification.</p>
	*
	* @return The notification.
	*/
	@:overload @:public public function getNotification() : javax.management.Notification;
	
	/**
	* <p>The ID of the listener to which the notification is
	*    targeted.</p>
	*
	* @return The listener ID.
	*/
	@:overload @:public public function getListenerID() : Null<Int>;
	
	/**
	* Returns a textual representation of this Targeted Notification.
	*
	* @return a String representation of this Targeted Notification.
	**/
	@:overload @:public public function toString() : String;
	
	
}

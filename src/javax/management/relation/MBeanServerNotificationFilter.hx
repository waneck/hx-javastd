package javax.management.relation;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanServerNotificationFilter extends javax.management.NotificationFilterSupport
{
	/**
	* Creates a filter selecting all MBeanServerNotification notifications for
	* all ObjectNames.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Disables any MBeanServerNotification (all ObjectNames are
	* deselected).
	*/
	@:overload @:public @:synchronized public function disableAllObjectNames() : Void;
	
	/**
	* Disables MBeanServerNotifications concerning given ObjectName.
	*
	* @param objectName  ObjectName no longer of interest
	*
	* @exception IllegalArgumentException  if the given ObjectName is null
	*/
	@:overload @:public @:synchronized public function disableObjectName(objectName : javax.management.ObjectName) : Void;
	
	/**
	* Enables all MBeanServerNotifications (all ObjectNames are selected).
	*/
	@:overload @:public @:synchronized public function enableAllObjectNames() : Void;
	
	/**
	* Enables MBeanServerNotifications concerning given ObjectName.
	*
	* @param objectName  ObjectName of interest
	*
	* @exception IllegalArgumentException  if the given ObjectName is null
	*/
	@:overload @:public @:synchronized public function enableObjectName(objectName : javax.management.ObjectName) : Void;
	
	/**
	* Gets all the ObjectNames enabled.
	*
	* @return Vector of ObjectNames:
	* <P>- null means all ObjectNames are implicitly selected, except the
	* ObjectNames explicitly deselected
	* <P>- empty means all ObjectNames are deselected, i.e. no ObjectName
	* selected.
	*/
	@:overload @:public @:synchronized public function getEnabledObjectNames() : java.util.Vector<javax.management.ObjectName>;
	
	/**
	* Gets all the ObjectNames disabled.
	*
	* @return Vector of ObjectNames:
	* <P>- null means all ObjectNames are implicitly deselected, except the
	* ObjectNames explicitly selected
	* <P>- empty means all ObjectNames are selected, i.e. no ObjectName
	* deselected.
	*/
	@:overload @:public @:synchronized public function getDisabledObjectNames() : java.util.Vector<javax.management.ObjectName>;
	
	/**
	* Invoked before sending the specified notification to the listener.
	* <P>If:
	* <P>- the ObjectName of the concerned MBean is selected (explicitly OR
	* (implicitly and not explicitly deselected))
	* <P>AND
	* <P>- the type of the operation (registration or unregistration) is
	* selected
	* <P>then the notification is sent to the listener.
	*
	* @param notif  The notification to be sent.
	*
	* @return true if the notification has to be sent to the listener, false
	* otherwise.
	*
	* @exception IllegalArgumentException  if null parameter
	*/
	@:overload @:public @:synchronized override public function isNotificationEnabled(notif : javax.management.Notification) : Bool;
	
	
}

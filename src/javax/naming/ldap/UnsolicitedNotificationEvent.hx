package javax.naming.ldap;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
* This class represents an event fired in response to an unsolicited
* notification sent by the LDAP server.
*
* @author Rosanna Lee
* @author Scott Seligman
* @author Vincent Ryan
*
* @see UnsolicitedNotification
* @see UnsolicitedNotificationListener
* @see javax.naming.event.EventContext#addNamingListener
* @see javax.naming.event.EventDirContext#addNamingListener
* @see javax.naming.event.EventContext#removeNamingListener
* @since 1.3
*/
@:require(java3) extern class UnsolicitedNotificationEvent extends java.util.EventObject
{
	/**
	* Constructs a new instance of <tt>UnsolicitedNotificationEvent</tt>.
	*
	* @param src The non-null source that fired the event.
	* @param notice The non-null unsolicited notification.
	*/
	@:overload public function new(src : Dynamic, notice : javax.naming.ldap.UnsolicitedNotification) : Void;
	
	/**
	* Returns the unsolicited notification.
	* @return The non-null unsolicited notification that caused this
	* event to be fired.
	*/
	@:overload public function getNotification() : javax.naming.ldap.UnsolicitedNotification;
	
	/**
	* Invokes the <tt>notificationReceived()</tt> method on
	* a listener using this event.
	* @param listener The non-null listener on which to invoke
	* <tt>notificationReceived</tt>.
	*/
	@:overload public function dispatch(listener : javax.naming.ldap.UnsolicitedNotificationListener) : Void;
	
	
}

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
extern class JMXConnectionNotification extends javax.management.Notification
{
	/**
	* <p>Notification type string for a connection-opened notification.
	*/
	public static var OPENED(default, null) : String;
	
	/**
	* <p>Notification type string for a connection-closed notification.
	*/
	public static var CLOSED(default, null) : String;
	
	/**
	* <p>Notification type string for a connection-failed notification.
	*/
	public static var FAILED(default, null) : String;
	
	/**
	* <p>Notification type string for a connection that has possibly
	* lost notifications.</p>
	*/
	public static var NOTIFS_LOST(default, null) : String;
	
	/**
	* Constructs a new connection notification.  The {@link
	* #getSource() source} of the notification depends on whether it
	* is being sent by a connector server or a connector client:
	*
	* <ul>
	*
	* <li>For a connector server, if it is registered in an MBean
	* server, the source is the {@link ObjectName} under which it is
	* registered.  Otherwise, it is a reference to the connector
	* server object itself, an instance of a subclass of {@link
	* JMXConnectorServer}.
	*
	* <li>For a connector client, the source is a reference to the
	* connector client object, an instance of a class implementing
	* {@link JMXConnector}.
	*
	* </ul>
	*
	* @param type the type of the notification.  This is usually one
	* of the constants {@link #OPENED}, {@link #CLOSED}, {@link
	* #FAILED}, {@link #NOTIFS_LOST}.  It is not an error for it to
	* be a different string.
	*
	* @param source the connector server or client emitting the
	* notification.
	*
	* @param connectionId the ID of the connection within its
	* connector server.
	*
	* @param sequenceNumber a non-negative integer.  It is expected
	* but not required that this number will be greater than any
	* previous <code>sequenceNumber</code> in a notification from
	* this source.
	*
	* @param message an unspecified text message, typically containing
	* a human-readable description of the event.  Can be null.
	*
	* @param userData an object whose type and meaning is defined by
	* the connector server.  Can be null.
	*
	* @exception NullPointerException if <code>type</code>,
	* <code>source</code>, or <code>connectionId</code> is null.
	*
	* @exception IllegalArgumentException if
	* <code>sequenceNumber</code> is negative.
	*/
	@:overload public function new(type : String, source : Dynamic, connectionId : String, sequenceNumber : haxe.Int64, message : String, userData : Dynamic) : Void;
	
	/**
	* <p>The connection ID to which this notification pertains.
	*
	* @return the connection ID.
	*/
	@:overload public function getConnectionId() : String;
	
	
}

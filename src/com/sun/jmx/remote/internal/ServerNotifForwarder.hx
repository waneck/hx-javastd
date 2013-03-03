package com.sun.jmx.remote.internal;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ServerNotifForwarder
{
	@:overload @:public public function new(mbeanServer : javax.management.MBeanServer, env : java.util.Map<String, Dynamic>, notifBuffer : com.sun.jmx.remote.internal.NotificationBuffer, connectionId : String) : Void;
	
	@:overload @:public public function addNotificationListener(name : javax.management.ObjectName, filter : javax.management.NotificationFilter) : Null<Int>;
	
	@:overload @:public public function removeNotificationListener(name : javax.management.ObjectName, listenerIDs : java.NativeArray<Null<Int>>) : Void;
	
	@:overload @:public public function removeNotificationListener(name : javax.management.ObjectName, listenerID : Null<Int>) : Void;
	
	@:overload @:public public function fetchNotifs(startSequenceNumber : haxe.Int64, timeout : haxe.Int64, maxNotifications : Int) : javax.management.remote.NotificationResult;
	
	@:overload @:public public function terminate() : Void;
	
	/**
	* Explicitly check the MBeanPermission for
	* the current access control context.
	*/
	@:overload @:public public function checkMBeanPermission(name : javax.management.ObjectName, actions : String) : Void;
	
	
}
@:native('com$sun$jmx$remote$internal$ServerNotifForwarder$IdAndFilter') @:internal extern class ServerNotifForwarder_IdAndFilter
{
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	
}

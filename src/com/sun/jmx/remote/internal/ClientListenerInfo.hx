package com.sun.jmx.remote.internal;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ClientListenerInfo
{
	/**
	* <p>An identified listener.  A listener has an Integer id that is
	* unique per connector server.  It selects notifications based on the
	* ObjectName of the originator and an optional
	* NotificationFilter.</p>
	*/
	@:overload public function new(listenerID : Null<Int>, name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic, delegationSubject : javax.security.auth.Subject) : Void;
	
	@:overload public function getObjectName() : javax.management.ObjectName;
	
	@:overload public function getListenerID() : Null<Int>;
	
	@:overload public function getNotificationFilter() : javax.management.NotificationFilter;
	
	@:overload public function getListener() : javax.management.NotificationListener;
	
	@:overload public function getHandback() : Dynamic;
	
	@:overload public function getDelegationSubject() : javax.security.auth.Subject;
	
	@:overload public function sameAs(name : javax.management.ObjectName) : Bool;
	
	@:overload public function sameAs(name : javax.management.ObjectName, listener : javax.management.NotificationListener) : Bool;
	
	@:overload public function sameAs(name : javax.management.ObjectName, listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Bool;
	
	
}

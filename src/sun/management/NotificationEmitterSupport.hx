package sun.management;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NotificationEmitterSupport implements javax.management.NotificationEmitter
{
	/**
	* Abstract helper class for notification emitter support.
	*/
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function addNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:public public function removeNotificationListener(listener : javax.management.NotificationListener) : Void;
	
	@:overload @:public public function removeNotificationListener(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	@:overload @:abstract @:public public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	
}
@:native('sun$management$NotificationEmitterSupport$ListenerInfo') @:internal extern class NotificationEmitterSupport_ListenerInfo
{
	@:public public var listener : javax.management.NotificationListener;
	
	@:overload @:public public function new(listener : javax.management.NotificationListener, filter : javax.management.NotificationFilter, handback : Dynamic) : Void;
	
	
}

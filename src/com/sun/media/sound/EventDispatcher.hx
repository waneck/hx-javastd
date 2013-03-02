package com.sun.media.sound;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class EventDispatcher implements java.lang.Runnable
{
	/**
	* Invoked when there is at least one event in the queue.
	* Implement this as a callback to process one event.
	*/
	@:overload private function processEvent(eventInfo : com.sun.media.sound.EventDispatcher.EventDispatcher_EventInfo) : Void;
	
	/**
	* Wait until there is something in the event queue to process.  Then
	* dispatch the event to the listeners.The entire method does not
	* need to be synchronized since this includes taking the event out
	* from the queue and processing the event. We only need to provide
	* exclusive access over the code where an event is removed from the
	*queue.
	*/
	@:overload private function dispatchEvents() : Void;
	
	/**
	* A loop to dispatch events.
	*/
	@:overload public function run() : Void;
	
	
}
/**
* Container for an event and a set of listeners to deliver it to.
*/
@:native('com$sun$media$sound$EventDispatcher$EventInfo') @:internal extern class EventDispatcher_EventInfo
{
	
}
/**
* Container for a clip with its expiration time
*/
@:native('com$sun$media$sound$EventDispatcher$ClipInfo') @:internal extern class EventDispatcher_ClipInfo
{
	
}
/**
* Interface that a class that wants to get regular
* line monitor events implements
*/
@:native('com$sun$media$sound$EventDispatcher$LineMonitor') @:internal extern interface EventDispatcher_LineMonitor
{
	/**
	* Called by event dispatcher in regular intervals
	*/
	@:overload public function checkLine() : Void;
	
	
}

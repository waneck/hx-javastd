package sun.awt;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class EventQueueDelegate
{
	@:overload public static function setDelegate(delegate : sun.awt.EventQueueDelegate.EventQueueDelegate_Delegate) : Void;
	
	@:overload public static function getDelegate() : sun.awt.EventQueueDelegate.EventQueueDelegate_Delegate;
	
	
}
@:native('sun$awt$EventQueueDelegate$Delegate') extern interface EventQueueDelegate_Delegate
{
	/**
	* This method allows for changing {@code EventQueue} events order.
	*
	* @param eventQueue current {@code EventQueue}
	* @return next {@code event} for the {@code EventDispatchThread}
	*/
	@:overload public function getNextEvent(eventQueue : java.awt.EventQueue) : java.awt.AWTEvent;
	
	/**
	* Notifies delegate before EventQueue.dispatch method.
	*
	* Note: this method may mutate the event
	*
	* @param event  to be dispatched by {@code dispatch} method
	* @return handle to be passed to {@code afterDispatch} method
	*/
	@:overload public function beforeDispatch(event : java.awt.AWTEvent) : Dynamic;
	
	/**
	* Notifies delegate after EventQueue.dispatch method.
	*
	* @param event {@code event} dispatched by the {@code dispatch} method
	* @param handle object which came from {@code beforeDispatch} method
	*/
	@:overload public function afterDispatch(event : java.awt.AWTEvent, handle : Dynamic) : Void;
	
	
}

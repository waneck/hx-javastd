package java.awt.event;
/*
* Copyright (c) 2001, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class AWTEventListenerProxy extends java.util.EventListenerProxy<java.awt.event.AWTEventListener> implements java.awt.event.AWTEventListener
{
	/**
	* Constructor which binds the {@code AWTEventListener}
	* to a specific event mask.
	*
	* @param eventMask  the bitmap of event types to receive
	* @param listener   the listener object
	*/
	@:overload public function new(eventMask : haxe.Int64, listener : java.awt.event.AWTEventListener) : Void;
	
	/**
	* Forwards the AWT event to the listener delegate.
	*
	* @param event  the AWT event
	*/
	@:overload public function eventDispatched(event : java.awt.AWTEvent) : Void;
	
	/**
	* Returns the event mask associated with the listener.
	*
	* @return the event mask associated with the listener
	*/
	@:overload public function getEventMask() : haxe.Int64;
	
	
}
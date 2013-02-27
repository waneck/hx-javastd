package com.sun.jdi.event;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Notification that a thread in the target VM has finished
* waiting on an monitor object.
* <P>
*
* @see EventQueue
* @see MonitorWaitEvent
*
* @author Swamy Venkataramanappa
* @since  1.6
*/
@:require(java6) extern interface MonitorWaitedEvent extends com.sun.jdi.event.LocatableEvent
{
	/**
	* Returns the thread in which this event has occurred.
	* <p>
	*
	* @return a {@link ThreadReference} which mirrors the event's thread in
	* the target VM.
	*/
	@:overload public function thread() : com.sun.jdi.ThreadReference;
	
	/**
	* Returns the monitor object this thread waited on.
	*
	* @return an {@link ObjectReference} for the monitor.
	*/
	@:overload public function monitor() : com.sun.jdi.ObjectReference;
	
	/**
	* Returns whether the wait has timed out or been interrupted.
	*
	* @return <code>true</code> if the wait is timed out.
	*/
	@:overload public function timedout() : Bool;
	
	
}
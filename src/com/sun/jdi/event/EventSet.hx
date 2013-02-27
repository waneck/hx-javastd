package com.sun.jdi.event;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface EventSet extends com.sun.jdi.Mirror extends java.util.Set<com.sun.jdi.event.Event>
{
	/**
	* Returns the policy used to suspend threads in the target VM
	* for this event set. This policy is selected from the suspend
	* policies for each event's request; the target VM chooses the
	* policy which suspends the most threads.  The target VM
	* suspends threads according to that policy
	* and that policy is returned here. See
	* {@link com.sun.jdi.request.EventRequest} for the possible
	* policy values.
	* <p>
	* In rare cases, the suspend policy may differ from the requested
	* value if a {@link ClassPrepareEvent} has occurred in a
	* debugger system thread. See {@link ClassPrepareEvent#thread}
	* for details.
	*
	* @return the suspendPolicy which is either
	* {@link com.sun.jdi.request.EventRequest#SUSPEND_ALL SUSPEND_ALL},
	* {@link com.sun.jdi.request.EventRequest#SUSPEND_EVENT_THREAD SUSPEND_EVENT_THREAD} or
	* {@link com.sun.jdi.request.EventRequest#SUSPEND_NONE SUSPEND_NONE}.
	*/
	@:overload public function suspendPolicy() : Int;
	
	/**
	* Return an iterator specific to {@link Event} objects.
	*/
	@:overload public function eventIterator() : com.sun.jdi.event.EventIterator;
	
	/**
	* Resumes threads suspended by this event set. If the {@link #suspendPolicy}
	* is {@link com.sun.jdi.request.EventRequest#SUSPEND_ALL}, a call
	* to this method is equivalent to
	* {@link com.sun.jdi.VirtualMachine#resume}. If the
	* suspend policy is
	* {@link com.sun.jdi.request.EventRequest#SUSPEND_EVENT_THREAD},
	* a call to this method is equivalent to
	* {@link com.sun.jdi.ThreadReference#resume} for the event thread.
	* Otherwise, a call to this method is a no-op.
	*/
	@:overload public function resume() : Void;
	
	
}

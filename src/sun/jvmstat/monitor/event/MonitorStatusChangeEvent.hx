package sun.jvmstat.monitor.event;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class MonitorStatusChangeEvent extends sun.jvmstat.monitor.event.VmEvent
{
	/**
	* List of instrumentation objects inserted since the last event.
	* Elements of this list will always be of type Monitor.
	*/
	@:protected private var inserted : java.util.List<Dynamic>;
	
	/**
	* List of instrumentation objects removed since the last event.
	* Elements of this list will always be of type Monitor.
	*/
	@:protected private var removed : java.util.List<Dynamic>;
	
	/**
	* Construct a new MonitorStatusChangeEvent.
	*
	* @param vm the MonitoredVm source of the event.
	* @param inserted the list of instrumentation objects inserted since
	*                 the last event.
	* @param removed the list of instrumentation objects removed since
	*                the last event.
	*/
	@:overload @:public public function new(vm : sun.jvmstat.monitor.MonitoredVm, inserted : java.util.List<Dynamic>, removed : java.util.List<Dynamic>) : Void;
	
	/**
	* Return the list of instrumentation objects that were inserted
	* since the last event notification.
	*
	* @return List - a List of Monitor objects that were inserted into the
	*                instrumentation exported by the MonitoredHost. If no
	*                new instrumentation was inserted, an emply List is
	*                returned.
	*/
	@:overload @:public public function getInserted() : java.util.List<Dynamic>;
	
	/**
	* Return the set of instrumentation objects that were removed
	* since the last event notification.
	*
	* @return List - a List of Monitor objects that were removed from the
	*                instrumentation exported by the MonitoredHost. If no
	*                instrumentation was removed, an emply List is returned.
	*/
	@:overload @:public public function getRemoved() : java.util.List<Dynamic>;
	
	
}

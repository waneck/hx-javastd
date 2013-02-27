package sun.jvmstat.perfdata.monitor.protocol.local;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Concrete implementation of the AbstractMonitoredVm class for the
* <em>local:</em> protocol for the HotSpot PerfData monitoring implementation.
* <p>
* This class provides the ability to attach to the instrumentation buffer
* of a live target Java Virtual Machine through a HotSpot specific attach
* mechanism.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class LocalMonitoredVm extends sun.jvmstat.perfdata.monitor.AbstractMonitoredVm
{
	/**
	* Create a LocalMonitoredVm instance.
	*
	* @param vmid the vm identifier specifying the target JVM
	* @param interval the sampling interval
	*/
	@:overload public function new(vmid : sun.jvmstat.monitor.VmIdentifier, interval : Int) : Void;
	
	/**
	* {@inheritDoc}.
	*/
	@:overload override public function detach() : Void;
	
	/**
	* {@inheritDoc}.
	*/
	@:overload override public function addVmListener(l : sun.jvmstat.monitor.event.VmListener) : Void;
	
	/**
	* {@inheritDoc}.
	*/
	@:overload override public function removeVmListener(l : sun.jvmstat.monitor.event.VmListener) : Void;
	
	/**
	* {@inheritDoc}.
	*/
	@:overload override public function setInterval(newInterval : Int) : Void;
	
	
}
/**
* Class to notify listeners of Monitor related events for
* the target JVM.
*/
@:native('sun$jvmstat$perfdata$monitor$protocol$local$LocalMonitoredVm$NotifierTask') @:internal extern class LocalMonitoredVm_NotifierTask extends sun.jvmstat.perfdata.monitor.CountedTimerTask
{
	@:overload override public function run() : Void;
	
	
}

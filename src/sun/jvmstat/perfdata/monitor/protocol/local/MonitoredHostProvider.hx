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
* Concrete implementation of the MonitoredHost interface for the
* <em>local</em> protocol of the HotSpot PerfData monitoring implementation.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class MonitoredHostProvider extends sun.jvmstat.monitor.MonitoredHost
{
	/**
	* Create a MonitoredHostProvider instance using the given HostIdentifier.
	*
	* @param hostId the host identifier for this MonitoredHost
	*/
	@:overload public function new(hostId : sun.jvmstat.monitor.HostIdentifier) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getMonitoredVm(vmid : sun.jvmstat.monitor.VmIdentifier) : sun.jvmstat.monitor.MonitoredVm;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getMonitoredVm(vmid : sun.jvmstat.monitor.VmIdentifier, interval : Int) : sun.jvmstat.monitor.MonitoredVm;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function detach(vm : sun.jvmstat.monitor.MonitoredVm) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function addHostListener(listener : sun.jvmstat.monitor.event.HostListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function removeHostListener(listener : sun.jvmstat.monitor.event.HostListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function setInterval(newInterval : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function activeVms() : java.util.Set<Null<Int>>;
	
	
}
/**
* Class to poll the local system and generate event notifications.
*/
@:native('sun$jvmstat$perfdata$monitor$protocol$local$MonitoredHostProvider$NotifierTask') @:internal extern class MonitoredHostProvider_NotifierTask extends sun.jvmstat.perfdata.monitor.CountedTimerTask
{
	@:overload override public function run() : Void;
	
	
}

package sun.jvmstat.perfdata.monitor.protocol.rmi;
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
/**
* Concrete implementation of the AbstractMonitoredVm class for the
* <em>rmi:</em> protocol for the HotSpot PerfData monitoring implementation.
* <p>
* This class provides the ability to acquire to the instrumentation buffer
* of a live, remote target Java Virtual Machine through an RMI server.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class RemoteMonitoredVm extends sun.jvmstat.perfdata.monitor.AbstractMonitoredVm
{
	/**
	* Create a RemoteMonitoredVm instance.
	*
	* @param rvm the proxy to the remote MonitoredVm instance.
	* @param vmid the vm identifier specifying the remot target JVM
	* @param timer the timer used to run polling tasks
	* @param interval the sampling interval
	*/
	@:overload @:public public function new(rvm : sun.jvmstat.monitor.remote.RemoteVm, vmid : sun.jvmstat.monitor.VmIdentifier, timer : java.util.Timer, interval : Int) : Void;
	
	/**
	* Method to attach to the remote MonitoredVm.
	*/
	@:overload @:public public function attach() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function detach() : Void;
	
	/**
	* Get a copy of the remote instrumentation buffer.
	*<p>
	* The data in the remote instrumentation buffer is copied into
	* a local byte buffer.
	*
	* @throws RemoteException Thrown on any communications errors with
	*                         the remote system.
	*/
	@:overload @:public public function sample() : Void;
	
	/**
	* Get the proxy to the remote MonitoredVm.
	*
	* @return RemoteVm - the proxy to the remote MonitoredVm.
	*/
	@:overload @:public public function getRemoteVm() : sun.jvmstat.monitor.remote.RemoteVm;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addVmListener(l : sun.jvmstat.monitor.event.VmListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function removeVmListener(l : sun.jvmstat.monitor.event.VmListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function setInterval(newInterval : Int) : Void;
	
	
}
/**
* Class to periodically check the state of the defined monitors
* for the remote MonitoredVm instance and to notify listeners of
* any detected changes.
*/
@:native('sun$jvmstat$perfdata$monitor$protocol$rmi$RemoteMonitoredVm$NotifierTask') @:internal extern class RemoteMonitoredVm_NotifierTask extends sun.jvmstat.perfdata.monitor.CountedTimerTask
{
	@:overload @:public override public function run() : Void;
	
	
}
/**
* Class to periodically sample the remote instrumentation byte buffer
* and refresh the local copy. Registered listeners are notified of
* the completion of a sampling event.
*/
@:native('sun$jvmstat$perfdata$monitor$protocol$rmi$RemoteMonitoredVm$SamplerTask') @:internal extern class RemoteMonitoredVm_SamplerTask extends sun.jvmstat.perfdata.monitor.CountedTimerTask
{
	@:overload @:public override public function run() : Void;
	
	
}

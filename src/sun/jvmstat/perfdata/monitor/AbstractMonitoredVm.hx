package sun.jvmstat.perfdata.monitor;
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
extern class AbstractMonitoredVm implements sun.jvmstat.monitor.remote.BufferedMonitoredVm
{
	/**
	* The VmIdentifier for the target.
	*/
	@:protected private var vmid : sun.jvmstat.monitor.VmIdentifier;
	
	/**
	* The shared memory instrumentation buffer for the target.
	*/
	@:protected private var pdb : sun.jvmstat.perfdata.monitor.AbstractPerfDataBuffer;
	
	/**
	* The sampling interval, if the instrumentation buffer is acquired
	* by sampling instead of shared memory mechanisms.
	*/
	@:protected private var interval : Int;
	
	/**
	* Create an AbstractMonitoredVm instance.
	*
	* @param vmid the VmIdentifier for the target
	* @param interval the initial sampling interval
	*/
	@:overload @:public public function new(vmid : sun.jvmstat.monitor.VmIdentifier, interval : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getVmIdentifier() : sun.jvmstat.monitor.VmIdentifier;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function findByName(name : String) : sun.jvmstat.monitor.Monitor;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function findByPattern(patternString : String) : java.util.List<sun.jvmstat.monitor.Monitor>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function detach() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setInterval(interval : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getInterval() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setLastException(e : java.lang.Exception) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getLastException() : java.lang.Exception;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function clearLastException() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function isErrored() : Bool;
	
	/**
	* Get a list of the inserted and removed monitors since last called.
	*
	* @return MonitorStatus - the status of available Monitors for the
	*                         target Java Virtual Machine.
	* @throws MonitorException Thrown if communications errors occur
	*                          while communicating with the target.
	*/
	@:overload @:public public function getMonitorStatus() : sun.jvmstat.perfdata.monitor.MonitorStatus;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:abstract public function addVmListener(l : sun.jvmstat.monitor.event.VmListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:abstract public function removeVmListener(l : sun.jvmstat.monitor.event.VmListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getCapacity() : Int;
	
	
}

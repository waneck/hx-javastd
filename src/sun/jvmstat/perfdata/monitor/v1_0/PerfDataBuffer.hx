package sun.jvmstat.perfdata.monitor.v1_0;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The concrete implementation of version 1.0 of the HotSpot PerfData
* Instrumentation buffer. This class is responsible for parsing the
* instrumentation memory and constructing the necessary objects to
* represent and access the instrumentation objects contained in the
* memory buffer.
*
* @author Brian Doherty
* @since 1.5
* @see AbstractPerfDataBuffer
*/
@:require(java5) extern class PerfDataBuffer extends sun.jvmstat.perfdata.monitor.PerfDataBufferImpl
{
	/**
	* Construct a PerfDataBufferImpl instance.
	* <p>
	* This class is dynamically loaded by
	* {@link AbstractPerfDataBuffer#createPerfDataBuffer}, and this
	* constructor is called to instantiate the instance.
	*
	* @param buffer the buffer containing the instrumentation data
	* @param lvmid the Local Java Virtual Machine Identifier for this
	*              instrumentation buffer.
	*/
	@:overload public function new(buffer : java.nio.ByteBuffer, lvmid : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function buildMonitorMap(map : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function getNewMonitors(map : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function getMonitorStatus(map : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : sun.jvmstat.perfdata.monitor.MonitorStatus;
	
	/**
	* Build the pseudo monitors used to map the prolog data into counters.
	*/
	@:overload private function buildPseudoMonitors(map : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : Void;
	
	/**
	* Method to provide a gross level of synchronization with the
	* target monitored jvm.
	*
	* gross synchronization works by polling for the hotspot.rt.hrt.ticks
	* counter, which is the last counter created by the StatSampler
	* initialization code. The counter is updated when the watcher thread
	* starts scheduling tasks, which is the last thing done in vm
	* initialization.
	*/
	@:overload private function synchWithTarget(map : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : Void;
	
	/**
	* Method to poll the instrumentation memory for a counter with
	* the given name. The polling period is bounded by the timeLimit
	* argument.
	*/
	@:overload private function pollFor(map : java.util.Map<String, sun.jvmstat.monitor.Monitor>, name : String, timeLimit : haxe.Int64) : sun.jvmstat.monitor.Monitor;
	
	/**
	* method to make adjustments for known counter problems. This
	* method depends on the availability of certain counters, which
	* is generally guaranteed by the synchWithTarget() method.
	*/
	@:overload private function kludge(map : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : Void;
	
	/**
	* method to extract the next monitor entry from the instrumentation memory.
	* assumes that nextEntry is the offset into the byte array
	* at which to start the search for the next entry. method leaves
	* next entry pointing to the next entry or to the end of data.
	*/
	@:overload private function getNextMonitorEntry() : sun.jvmstat.monitor.Monitor;
	
	
}

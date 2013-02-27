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
/**
* The base classes for the concrete implementations of the HotSpot
* PerfData instrumentation buffer.
*
* @author Brian Doherty
* @since 1.5
* @see AbstractPerfDataBuffer
*/
@:require(java5) extern class PerfDataBufferImpl
{
	/**
	* The buffer containing the instrumentation data.
	*/
	private var buffer : java.nio.ByteBuffer;
	
	/**
	* A Map of monitor objects found in the instrumentation buffer.
	*/
	private var monitors : java.util.Map<String, sun.jvmstat.monitor.Monitor>;
	
	/**
	* The Local Java Virtual Machine Identifier for this buffer.
	*/
	private var lvmid : Int;
	
	/**
	* A Map of monitor object names to aliases as read in from the alias map
	* file.
	*/
	private var aliasMap : java.util.Map<String, java.util.ArrayList<String>>;
	
	/**
	* A cache of resolved monitor aliases.
	*/
	private var aliasCache : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Constructor.
	*
	* @param buffer the ByteBuffer containing the instrumentation data.
	* @param lvmid the Local Java Virtual Machine Identifier for this
	*              instrumentation buffer.
	*/
	@:overload private function new(buffer : java.nio.ByteBuffer, lvmid : Int) : Void;
	
	/**
	* Get the Local Java Virtual Machine Identifier, or <em>lvmid</em>
	* for the target JVM associated with this instrumentation buffer.
	*
	* @return int - the lvmid
	*/
	@:overload public function getLocalVmId() : Int;
	
	/**
	* Get a copy of the raw instrumentation data.
	* This method is used to get a copy of the current bytes in the
	* instrumentation buffer. It is generally used for transporting
	* those bytes over the network.
	*
	* @return byte[] - a copy of the bytes in the instrumentation buffer.
	*/
	@:overload public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get the capacity of the instrumentation buffer.
	*
	* @return int - the capacity, or size, of the instrumentation buffer.
	*/
	@:overload public function getCapacity() : Int;
	
	/**
	* Find the Monitor object for the named counter by using one of its
	* aliases.
	*/
	@:overload private function findByAlias(name : String) : sun.jvmstat.monitor.Monitor;
	
	/**
	* Find a named Instrumentation object.
	*
	* This method will look for the named instrumentation object in the
	* instrumentation exported by this Java Virtual Machine. If an
	* instrumentation object with the given name exists, a Monitor interface
	* to that object will be return. Otherwise, the method returns
	* <tt>null</tt>. The method will map requests for instrumention objects
	* using old names to their current names, if applicable.
	*
	*
	*
	* @param name the name of the Instrumentation object to find.
	* @return Monitor - the {@link Monitor} object that can be used to
	*                   monitor the the named instrumentation object, or
	*                   <tt>null</tt> if the named object doesn't exist.
	* @throws MonitorException Thrown if an error occurs while communicating
	*                          with the target Java Virtual Machine.
	*/
	@:overload public function findByName(name : String) : sun.jvmstat.monitor.Monitor;
	
	/**
	* Find all Instrumentation objects with names matching the given pattern.
	*
	* This method returns a {@link List} of Monitor objects such that
	* the name of each object matches the given pattern.
	*
	* @param patternString a string containing a pattern as described in
	*                      {@link java.util.regex.Pattern}.
	* @return List<Monitor> - a List of {@link Monitor} objects that can be used to
	*                monitor the instrumentation objects whose names match
	*                the given pattern. If no instrumentation objects have`
	*                names matching the given pattern, then an empty List
	*                is returned.
	* @throws MonitorException Thrown if an error occurs while communicating
	*                          with the target Java Virtual Machine.
	* @see java.util.regex.Pattern
	*/
	@:overload public function findByPattern(patternString : String) : java.util.List<sun.jvmstat.monitor.Monitor>;
	
	/**
	* Get a list of the inserted and removed monitors since last called.
	*
	* @return MonitorStatus - the status of available Monitors for the
	*                         target Java Virtual Machine.
	* @throws MonitorException Thrown if communications errors occur
	*                          while communicating with the target.
	*/
	@:overload public function getMonitorStatus() : sun.jvmstat.perfdata.monitor.MonitorStatus;
	
	/**
	* get the list of inserted and removed monitors since last called.
	*
	* @param m the map of Monitors.
	* @throws MonitorException Thrown if communications errors occur
	*                          while communicating with the target.
	*/
	@:overload @:abstract private function getMonitorStatus(m : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : sun.jvmstat.perfdata.monitor.MonitorStatus;
	
	/**
	* build the map of Monitor objects.
	*
	* @param m the map of Monitors.
	* @throws MonitorException Thrown if communications errors occur
	*                          while communicating with the target.
	*/
	@:overload @:abstract private function buildMonitorMap(m : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : Void;
	
	/**
	* get the new Monitor objects from the Map of Monitor objects.
	*
	* @param m the map of Monitors.
	* @throws MonitorException Thrown if communications errors occur
	*                          while communicating with the target.
	*/
	@:overload @:abstract private function getNewMonitors(m : java.util.Map<String, sun.jvmstat.monitor.Monitor>) : Void;
	
	
}

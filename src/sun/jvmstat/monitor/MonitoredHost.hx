package sun.jvmstat.monitor;
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
extern class MonitoredHost
{
	/**
	* The HostIdentifier for this MonitoredHost instance.
	*/
	private var hostId : sun.jvmstat.monitor.HostIdentifier;
	
	/**
	* The polling interval, in milliseconds, for this MonitoredHost instance.
	*/
	private var interval : Int;
	
	/**
	* The last Exception encountered while polling this MonitoredHost.
	*/
	private var lastException : java.lang.Exception;
	
	/**
	* Factory method to construct MonitoredHost instances to manage
	* connections to the host indicated by <tt>hostIdString</tt>
	*
	* @param hostIdString a String representation of a {@link HostIdentifier}
	* @return MonitoredHost - the MonitoredHost instance for communicating
	*                         with the indicated host using the protocol
	*                         specified in hostIdString.
	* @throws MonitorException  Thrown if monitoring errors occur.
	* @throws URISyntaxException Thrown when the hostIdString is poorly
	*                            formed. This exception may get encapsulated
	*                            into MonitorException in a future revision.
	*/
	@:overload public static function getMonitoredHost(hostIdString : String) : MonitoredHost;
	
	/**
	* Factory method to construct a MonitoredHost instance to manage the
	* connection to the Java Virtual Machine indicated by <tt>vmid</tt>.
	*
	* This method provide a convenient short cut for attaching to a specific
	* instrumented Java Virtual Machine. The information in the VmIdentifier
	* is used to construct a corresponding HostIdentifier, which in turn is
	* used to create the MonitoredHost instance.
	*
	* @param vmid The identifier for the target Java Virtual Machine.
	* @return MonitoredHost - The MonitoredHost object needed to attach to
	*                         the target Java Virtual Machine.
	*
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload public static function getMonitoredHost(vmid : sun.jvmstat.monitor.VmIdentifier) : MonitoredHost;
	
	/**
	* Factory method to construct a MonitoredHost instance to manage the
	* connection to the host indicated by <tt>hostId</tt>.
	*
	* @param hostId the identifier for the target host.
	* @return MonitoredHost - The MonitoredHost object needed to attach to
	*                         the target host.
	*
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload public static function getMonitoredHost(hostId : sun.jvmstat.monitor.HostIdentifier) : MonitoredHost;
	
	/**
	* Method to resolve unspecified components of the given HostIdentifier
	* by constructing a new HostIdentifier that replaces the unspecified
	* components with the default values.
	*
	* @param hostId the unresolved HostIdentifier.
	* @return HostIdentifier - a resolved HostIdentifier.
	*
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload private static function resolveHostId(hostId : sun.jvmstat.monitor.HostIdentifier) : sun.jvmstat.monitor.HostIdentifier;
	
	/**
	* Return the resolved HostIdentifier for this MonitoredHost.
	*
	* @return HostIdentifier - the resolved HostIdentifier.
	*/
	@:overload public function getHostIdentifier() : sun.jvmstat.monitor.HostIdentifier;
	
	/**
	* Set the polling interval for this MonitoredHost.
	*
	* @param interval the polling interval, in milliseconds
	*/
	@:overload public function setInterval(interval : Int) : Void;
	
	/**
	* Get the polling interval.
	*
	* @return int - the polling interval in milliseconds for this MonitoredHost
	*/
	@:overload public function getInterval() : Int;
	
	/**
	* Set the last exception encountered while polling this MonitoredHost.
	*
	* @param lastException the last exception encountered;
	*/
	@:overload public function setLastException(lastException : java.lang.Exception) : Void;
	
	/**
	* Get the last exception encountered while polling this MonitoredHost.
	*
	* @return Exception - the last exception occurred while polling this
	*                     MonitoredHost, or <tt>null</tt> if no exception
	*                     has occurred or the exception has been cleared,
	*/
	@:overload public function getLastException() : java.lang.Exception;
	
	/**
	* Clear the last exception.
	*/
	@:overload public function clearLastException() : Void;
	
	/**
	* Test if this MonitoredHost is in the errored state. If this method
	* returns true, then the Exception returned by getLastException()
	* indicates the Exception that caused the error condition.
	*
	* @return boolean - true if the MonitoredHost instance has experienced
	*                   an error, or false if it hasn't or if any past
	*                   error has been cleared.
	*/
	@:overload public function isErrored() : Bool;
	
	/**
	* Get the MonitoredVm for the given Java Virtual Machine. The default
	* sampling interval is used for the MonitoredVm instance.
	*
	* @param id the VmIdentifier specifying the target Java Virtual Machine.
	* @return MonitoredVm - the MonitoredVm instance for the target Java
	*                       Virtual Machine.
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload @:abstract public function getMonitoredVm(id : sun.jvmstat.monitor.VmIdentifier) : sun.jvmstat.monitor.MonitoredVm;
	
	/**
	* Get the MonitoredVm for the given Java Virtual Machine. The sampling
	* interval is set to the given interval.
	*
	* @param id the VmIdentifier specifying the target Java Virtual Machine.
	* @param interval the sampling interval for the target Java Virtual Machine.
	* @return MonitoredVm - the MonitoredVm instance for the target Java
	*                       Virtual Machine.
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload @:abstract public function getMonitoredVm(id : sun.jvmstat.monitor.VmIdentifier, interval : Int) : sun.jvmstat.monitor.MonitoredVm;
	
	/**
	* Detach from the indicated MonitoredVm.
	*
	* @param vm the monitored Java Virtual Machine.
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload @:abstract public function detach(vm : sun.jvmstat.monitor.MonitoredVm) : Void;
	
	/**
	* Add a HostListener. The given listener is added to the list
	* of HostListener objects to be notified of MonitoredHost related events.
	*
	* @param listener the HostListener to add.
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload @:abstract public function addHostListener(listener : sun.jvmstat.monitor.event.HostListener) : Void;
	
	/**
	* Remove a HostListener. The given listener is removed from the list
	* of HostListener objects to be notified of MonitoredHost related events.
	*
	* @param listener the HostListener to add.
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload @:abstract public function removeHostListener(listener : sun.jvmstat.monitor.event.HostListener) : Void;
	
	/**
	* Return the current set of active Java Virtual Machines for this
	* MonitoredHost. The returned Set contains {@link Integer} instances
	* holding the local virtual machine identifier, or <em>lvmid</em>
	* for each instrumented Java Virtual Machine currently available.
	*
	* @return Set - the current set of active Java Virtual Machines associated
	*               with this MonitoredHost, or the empty set of none.
	* @throws MonitorException Thrown if monitoring errors occur.
	*/
	@:overload @:abstract public function activeVms() : java.util.Set<Null<Int>>;
	
	
}

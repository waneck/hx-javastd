package com.sun.jdi;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface VirtualMachineManager
{
	/**
	* Identifies the default connector. This connector should
	* be used as the launching connector when selection of a
	* connector with specific characteristics is unnecessary.
	*
	* @return the default {@link com.sun.jdi.connect.LaunchingConnector}
	*/
	@:overload public function defaultConnector() : com.sun.jdi.connect.LaunchingConnector;
	
	/**
	* Returns the list of known {@link com.sun.jdi.connect.LaunchingConnector} objects.
	* Any of the returned objects can be used to launch a new target
	* VM and immediately create a {@link VirtualMachine} mirror for it.
	*
	* Note that a target VM launched by a launching connector is not
	* guaranteed to be stable until after the {@link com.sun.jdi.event.VMStartEvent} has been
	* received.
	* @return a list of {@link com.sun.jdi.connect.LaunchingConnector} objects.
	*/
	@:overload public function launchingConnectors() : java.util.List<com.sun.jdi.connect.LaunchingConnector>;
	
	/**
	* Returns the list of known {@link com.sun.jdi.connect.AttachingConnector} objects.
	* Any of the returned objects can be used to attach to an existing target
	* VM and create a {@link VirtualMachine} mirror for it.
	*
	* @return a list of {@link com.sun.jdi.connect.AttachingConnector} objects.
	*/
	@:overload public function attachingConnectors() : java.util.List<com.sun.jdi.connect.AttachingConnector>;
	
	/**
	* Returns the list of known {@link com.sun.jdi.connect.ListeningConnector} objects.
	* Any of the returned objects can be used to listen for a
	* connection initiated by a target VM
	* and create a {@link VirtualMachine} mirror for it.
	*
	* @return a list of {@link com.sun.jdi.connect.ListeningConnector} objects.
	*/
	@:overload public function listeningConnectors() : java.util.List<com.sun.jdi.connect.ListeningConnector>;
	
	/**
	* Returns the list of all known {@link com.sun.jdi.connect.Connector} objects.
	*
	* @return a list of {@link com.sun.jdi.connect.Connector} objects.
	*/
	@:overload public function allConnectors() : java.util.List<com.sun.jdi.connect.Connector>;
	
	/**
	* Lists all target VMs which are connected to the debugger.
	* The list includes {@link VirtualMachine} instances for
	* any target VMs which initiated a connection
	* and any
	* target VMs to which this manager has initiated a connection.
	* A target VM will remain in this list
	* until the VM is disconnected.
	* {@link com.sun.jdi.event.VMDisconnectEvent} is placed in the event queue
	* after the VM is removed from the list.
	*
	* @return a list of {@link VirtualMachine} objects, each mirroring
	* a target VM.
	*/
	@:overload public function connectedVirtualMachines() : java.util.List<com.sun.jdi.VirtualMachine>;
	
	/**
	* Returns the major version number of the JDI interface.
	* See {@link VirtualMachine#version} target VM version and
	* information and
	* {@link VirtualMachine#description} more version information.
	*
	* @return the integer major version number.
	*/
	@:overload public function majorInterfaceVersion() : Int;
	
	/**
	* Returns the minor version number of the JDI interface.
	* See {@link VirtualMachine#version} target VM version and
	* information and
	* {@link VirtualMachine#description} more version information.
	*
	* @return the integer minor version number
	*/
	@:overload public function minorInterfaceVersion() : Int;
	
	/**
	* Create a virtual machine mirror for a target VM.
	*
	* <p> Creates a virtual machine mirror for a target VM
	* for which a {@link com.sun.jdi.connect.spi.Connection Connection}
	* already exists. A Connection is created when a {@link
	* com.sun.jdi.connect.Connector Connector} establishes
	* a connection and successfully handshakes with a target VM.
	* A Connector can then use this method to create a virtual machine
	* mirror to represent the composite state of the target VM.
	*
	* <p> The <tt>process</tt> argument specifies the
	* {@link java.lang.Process} object for the taget VM. It may be
	* specified as <tt>null</tt>. If the target VM is launched
	* by a {@link com.sun.jdi.connect.LaunchingConnector
	* LaunchingConnector} the <tt>process</tt> argument should be
	* specified, otherwise calling {@link com.sun.jdi.VirtualMachine#process()}
	* on the created virtual machine will return <tt>null</tt>.
	*
	* <p> This method exists so that Connectors may create
	* a virtual machine mirror when a connection is established
	* to a target VM. Only developers creating new Connector
	* implementations should need to make direct use of this
	* method. </p>
	*
	* @param  connection
	*         The open connection to the target VM.
	*
	* @param  process
	*         If launched, the {@link java.lang.Process} object for
	*         the target VM. <tt>null</tt> if not launched.
	*
	* @return new virtual machine representing the target VM.
	*
	* @throws IOException
	*         if an I/O error occurs
	*
	* @throws IllegalStateException
	*         if the connection is not open
	*
	* @see com.sun.jdi.connect.spi.Connection#isOpen()
	* @see com.sun.jdi.VirtualMachine#process()
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function createVirtualMachine(connection : com.sun.jdi.connect.spi.Connection, process : java.lang.Process) : com.sun.jdi.VirtualMachine;
	
	/**
	* Creates a new virtual machine.
	*
	* <p> This convenience method works as if by invoking {@link
	* #createVirtualMachine(Connection, Process)} method and
	* specifying <tt>null</tt> as the <tt>process</tt> argument.
	*
	* <p> This method exists so that Connectors may create
	* a virtual machine mirror when a connection is established
	* to a target VM. Only developers creating new Connector
	* implementations should need to make direct use of this
	* method. </p>
	*
	* @return the new virtual machine
	*
	* @throws IOException
	*         if an I/O error occurs
	*
	* @throws IllegalStateException
	*         if the connection is not open
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function createVirtualMachine(connection : com.sun.jdi.connect.spi.Connection) : com.sun.jdi.VirtualMachine;
	
	
}

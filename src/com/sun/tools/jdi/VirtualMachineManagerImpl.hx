package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class VirtualMachineManagerImpl implements com.sun.tools.jdi.VirtualMachineManagerService
{
	@:overload public static function virtualMachineManager() : com.sun.jdi.VirtualMachineManager;
	
	@:overload private function new() : Void;
	
	@:overload public function defaultConnector() : com.sun.jdi.connect.LaunchingConnector;
	
	@:overload public function setDefaultConnector(connector : com.sun.jdi.connect.LaunchingConnector) : Void;
	
	@:overload public function launchingConnectors() : java.util.List<com.sun.jdi.connect.LaunchingConnector>;
	
	@:overload public function attachingConnectors() : java.util.List<com.sun.jdi.connect.AttachingConnector>;
	
	@:overload public function listeningConnectors() : java.util.List<com.sun.jdi.connect.ListeningConnector>;
	
	@:overload public function allConnectors() : java.util.List<com.sun.jdi.connect.Connector>;
	
	@:overload public function connectedVirtualMachines() : java.util.List<com.sun.jdi.VirtualMachine>;
	
	@:overload public function addConnector(connector : com.sun.jdi.connect.Connector) : Void;
	
	@:overload public function removeConnector(connector : com.sun.jdi.connect.Connector) : Void;
	
	@:overload @:synchronized public function createVirtualMachine(connection : com.sun.jdi.connect.spi.Connection, process : java.lang.Process) : com.sun.jdi.VirtualMachine;
	
	@:overload public function createVirtualMachine(connection : com.sun.jdi.connect.spi.Connection) : com.sun.jdi.VirtualMachine;
	
	@:overload public function addVirtualMachine(vm : com.sun.jdi.VirtualMachine) : Void;
	
	@:overload public function majorInterfaceVersion() : Int;
	
	@:overload public function minorInterfaceVersion() : Int;
	
	
}

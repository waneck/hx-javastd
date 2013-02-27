package sun.management;
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
extern class ConnectorAddressLink
{
	/**
	* Exports the specified connector address to the instrumentation buffer
	* so that it can be read by this or other Java virtual machines running
	* on the same system.
	*
	* @param address The connector address.
	*/
	@:overload public static function export(address : String) : Void;
	
	/**
	* Imports the connector address from the instrument buffer
	* of the specified Java virtual machine.
	*
	* @param vmid an identifier that uniquely identifies a local Java virtual
	* machine, or <code>0</code> to indicate the current Java virtual machine.
	*
	* @return the value of the connector address, or <code>null</code> if the
	* target VM has not exported a connector address.
	*
	* @throws IOException An I/O error occurred while trying to acquire the
	* instrumentation buffer.
	*/
	@:overload public static function importFrom(vmid : Int) : String;
	
	/**
	* Exports the specified remote connector address and associated
	* configuration properties to the instrumentation buffer so that
	* it can be read by this or other Java virtual machines running
	* on the same system.
	*
	* @param properties The remote connector address properties.
	*/
	@:overload public static function exportRemote(properties : java.util.Map<String, String>) : Void;
	
	/**
	* Imports the remote connector address and associated
	* configuration properties from the instrument buffer
	* of the specified Java virtual machine.
	*
	* @param vmid an identifier that uniquely identifies a local Java virtual
	* machine, or <code>0</code> to indicate the current Java virtual machine.
	*
	* @return a map containing the remote connector's properties, or an empty
	* map if the target VM has not exported the remote connector's properties.
	*
	* @throws IOException An I/O error occurred while trying to acquire the
	* instrumentation buffer.
	*/
	@:overload public static function importRemoteFrom(vmid : Int) : java.util.Map<String, String>;
	
	
}

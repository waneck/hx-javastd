package sun.jvmstat.perfdata.monitor.protocol.local;
/*
* Copyright (c) 2004, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Class for managing the LocalMonitoredVm instances on the local system.
* <p>
* This class is responsible for the mechanism that detects the active
* HotSpot Java Virtual Machines on the local host and possibly for a
* specific user. The ability to detect all possible HotSpot Java Virtual
* Machines on the local host may be limited by the permissions of the
* principal running this JVM.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class LocalVmManager
{
	/**
	* Creates a LocalVmManager instance for the local system.
	* <p>
	* Manages LocalMonitoredVm instances for which the principal
	* has appropriate permissions.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a LocalVmManager instance for the given user.
	* <p>
	* Manages LocalMonitoredVm instances for all JVMs owned by the specified
	* user.
	*
	* @param user the name of the user
	*/
	@:overload @:public public function new(user : String) : Void;
	
	/**
	* Return the current set of monitorable Java Virtual Machines.
	* <p>
	* The set returned by this method depends on the user name passed
	* to the constructor. If no user name was specified, then this
	* method will return all candidate JVMs on the system. Otherwise,
	* only the JVMs for the given user will be returned. This assumes
	* that principal associated with this JVM has the appropriate
	* permissions to access the target set of JVMs.
	*
	* @return Set - the Set of monitorable Java Virtual Machines
	*/
	@:overload @:public @:synchronized public function activeVms() : java.util.Set<Null<Int>>;
	
	
}

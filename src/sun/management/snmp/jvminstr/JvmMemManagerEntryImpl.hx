package sun.management.snmp.jvminstr;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
//// java imports
////
//// jmx imports
////
//// jdmk imports
////
/**
* The class is used for implementing the "JvmMemManagerEntry" group.
* The group is defined with the following
*/
extern class JvmMemManagerEntryImpl implements sun.management.snmp.jvmmib.JvmMemManagerEntryMBean.JvmMemManagerEntryMBean
{
	/**
	* Variable for storing the value of "JvmMemManagerIndex".
	*
	* "An index opaquely computed by the agent and which uniquely
	* identifies a Memory Manager."
	*
	*/
	private var JvmMemManagerIndex(default, null) : Int;
	
	private var manager : java.lang.management.MemoryManagerMXBean.MemoryManagerMXBean;
	
	/**
	* Constructor for the "JvmMemManagerEntry" group.
	*/
	@:overload public function new(m : java.lang.management.MemoryManagerMXBean.MemoryManagerMXBean, myindex : Int) : Void;
	
	/**
	* Getter for the "JvmMemManagerName" variable.
	*/
	@:overload public function getJvmMemManagerName() : java.lang.String.String;
	
	/**
	* Getter for the "JvmMemManagerIndex" variable.
	*/
	@:overload public function getJvmMemManagerIndex() : java.lang.Integer.Integer;
	
	/**
	* Getter for the "JvmMemManagerState" variable.
	*/
	@:overload public function getJvmMemManagerState() : sun.management.snmp.jvmmib.EnumJvmMemManagerState.EnumJvmMemManagerState;
	
	
}

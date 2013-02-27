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
* The class is used for implementing the "JvmMemGCEntry" group.
*/
extern class JvmMemGCEntryImpl implements sun.management.snmp.jvmmib.JvmMemGCEntryMBean.JvmMemGCEntryMBean
{
	/**
	* Variable for storing the value of "JvmMemManagerIndex".
	*
	* "An index opaquely computed by the agent and which uniquely
	* identifies a Memory Manager."
	*
	*/
	private var JvmMemManagerIndex(default, null) : Int;
	
	private var gcm(default, null) : java.lang.management.GarbageCollectorMXBean.GarbageCollectorMXBean;
	
	/**
	* Constructor for the "JvmMemGCEntry" group.
	*/
	@:overload public function new(gcm : java.lang.management.GarbageCollectorMXBean.GarbageCollectorMXBean, index : Int) : Void;
	
	/**
	* Getter for the "JvmMemGCTimeMs" variable.
	*/
	@:overload public function getJvmMemGCTimeMs() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemGCCount" variable.
	*/
	@:overload public function getJvmMemGCCount() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemManagerIndex" variable.
	*/
	@:overload public function getJvmMemManagerIndex() : java.lang.Integer.Integer;
	
	
}

package sun.management.snmp.jvminstr;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
//// jmx imports
////
//// jdmk imports
////
/**
* The class is used for implementing the "JvmMemory" group.
*/
extern class JvmMemoryImpl implements sun.management.snmp.jvmmib.JvmMemoryMBean.JvmMemoryMBean
{
	/**
	* Constructor for the "JvmMemory" group.
	* If the group contains a table, the entries created through an
	* SNMP SET will not be registered in Java DMK.
	*/
	@:overload public function new(myMib : SnmpMib) : Void;
	
	/**
	* Constructor for the "JvmMemory" group.
	* If the group contains a table, the entries created through an
	* SNMP SET will be AUTOMATICALLY REGISTERED in Java DMK.
	*/
	@:overload public function new(myMib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Getter for the "JvmMemoryNonHeapMaxSize" variable.
	*/
	@:overload public function getJvmMemoryNonHeapMaxSize() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemoryNonHeapCommitted" variable.
	*/
	@:overload public function getJvmMemoryNonHeapCommitted() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemoryNonHeapUsed" variable.
	*/
	@:overload public function getJvmMemoryNonHeapUsed() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemoryNonHeapInitSize" variable.
	*/
	@:overload public function getJvmMemoryNonHeapInitSize() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemoryHeapMaxSize" variable.
	*/
	@:overload public function getJvmMemoryHeapMaxSize() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemoryGCCall" variable.
	*/
	@:overload public function getJvmMemoryGCCall() : sun.management.snmp.jvmmib.EnumJvmMemoryGCCall.EnumJvmMemoryGCCall;
	
	/**
	* Setter for the "JvmMemoryGCCall" variable.
	*/
	@:overload public function setJvmMemoryGCCall(x : sun.management.snmp.jvmmib.EnumJvmMemoryGCCall.EnumJvmMemoryGCCall) : Void;
	
	/**
	* Checker for the "JvmMemoryGCCall" variable.
	*/
	@:overload public function checkJvmMemoryGCCall(x : sun.management.snmp.jvmmib.EnumJvmMemoryGCCall.EnumJvmMemoryGCCall) : Void;
	
	/**
	* Getter for the "JvmMemoryHeapCommitted" variable.
	*/
	@:overload public function getJvmMemoryHeapCommitted() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemoryGCVerboseLevel" variable.
	*/
	@:overload public function getJvmMemoryGCVerboseLevel() : sun.management.snmp.jvmmib.EnumJvmMemoryGCVerboseLevel.EnumJvmMemoryGCVerboseLevel;
	
	/**
	* Setter for the "JvmMemoryGCVerboseLevel" variable.
	*/
	@:overload public function setJvmMemoryGCVerboseLevel(x : sun.management.snmp.jvmmib.EnumJvmMemoryGCVerboseLevel.EnumJvmMemoryGCVerboseLevel) : Void;
	
	/**
	* Checker for the "JvmMemoryGCVerboseLevel" variable.
	*/
	@:overload public function checkJvmMemoryGCVerboseLevel(x : sun.management.snmp.jvmmib.EnumJvmMemoryGCVerboseLevel.EnumJvmMemoryGCVerboseLevel) : Void;
	
	/**
	* Getter for the "JvmMemoryHeapUsed" variable.
	*/
	@:overload public function getJvmMemoryHeapUsed() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemoryHeapInitSize" variable.
	*/
	@:overload public function getJvmMemoryHeapInitSize() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemoryPendingFinalCount" variable.
	*/
	@:overload public function getJvmMemoryPendingFinalCount() : java.lang.Long.Long;
	
	
}

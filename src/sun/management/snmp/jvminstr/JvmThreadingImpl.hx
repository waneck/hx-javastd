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
* The class is used for implementing the "JvmThreading" group.
*/
extern class JvmThreadingImpl implements sun.management.snmp.jvmmib.JvmThreadingMBean.JvmThreadingMBean
{
	/**
	* Constructor for the "JvmThreading" group.
	* If the group contains a table, the entries created through an SNMP SET
	* will not be registered in Java DMK.
	*/
	@:overload public function new(myMib : SnmpMib) : Void;
	
	/**
	* Constructor for the "JvmThreading" group.
	* If the group contains a table, the entries created through an SNMP SET
	* will be AUTOMATICALLY REGISTERED in Java DMK.
	*/
	@:overload public function new(myMib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Getter for the "JvmThreadCpuTimeMonitoring" variable.
	*/
	@:overload public function getJvmThreadCpuTimeMonitoring() : sun.management.snmp.jvmmib.EnumJvmThreadCpuTimeMonitoring.EnumJvmThreadCpuTimeMonitoring;
	
	/**
	* Setter for the "JvmThreadCpuTimeMonitoring" variable.
	*/
	@:overload public function setJvmThreadCpuTimeMonitoring(x : sun.management.snmp.jvmmib.EnumJvmThreadCpuTimeMonitoring.EnumJvmThreadCpuTimeMonitoring) : Void;
	
	/**
	* Checker for the "JvmThreadCpuTimeMonitoring" variable.
	*/
	@:overload public function checkJvmThreadCpuTimeMonitoring(x : sun.management.snmp.jvmmib.EnumJvmThreadCpuTimeMonitoring.EnumJvmThreadCpuTimeMonitoring) : Void;
	
	/**
	* Getter for the "JvmThreadContentionMonitoring" variable.
	*/
	@:overload public function getJvmThreadContentionMonitoring() : sun.management.snmp.jvmmib.EnumJvmThreadContentionMonitoring.EnumJvmThreadContentionMonitoring;
	
	/**
	* Setter for the "JvmThreadContentionMonitoring" variable.
	*/
	@:overload public function setJvmThreadContentionMonitoring(x : sun.management.snmp.jvmmib.EnumJvmThreadContentionMonitoring.EnumJvmThreadContentionMonitoring) : Void;
	
	/**
	* Checker for the "JvmThreadContentionMonitoring" variable.
	*/
	@:overload public function checkJvmThreadContentionMonitoring(x : sun.management.snmp.jvmmib.EnumJvmThreadContentionMonitoring.EnumJvmThreadContentionMonitoring) : Void;
	
	/**
	* Getter for the "JvmThreadTotalStartedCount" variable.
	*/
	@:overload public function getJvmThreadTotalStartedCount() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadPeakCount" variable.
	*/
	@:overload public function getJvmThreadPeakCount() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadDaemonCount" variable.
	*/
	@:overload public function getJvmThreadDaemonCount() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadCount" variable.
	*/
	@:overload public function getJvmThreadCount() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadPeakCountReset" variable.
	*/
	@:overload @:synchronized public function getJvmThreadPeakCountReset() : java.lang.Long.Long;
	
	/**
	* Setter for the "JvmThreadPeakCountReset" variable.
	*/
	@:overload @:synchronized public function setJvmThreadPeakCountReset(x : java.lang.Long.Long) : Void;
	
	/**
	* Checker for the "JvmThreadPeakCountReset" variable.
	*/
	@:overload public function checkJvmThreadPeakCountReset(x : java.lang.Long.Long) : Void;
	
	
}

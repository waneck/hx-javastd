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
//// java imports
////
//// jmx imports
////
//// jdmk imports
////
/**
* The class is used for implementing the "JvmRuntime" group.
*/
extern class JvmRuntimeImpl implements sun.management.snmp.jvmmib.JvmRuntimeMBean.JvmRuntimeMBean
{
	/**
	* Constructor for the "JvmRuntime" group.
	* If the group contains a table, the entries created through an SNMP SET
	* will not be registered in Java DMK.
	*/
	@:overload public function new(myMib : SnmpMib) : Void;
	
	/**
	* Constructor for the "JvmRuntime" group.
	* If the group contains a table, the entries created through an SNMP SET
	* will be AUTOMATICALLY REGISTERED in Java DMK.
	*/
	@:overload public function new(myMib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Getter for the "JvmRTSpecVendor" variable.
	*/
	@:overload public function getJvmRTSpecVendor() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTSpecName" variable.
	*/
	@:overload public function getJvmRTSpecName() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTVersion" variable.
	*/
	@:overload public function getJvmRTVMVersion() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTVendor" variable.
	*/
	@:overload public function getJvmRTVMVendor() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTManagementSpecVersion" variable.
	*/
	@:overload public function getJvmRTManagementSpecVersion() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTVMName" variable.
	*/
	@:overload public function getJvmRTVMName() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTInputArgsCount" variable.
	*/
	@:overload public function getJvmRTInputArgsCount() : java.lang.Integer.Integer;
	
	/**
	* Getter for the "JvmRTBootClassPathSupport" variable.
	*/
	@:overload public function getJvmRTBootClassPathSupport() : sun.management.snmp.jvmmib.EnumJvmRTBootClassPathSupport.EnumJvmRTBootClassPathSupport;
	
	/**
	* Getter for the "JvmRTUptimeMs" variable.
	*/
	@:overload public function getJvmRTUptimeMs() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmRTStartTimeMs" variable.
	*/
	@:overload public function getJvmRTStartTimeMs() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmRTSpecVersion" variable.
	*/
	@:overload public function getJvmRTSpecVersion() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTName" variable.
	*/
	@:overload public function getJvmRTName() : java.lang.String.String;
	
	
}

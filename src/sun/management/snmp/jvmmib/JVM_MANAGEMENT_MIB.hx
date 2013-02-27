package sun.management.snmp.jvmmib;
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
////
//// Generated by mibgen version 5.0 (06/02/03) when compiling JVM-MANAGEMENT-MIB in standard metadata mode.
////
//// java imports
////
//// jmx imports
////
//// jdmk imports
////
/**
* The class is used for representing "JVM-MANAGEMENT-MIB".
* You can edit the file if you want to modify the behaviour of the MIB.
*/
extern class JVM_MANAGEMENT_MIB extends SnmpMib implements java.io.Serializable.Serializable
{
	/**
	* Default constructor. Initialize the Mib tree.
	*/
	@:overload public function new() : Void;
	
	/**
	* Initialization of the MIB with no registration in Java DMK.
	*/
	@:overload public function init() : Void;
	
	/**
	* Initialization of the MIB with AUTOMATIC REGISTRATION in Java DMK.
	*/
	@:overload public function preRegister(server : javax.management.MBeanServer.MBeanServer, name : javax.management.ObjectName.ObjectName) : javax.management.ObjectName.ObjectName;
	
	/**
	* Initialization of the MIB with no registration in Java DMK.
	*/
	@:overload public function populate(server : javax.management.MBeanServer.MBeanServer, name : javax.management.ObjectName.ObjectName) : Void;
	
	/**
	* Initialization of the "JvmOS" group.
	*
	* To disable support of this group, redefine the
	* "createJvmOSMetaNode()" factory method, and make it return "null"
	*
	* @param server    MBeanServer for this group (may be null)
	*
	**/
	@:overload private function initJvmOS(server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Factory method for "JvmOS" group metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param groupName Name of the group ("JvmOS")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmOS" group (JvmOSMeta)
	*
	**/
	@:overload private function createJvmOSMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmOSMeta.JvmOSMeta;
	
	/**
	* Factory method for "JvmOS" group MBean.
	*
	* You can redefine this method if you need to replace the default
	* generated MBean class with your own customized class.
	*
	* @param groupName Name of the group ("JvmOS")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the MBean class generated for the
	*         "JvmOS" group (JvmOS)
	*
	* Note that when using standard metadata,
	* the returned object must implement the "JvmOSMBean"
	* interface.
	**/
	@:overload @:abstract private function createJvmOSMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
	/**
	* Initialization of the "JvmCompilation" group.
	*
	* To disable support of this group, redefine the
	* "createJvmCompilationMetaNode()" factory method, and make it return "null"
	*
	* @param server    MBeanServer for this group (may be null)
	*
	**/
	@:overload private function initJvmCompilation(server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Factory method for "JvmCompilation" group metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param groupName Name of the group ("JvmCompilation")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmCompilation" group (JvmCompilationMeta)
	*
	**/
	@:overload private function createJvmCompilationMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmCompilationMeta.JvmCompilationMeta;
	
	/**
	* Factory method for "JvmCompilation" group MBean.
	*
	* You can redefine this method if you need to replace the default
	* generated MBean class with your own customized class.
	*
	* @param groupName Name of the group ("JvmCompilation")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the MBean class generated for the
	*         "JvmCompilation" group (JvmCompilation)
	*
	* Note that when using standard metadata,
	* the returned object must implement the "JvmCompilationMBean"
	* interface.
	**/
	@:overload @:abstract private function createJvmCompilationMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
	/**
	* Initialization of the "JvmRuntime" group.
	*
	* To disable support of this group, redefine the
	* "createJvmRuntimeMetaNode()" factory method, and make it return "null"
	*
	* @param server    MBeanServer for this group (may be null)
	*
	**/
	@:overload private function initJvmRuntime(server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Factory method for "JvmRuntime" group metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param groupName Name of the group ("JvmRuntime")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmRuntime" group (JvmRuntimeMeta)
	*
	**/
	@:overload private function createJvmRuntimeMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmRuntimeMeta.JvmRuntimeMeta;
	
	/**
	* Factory method for "JvmRuntime" group MBean.
	*
	* You can redefine this method if you need to replace the default
	* generated MBean class with your own customized class.
	*
	* @param groupName Name of the group ("JvmRuntime")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the MBean class generated for the
	*         "JvmRuntime" group (JvmRuntime)
	*
	* Note that when using standard metadata,
	* the returned object must implement the "JvmRuntimeMBean"
	* interface.
	**/
	@:overload @:abstract private function createJvmRuntimeMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
	/**
	* Initialization of the "JvmThreading" group.
	*
	* To disable support of this group, redefine the
	* "createJvmThreadingMetaNode()" factory method, and make it return "null"
	*
	* @param server    MBeanServer for this group (may be null)
	*
	**/
	@:overload private function initJvmThreading(server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Factory method for "JvmThreading" group metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param groupName Name of the group ("JvmThreading")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmThreading" group (JvmThreadingMeta)
	*
	**/
	@:overload private function createJvmThreadingMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmThreadingMeta.JvmThreadingMeta;
	
	/**
	* Factory method for "JvmThreading" group MBean.
	*
	* You can redefine this method if you need to replace the default
	* generated MBean class with your own customized class.
	*
	* @param groupName Name of the group ("JvmThreading")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the MBean class generated for the
	*         "JvmThreading" group (JvmThreading)
	*
	* Note that when using standard metadata,
	* the returned object must implement the "JvmThreadingMBean"
	* interface.
	**/
	@:overload @:abstract private function createJvmThreadingMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
	/**
	* Initialization of the "JvmMemory" group.
	*
	* To disable support of this group, redefine the
	* "createJvmMemoryMetaNode()" factory method, and make it return "null"
	*
	* @param server    MBeanServer for this group (may be null)
	*
	**/
	@:overload private function initJvmMemory(server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Factory method for "JvmMemory" group metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param groupName Name of the group ("JvmMemory")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemory" group (JvmMemoryMeta)
	*
	**/
	@:overload private function createJvmMemoryMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemoryMeta.JvmMemoryMeta;
	
	/**
	* Factory method for "JvmMemory" group MBean.
	*
	* You can redefine this method if you need to replace the default
	* generated MBean class with your own customized class.
	*
	* @param groupName Name of the group ("JvmMemory")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the MBean class generated for the
	*         "JvmMemory" group (JvmMemory)
	*
	* Note that when using standard metadata,
	* the returned object must implement the "JvmMemoryMBean"
	* interface.
	**/
	@:overload @:abstract private function createJvmMemoryMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
	/**
	* Initialization of the "JvmClassLoading" group.
	*
	* To disable support of this group, redefine the
	* "createJvmClassLoadingMetaNode()" factory method, and make it return "null"
	*
	* @param server    MBeanServer for this group (may be null)
	*
	**/
	@:overload private function initJvmClassLoading(server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Factory method for "JvmClassLoading" group metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param groupName Name of the group ("JvmClassLoading")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmClassLoading" group (JvmClassLoadingMeta)
	*
	**/
	@:overload private function createJvmClassLoadingMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmClassLoadingMeta.JvmClassLoadingMeta;
	
	/**
	* Factory method for "JvmClassLoading" group MBean.
	*
	* You can redefine this method if you need to replace the default
	* generated MBean class with your own customized class.
	*
	* @param groupName Name of the group ("JvmClassLoading")
	* @param groupOid  OID of this group
	* @param groupObjname ObjectName for this group (may be null)
	* @param server    MBeanServer for this group (may be null)
	*
	* @return An instance of the MBean class generated for the
	*         "JvmClassLoading" group (JvmClassLoading)
	*
	* Note that when using standard metadata,
	* the returned object must implement the "JvmClassLoadingMBean"
	* interface.
	**/
	@:overload @:abstract private function createJvmClassLoadingMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
	@:overload public function registerTableMeta(name : java.lang.String.String, meta : com.sun.jmx.snmp.agent.SnmpMibTable.SnmpMibTable) : Void;
	
	@:overload public function getRegisteredTableMeta(name : java.lang.String.String) : com.sun.jmx.snmp.agent.SnmpMibTable.SnmpMibTable;
	
	@:overload public function getStandardObjectServer() : com.sun.jmx.snmp.agent.SnmpStandardObjectServer.SnmpStandardObjectServer;
	
	private var objectserver : com.sun.jmx.snmp.agent.SnmpStandardObjectServer.SnmpStandardObjectServer;
	
	private var metadatas(default, null) : java.util.Hashtable.Hashtable<java.lang.String.String, com.sun.jmx.snmp.agent.SnmpMibTable.SnmpMibTable>;
	
	
}

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
////java management imports
extern class JVM_MANAGEMENT_MIB_IMPL extends sun.management.snmp.jvmmib.JVM_MANAGEMENT_MIB.JVM_MANAGEMENT_MIB
{
	@:overload public static function getOidTable() : SnmpOidTable;
	
	/**
	* Instantiate a JVM MIB intrusmentation.
	* A <CODE>NotificationListener</CODE> is added to the <CODE>MemoryMXBean</CODE>
	* <CODE>NotificationEmitter</CODE>
	*/
	@:overload public function new() : Void;
	
	/**
	* Add a notification target.
	* @param target The target to add
	* @throws IllegalArgumentException If target parameter is null.
	*/
	@:overload @:synchronized public function addTarget(target : sun.management.snmp.jvminstr.NotificationTarget.NotificationTarget) : Void;
	
	/**
	* Remove notification listener.
	*/
	@:overload public function terminate() : Void;
	
	/**
	* Add notification targets.
	* @param targets A list of
	* <CODE>sun.management.snmp.jvminstr.NotificationTarget</CODE>
	* @throws IllegalArgumentException If targets parameter is null.
	*/
	@:overload @:synchronized public function addTargets(targets : java.util.List.List<sun.management.snmp.jvminstr.NotificationTarget.NotificationTarget>) : Void;
	
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
	@:overload override private function createJvmMemoryMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
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
	@:overload override private function createJvmMemoryMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemoryMeta.JvmMemoryMeta;
	
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
	@:overload override private function createJvmThreadingMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmThreadingMeta.JvmThreadingMeta;
	
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
	@:overload override private function createJvmThreadingMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
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
	@:overload override private function createJvmRuntimeMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmRuntimeMeta.JvmRuntimeMeta;
	
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
	@:overload override private function createJvmRuntimeMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
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
	@:overload override private function createJvmCompilationMetaNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmCompilationMeta.JvmCompilationMeta;
	
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
	@:overload override private function createJvmCompilationMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
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
	@:overload override private function createJvmOSMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
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
	@:overload override private function createJvmClassLoadingMBean(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjname : javax.management.ObjectName.ObjectName, server : javax.management.MBeanServer.MBeanServer) : java.lang.Object.Object;
	
	@:overload public function validity() : haxe.Int64;
	
	
}
/**
* Handler waiting for memory <CODE>Notification</CODE>.
* Translate each JMX notification in SNMP trap.
*/
@:native('sun$management$snmp$jvminstr$JVM_MANAGEMENT_MIB_IMPL$NotificationHandler') @:internal extern class JVM_MANAGEMENT_MIB_IMPL_NotificationHandler implements javax.management.NotificationListener.NotificationListener
{
	@:overload public function handleNotification(notification : javax.management.Notification.Notification, handback : java.lang.Object.Object) : Void;
	
	
}

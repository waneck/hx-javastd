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
* The class is used for representing SNMP metadata for the "JvmMemory" group.
*/
extern class JvmMemoryMetaImpl extends sun.management.snmp.jvmmib.JvmMemoryMeta.JvmMemoryMeta
{
	/**
	* Constructor for the metadata associated to "JvmMemory".
	*/
	@:overload public function new(myMib : SnmpMib, objserv : com.sun.jmx.snmp.agent.SnmpStandardObjectServer.SnmpStandardObjectServer) : Void;
	
	/**
	* Factory method for "JvmMemManagerTable" table metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param tableName Name of the table object ("JvmMemManagerTable")
	* @param groupName Name of the group to which this table belong
	*        ("JvmMemory")
	* @param mib The SnmpMib object in which this table is registered
	* @param server MBeanServer for this table entries (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemManagerTable" table (JvmMemManagerTableMeta)
	*
	**/
	@:overload override private function createJvmMemManagerTableMetaNode(tableName : java.lang.String.String, groupName : java.lang.String.String, mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemManagerTableMeta.JvmMemManagerTableMeta;
	
	/**
	* Factory method for "JvmMemGCTable" table metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param tableName Name of the table object ("JvmMemGCTable")
	* @param groupName Name of the group to which this table belong
	*        ("JvmMemory")
	* @param mib The SnmpMib object in which this table is registered
	* @param server MBeanServer for this table entries (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemGCTable" table (JvmMemGCTableMeta)
	*
	**/
	@:overload override private function createJvmMemGCTableMetaNode(tableName : java.lang.String.String, groupName : java.lang.String.String, mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemGCTableMeta.JvmMemGCTableMeta;
	
	/**
	* Factory method for "JvmMemPoolTable" table metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param tableName Name of the table object ("JvmMemPoolTable")
	* @param groupName Name of the group to which this table belong
	*        ("JvmMemory")
	* @param mib The SnmpMib object in which this table is registered
	* @param server MBeanServer for this table entries (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemPoolTable" table (JvmMemPoolTableMeta)
	*
	**/
	@:overload override private function createJvmMemPoolTableMetaNode(tableName : java.lang.String.String, groupName : java.lang.String.String, mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemPoolTableMeta.JvmMemPoolTableMeta;
	
	/**
	* Factory method for "JvmMemMgrPoolRelTable" table metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param tableName Name of the table object ("JvmMemMgrPoolRelTable")
	* @param groupName Name of the group to which this table belong
	*        ("JvmMemory")
	* @param mib The SnmpMib object in which this table is registered
	* @param server MBeanServer for this table entries (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemMgrPoolRelTable" table (JvmMemMgrPoolRelTableMeta)
	*
	**/
	@:overload override private function createJvmMemMgrPoolRelTableMetaNode(tableName : java.lang.String.String, groupName : java.lang.String.String, mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemMgrPoolRelTableMeta.JvmMemMgrPoolRelTableMeta;
	
	
}

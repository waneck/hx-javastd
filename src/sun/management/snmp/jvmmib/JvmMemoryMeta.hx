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
* The class is used for representing SNMP metadata for the "JvmMemory" group.
* The group is defined with the following oid: 1.3.6.1.4.1.42.2.145.3.163.1.1.2.
*/
extern class JvmMemoryMeta extends com.sun.jmx.snmp.agent.SnmpMibGroup.SnmpMibGroup implements java.io.Serializable.Serializable implements com.sun.jmx.snmp.agent.SnmpStandardMetaServer.SnmpStandardMetaServer
{
	/**
	* Constructor for the metadata associated to "JvmMemory".
	*/
	@:overload public function new(myMib : SnmpMib, objserv : com.sun.jmx.snmp.agent.SnmpStandardObjectServer.SnmpStandardObjectServer) : Void;
	
	/**
	* Get the value of a scalar variable
	*/
	@:overload public function get(_var : haxe.Int64, data : java.lang.Object.Object) : com.sun.jmx.snmp.SnmpValue.SnmpValue;
	
	/**
	* Set the value of a scalar variable
	*/
	@:overload public function set(x : com.sun.jmx.snmp.SnmpValue.SnmpValue, _var : haxe.Int64, data : java.lang.Object.Object) : com.sun.jmx.snmp.SnmpValue.SnmpValue;
	
	/**
	* Check the value of a scalar variable
	*/
	@:overload public function check(x : com.sun.jmx.snmp.SnmpValue.SnmpValue, _var : haxe.Int64, data : java.lang.Object.Object) : Void;
	
	/**
	* Allow to bind the metadata description to a specific object.
	*/
	@:overload private function setInstance(_var : sun.management.snmp.jvmmib.JvmMemoryMBean.JvmMemoryMBean) : Void;
	
	@:overload override public function get(req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	@:overload override public function set(req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	@:overload override public function check(req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	/**
	* Returns true if "arc" identifies a scalar object.
	*/
	@:overload override public function isVariable(arc : haxe.Int64) : Bool;
	
	/**
	* Returns true if "arc" identifies a readable scalar object.
	*/
	@:overload override public function isReadable(arc : haxe.Int64) : Bool;
	
	@:overload override public function skipVariable(_var : haxe.Int64, data : java.lang.Object.Object, pduVersion : Int) : Bool;
	
	/**
	* Return the name of the attribute corresponding to the SNMP variable identified by "id".
	*/
	@:overload public function getAttributeName(id : haxe.Int64) : java.lang.String.String;
	
	/**
	* Returns true if "arc" identifies a table object.
	*/
	@:overload override public function isTable(arc : haxe.Int64) : Bool;
	
	/**
	* Returns the table object identified by "arc".
	*/
	@:overload override public function getTable(arc : haxe.Int64) : com.sun.jmx.snmp.agent.SnmpMibTable.SnmpMibTable;
	
	/**
	* Register the group's SnmpMibTable objects with the meta-data.
	*/
	@:overload public function registerTableNodes(mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Factory method for "JvmMemMgrPoolRelTable" table metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param tableName Name of the table object ("JvmMemMgrPoolRelTable")
	* @param groupName Name of the group to which this table belong ("JvmMemory")
	* @param mib The SnmpMib object in which this table is registered
	* @param server MBeanServer for this table entries (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemMgrPoolRelTable" table (JvmMemMgrPoolRelTableMeta)
	*
	**/
	@:overload private function createJvmMemMgrPoolRelTableMetaNode(tableName : java.lang.String.String, groupName : java.lang.String.String, mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemMgrPoolRelTableMeta.JvmMemMgrPoolRelTableMeta;
	
	/**
	* Factory method for "JvmMemPoolTable" table metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param tableName Name of the table object ("JvmMemPoolTable")
	* @param groupName Name of the group to which this table belong ("JvmMemory")
	* @param mib The SnmpMib object in which this table is registered
	* @param server MBeanServer for this table entries (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemPoolTable" table (JvmMemPoolTableMeta)
	*
	**/
	@:overload private function createJvmMemPoolTableMetaNode(tableName : java.lang.String.String, groupName : java.lang.String.String, mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemPoolTableMeta.JvmMemPoolTableMeta;
	
	/**
	* Factory method for "JvmMemGCTable" table metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param tableName Name of the table object ("JvmMemGCTable")
	* @param groupName Name of the group to which this table belong ("JvmMemory")
	* @param mib The SnmpMib object in which this table is registered
	* @param server MBeanServer for this table entries (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemGCTable" table (JvmMemGCTableMeta)
	*
	**/
	@:overload private function createJvmMemGCTableMetaNode(tableName : java.lang.String.String, groupName : java.lang.String.String, mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemGCTableMeta.JvmMemGCTableMeta;
	
	/**
	* Factory method for "JvmMemManagerTable" table metadata class.
	*
	* You can redefine this method if you need to replace the default
	* generated metadata class with your own customized class.
	*
	* @param tableName Name of the table object ("JvmMemManagerTable")
	* @param groupName Name of the group to which this table belong ("JvmMemory")
	* @param mib The SnmpMib object in which this table is registered
	* @param server MBeanServer for this table entries (may be null)
	*
	* @return An instance of the metadata class generated for the
	*         "JvmMemManagerTable" table (JvmMemManagerTableMeta)
	*
	**/
	@:overload private function createJvmMemManagerTableMetaNode(tableName : java.lang.String.String, groupName : java.lang.String.String, mib : SnmpMib, server : javax.management.MBeanServer.MBeanServer) : sun.management.snmp.jvmmib.JvmMemManagerTableMeta.JvmMemManagerTableMeta;
	
	private var node : sun.management.snmp.jvmmib.JvmMemoryMBean.JvmMemoryMBean;
	
	private var objectserver : com.sun.jmx.snmp.agent.SnmpStandardObjectServer.SnmpStandardObjectServer;
	
	private var tableJvmMemMgrPoolRelTable : sun.management.snmp.jvmmib.JvmMemMgrPoolRelTableMeta.JvmMemMgrPoolRelTableMeta;
	
	private var tableJvmMemPoolTable : sun.management.snmp.jvmmib.JvmMemPoolTableMeta.JvmMemPoolTableMeta;
	
	private var tableJvmMemGCTable : sun.management.snmp.jvmmib.JvmMemGCTableMeta.JvmMemGCTableMeta;
	
	private var tableJvmMemManagerTable : sun.management.snmp.jvmmib.JvmMemManagerTableMeta.JvmMemManagerTableMeta;
	
	
}

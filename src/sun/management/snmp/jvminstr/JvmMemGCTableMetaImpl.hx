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
* The class is used for implementing the "JvmMemGCTable" table.
*/
extern class JvmMemGCTableMetaImpl extends sun.management.snmp.jvmmib.JvmMemGCTableMeta.JvmMemGCTableMeta
{
	/**
	* Constructor for the table. Initialize metadata for "JvmMemGCTableMeta".
	*/
	@:overload public function new(myMib : SnmpMib, objserv : com.sun.jmx.snmp.agent.SnmpStandardObjectServer.SnmpStandardObjectServer) : Void;
	
	/**
	* Returns the JvmMemManagerTable SnmpTableHandler
	**/
	@:overload private function getHandler(userData : java.lang.Object.Object) : sun.management.snmp.util.SnmpTableHandler.SnmpTableHandler;
	
	@:overload override private function getNextOid(userData : java.lang.Object.Object) : SnmpOid;
	
	@:overload override private function getNextOid(oid : SnmpOid, userData : java.lang.Object.Object) : SnmpOid;
	
	@:overload override private function contains(oid : SnmpOid, userData : java.lang.Object.Object) : Bool;
	
	@:overload override public function getEntry(oid : SnmpOid) : java.lang.Object.Object;
	
	
}
/**
* This class acts as a filter over the SnmpTableHandler
* used for the JvmMemoryManagerTable. It filters out
* (skip) all MemoryManagerMXBean that are not instances of
* GarbageCollectorMXBean so that only Garbage Collectors are
* seen. This is a better solution than relying on
* ManagementFactory.getGarbageCollectorMXBeans() because it makes it
* possible to guarantee the consistency betwen the MemoryManager table
* and the GCTable since both will be sharing the same cache.
**/
@:native('sun$management$snmp$jvminstr$JvmMemGCTableMetaImpl$GCTableFilter') extern class JvmMemGCTableMetaImpl_GCTableFilter
{
	/**
	* Returns the index that immediately follows the given
	* <var>index</var>. The returned index is strictly greater
	* than the given <var>index</var>, and is contained in the table.
	* <br>If the given <var>index</var> is null, returns the first
	* index in the table.
	* <br>If there are no index after the given <var>index</var>,
	* returns null.
	* This method is an optimization for the case where the
	* SnmpTableHandler is in fact an instance of SnmpCachedData.
	**/
	@:overload public function getNext(datas : sun.management.snmp.util.SnmpCachedData.SnmpCachedData, index : SnmpOid) : SnmpOid;
	
	/**
	* Returns the index that immediately follows the given
	* <var>index</var>. The returned index is strictly greater
	* than the given <var>index</var>, and is contained in the table.
	* <br>If the given <var>index</var> is null, returns the first
	* index in the table.
	* <br>If there are no index after the given <var>index</var>,
	* returns null.
	**/
	@:overload public function getNext(handler : sun.management.snmp.util.SnmpTableHandler.SnmpTableHandler, index : SnmpOid) : SnmpOid;
	
	/**
	* Returns the data associated with the given index.
	* If the given index is not found, null is returned.
	* Note that returning null does not necessarily means that
	* the index was not found.
	**/
	@:overload public function getData(handler : sun.management.snmp.util.SnmpTableHandler.SnmpTableHandler, index : SnmpOid) : java.lang.Object.Object;
	
	/**
	* Returns true if the given <var>index</var> is present.
	**/
	@:overload public function contains(handler : sun.management.snmp.util.SnmpTableHandler.SnmpTableHandler, index : SnmpOid) : Bool;
	
	
}

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
* The class is used for implementing the "JvmMemPoolTable" group.
*/
extern class JvmMemPoolTableMetaImpl extends sun.management.snmp.jvmmib.JvmMemPoolTableMeta.JvmMemPoolTableMeta
{
	private var cache : sun.management.snmp.util.SnmpTableCache.SnmpTableCache;
	
	/**
	* Constructor for the table.
	* Initialize metadata for "JvmMemPoolTableMeta".
	*/
	@:overload public function new(myMib : SnmpMib, objserv : com.sun.jmx.snmp.agent.SnmpStandardObjectServer.SnmpStandardObjectServer) : Void;
	
	@:overload override private function getNextOid(userData : java.lang.Object.Object) : SnmpOid;
	
	@:overload override private function getNextOid(oid : SnmpOid, userData : java.lang.Object.Object) : SnmpOid;
	
	@:overload override private function contains(oid : SnmpOid, userData : java.lang.Object.Object) : Bool;
	
	@:overload override public function getEntry(oid : SnmpOid) : java.lang.Object.Object;
	
	/**
	* Get the SnmpTableHandler that holds the jvmMemPoolTable data.
	* First look it up in the request contextual cache, and if it is
	* not found, obtain it from the weak cache.
	* <br>The request contextual cache will be released at the end of the
	* current requests, and is used only to process this request.
	* <br>The weak cache is shared by all requests, and is only
	* recomputed when it is found to be obsolete.
	* <br>Note that the data put in the request contextual cache is
	*     never considered to be obsolete, in order to preserve data
	*     coherency.
	**/
	@:overload private function getHandler(userData : java.lang.Object.Object) : sun.management.snmp.util.SnmpTableHandler.SnmpTableHandler;
	
	
}
/**
* A concrete implementation of {@link SnmpNamedListTableCache}, for the
* jvmMemPoolTable.
**/
@:native('sun$management$snmp$jvminstr$JvmMemPoolTableMetaImpl$JvmMemPoolTableCache') @:internal extern class JvmMemPoolTableMetaImpl_JvmMemPoolTableCache extends sun.management.snmp.util.SnmpNamedListTableCache.SnmpNamedListTableCache
{
	/**
	* Use the MemoryPoolMXBean name as key.
	* @param context A {@link TreeMap} as allocated by the parent
	*        {@link SnmpNamedListTableCache} class.
	* @param rawDatas List of {@link MemoryPoolMXBean}, as
	*        returned by
	* <code>ManagementFactory.getMemoryPoolMXBeans()</code>
	* @param rank The <var>rank</var> of <var>item</var> in the list.
	* @param item The <var>rank</var><super>th</super>
	*        <code>MemoryPoolMXBean</code> in the list.
	* @return  <code>((MemoryPoolMXBean)item).getName()</code>
	**/
	@:overload override private function getKey(context : java.lang.Object.Object, rawDatas : java.util.List.List<Dynamic>, rank : Int, item : java.lang.Object.Object) : java.lang.String.String;
	
	/**
	* Call <code>getTableDatas(JvmContextFactory.getUserData())</code>.
	**/
	@:overload override public function getTableHandler() : sun.management.snmp.util.SnmpTableHandler.SnmpTableHandler;
	
	/**
	* Return the key used to cache the raw data of this table.
	**/
	@:overload override private function getRawDatasKey() : java.lang.String.String;
	
	/**
	* Call ManagementFactory.getMemoryPoolMXBeans() to
	* load the raw data of this table.
	**/
	@:overload override private function loadRawDatas(userData : java.util.Map.Map<Dynamic, Dynamic>) : java.util.List.List<Dynamic>;
	
	
}

package com.sun.jmx.snmp.agent;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
/**
* This list is used in order to construct the OID during the getnext.
* The constructed oid is checked by the checker AcmChecker.
*/
@:internal extern class LongList
{
	public static var DEFAULT_CAPACITY : Int;
	
	public static var DEFAULT_INCREMENT : Int;
	
	/**
	* The list content. Any access to this variable must be protected
	* by a synchronized block on the LongList object.
	* Only read-only action should be performed on this object.
	**/
	public var list : java.NativeArray<haxe.Int64>;
	
	/**
	* Same behaviour than size() in {@link java.util.List}.
	**/
	@:overload @:final public function size() : Int;
	
	/**
	* Same behaviour than add(long o) in {@link java.util.List}.
	* Any access to this method should be protected in a synchronized
	* block on the LongList object.
	**/
	@:overload @:final public function add(o : haxe.Int64) : Bool;
	
	/**
	* Same behaviour than add(int index, long o) in
	* {@link java.util.List}.
	* Any access to this method should be protected in a synchronized
	* block on the LongList object.
	**/
	@:overload @:final public function add(index : Int, o : haxe.Int64) : Void;
	
	/**
	* Adds <var>count</var> elements to the list.
	* @param at index at which the elements must be inserted. The
	*        first element will be inserted at this index.
	* @param src  An array containing the elements we want to insert.
	* @param from Index of the first element from <var>src</var> that
	*        must be inserted.
	* @param count number of elements to insert.
	* Any access to this method should be protected in a synchronized
	* block on the LongList object.
	**/
	@:overload @:final public function add(at : Int, src : java.NativeArray<haxe.Int64>, from : Int, count : Int) : Void;
	
	/**
	* Any access to this method should be protected in a synchronized
	* block on the LongList object.
	**/
	@:overload @:final public function remove(from : Int, count : Int) : haxe.Int64;
	
	/**
	* Same behaviour than remove(int index) in {@link java.util.List}.
	* Any access to this method should be protected in a synchronized
	* block on the LongList object.
	**/
	@:overload @:final public function remove(index : Int) : haxe.Int64;
	
	/**
	* Same behaviour than the toArray(long[] a) method in
	* {@link java.util.List}.
	* Any access to this method should be protected in a synchronized
	* block on the LongList object.
	**/
	@:overload @:final public function toArray(a : java.NativeArray<haxe.Int64>) : java.NativeArray<haxe.Int64>;
	
	/**
	* Same behaviour than the toArray() method in
	* {@link java.util.List}.
	* Any access to this method should be protected in a synchronized
	* block on the LongList object.
	**/
	@:overload @:final public function toArray() : java.NativeArray<haxe.Int64>;
	
	
}
@:internal extern class AcmChecker
{
	
}
extern class SnmpMib extends com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent implements java.io.Serializable.Serializable
{
	/**
	* Default constructor.
	* Initializes the OID tree.
	*/
	@:overload public function new() : Void;
	
	/**
	* <p>
	* This callback should return the OID associated to the group
	* identified by the given <code>groupName</code>.
	* </p>
	*
	* <p>
	* This method is provided as a hook to plug-in some custom
	* specific behavior. Although doing so is discouraged you might
	* want to subclass this method in order to store & provide more metadata
	* information (mapping OID <-> symbolic name) within the agent,
	* or to "change" the root of the MIB OID by prefixing the
	* defaultOid by an application dependant OID string, for instance.
	* </p>
	*
	* <p>
	* The default implementation of this method is to return the given
	* <code>defaultOid</code>
	* </p>
	*
	* @param groupName   The java-ized name of the SNMP group.
	* @param defaultOid  The OID defined in the MIB for that group
	*                    (in dot notation).
	*
	* @return The OID of the group identified by <code>groupName</code>,
	*         in dot-notation.
	*/
	@:overload private function getGroupOid(groupName : java.lang.String.String, defaultOid : java.lang.String.String) : java.lang.String.String;
	
	/**
	* <p>
	* This callback should return the ObjectName associated to the
	* group identified by the given <code>groupName</code>.
	* </p>
	*
	* <p>
	* This method is provided as a hook to plug-in some custom
	* specific behavior. You might want to override this method
	* in order to provide a different object naming scheme than
	* that proposed by default by <code>mibgen</code>.
	* </p>
	*
	* <p>
	* This method is only meaningful if the MIB is registered
	* in the MBeanServer, otherwise, it will not be called.
	* </p>
	*
	* <p>
	* The default implementation of this method is to return an ObjectName
	* built from the given <code>defaultName</code>.
	* </p>
	*
	* @param name  The java-ized name of the SNMP group.
	* @param oid   The OID returned by getGroupOid() - in dot notation.
	* @param defaultName The name by default generated by <code>
	*                    mibgen</code>
	*
	* @return The ObjectName of the group identified by <code>name</code>
	*/
	@:overload private function getGroupObjectName(name : java.lang.String.String, oid : java.lang.String.String, defaultName : java.lang.String.String) : javax.management.ObjectName.ObjectName;
	
	/**
	* <p>
	* Register an SNMP group and its metadata node in the MIB.
	* </p>
	*
	* <p>
	* This method is provided as a hook to plug-in some custom
	* specific behavior. You might want to override this method
	* if you want to set special links between the MBean, its metadata
	* node, its OID or ObjectName etc..
	* </p>
	*
	* <p>
	* If the MIB is not registered in the MBeanServer, the <code>
	* server</code> and <code>groupObjName</code> parameters will be
	* <code>null</code>.<br>
	* If the given group MBean is not <code>null</code>, and if the
	* <code>server</code> and <code>groupObjName</code> parameters are
	* not null, then this method will also automatically register the
	* group MBean with the given MBeanServer <code>server</code>.
	* </p>
	*
	* @param groupName  The java-ized name of the SNMP group.
	* @param groupOid   The OID as returned by getGroupOid() - in dot
	*                   notation.
	* @param groupObjName The ObjectName as returned by getGroupObjectName().
	*                   This parameter may be <code>null</code> if the
	*                   MIB is not registered in the MBeanServer.
	* @param node       The metadata node, as returned by the metadata
	*                   factory method for this group.
	* @param group      The MBean for this group, as returned by the
	*                   MBean factory method for this group.
	* @param server     The MBeanServer in which the groups are to be
	*                   registered. This parameter will be <code>null</code>
	*                   if the MIB is not registered, otherwise it is a
	*                   reference to the MBeanServer in which the MIB is
	*                   registered.
	*
	*/
	@:overload private function registerGroupNode(groupName : java.lang.String.String, groupOid : java.lang.String.String, groupObjName : javax.management.ObjectName.ObjectName, node : com.sun.jmx.snmp.agent.SnmpMibNode.SnmpMibNode, group : java.lang.Object.Object, server : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* <p>
	* Register an SNMP Table metadata node in the MIB.
	* </p>
	*
	* <p>
	* <b><i>
	* This method is used internally and you should never need to
	* call it directly.</i></b><br> It is used to establish the link
	* between an SNMP table metadata node and its bean-like counterpart.
	* <br>
	* The group metadata nodes will create and register their
	* underlying table metadata nodes in the MIB using this
	* method. <br>
	* The metadata nodes will be later retrieved from the MIB by the
	* bean-like table objects using the getRegisterTableMeta() method.
	* </p>
	*
	* @param name      The java-ized name of the SNMP table.
	* @param table     The SNMP table metadata node - usually this
	*                  corresponds to a <code>mibgen</code> generated
	*                  object.
	*/
	@:overload @:abstract public function registerTableMeta(name : java.lang.String.String, table : com.sun.jmx.snmp.agent.SnmpMibTable.SnmpMibTable) : Void;
	
	/**
	* Returns a registered SNMP Table metadata node.
	*
	* <p><b><i>
	* This method is used internally and you should never need to
	* call it directly.
	* </i></b></p>
	*
	*/
	@:overload @:abstract public function getRegisteredTableMeta(name : java.lang.String.String) : com.sun.jmx.snmp.agent.SnmpMibTable.SnmpMibTable;
	
	/**
	* Processes a <CODE>get</CODE> operation.
	*
	**/
	@:overload override public function get(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Processes a <CODE>set</CODE> operation.
	*
	*/
	@:overload override public function set(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Checks if a <CODE>set</CODE> operation can be performed.
	* If the operation cannot be performed, the method will raise a
	* <CODE>SnmpStatusException</CODE>.
	*
	*/
	@:overload override public function check(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Processes a <CODE>getNext</CODE> operation.
	*
	*/
	@:overload override public function getNext(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Processes a <CODE>getBulk</CODE> operation.
	* The method implements the <CODE>getBulk</CODE> operation by calling
	* appropriately the <CODE>getNext</CODE> method.
	*
	*/
	@:overload override public function getBulk(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest, nonRepeat : Int, maxRepeat : Int) : Void;
	
	/**
	* Gets the root object identifier of the MIB.
	* <P>In order to be accurate, the method should be called once the
	* MIB is fully initialized (that is, after a call to <CODE>init</CODE>
	* or <CODE>preRegister</CODE>).
	*
	* @return The root object identifier.
	*/
	@:overload override public function getRootOid() : java.NativeArray<haxe.Int64>;
	
	/**
	* The top element in the Mib tree.
	* @serial
	*/
	private var root : com.sun.jmx.snmp.agent.SnmpMibOid.SnmpMibOid;
	
	
}

package com.sun.jmx.snmp.agent;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
////  XXX: things to do: use SnmpOid rather than `instance' for future
////       evolutions.
////  XXX: Maybe use hashlists rather than vectors for entries?
////       => in that case, the key should be SnmpOid.toString()
////
/**
* This class is used to register varbinds from a SNMP varbind list with
* the SnmpMibNode responsible for handling the requests concerning that
* varbind.
* This class holds a hashtable of Handler nodes, whith the involved
* SnmpMibNode as a key.
* When the involved SnmpMibNode is a group, the sublist of varbind is
* directly stored in the Handler node.
* When the involved SnmpMibNode is a table, the sublist is stored in a
* sorted array indexed by the OID of the entry involved.
*/
@:internal extern class SnmpRequestTree
{
	@:overload public static function mapSetException(errorStatus : Int, version : Int) : Int;
	
	@:overload public static function mapGetException(errorStatus : Int, version : Int) : Int;
	
	@:overload public function getUserData() : java.lang.Object.Object;
	
	@:overload public function isCreationAllowed() : Bool;
	
	@:overload public function isSetRequest() : Bool;
	
	@:overload public function getVersion() : Int;
	
	@:overload public function getRequestPduVersion() : Int;
	
	@:overload public function getMetaNode(handler : SnmpRequestTree_Handler) : com.sun.jmx.snmp.agent.SnmpMibNode.SnmpMibNode;
	
	@:overload public function getOidDepth(handler : SnmpRequestTree_Handler) : Int;
	
	@:overload public function getSubRequests(handler : SnmpRequestTree_Handler) : java.util.Enumeration.Enumeration<Dynamic>;
	
	@:overload public function getHandlers() : java.util.Enumeration.Enumeration<Dynamic>;
	
	@:overload public function add(meta : com.sun.jmx.snmp.agent.SnmpMibNode.SnmpMibNode, depth : Int, varbind : SnmpVarBind) : Void;
	
	@:overload public function add(meta : com.sun.jmx.snmp.agent.SnmpMibNode.SnmpMibNode, depth : Int, entryoid : SnmpOid, varbind : SnmpVarBind, isnew : Bool) : Void;
	
	@:overload public function add(meta : com.sun.jmx.snmp.agent.SnmpMibNode.SnmpMibNode, depth : Int, entryoid : SnmpOid, varbind : SnmpVarBind, isnew : Bool, statusvb : SnmpVarBind) : Void;
	
	
}
@:native('com$sun$jmx$snmp$agent$SnmpRequestTree$Enum') @:internal extern class SnmpRequestTree_Enum implements java.util.Enumeration.Enumeration<Dynamic>
{
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : java.lang.Object.Object;
	
	
}
@:native('com$sun$jmx$snmp$agent$SnmpRequestTree$SnmpMibSubRequestImpl') @:internal extern class SnmpRequestTree_SnmpMibSubRequestImpl implements com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest
{
	@:overload public function getElements() : java.util.Enumeration.Enumeration<Dynamic>;
	
	@:overload public function getSubList() : java.util.Vector.Vector<SnmpVarBind>;
	
	@:overload @:final public function getSize() : Int;
	
	@:overload public function addVarBind(varbind : SnmpVarBind) : Void;
	
	@:overload public function isNewEntry() : Bool;
	
	@:overload public function getEntryOid() : SnmpOid;
	
	@:overload public function getVarIndex(varbind : SnmpVarBind) : Int;
	
	@:overload public function getUserData() : java.lang.Object.Object;
	
	@:overload public function registerGetException(_var : SnmpVarBind, exception : com.sun.jmx.snmp.SnmpStatusException.SnmpStatusException) : Void;
	
	@:overload public function registerSetException(_var : SnmpVarBind, exception : com.sun.jmx.snmp.SnmpStatusException.SnmpStatusException) : Void;
	
	@:overload public function registerCheckException(_var : SnmpVarBind, exception : com.sun.jmx.snmp.SnmpStatusException.SnmpStatusException) : Void;
	
	@:overload public function getVersion() : Int;
	
	@:overload public function getRowStatusVarBind() : SnmpVarBind;
	
	@:overload public function getPdu() : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	@:overload public function getRequestPduVersion() : Int;
	
	@:overload public function getEngine() : com.sun.jmx.snmp.SnmpEngine.SnmpEngine;
	
	@:overload public function getPrincipal() : java.lang.String.String;
	
	@:overload public function getSecurityLevel() : Int;
	
	@:overload public function getSecurityModel() : Int;
	
	@:overload public function getContextName() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getAccessContextName() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$jmx$snmp$agent$SnmpRequestTree$Handler') @:internal extern class SnmpRequestTree_Handler
{
	@:overload public function new(pduType : Int) : Void;
	
	/**
	* Adds a varbind in this node sublist.
	*/
	@:overload public function addVarbind(varbind : SnmpVarBind) : Void;
	
	@:overload public function addVarbind(varbind : SnmpVarBind, entryoid : SnmpOid, isnew : Bool, statusvb : SnmpVarBind) : Void;
	
	@:overload public function getSubReqCount() : Int;
	
	@:overload public function getSubList() : java.util.Vector.Vector<SnmpVarBind>;
	
	@:overload public function getEntryPos(entryoid : SnmpOid) : Int;
	
	@:overload public function getEntryOid(pos : Int) : SnmpOid;
	
	@:overload public function isNewEntry(pos : Int) : Bool;
	
	@:overload public function getRowStatusVarBind(pos : Int) : SnmpVarBind;
	
	@:overload public function getEntrySubList(pos : Int) : java.util.Vector.Vector<SnmpVarBind>;
	
	@:overload public function getEntryOids() : java.util.Iterator.Iterator<SnmpOid>;
	
	@:overload public function getEntryCount() : Int;
	
	
}

package com.sun.jmx.snmp.agent;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
//// SNMP Runtime imports
////
/**
* Represents a node in an SNMP MIB which corresponds to a group.
* This class allows subnodes to be registered below a group, providing
* support for nested groups. The subnodes are registered at run time
* when registering the nested groups in the global MIB OID tree.
* <P>
* This class is used by the class generated by <CODE>mibgen</CODE>.
* You should not need to use this class directly.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpMibGroup extends com.sun.jmx.snmp.agent.SnmpMibOid.SnmpMibOid implements java.io.Serializable.Serializable
{
	private var subgroups : java.util.Hashtable.Hashtable<java.lang.Long.Long, java.lang.Long.Long>;
	
	/**
	* Tells whether the given arc identifies a table in this group.
	*
	* @param arc An OID arc.
	*
	* @return <CODE>true</CODE> if `arc' leads to a table.
	*/
	@:overload @:abstract public function isTable(arc : haxe.Int64) : Bool;
	
	/**
	* Tells whether the given arc identifies a variable (scalar object) in
	* this group.
	*
	* @param arc An OID arc.
	*
	* @return <CODE>true</CODE> if `arc' leads to a variable.
	*/
	@:overload @:abstract public function isVariable(arc : haxe.Int64) : Bool;
	
	/**
	* Tells whether the given arc identifies a readable scalar object in
	* this group.
	*
	* @param arc An OID arc.
	*
	* @return <CODE>true</CODE> if `arc' leads to a readable variable.
	*/
	@:overload @:abstract public function isReadable(arc : haxe.Int64) : Bool;
	
	/**
	* Gets the table identified by the given `arc'.
	*
	* @param arc An OID arc.
	*
	* @return The <CODE>SnmpMibTable</CODE> identified by `arc', or
	*    <CODE>null</CODE> if `arc' does not identify any table.
	*/
	@:overload @:abstract public function getTable(arc : haxe.Int64) : com.sun.jmx.snmp.agent.SnmpMibTable.SnmpMibTable;
	
	/**
	* Checks whether the given OID arc identifies a variable (scalar
	* object).
	*
	* @exception If the given `arc' does not identify any variable in this
	*    group, throws an SnmpStatusException.
	*/
	@:overload public function validateVarId(arc : haxe.Int64, userData : java.lang.Object.Object) : Void;
	
	/**
	* Tell whether the given OID arc identifies a sub-tree
	* leading to a nested SNMP sub-group. This method is used internally.
	* You shouldn't need to call it directly.
	*
	* @param arc An OID arc.
	*
	* @return <CODE>true</CODE> if the given OID arc identifies a subtree
	* leading to a nested SNMP sub-group.
	*
	*/
	@:overload public function isNestedArc(arc : haxe.Int64) : Bool;
	
	/**
	* Generic handling of the <CODE>get</CODE> operation.
	* <p>The actual implementation of this method will be generated
	* by mibgen. Usually, this implementation only delegates the
	* job to some other provided runtime class, which knows how to
	* access the MBean. The current toolkit thus provides two
	* implementations:
	* <ul><li>The standard implementation will directly access the
	*         MBean through a java reference,</li>
	*     <li>The generic implementation will access the MBean through
	*         the MBean server.</li>
	* </ul>
	* <p>Both implementations rely upon specific - and distinct, set of
	* mibgen generated methods.
	* <p> You can override this method if you need to implement some
	* specific policies for minimizing the accesses made to some remote
	* underlying resources.
	* <p>
	*
	* @param req   The sub-request that must be handled by this node.
	*
	* @param depth The depth reached in the OID tree.
	*
	* @exception SnmpStatusException An error occurred while accessing
	*  the MIB node.
	*/
	@:overload @:abstract override public function get(req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	/**
	* Generic handling of the <CODE>set</CODE> operation.
	* <p>The actual implementation of this method will be generated
	* by mibgen. Usually, this implementation only delegates the
	* job to some other provided runtime class, which knows how to
	* access the MBean. The current toolkit thus provides two
	* implementations:
	* <ul><li>The standard implementation will directly access the
	*         MBean through a java reference,</li>
	*     <li>The generic implementation will access the MBean through
	*         the MBean server.</li>
	* </ul>
	* <p>Both implementations rely upon specific - and distinct, set of
	* mibgen generated methods.
	* <p> You can override this method if you need to implement some
	* specific policies for minimizing the accesses made to some remote
	* underlying resources.
	* <p>
	*
	* @param req   The sub-request that must be handled by this node.
	*
	* @param depth The depth reached in the OID tree.
	*
	* @exception SnmpStatusException An error occurred while accessing
	*  the MIB node.
	*/
	@:overload @:abstract override public function set(req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	/**
	* Generic handling of the <CODE>check</CODE> operation.
	*
	* <p>The actual implementation of this method will be generated
	* by mibgen. Usually, this implementation only delegates the
	* job to some other provided runtime class, which knows how to
	* access the MBean. The current toolkit thus provides two
	* implementations:
	* <ul><li>The standard implementation will directly access the
	*         MBean through a java reference,</li>
	*     <li>The generic implementation will access the MBean through
	*         the MBean server.</li>
	* </ul>
	* <p>Both implementations rely upon specific - and distinct, set of
	* mibgen generated methods.
	* <p> You can override this method if you need to implement some
	* specific policies for minimizing the accesses made to some remote
	* underlying resources, or if you need to implement some consistency
	* checks between the different values provided in the varbind list.
	* <p>
	*
	* @param req   The sub-request that must be handled by this node.
	*
	* @param depth The depth reached in the OID tree.
	*
	* @exception SnmpStatusException An error occurred while accessing
	*  the MIB node.
	*/
	@:overload @:abstract override public function check(req : com.sun.jmx.snmp.agent.SnmpMibSubRequest.SnmpMibSubRequest, depth : Int) : Void;
	
	@:overload override public function getRootOid(result : java.util.Vector.Vector<Dynamic>) : Void;
	
	/**
	* Register an OID arc that identifies a scalar object or a table.
	* This method is used internally. You shouldn't ever call it directly.
	*
	* @param arc An OID arc.
	*
	*/
	@:overload private function registerObject(arc : haxe.Int64) : Void;
	
	
}
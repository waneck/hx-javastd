package com.sun.jmx.snmp.agent;
/*
* Copyright (c) 2001, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A simple MIB agent that implements SNMP calls (get, set, getnext and getbulk) in a way that only errors or exceptions are returned. Every call done on this agent fails. Error handling is done according to the manager's SNMP protocol version.
* <P>It is used by <CODE>SnmpAdaptorServer</CODE> for its default agent behavior. When a received Oid doesn't match, this agent is called to fill the result list with errors.</P>
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*
*/
@:require(java5) extern class SnmpErrorHandlerAgent extends com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent implements java.io.Serializable.Serializable
{
	@:overload public function new() : Void;
	
	/**
	* Initializes the MIB (with no registration of the MBeans into the
	* MBean server). Does nothing.
	*
	* @exception IllegalAccessException The MIB cannot be initialized.
	*/
	@:overload override public function init() : Void;
	
	/**
	* Initializes the MIB but each single MBean representing the MIB
	* is inserted into the MBean server.
	*
	* @param server The MBean server to register the service with.
	* @param name The object name.
	*
	* @return The passed name paramter.
	*
	* @exception java.lang.Exception
	*/
	@:overload override public function preRegister(server : javax.management.MBeanServer.MBeanServer, name : javax.management.ObjectName.ObjectName) : javax.management.ObjectName.ObjectName;
	
	/**
	* Gets the root object identifier of the MIB.
	* <P>The root object identifier is the object identifier uniquely
	* identifying the MIB.
	*
	* @return The returned oid is null.
	*/
	@:overload override public function getRootOid() : java.NativeArray<haxe.Int64>;
	
	/**
	* Processes a <CODE>get</CODE> operation. It will throw an exception for V1 requests or it will set exceptions within the list for V2 requests.
	*
	* @param inRequest The SnmpMibRequest object holding the list of variable to be retrieved.
	*
	* @exception SnmpStatusException An error occured during the operation.
	*/
	@:overload override public function get(inRequest : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Checks if a <CODE>set</CODE> operation can be performed.
	* If the operation can not be performed, the method should emit a
	* <CODE>SnmpStatusException</CODE>.
	*
	* @param inRequest The SnmpMibRequest object holding the list of variables to
	*            be set. This list is composed of
	*            <CODE>SnmpVarBind</CODE> objects.
	*
	* @exception SnmpStatusException The <CODE>set</CODE> operation
	*    cannot be performed.
	*/
	@:overload override public function check(inRequest : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Processes a <CODE>set</CODE> operation. Should never be called (check previously called having failed).
	*
	* @param inRequest The SnmpMibRequest object holding the list of variable to be set.
	*
	* @exception SnmpStatusException An error occured during the operation.
	*/
	@:overload override public function set(inRequest : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Processes a <CODE>getNext</CODE> operation. It will throw an exception for V1 requests or it will set exceptions within the list for V2 requests..
	*
	* @param inRequest The SnmpMibRequest object holding the list of variables to be retrieved.
	*
	* @exception SnmpStatusException An error occured during the operation.
	*/
	@:overload override public function getNext(inRequest : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Processes a <CODE>getBulk</CODE> operation. It will throw an exception if the request is a V1 one or it will set exceptions within the list for V2 ones.
	*
	* @param inRequest The SnmpMibRequest object holding the list of variable to be retrieved.
	*
	* @exception SnmpStatusException An error occured during the operation.
	*/
	@:overload override public function getBulk(inRequest : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest, nonRepeat : Int, maxRepeat : Int) : Void;
	
	
}

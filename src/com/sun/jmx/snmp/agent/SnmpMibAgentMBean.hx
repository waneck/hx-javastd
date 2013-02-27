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
/**
* Exposes the remote management interface of the <CODE>SnmpMibAgent</CODE> MBean.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern interface SnmpMibAgentMBean
{
	/**
	* Processes a <CODE>get</CODE> operation.
	* This method must not be called from remote.
	*
	* @param req The SnmpMibRequest object holding the list of variables to
	*            be retrieved. This list is composed of
	*            <CODE>SnmpVarBind</CODE> objects.
	*
	* @exception SnmpStatusException An error occured during the operation.
	* @see SnmpMibAgent#get(SnmpMibRequest)
	*/
	@:overload public function get(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Processes a <CODE>getNext</CODE> operation.
	* This method must not be called from remote.
	*
	* @param req The SnmpMibRequest object holding the list of variables to
	*            be retrieved. This list is composed of
	*            <CODE>SnmpVarBind</CODE> objects.
	*
	* @exception SnmpStatusException An error occured during the operation.
	* @see SnmpMibAgent#getNext(SnmpMibRequest)
	*/
	@:overload public function getNext(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Processes a <CODE>getBulk</CODE> operation.
	* This method must not be called from remote.
	*
	* @param req The SnmpMibRequest object holding the list of variables to
	*            be retrieved. This list is composed of
	*            <CODE>SnmpVarBind</CODE> objects.
	*
	* @param nonRepeat The number of variables, starting with the first
	*    variable in the variable-bindings, for which a single
	*    lexicographic successor is requested.
	*
	* @param maxRepeat The number of lexicographic successors requested
	*    for each of the last R variables. R is the number of variables
	*    following the first <CODE>nonRepeat</CODE> variables for which
	*    multiple lexicographic successors are requested.
	*
	* @exception SnmpStatusException An error occured during the operation.
	* @see SnmpMibAgent#getBulk(SnmpMibRequest,int,int)
	*/
	@:overload public function getBulk(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest, nonRepeat : Int, maxRepeat : Int) : Void;
	
	/**
	* Processes a <CODE>set</CODE> operation.
	* This method must not be called from remote.
	*
	* @param req The SnmpMibRequest object holding the list of variables to
	*            be set. This list is composed of
	*            <CODE>SnmpVarBind</CODE> objects.
	*
	* @exception SnmpStatusException An error occured during the operation.
	* @see SnmpMibAgent#set(SnmpMibRequest)
	*/
	@:overload public function set(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Checks if a <CODE>set</CODE> operation can be performed.
	* If the operation cannot be performed, the method should emit a
	* <CODE>SnmpStatusException</CODE>.
	*
	* @param req The SnmpMibRequest object holding the list of variables to
	*            be set. This list is composed of
	*            <CODE>SnmpVarBind</CODE> objects.
	*
	* @exception SnmpStatusException The <CODE>set</CODE> operation
	*    cannot be performed.
	* @see SnmpMibAgent#check(SnmpMibRequest)
	*/
	@:overload public function check(req : com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest) : Void;
	
	/**
	* Gets the reference to the MBean server in which the SNMP MIB is
	* registered.
	*
	* @return The MBean server or null if the MIB is not registered in any
	*         MBean server.
	*/
	@:overload public function getMBeanServer() : javax.management.MBeanServer.MBeanServer;
	
	/**
	* Gets the reference to the SNMP protocol adaptor to which the MIB is
	* bound.
	* <BR>This method is used for accessing the SNMP MIB handler property
	* of the SNMP MIB agent in case of a standalone agent.
	*
	* @return The SNMP MIB handler.
	*/
	@:overload public function getSnmpAdaptor() : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler;
	
	/**
	* Sets the reference to the SNMP protocol adaptor through which the
	* MIB will be SNMP accessible and add this new MIB in the SNMP MIB
	* handler.
	* <BR>This method is used for setting the SNMP MIB handler property of
	* the SNMP MIB agent in case of a standalone agent.
	*
	* @param stack The SNMP MIB handler.
	*/
	@:overload public function setSnmpAdaptor(stack : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler) : Void;
	
	/**
	* Sets the reference to the SNMP protocol adaptor through which the MIB
	* will be SNMP accessible and add this new MIB in the SNMP MIB handler.
	* This method is to be called to set a specific agent to a specific OID.
	* This can be useful when dealing with MIB overlapping.
	* Some OID can be implemented in more than one MIB. In this case, the
	* OID nearer agent will be used on SNMP operations.
	* @param stack The SNMP MIB handler.
	* @param oids The set of OIDs this agent implements.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setSnmpAdaptor(stack : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler, oids : java.NativeArray<SnmpOid>) : Void;
	
	/**
	* Sets the reference to the SNMP protocol adaptor through which the MIB
	* will be SNMP accessible and add this new MIB in the SNMP MIB handler.
	* Adds a new contextualized MIB in the SNMP MIB handler.
	*
	* @param stack The SNMP MIB handler.
	* @param contextName The MIB context name. If null is passed, will be
	*        registered in the default context.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setSnmpAdaptor(stack : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler, contextName : java.lang.String.String) : Void;
	
	/**
	* Sets the reference to the SNMP protocol adaptor through which the MIB
	* will be SNMP accessible and adds this new MIB in the SNMP MIB handler.
	* Adds a new contextualized MIB in the SNMP MIB handler.
	*
	* @param stack The SNMP MIB handler.
	* @param contextName The MIB context name. If null is passed, will be
	*        registered in the default context.
	* @param oids The set of OIDs this agent implements.
	* @exception IllegalArgumentException If the parameter is null.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setSnmpAdaptor(stack : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler, contextName : java.lang.String.String, oids : java.NativeArray<SnmpOid>) : Void;
	
	/**
	* Gets the object name of the SNMP protocol adaptor to which the MIB is
	* bound.
	*
	* @return The name of the SNMP protocol adaptor.
	*/
	@:overload public function getSnmpAdaptorName() : javax.management.ObjectName.ObjectName;
	
	/**
	* Sets the reference to the SNMP protocol adaptor through which the MIB
	* will be SNMP accessible and add this new MIB in the SNMP MIB handler
	* associated to the specified <CODE>name</CODE>.
	*
	* @param name The object name of the SNMP MIB handler.
	*
	* @exception InstanceNotFoundException The MBean does not exist in the
	*        MBean server.
	* @exception ServiceNotFoundException This SNMP MIB is not registered
	*        in the MBean server or the requested service is not supported.
	*/
	@:overload public function setSnmpAdaptorName(name : javax.management.ObjectName.ObjectName) : Void;
	
	/**
	* Sets the reference to the SNMP protocol adaptor through which the MIB
	* will be SNMP accessible and add this new MIB in the SNMP MIB handler
	* associated to the specified <CODE>name</CODE>.
	* This method is to be called to set a specific agent to a specific OID.
	* This can be useful when dealing with MIB overlapping.
	* Some OID can be implemented in more than one MIB. In this case, the
	* OID nearer agent will be used on SNMP operations.
	* @param name The name of the SNMP protocol adaptor.
	* @param oids The set of OIDs this agent implements.
	* @exception InstanceNotFoundException The SNMP protocol adaptor does
	*     not exist in the MBean server.
	*
	* @exception ServiceNotFoundException This SNMP MIB is not registered
	*     in the MBean server or the requested service is not supported.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setSnmpAdaptorName(name : javax.management.ObjectName.ObjectName, oids : java.NativeArray<SnmpOid>) : Void;
	
	/**
	* Sets the reference to the SNMP protocol adaptor through which the MIB
	* will be SNMP accessible and add this new MIB in the SNMP MIB handler
	* associated to the specified <CODE>name</CODE>.
	*
	* @param name The name of the SNMP protocol adaptor.
	* @param contextName The MIB context name. If null is passed, will be
	*     registered in the default context.
	* @exception InstanceNotFoundException The SNMP protocol adaptor does
	*     not exist in the MBean server.
	*
	* @exception ServiceNotFoundException This SNMP MIB is not registered
	*     in the MBean server or the requested service is not supported.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setSnmpAdaptorName(name : javax.management.ObjectName.ObjectName, contextName : java.lang.String.String) : Void;
	
	/**
	* Sets the reference to the SNMP protocol adaptor through which the MIB
	* will be SNMP accessible and add this new MIB in the SNMP MIB handler
	* associated to the specified <CODE>name</CODE>.
	*
	* @param name The name of the SNMP protocol adaptor.
	* @param contextName The MIB context name. If null is passed, will be
	*        registered in the default context.
	* @param oids The set of OIDs this agent implements.
	* @exception InstanceNotFoundException The SNMP protocol adaptor does
	*     not exist in the MBean server.
	*
	* @exception ServiceNotFoundException This SNMP MIB is not registered
	*     in the MBean server or the requested service is not supported.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setSnmpAdaptorName(name : javax.management.ObjectName.ObjectName, contextName : java.lang.String.String, oids : java.NativeArray<SnmpOid>) : Void;
	
	/**
	* Indicates whether or not the MIB module is bound to a SNMP protocol
	* adaptor.
	* As a reminder, only bound MIBs can be accessed through SNMP protocol
	* adaptor.
	*
	* @return <CODE>true</CODE> if the MIB module is bound,
	*         <CODE>false</CODE> otherwise.
	*/
	@:overload public function getBindingState() : Bool;
	
	/**
	* Gets the MIB name.
	*
	* @return The MIB name.
	*/
	@:overload public function getMibName() : java.lang.String.String;
	
	
}

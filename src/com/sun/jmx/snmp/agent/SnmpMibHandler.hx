package com.sun.jmx.snmp.agent;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
* The logical link between an SNMP MIB and the SNMP communication stack.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern interface SnmpMibHandler
{
	/**
	* Adds a new MIB in the SNMP MIB handler.
	* This method is called automatically by {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptor(SnmpMibHandler)} and
	* {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptorName(ObjectName)} and should not be called directly.
	*
	* @param mib The MIB to add.
	*
	* @return A reference on the SNMP MIB handler.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*/
	@:overload public function addMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent) : SnmpMibHandler;
	
	/**
	* Adds a new MIB in the SNMP MIB handler.
	*
	* @param mib The MIB to add.
	* @param oids The array of oid used to add the mib. Each oid is a root oid for the mib.
	* @return A reference on the SNMP MIB handler.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function addMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, oids : java.NativeArray<SnmpOid>) : SnmpMibHandler;
	
	/**
	* Adds a new contextualized MIB in the SNMP MIB handler.
	*
	* @param mib The MIB to add.
	* @param contextName The MIB context name. If null is passed, will be registered in the default context.
	*
	* @return A reference to the SNMP MIB handler.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function addMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, contextName : java.lang.String.String) : SnmpMibHandler;
	
	/**
	* Adds a new contextualized MIB in the SNMP MIB handler.
	*
	* @param mib The MIB to add.
	* @param contextName The MIB context name. If null is passed, will be registered in the default context.
	* @param oids The array of oid used to add the mib. Each oid is a root oid for the mib.
	*
	* @return A reference to the SNMP MIB handler.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function addMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, contextName : java.lang.String.String, oids : java.NativeArray<SnmpOid>) : SnmpMibHandler;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	* This method is called automatically by {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptor(SnmpMibHandler)} and
	* {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptorName(ObjectName)} and should not be called directly.
	*
	* @param mib The MIB to be removed.
	*
	* @return <CODE>true</CODE> if the specified <CODE>mib</CODE> was a MIB included in the SNMP MIB handler,
	* <CODE>false</CODE> otherwise.
	*/
	@:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent) : Bool;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	* This method is called automatically by {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptor(SnmpMibHandler)} and
	* {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptorName(ObjectName)} and should not be called directly.
	*
	* @param mib The MIB to be removed.
	* @param oids The oid the MIB was previously registered for.
	* @return <CODE>true</CODE> if the specified <CODE>mib</CODE> was a MIB included in the SNMP MIB handler,
	* <CODE>false</CODE> otherwise.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, oids : java.NativeArray<SnmpOid>) : Bool;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	*
	* @param mib The MIB to be removed.
	* @param contextName The context name used at registration time.
	*
	* @return <CODE>true</CODE> if the specified <CODE>mib</CODE> was a MIB included in the SNMP MIB handler,
	* <CODE>false</CODE> otherwise.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, contextName : java.lang.String.String) : Bool;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	*
	* @param mib The MIB to be removed.
	* @param contextName The context name used at registration time.
	* @param oids The oid the MIB was previously registered for.
	* @return <CODE>true</CODE> if the specified <CODE>mib</CODE> was a MIB included in the SNMP MIB handler,
	* <CODE>false</CODE> otherwise.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, contextName : java.lang.String.String, oids : java.NativeArray<SnmpOid>) : Bool;
	
	
}

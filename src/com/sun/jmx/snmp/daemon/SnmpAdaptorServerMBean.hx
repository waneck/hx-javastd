package com.sun.jmx.snmp.daemon;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
//// java import
//// jmx imports
////
//// SNMP Runtime imports
////
/**
* Exposes the remote management interface of the {@link SnmpAdaptorServer} MBean.
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern interface SnmpAdaptorServerMBean extends com.sun.jmx.snmp.daemon.CommunicatorServerMBean.CommunicatorServerMBean
{
	/**
	* Returns the Ip address based ACL used by this SNMP protocol adaptor.
	* @return The <CODE>InetAddressAcl</CODE> implementation.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getInetAddressAcl() : com.sun.jmx.snmp.InetAddressAcl.InetAddressAcl;
	
	/**
	* Returns the port used by this SNMP protocol adaptor for sending traps.
	* By default, port 162 is used.
	*
	* @return The port number for sending SNMP traps.
	*/
	@:overload public function getTrapPort() : java.lang.Integer.Integer;
	
	/**
	* Sets the port used by this SNMP protocol adaptor for sending traps.
	*
	* @param port The port number for sending SNMP traps.
	*/
	@:overload public function setTrapPort(port : java.lang.Integer.Integer) : Void;
	
	/**
	* Returns the port used by this SNMP protocol adaptor for sending inform requests.
	* By default, port 162 is used.
	*
	* @return The port number for sending SNMP inform requests.
	*/
	@:overload public function getInformPort() : Int;
	
	/**
	* Sets the port used by this SNMP protocol adaptor for sending inform requests.
	*
	* @param port The port number for sending SNMP inform requests.
	*/
	@:overload public function setInformPort(port : Int) : Void;
	
	/**
	* Gets the number of managers that have been processed by this SNMP protocol adaptor
	* since its creation.
	*
	* @return The number of managers handled by this SNMP protocol adaptor
	* since its creation. This counter is not reset by the <CODE>stop</CODE> method.
	*/
	@:overload public function getServedClientCount() : Int;
	
	/**
	* Gets the number of managers currently being processed by this
	* SNMP protocol adaptor.
	*
	* @return The number of managers currently being processed by this
	* SNMP protocol adaptor.
	*/
	@:overload public function getActiveClientCount() : Int;
	
	/**
	* Gets the maximum number of managers that this SNMP protocol adaptor can
	* process concurrently.
	*
	* @return The maximum number of managers that this SNMP protocol adaptor can
	* process concurrently.
	*/
	@:overload public function getMaxActiveClientCount() : Int;
	
	/**
	* Sets the maximum number of managers this SNMP protocol adaptor can
	* process concurrently.
	*
	* @param c The number of managers.
	*
	* @exception java.lang.IllegalStateException This method has been invoked
	* while the communicator was <CODE>ONLINE</CODE> or <CODE>STARTING</CODE>.
	*/
	@:overload public function setMaxActiveClientCount(c : Int) : Void;
	
	/**
	* Returns the protocol of this SNMP protocol adaptor.
	*
	* @return The string "snmp".
	*/
	@:overload public function getProtocol() : java.lang.String.String;
	
	/**
	* Returns the buffer size of this SNMP protocol adaptor.
	* By default, buffer size 1024 is used.
	*
	* @return The buffer size.
	*/
	@:overload public function getBufferSize() : java.lang.Integer.Integer;
	
	/**
	* Sets the buffer size of this SNMP protocol adaptor.
	*
	* @param s The buffer size.
	*
	* @exception java.lang.IllegalStateException This method has been invoked
	* while the communicator was <CODE>ONLINE</CODE> or <CODE>STARTING</CODE>.
	*/
	@:overload public function setBufferSize(s : java.lang.Integer.Integer) : Void;
	
	/**
	* Gets the number of times to try sending an inform request before giving up.
	* @return The maximun number of tries.
	*/
	@:overload public function getMaxTries() : Int;
	
	/**
	* Changes the maximun number of times to try sending an inform request before giving up.
	* @param newMaxTries The maximun number of tries.
	*/
	@:overload public function setMaxTries(newMaxTries : Int) : Void;
	
	/**
	* Gets the timeout to wait for an inform response from the manager.
	* @return The value of the timeout property.
	*/
	@:overload public function getTimeout() : Int;
	
	/**
	* Changes the timeout to wait for an inform response from the manager.
	* @param newTimeout The timeout (in milliseconds).
	*/
	@:overload public function setTimeout(newTimeout : Int) : Void;
	
	/**
	* Returns the message factory of this SNMP protocol adaptor.
	*
	* @return The factory object.
	*/
	@:overload public function getPduFactory() : com.sun.jmx.snmp.SnmpPduFactory.SnmpPduFactory;
	
	/**
	* Sets the message factory of this SNMP protocol adaptor.
	*
	* @param factory The factory object (null means the default factory).
	*/
	@:overload public function setPduFactory(factory : com.sun.jmx.snmp.SnmpPduFactory.SnmpPduFactory) : Void;
	
	/**
	* Set the user-data factory of this SNMP protocol adaptor.
	*
	* @param factory The factory object (null means no factory).
	* @see com.sun.jmx.snmp.agent.SnmpUserDataFactory
	*/
	@:overload public function setUserDataFactory(factory : com.sun.jmx.snmp.agent.SnmpUserDataFactory.SnmpUserDataFactory) : Void;
	
	/**
	* Get the user-data factory associated with this SNMP protocol adaptor.
	*
	* @return The factory object (null means no factory).
	* @see com.sun.jmx.snmp.agent.SnmpUserDataFactory
	*/
	@:overload public function getUserDataFactory() : com.sun.jmx.snmp.agent.SnmpUserDataFactory.SnmpUserDataFactory;
	
	/**
	* Returns <CODE>true</CODE> if authentication traps are enabled.
	* <P>
	* When this feature is enabled, the SNMP protocol adaptor sends
	* an <CODE>authenticationFailure</CODE> trap each time an authentication fails.
	* <P>
	* The default behaviour is to send authentication traps.
	*
	* @return <CODE>true</CODE> if authentication traps are enabled, <CODE>false</CODE> otherwise.
	*/
	@:overload public function getAuthTrapEnabled() : Bool;
	
	/**
	* Sets the flag indicating if traps need to be sent in case of authentication failure.
	*
	* @param enabled Flag indicating if traps need to be sent.
	*/
	@:overload public function setAuthTrapEnabled(enabled : Bool) : Void;
	
	/**
	* Returns <code>true</code> if this SNMP protocol adaptor sends a response in case
	* of authentication failure.
	* <P>
	* When this feature is enabled, the SNMP protocol adaptor sends a response with <CODE>noSuchName</CODE>
	* or <CODE>readOnly</CODE> when the authentication failed. If the flag is disabled, the
	* SNMP protocol adaptor trashes the PDU silently.
	* <P>
	* The default behavior is to send responses.
	*
	* @return <code>true</code> if responses are sent.
	*/
	@:overload public function getAuthRespEnabled() : Bool;
	
	/**
	* Sets the flag indicating if responses need to be sent in case of authentication failure.
	*
	* @param enabled Flag indicating if responses need to be sent.
	*/
	@:overload public function setAuthRespEnabled(enabled : Bool) : Void;
	
	/**
	* Returns the enterprise OID. It is used by {@link #snmpV1Trap snmpV1Trap} to fill
	* the 'enterprise' field of the trap request.
	*
	* @return The OID in string format "x.x.x.x".
	*/
	@:overload public function getEnterpriseOid() : java.lang.String.String;
	
	/**
	* Sets the enterprise OID.
	*
	* @param oid The OID in string format "x.x.x.x".
	*
	* @exception IllegalArgumentException The string format is incorrect
	*/
	@:overload public function setEnterpriseOid(oid : java.lang.String.String) : Void;
	
	/**
	* Returns the names of the MIBs available in this SNMP protocol adaptor.
	*
	* @return An array of MIB names.
	*/
	@:overload public function getMibs() : java.NativeArray<java.lang.String.String>;
	
	/**
	* Returns the <CODE>snmpOutTraps</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpOutTraps</CODE> value.
	*/
	@:overload public function getSnmpOutTraps() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpOutGetResponses</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpOutGetResponses</CODE> value.
	*/
	@:overload public function getSnmpOutGetResponses() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpOutGenErrs</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpOutGenErrs</CODE> value.
	*/
	@:overload public function getSnmpOutGenErrs() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpOutBadValues</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpOutBadValues</CODE> value.
	*/
	@:overload public function getSnmpOutBadValues() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpOutNoSuchNames</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpOutNoSuchNames</CODE> value.
	*/
	@:overload public function getSnmpOutNoSuchNames() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpOutTooBigs</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpOutTooBigs</CODE> value.
	*/
	@:overload public function getSnmpOutTooBigs() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInASNParseErrs</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInASNParseErrs</CODE> value.
	*/
	@:overload public function getSnmpInASNParseErrs() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInBadCommunityUses</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInBadCommunityUses</CODE> value.
	*/
	@:overload public function getSnmpInBadCommunityUses() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInBadCommunityNames</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInBadCommunityNames</CODE> value.
	*/
	@:overload public function getSnmpInBadCommunityNames() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInBadVersions</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInBadVersions</CODE> value.
	*/
	@:overload public function getSnmpInBadVersions() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpOutPkts</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpOutPkts</CODE> value.
	*/
	@:overload public function getSnmpOutPkts() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInPkts</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInPkts</CODE> value.
	*/
	@:overload public function getSnmpInPkts() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInGetRequests</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInGetRequests</CODE> value.
	*/
	@:overload public function getSnmpInGetRequests() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInGetNexts</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInGetNexts</CODE> value.
	*/
	@:overload public function getSnmpInGetNexts() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInSetRequests</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInSetRequests</CODE> value.
	*/
	@:overload public function getSnmpInSetRequests() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInTotalSetVars</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInTotalSetVars</CODE> value.
	*/
	@:overload public function getSnmpInTotalSetVars() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpInTotalReqVars</CODE> value defined in MIB-II.
	*
	* @return The <CODE>snmpInTotalReqVars</CODE> value.
	*/
	@:overload public function getSnmpInTotalReqVars() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpSilentDrops</CODE> value defined in rfc 1907 NMPv2-MIB .
	*
	* @return The <CODE>snmpSilentDrops</CODE> value.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getSnmpSilentDrops() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpProxyDrops</CODE> value defined in rfc 1907 NMPv2-MIB .
	*
	* @return The <CODE>snmpProxyDrops</CODE> value.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getSnmpProxyDrops() : java.lang.Long.Long;
	
	/**
	* Adds a new MIB in the SNMP MIB handler.
	* This method is called automatically by {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptor(SnmpMibHandler)}
	* and {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptorName(ObjectName)}
	* and should not be called directly.
	*
	* @param mib The MIB to add.
	*
	* @return A reference to the SNMP MIB handler.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*/
	@:overload public function addMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent) : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler;
	
	/**
	* Adds a new MIB in the SNMP MIB handler.
	*
	* @param mib The MIB to add.
	* @param oids The set of OIDs this agent implements.
	*
	* @return A reference to the SNMP MIB handler.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function addMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, oids : java.NativeArray<SnmpOid>) : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	* This method is called automatically by {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptor(SnmpMibHandler)}
	* and {@link com.sun.jmx.snmp.agent.SnmpMibAgent#setSnmpAdaptorName(ObjectName)}
	* and should not be called directly.
	*
	* @param mib The MIB to be removed.
	*
	* @return <code>true</code> if the specified <CODE>mib</CODE> was a MIB included in the SNMP MIB handler,
	* <code>false</code> otherwise.
	*/
	@:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent) : Bool;
	
	/**
	* Sends a trap using SNMP V1 trap format.
	* <BR>The trap is sent to each destination defined in the ACL file (if available).
	* If no ACL file or no destinations are available, the trap is sent to the local host.
	*
	* @param generic The generic number of the trap.
	* @param specific The specific number of the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @exception IOException An I/O error occured while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpV1Trap(generic : Int, specific : Int, varBindList : SnmpVarBindList) : Void;
	
	/**
	* Sends a trap using SNMP V1 trap format.
	* <BR>The trap is sent to the specified <CODE>InetAddress</CODE> destination
	* using the specified community string (and the ACL file is not used).
	*
	* @param address The <CODE>InetAddress</CODE> destination of the trap.
	* @param cs The community string to be used for the trap.
	* @param generic The generic number of the trap.
	* @param specific The specific number of the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpV1Trap(address : java.net.InetAddress.InetAddress, cs : java.lang.String.String, generic : Int, specific : Int, varBindList : SnmpVarBindList) : Void;
	
	/**
	* Sends a trap using SNMP V1 trap format.
	* <BR>The trap is sent to the specified <CODE>SnmpPeer</CODE> destination.
	* The community string used is the one located in the <CODE>SnmpPeer</CODE> parameters (<CODE>SnmpParameters.getRdCommunity() </CODE>).
	*
	* @param peer The <CODE>SnmpPeer</CODE> destination of the trap.
	* @param agentAddr The agent address to be used for the trap.
	* @param enterpOid The enterprise OID to be used for the trap.
	* @param generic The generic number of the trap.
	* @param specific The specific number of the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	* @param time The time stamp (overwrite the current time).
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpV1Trap(peer : SnmpPeer, agentAddr : com.sun.jmx.snmp.SnmpIpAddress.SnmpIpAddress, enterpOid : SnmpOid, generic : Int, specific : Int, varBindList : SnmpVarBindList, time : SnmpTimeticks) : Void;
	
	/**
	* Sends a trap using SNMP V2 trap format.
	* <BR>The trap is sent to the specified <CODE>SnmpPeer</CODE> destination.
	* <BR>The community string used is the one located in the <CODE>SnmpPeer</CODE> parameters (<CODE>SnmpParameters.getRdCommunity() </CODE>).
	* <BR>The variable list included in the outgoing trap is composed of the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with the value specified by <CODE>time</CODE>
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by <CODE>trapOid</CODE>
	* <LI><CODE>all the (oid,values)</CODE> from the specified <CODE>varBindList</CODE>
	* </UL>
	*
	* @param peer The <CODE>SnmpPeer</CODE> destination of the trap.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	* @param time The time stamp (overwrite the current time).
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpV2Trap(peer : SnmpPeer, trapOid : SnmpOid, varBindList : SnmpVarBindList, time : SnmpTimeticks) : Void;
	
	/**
	* Sends a trap using SNMP V2 trap format.
	* <BR>The trap is sent to each destination defined in the ACL file (if available).
	* If no ACL file or no destinations are available, the trap is sent to the local host.
	* <BR>The variable list included in the outgoing trap is composed of the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by <CODE>trapOid</CODE>
	* <LI><CODE>all the (oid,values)</CODE> from the specified <CODE>varBindList</CODE>
	* </UL>
	*
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @exception IOException An I/O error occured while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpV2Trap(trapOid : SnmpOid, varBindList : SnmpVarBindList) : Void;
	
	/**
	* Sends a trap using SNMP V2 trap format.
	* <BR>The trap is sent to the specified <CODE>InetAddress</CODE> destination
	* using the specified community string (and the ACL file is not used).
	* <BR>The variable list included in the outgoing trap is composed of the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by <CODE>trapOid</CODE>
	* <LI><CODE>all the (oid,values)</CODE> from the specified <CODE>varBindList</CODE>
	* </UL>
	*
	* @param address The <CODE>InetAddress</CODE> destination of the trap.
	* @param cs The community string to be used for the trap.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpV2Trap(address : java.net.InetAddress.InetAddress, cs : java.lang.String.String, trapOid : SnmpOid, varBindList : SnmpVarBindList) : Void;
	
	/**
	* Send the specified trap PDU to the passed <CODE>InetAddress</CODE>.
	* @param address The destination address.
	* @param pdu The pdu to send.
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpPduTrap(address : java.net.InetAddress.InetAddress, pdu : SnmpPduPacket) : Void;
	
	/**
	* Send the specified trap PDU to the passed <CODE>SnmpPeer</CODE>.
	* @param peer The destination peer. The Read community string is used of <CODE>SnmpParameters</CODE> is used as the trap community string.
	* @param pdu The pdu to send.
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined by <CODE>bufferSize</CODE>.
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpPduTrap(peer : SnmpPeer, pdu : SnmpPduPacket) : Void;
	
	/**
	* Sends an inform using SNMP V2 inform request format.
	* <BR>The inform request is sent to each destination defined in the ACL file (if available).
	* If no ACL file or no destinations are available, the inform request is sent to the local host.
	* <BR>The variable list included in the outgoing inform request is composed of the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by <CODE>trapOid</CODE>
	* <LI><CODE>all the (oid,values)</CODE> from the specified <CODE>varBindList</CODE>
	* </UL>
	* To send an inform request, the SNMP adaptor server must be active.
	*
	* @param cb The callback that is invoked when a request is complete.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @return A vector of {@link com.sun.jmx.snmp.daemon.SnmpInformRequest} objects.
	* <P>If there is no destination host for this inform request, the returned vector will be empty.
	*
	* @exception IllegalStateException  This method has been invoked while the SNMP adaptor server was not active.
	* @exception IOException An I/O error occurred while sending the inform request.
	* @exception SnmpStatusException If the inform request exceeds the limit defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpInformRequest(cb : com.sun.jmx.snmp.daemon.SnmpInformHandler.SnmpInformHandler, trapOid : SnmpOid, varBindList : SnmpVarBindList) : java.util.Vector.Vector<Dynamic>;
	
	/**
	* Sends an inform using SNMP V2 inform request format.
	* <BR>The inform is sent to the specified <CODE>InetAddress</CODE> destination
	* using the specified community string.
	* <BR>The variable list included in the outgoing inform request is composed of the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by <CODE>trapOid</CODE>
	* <LI><CODE>all the (oid,values)</CODE> from the specified <CODE>varBindList</CODE>
	* </UL>
	* To send an inform request, the SNMP adaptor server must be active.
	*
	* @param address The <CODE>InetAddress</CODE> destination for this inform request.
	* @param cs The community string to be used for the inform request.
	* @param cb The callback that is invoked when a request is complete.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @return The inform request object.
	*
	* @exception IllegalStateException  This method has been invoked while the SNMP adaptor server was not active.
	* @exception IOException An I/O error occurred while sending the inform request.
	* @exception SnmpStatusException If the inform request exceeds the limit defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpInformRequest(address : java.net.InetAddress.InetAddress, cs : java.lang.String.String, cb : com.sun.jmx.snmp.daemon.SnmpInformHandler.SnmpInformHandler, trapOid : SnmpOid, varBindList : SnmpVarBindList) : SnmpInformRequest;
	
	/**
	* Sends an inform using SNMP V2 inform request format.
	* <BR>The inform is sent to the specified <CODE>SnmpPeer</CODE> destination.
	* <BR> The community string used is the one located in the <CODE>SnmpPeer</CODE> parameters (<CODE>SnmpParameters.getInformCommunity() </CODE>).
	* <BR>The variable list included in the outgoing inform is composed of the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by <CODE>trapOid</CODE>
	* <LI><CODE>all the (oid,values)</CODE> from the specified <CODE>varBindList</CODE>
	* </UL>
	* To send an inform request, the SNMP adaptor server must be active.
	*
	* @param peer The <CODE>SnmpPeer</CODE> destination for this inform request.
	* @param cb The callback that is invoked when a request is complete.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @return The inform request object.
	*
	* @exception IllegalStateException  This method has been invoked while the SNMP adaptor server was not active.
	* @exception IOException An I/O error occurred while sending the inform request.
	* @exception SnmpStatusException If the inform request exceeds the limit defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpInformRequest(peer : SnmpPeer, cb : com.sun.jmx.snmp.daemon.SnmpInformHandler.SnmpInformHandler, trapOid : SnmpOid, varBindList : SnmpVarBindList) : SnmpInformRequest;
	
	
}

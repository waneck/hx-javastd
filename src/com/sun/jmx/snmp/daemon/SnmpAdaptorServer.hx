package com.sun.jmx.snmp.daemon;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Implements an adaptor on top of the SNMP protocol.
* <P>
* When this SNMP protocol adaptor is started it creates a datagram socket
* and is able to receive requests and send traps or inform requests.
* When it is stopped, the socket is closed and neither requests
* and nor traps/inform request are processed.
* <P>
* The default port number of the socket is 161. This default value can be
* changed by specifying a port number:
* <UL>
* <LI>in the object constructor</LI>
* <LI>using the {@link com.sun.jmx.snmp.daemon.CommunicatorServer#setPort
*     setPort} method before starting the adaptor</LI>
* </UL>
* The default object name is defined by {@link
* com.sun.jmx.snmp.ServiceName#DOMAIN com.sun.jmx.snmp.ServiceName.DOMAIN}
* and {@link com.sun.jmx.snmp.ServiceName#SNMP_ADAPTOR_SERVER
* com.sun.jmx.snmp.ServiceName.SNMP_ADAPTOR_SERVER}.
* <P>
* The SNMP protocol adaptor supports versions 1 and 2 of the SNMP protocol
* in a stateless way: when it receives a v1 request, it replies with a v1
* response, when it receives a v2 request it replies with a v2 response.
* <BR>The method {@link #snmpV1Trap snmpV1Trap} sends traps using SNMP v1
* format.
* The method {@link #snmpV2Trap snmpV2Trap} sends traps using SNMP v2 format.
* The method {@link #snmpInformRequest snmpInformRequest} sends inform
* requests using SNMP v2 format.
* <P>
* To receive data packets, the SNMP protocol adaptor uses a buffer
* which size can be configured using the property <CODE>bufferSize</CODE>
* (default value is 1024).
* Packets which do not fit into the buffer are rejected.
* Increasing <CODE>bufferSize</CODE> allows the exchange of bigger packets.
* However, the underlying networking system may impose a limit on the size
* of UDP packets.
* Packets which size exceed this limit will be rejected, no matter what
* the value of <CODE>bufferSize</CODE> actually is.
* <P>
* An SNMP protocol adaptor may serve several managers concurrently. The
* number of concurrent managers can be limited using the property
* <CODE>maxActiveClientCount</CODE>.
* <p>
* The SNMP protocol adaptor specifies a default value (10) for the
* <CODE>maxActiveClientCount</CODE> property. When the adaptor is stopped,
* the active requests are interrupted and an error result is sent to
* the managers.
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpAdaptorServer extends com.sun.jmx.snmp.daemon.CommunicatorServer.CommunicatorServer implements com.sun.jmx.snmp.daemon.SnmpAdaptorServerMBean.SnmpAdaptorServerMBean implements javax.management.MBeanRegistration.MBeanRegistration implements SnmpDefinitions implements com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler
{
	/**
	* Initializes this SNMP protocol adaptor using the default port (161).
	* Use the {@link com.sun.jmx.snmp.IPAcl.SnmpAcl} default
	* implementation of the <CODE>InetAddressAcl</CODE> interface.
	*/
	@:overload public function new() : Void;
	
	/**
	* Initializes this SNMP protocol adaptor using the specified port.
	* Use the {@link com.sun.jmx.snmp.IPAcl.SnmpAcl} default
	* implementation of the <CODE>InetAddressAcl</CODE> interface.
	*
	* @param port The port number for sending SNMP responses.
	*/
	@:overload public function new(port : Int) : Void;
	
	/**
	* Initializes this SNMP protocol adaptor using the default port (161)
	* and the specified IP address based ACL implementation.
	*
	* @param acl The <CODE>InetAddressAcl</CODE> implementation.
	*        <code>null</code> means no ACL - everybody is authorized.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(acl : com.sun.jmx.snmp.InetAddressAcl.InetAddressAcl) : Void;
	
	/**
	* Initializes this SNMP protocol adaptor using the default port (161)
	* and the
	* specified <CODE>InetAddress</CODE>.
	* Use the {@link com.sun.jmx.snmp.IPAcl.SnmpAcl} default
	* implementation of the <CODE>InetAddressAcl</CODE> interface.
	*
	* @param addr The IP address to bind.
	*/
	@:overload public function new(addr : java.net.InetAddress.InetAddress) : Void;
	
	/**
	* Initializes this SNMP protocol adaptor using the specified port and the
	* specified IP address based ACL implementation.
	*
	* @param acl The <CODE>InetAddressAcl</CODE> implementation.
	*        <code>null</code> means no ACL - everybody is authorized.
	* @param port The port number for sending SNMP responses.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(acl : com.sun.jmx.snmp.InetAddressAcl.InetAddressAcl, port : Int) : Void;
	
	/**
	* Initializes this SNMP protocol adaptor using the specified port and the
	* specified <CODE>InetAddress</CODE>.
	* Use the {@link com.sun.jmx.snmp.IPAcl.SnmpAcl} default
	* implementation of the <CODE>InetAddressAcl</CODE> interface.
	*
	* @param port The port number for sending SNMP responses.
	* @param addr The IP address to bind.
	*/
	@:overload public function new(port : Int, addr : java.net.InetAddress.InetAddress) : Void;
	
	/**
	* Initializes this SNMP protocol adaptor using the specified IP
	* address based ACL implementation and the specified
	* <CODE>InetAddress</CODE>.
	*
	* @param acl The <CODE>InetAddressAcl</CODE> implementation.
	* @param addr The IP address to bind.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(acl : com.sun.jmx.snmp.InetAddressAcl.InetAddressAcl, addr : java.net.InetAddress.InetAddress) : Void;
	
	/**
	* Initializes this SNMP protocol adaptor using the specified port, the
	* specified  address based ACL implementation and the specified
	* <CODE>InetAddress</CODE>.
	*
	* @param acl The <CODE>InetAddressAcl</CODE> implementation.
	* @param port The port number for sending SNMP responses.
	* @param addr The IP address to bind.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(acl : com.sun.jmx.snmp.InetAddressAcl.InetAddressAcl, port : Int, addr : java.net.InetAddress.InetAddress) : Void;
	
	/**
	* Initializes this SNMP protocol adaptor using the specified port and the
	* specified <CODE>InetAddress</CODE>.
	* This constructor allows to initialize an SNMP adaptor without using
	* the ACL mechanism (by setting the <CODE>useAcl</CODE> parameter to
	* false).
	* <br>This constructor must be used in particular with a platform that
	* does not support the <CODE>java.security.acl</CODE> package like pJava.
	*
	* @param useAcl Specifies if this new SNMP adaptor uses the ACL mechanism.
	* If the specified parameter is set to <CODE>true</CODE>, this
	* constructor is equivalent to
	* <CODE>SnmpAdaptorServer((int)port,(InetAddress)addr)</CODE>.
	* @param port The port number for sending SNMP responses.
	* @param addr The IP address to bind.
	*/
	@:overload public function new(useAcl : Bool, port : Int, addr : java.net.InetAddress.InetAddress) : Void;
	
	/**
	* Gets the number of managers that have been processed by this
	* SNMP protocol adaptor  since its creation.
	*
	* @return The number of managers handled by this SNMP protocol adaptor
	* since its creation. This counter is not reset by the <CODE>stop</CODE>
	* method.
	*/
	@:overload override public function getServedClientCount() : Int;
	
	/**
	* Gets the number of managers currently being processed by this
	* SNMP protocol adaptor.
	*
	* @return The number of managers currently being processed by this
	* SNMP protocol adaptor.
	*/
	@:overload override public function getActiveClientCount() : Int;
	
	/**
	* Gets the maximum number of managers that this SNMP protocol adaptor can
	* process concurrently.
	*
	* @return The maximum number of managers that this SNMP protocol adaptor
	*         can process concurrently.
	*/
	@:overload override public function getMaxActiveClientCount() : Int;
	
	/**
	* Sets the maximum number of managers this SNMP protocol adaptor can
	* process concurrently.
	*
	* @param c The number of managers.
	*
	* @exception java.lang.IllegalStateException This method has been invoked
	* while the communicator was <CODE>ONLINE</CODE> or <CODE>STARTING</CODE>.
	*/
	@:overload override public function setMaxActiveClientCount(c : Int) : Void;
	
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
	* Sets the port used by this SNMP protocol adaptor for sending traps.
	*
	* @param port The port number for sending SNMP traps.
	*/
	@:overload public function setTrapPort(port : Int) : Void;
	
	/**
	* Returns the port used by this SNMP protocol adaptor for sending
	* inform requests. By default, port 162 is used.
	*
	* @return The port number for sending SNMP inform requests.
	*/
	@:overload public function getInformPort() : Int;
	
	/**
	* Sets the port used by this SNMP protocol adaptor for sending
	* inform requests.
	*
	* @param port The port number for sending SNMP inform requests.
	*/
	@:overload public function setInformPort(port : Int) : Void;
	
	/**
	* Returns the protocol of this SNMP protocol adaptor.
	*
	* @return The string "snmp".
	*/
	@:overload override public function getProtocol() : java.lang.String.String;
	
	/**
	* Returns the buffer size of this SNMP protocol adaptor.
	* This buffer size is used for both incoming request and outgoing
	* inform requests.
	* By default, buffer size 1024 is used.
	*
	* @return The buffer size.
	*/
	@:overload public function getBufferSize() : java.lang.Integer.Integer;
	
	/**
	* Sets the buffer size of this SNMP protocol adaptor.
	* This buffer size is used for both incoming request and outgoing
	* inform requests.
	*
	* @param s The buffer size.
	*
	* @exception java.lang.IllegalStateException This method has been invoked
	* while the communicator was <CODE>ONLINE</CODE> or <CODE>STARTING</CODE>.
	*/
	@:overload public function setBufferSize(s : java.lang.Integer.Integer) : Void;
	
	/**
	* Gets the number of times to try sending an inform request before
	* giving up.
	* By default, a maximum of 3 tries is used.
	* @return The maximun number of tries.
	*/
	@:overload @:final public function getMaxTries() : Int;
	
	/**
	* Changes the maximun number of times to try sending an inform
	* request before giving up.
	* @param newMaxTries The maximun number of tries.
	*/
	@:overload @:final @:synchronized public function setMaxTries(newMaxTries : Int) : Void;
	
	/**
	* Gets the timeout to wait for an inform response from the manager.
	* By default, a timeout of 3 seconds is used.
	* @return The value of the timeout property.
	*/
	@:overload @:final public function getTimeout() : Int;
	
	/**
	* Changes the timeout to wait for an inform response from the manager.
	* @param newTimeout The timeout (in milliseconds).
	*/
	@:overload @:final @:synchronized public function setTimeout(newTimeout : Int) : Void;
	
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
	* an <CODE>authenticationFailure</CODE> trap each time an
	* authentication fails.
	* <P>
	* The default behaviour is to send authentication traps.
	*
	* @return <CODE>true</CODE> if authentication traps are enabled,
	*         <CODE>false</CODE> otherwise.
	*/
	@:overload public function getAuthTrapEnabled() : Bool;
	
	/**
	* Sets the flag indicating if traps need to be sent in case of
	* authentication failure.
	*
	* @param enabled Flag indicating if traps need to be sent.
	*/
	@:overload public function setAuthTrapEnabled(enabled : Bool) : Void;
	
	/**
	* Returns <code>true</code> if this SNMP protocol adaptor sends a
	* response in case of authentication failure.
	* <P>
	* When this feature is enabled, the SNMP protocol adaptor sends a
	* response with <CODE>noSuchName</CODE> or <CODE>readOnly</CODE> when
	* the authentication failed. If the flag is disabled, the
	* SNMP protocol adaptor trashes the PDU silently.
	* <P>
	* The default behavior is to send responses.
	*
	* @return <CODE>true</CODE> if responses are sent.
	*/
	@:overload public function getAuthRespEnabled() : Bool;
	
	/**
	* Sets the flag indicating if responses need to be sent in case of
	* authentication failure.
	*
	* @param enabled Flag indicating if responses need to be sent.
	*/
	@:overload public function setAuthRespEnabled(enabled : Bool) : Void;
	
	/**
	* Returns the enterprise OID. It is used by
	* {@link #snmpV1Trap snmpV1Trap} to fill the 'enterprise' field of the
	* trap request.
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
	* Returns the <CODE>snmpInBadCommunityNames</CODE> value defined in
	* MIB-II.
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
	* Returns the <CODE>snmpSilentDrops</CODE> value defined in RFC
	* 1907 NMPv2-MIB .
	*
	* @return The <CODE>snmpSilentDrops</CODE> value.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getSnmpSilentDrops() : java.lang.Long.Long;
	
	/**
	* Returns the <CODE>snmpProxyDrops</CODE> value defined in RFC
	* 1907 NMPv2-MIB .
	*
	* @return The <CODE>snmpProxyDrops</CODE> value.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getSnmpProxyDrops() : java.lang.Long.Long;
	
	/**
	* Allows the MBean to perform any operations it needs before being
	* registered in the MBean server.
	* If the name of the SNMP protocol adaptor MBean is not specified,
	* it is initialized with the default value:
	* {@link com.sun.jmx.snmp.ServiceName#DOMAIN
	*   com.sun.jmx.snmp.ServiceName.DOMAIN}:{@link
	* com.sun.jmx.snmp.ServiceName#SNMP_ADAPTOR_SERVER
	* com.sun.jmx.snmp.ServiceName.SNMP_ADAPTOR_SERVER}.
	* If any exception is raised, the SNMP protocol adaptor MBean will
	* not be registered in the MBean server.
	*
	* @param server The MBean server to register the service with.
	* @param name The object name.
	*
	* @return The name of the SNMP protocol adaptor registered.
	*
	* @exception java.lang.Exception
	*/
	@:overload override public function preRegister(server : javax.management.MBeanServer.MBeanServer, name : javax.management.ObjectName.ObjectName) : javax.management.ObjectName.ObjectName;
	
	/**
	* Not used in this context.
	*/
	@:overload override public function postRegister(registrationDone : java.lang.Boolean.Boolean) : Void;
	
	/**
	* Not used in this context.
	*/
	@:overload override public function preDeregister() : Void;
	
	/**
	* Not used in this context.
	*/
	@:overload override public function postDeregister() : Void;
	
	/**
	* Adds a new MIB in the SNMP MIB handler.
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
	* This method is to be called to set a specific agent to a specific OID.
	* This can be useful when dealing with MIB overlapping.
	* Some OID can be implemented in more than one MIB. In this case,
	* the OID nearer agent will be used on SNMP operations.
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
	* Adds a new MIB in the SNMP MIB handler. In SNMP V1 and V2 the
	* <CODE>contextName</CODE> is useless and this method
	* is equivalent to <CODE>addMib(SnmpMibAgent mib)</CODE>.
	*
	* @param mib The MIB to add.
	* @param contextName The MIB context name.
	* @return A reference on the SNMP MIB handler.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function addMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, contextName : java.lang.String.String) : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler;
	
	/**
	* Adds a new MIB in the SNMP MIB handler. In SNMP V1 and V2 the
	* <CODE>contextName</CODE> is useless and this method
	* is equivalent to <CODE>addMib(SnmpMibAgent mib, SnmpOid[] oids)</CODE>.
	*
	* @param mib The MIB to add.
	* @param contextName The MIB context. If null is passed, will be
	*        registered in the default context.
	* @param oids The set of OIDs this agent implements.
	*
	* @return A reference to the SNMP MIB handler.
	*
	* @exception IllegalArgumentException If the parameter is null.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function addMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, contextName : java.lang.String.String, oids : java.NativeArray<SnmpOid>) : com.sun.jmx.snmp.agent.SnmpMibHandler.SnmpMibHandler;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	* In SNMP V1 and V2 the <CODE>contextName</CODE> is useless and this
	* method is equivalent to <CODE>removeMib(SnmpMibAgent mib)</CODE>.
	*
	* @param mib The MIB to be removed.
	* @param contextName The context name used at registration time.
	*
	* @return <CODE>true</CODE> if the specified <CODE>mib</CODE> was
	* a MIB included in the SNMP MIB handler, <CODE>false</CODE>
	* otherwise.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, contextName : java.lang.String.String) : Bool;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	*
	* @param mib The MIB to be removed.
	*
	* @return <CODE>true</CODE> if the specified <CODE>mib</CODE> was a MIB
	*         included in the SNMP MIB handler, <CODE>false</CODE> otherwise.
	*/
	@:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent) : Bool;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	*
	* @param mib The MIB to be removed.
	* @param oids The oid the MIB was previously registered for.
	* @return <CODE>true</CODE> if the specified <CODE>mib</CODE> was
	* a MIB included in the SNMP MIB handler, <CODE>false</CODE>
	* otherwise.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, oids : java.NativeArray<SnmpOid>) : Bool;
	
	/**
	* Removes the specified MIB from the SNMP protocol adaptor.
	*
	* @param mib The MIB to be removed.
	* @param contextName The context name used at registration time.
	* @param oids The oid the MIB was previously registered for.
	* @return <CODE>true</CODE> if the specified <CODE>mib</CODE> was
	* a MIB included in the SNMP MIB handler, <CODE>false</CODE>
	* otherwise.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function removeMib(mib : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, contextName : java.lang.String.String, oids : java.NativeArray<SnmpOid>) : Bool;
	
	/**
	* Creates the datagram socket.
	*/
	@:overload override private function doBind() : Void;
	
	/**
	* Return the actual port to which the adaptor is bound.
	* Can be different from the port given at construction time if
	* that port number was 0.
	* @return the actual port to which the adaptor is bound.
	**/
	@:overload override public function getPort() : Int;
	
	/**
	* Closes the datagram socket.
	*/
	@:overload override private function doUnbind() : Void;
	
	/**
	* Reads a packet from the datagram socket and creates a request
	* handler which decodes and processes the request.
	*/
	@:overload override private function doReceive() : Void;
	
	@:overload override private function doError(e : java.lang.Exception.Exception) : Void;
	
	/**
	* Not used in this context.
	*/
	@:overload override private function doProcess() : Void;
	
	/**
	* The number of times the communicator server will attempt
	* to bind before giving up.
	* We attempt only once...
	* @return 1
	**/
	@:overload override private function getBindTries() : Int;
	
	/**
	* Stops this SNMP protocol adaptor.
	* Closes the datagram socket.
	* <p>
	* Has no effect if this SNMP protocol adaptor is <CODE>OFFLINE</CODE> or
	* <CODE>STOPPING</CODE>.
	*/
	@:overload override public function stop() : Void;
	
	/**
	* Sends a trap using SNMP V1 trap format.
	* <BR>The trap is sent to each destination defined in the ACL file
	* (if available).
	* If no ACL file or no destinations are available, the trap is sent
	* to the local host.
	*
	* @param generic The generic number of the trap.
	* @param specific The specific number of the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined
	*            by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpV1Trap(generic : Int, specific : Int, varBindList : SnmpVarBindList) : Void;
	
	/**
	* Sends a trap using SNMP V1 trap format.
	* <BR>The trap is sent to the specified <CODE>InetAddress</CODE>
	* destination using the specified community string (and the ACL file
	* is not used).
	*
	* @param addr The <CODE>InetAddress</CODE> destination of the trap.
	* @param cs The community string to be used for the trap.
	* @param generic The generic number of the trap.
	* @param specific The specific number of the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined
	*            by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpV1Trap(addr : java.net.InetAddress.InetAddress, cs : java.lang.String.String, generic : Int, specific : Int, varBindList : SnmpVarBindList) : Void;
	
	/**
	* Sends a trap using SNMP V1 trap format.
	* <BR>The trap is sent to the specified <CODE>InetAddress</CODE>
	* destination using the specified parameters (and the ACL file is not
	* used).
	* Note that if the specified <CODE>InetAddress</CODE> destination is null,
	* then the ACL file mechanism is used.
	*
	* @param addr The <CODE>InetAddress</CODE> destination of the trap.
	* @param agentAddr The agent address to be used for the trap.
	* @param cs The community string to be used for the trap.
	* @param enterpOid The enterprise OID to be used for the trap.
	* @param generic The generic number of the trap.
	* @param specific The specific number of the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	* @param time The time stamp (overwrite the current time).
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined
	*            by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpV1Trap(addr : java.net.InetAddress.InetAddress, agentAddr : com.sun.jmx.snmp.SnmpIpAddress.SnmpIpAddress, cs : java.lang.String.String, enterpOid : SnmpOid, generic : Int, specific : Int, varBindList : SnmpVarBindList, time : SnmpTimeticks) : Void;
	
	/**
	* Sends a trap using SNMP V1 trap format.
	* <BR>The trap is sent to the specified <CODE>SnmpPeer</CODE> destination.
	* The community string used is the one located in the
	* <CODE>SnmpPeer</CODE> parameters
	* (<CODE>SnmpParameters.getRdCommunity() </CODE>).
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
	* @exception SnmpStatusException If the trap exceeds the limit
	* defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpV1Trap(peer : SnmpPeer, agentAddr : com.sun.jmx.snmp.SnmpIpAddress.SnmpIpAddress, enterpOid : SnmpOid, generic : Int, specific : Int, varBindList : SnmpVarBindList, time : SnmpTimeticks) : Void;
	
	/**
	* Sends a trap using SNMP V2 trap format.
	* <BR>The trap is sent to the specified <CODE>SnmpPeer</CODE> destination.
	* <BR>The community string used is the one located in the
	* <CODE>SnmpPeer</CODE> parameters
	* (<CODE>SnmpParameters.getRdCommunity() </CODE>).
	* <BR>The variable list included in the outgoing trap is composed of
	* the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with the value specified by
	*     <CODE>time</CODE></LI>
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by
	*     <CODE>trapOid</CODE></LI>
	* <LI><CODE>all the (oid,values)</CODE> from the specified
	*     <CODE>varBindList</CODE></LI>
	* </UL>
	*
	* @param peer The <CODE>SnmpPeer</CODE> destination of the trap.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	* @param time The time stamp (overwrite the current time).
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit
	* defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpV2Trap(peer : SnmpPeer, trapOid : SnmpOid, varBindList : SnmpVarBindList, time : SnmpTimeticks) : Void;
	
	/**
	* Sends a trap using SNMP V2 trap format.
	* <BR>The trap is sent to each destination defined in the ACL file
	* (if available). If no ACL file or no destinations are available,
	* the trap is sent to the local host.
	* <BR>The variable list included in the outgoing trap is composed of
	* the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value</LI>
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by
	*     <CODE>trapOid</CODE></LI>
	* <LI><CODE>all the (oid,values)</CODE> from the specified
	*     <CODE>varBindList</CODE></LI>
	* </UL>
	*
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined
	*            by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpV2Trap(trapOid : SnmpOid, varBindList : SnmpVarBindList) : Void;
	
	/**
	* Sends a trap using SNMP V2 trap format.
	* <BR>The trap is sent to the specified <CODE>InetAddress</CODE>
	* destination using the specified community string (and the ACL file
	* is not used).
	* <BR>The variable list included in the outgoing trap is composed of
	* the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value</LI>
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by
	*     <CODE>trapOid</CODE></LI>
	* <LI><CODE>all the (oid,values)</CODE> from the specified
	*     <CODE>varBindList</CODE></LI>
	* </UL>
	*
	* @param addr The <CODE>InetAddress</CODE> destination of the trap.
	* @param cs The community string to be used for the trap.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit
	*            defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpV2Trap(addr : java.net.InetAddress.InetAddress, cs : java.lang.String.String, trapOid : SnmpOid, varBindList : SnmpVarBindList) : Void;
	
	/**
	* Sends a trap using SNMP V2 trap format.
	* <BR>The trap is sent to the specified <CODE>InetAddress</CODE>
	* destination using the specified parameters (and the ACL file is not
	* used).
	* Note that if the specified <CODE>InetAddress</CODE> destination is null,
	* then the ACL file mechanism is used.
	* <BR>The variable list included in the outgoing trap is composed of the
	* following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with the value specified by
	*     <CODE>time</CODE></LI>
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by
	*     <CODE>trapOid</CODE></LI>
	* <LI><CODE>all the (oid,values)</CODE> from the specified
	*     <CODE>varBindList</CODE></LI>
	* </UL>
	*
	* @param addr The <CODE>InetAddress</CODE> destination of the trap.
	* @param cs The community string to be used for the trap.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	* @param time The time stamp (overwrite the current time).
	*
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit
	* defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpV2Trap(addr : java.net.InetAddress.InetAddress, cs : java.lang.String.String, trapOid : SnmpOid, varBindList : SnmpVarBindList, time : SnmpTimeticks) : Void;
	
	/**
	* Send the specified trap PDU to the passed <CODE>InetAddress</CODE>.
	* @param address The destination address.
	* @param pdu The pdu to send.
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit
	* defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpPduTrap(address : java.net.InetAddress.InetAddress, pdu : SnmpPduPacket) : Void;
	
	/**
	* Send the specified trap PDU to the passed <CODE>SnmpPeer</CODE>.
	* @param peer The destination peer. The Read community string is used of
	* <CODE>SnmpParameters</CODE> is used as the trap community string.
	* @param pdu The pdu to send.
	* @exception IOException An I/O error occurred while sending the trap.
	* @exception SnmpStatusException If the trap exceeds the limit defined
	* by <CODE>bufferSize</CODE>.
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpPduTrap(peer : SnmpPeer, pdu : SnmpPduPacket) : Void;
	
	/**
	* Sends an inform using SNMP V2 inform request format.
	* <BR>The inform request is sent to each destination defined in the ACL
	* file (if available).
	* If no ACL file or no destinations are available, the inform request is
	* sent to the local host.
	* <BR>The variable list included in the outgoing inform is composed of
	* the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value</LI>
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by
	*     <CODE>trapOid</CODE></LI>
	* <LI><CODE>all the (oid,values)</CODE> from the specified
	*     <CODE>varBindList</CODE></LI>
	* </UL>
	* To send an inform request, the SNMP adaptor server must be active.
	*
	* @param cb The callback that is invoked when a request is complete.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @return A vector of {@link com.sun.jmx.snmp.daemon.SnmpInformRequest}
	*         objects.
	*         <P>If there is no destination host for this inform request,
	*         the returned vector will be empty.
	*
	* @exception IllegalStateException  This method has been invoked while
	*            the SNMP adaptor server was not active.
	* @exception IOException An I/O error occurred while sending the
	*            inform request.
	* @exception SnmpStatusException If the inform request exceeds the
	*            limit defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpInformRequest(cb : com.sun.jmx.snmp.daemon.SnmpInformHandler.SnmpInformHandler, trapOid : SnmpOid, varBindList : SnmpVarBindList) : java.util.Vector.Vector<Dynamic>;
	
	/**
	* Sends an inform using SNMP V2 inform request format.
	* <BR>The inform is sent to the specified <CODE>InetAddress</CODE>
	* destination
	* using the specified community string.
	* <BR>The variable list included in the outgoing inform is composed
	*     of the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value</LI>
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by
	*      <CODE>trapOid</CODE></LI>
	* <LI><CODE>all the (oid,values)</CODE> from the specified
	*     <CODE>varBindList</CODE></LI>
	* </UL>
	* To send an inform request, the SNMP adaptor server must be active.
	*
	* @param addr The <CODE>InetAddress</CODE> destination for this inform
	*             request.
	* @param cs The community string to be used for the inform request.
	* @param cb The callback that is invoked when a request is complete.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @return The inform request object.
	*
	* @exception IllegalStateException  This method has been invoked
	*            while the SNMP adaptor server was not active.
	* @exception IOException An I/O error occurred while sending the
	*            inform request.
	* @exception SnmpStatusException If the inform request exceeds the
	*            limit defined by <CODE>bufferSize</CODE>.
	*/
	@:overload public function snmpInformRequest(addr : java.net.InetAddress.InetAddress, cs : java.lang.String.String, cb : com.sun.jmx.snmp.daemon.SnmpInformHandler.SnmpInformHandler, trapOid : SnmpOid, varBindList : SnmpVarBindList) : SnmpInformRequest;
	
	/**
	* Sends an inform using SNMP V2 inform request format.
	* <BR>The inform is sent to the specified <CODE>SnmpPeer</CODE>
	*     destination.
	* <BR>The community string used is the one located in the
	*     <CODE>SnmpPeer</CODE> parameters
	*     (<CODE>SnmpParameters.getInformCommunity() </CODE>).
	* <BR>The variable list included in the outgoing inform is composed
	*     of the following items:
	* <UL>
	* <LI><CODE>sysUpTime.0</CODE> with its current value</LI>
	* <LI><CODE>snmpTrapOid.0</CODE> with the value specified by
	*     <CODE>trapOid</CODE></LI>
	* <LI><CODE>all the (oid,values)</CODE> from the specified
	*     <CODE>varBindList</CODE></LI>
	* </UL>
	* To send an inform request, the SNMP adaptor server must be active.
	*
	* @param peer The <CODE>SnmpPeer</CODE> destination for this inform
	*             request.
	* @param cb The callback that is invoked when a request is complete.
	* @param trapOid The OID identifying the trap.
	* @param varBindList A list of <CODE>SnmpVarBind</CODE> instances or null.
	*
	* @return The inform request object.
	*
	* @exception IllegalStateException  This method has been invoked while
	*            the SNMP adaptor server was not active.
	* @exception IOException An I/O error occurred while sending the
	*            inform request.
	* @exception SnmpStatusException If the inform request exceeds the
	*            limit defined by <CODE>bufferSize</CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function snmpInformRequest(peer : SnmpPeer, cb : com.sun.jmx.snmp.daemon.SnmpInformHandler.SnmpInformHandler, trapOid : SnmpOid, varBindList : SnmpVarBindList) : SnmpInformRequest;
	
	/**
	* Method that maps an SNMP error status in the passed protocolVersion
	* according to the provided pdu type.
	* @param errorStatus The error status to convert.
	* @param protocolVersion The protocol version.
	* @param reqPduType The pdu type.
	*/
	@:overload @:final public static function mapErrorStatus(errorStatus : Int, protocolVersion : Int, reqPduType : Int) : Int;
	
	/**
	* Finalizer of the SNMP protocol adaptor objects.
	* This method is called by the garbage collector on an object
	* when garbage collection determines that there are no more
	* references to the object.
	* <P>Closes the datagram socket associated to this SNMP protocol adaptor.
	*/
	@:overload private function finalize() : Void;
	
	@:overload override private function createMainThread() : java.lang.Thread.Thread;
	
	
}

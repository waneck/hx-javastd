package com.sun.jmx.snmp.internal;
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
* This engine is conformant with the RFC 2571. It is the main object within
* an SNMP entity (agent, manager...).
* To an engine is associated an {@link com.sun.jmx.snmp.SnmpEngineId}.
* The way the engineId is retrieved is linked to the way the engine is
* instantiated. See each <CODE>SnmpEngine</CODE> constructor for more details.
* An engine is composed of a set of sub systems
* {@link com.sun.jmx.snmp.internal.SnmpSubSystem}. An <CODE>SNMP</CODE>
* engine can contain a:
*<ul>
*<li> Message Processing Sub System :
* {@link com.sun.jmx.snmp.internal.SnmpMsgProcessingSubSystem}</li>
*<li> Security Sub System :
* {@link com.sun.jmx.snmp.internal.SnmpSecuritySubSystem} </li>
*<li> Access Control Sub System :
* {@link com.sun.jmx.snmp.internal.SnmpAccessControlSubSystem}</li>
*</ul>
*<P> Each sub system contains a set of models. A model is an implementation
* of a particular treatement (eg: the User based Security Model defined in
* RFC 2574 is a functional element dealing with authentication and privacy).
*</P>
* Engine instantiation is based on a factory. This factory, implementing
* mandatorily {@link com.sun.jmx.snmp.SnmpEngineFactory  SnmpEngineFactory}
* is set in the method <CODE>setFactory</CODE>.
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class SnmpEngineImpl implements com.sun.jmx.snmp.SnmpEngine.SnmpEngine implements java.io.Serializable.Serializable
{
	/**
	* Security level. No authentication, no privacy. Value is 0,
	* as defined in RFC 2572
	*/
	public static var noAuthNoPriv(default, null) : Int;
	
	/**
	* Security level. Authentication, no privacy. Value is 1, as
	* defined in RFC 2572
	*/
	public static var authNoPriv(default, null) : Int;
	
	/**
	* Security level. Authentication, privacy. Value is 3,
	* as defined in RFC 2572
	*/
	public static var authPriv(default, null) : Int;
	
	/**
	* Flag that indicates that a report is to be sent. Value is 4, as defined in RFC 2572
	*/
	public static var reportableFlag(default, null) : Int;
	
	/**
	* Mask used to isolate authentication information within a message flag.
	*/
	public static var authMask(default, null) : Int;
	
	/**
	* Mask used to isolate privacy information within a message flag.
	*/
	public static var privMask(default, null) : Int;
	
	/**
	* Mask used to isolate authentication and privacy information within a message flag.
	*/
	public static var authPrivMask(default, null) : Int;
	
	/**
	* Gets the engine time in seconds. This is the time from the last reboot.
	* @return The time from the last reboot.
	*/
	@:overload @:synchronized public function getEngineTime() : Int;
	
	/**
	* Gets the engine Id. This is unique for each engine.
	* @return The engine Id object.
	*/
	@:overload public function getEngineId() : com.sun.jmx.snmp.SnmpEngineId.SnmpEngineId;
	
	/**
	* Gets the Usm key handler.
	* @return The key handler.
	*/
	@:overload public function getUsmKeyHandler() : com.sun.jmx.snmp.SnmpUsmKeyHandler.SnmpUsmKeyHandler;
	
	/**
	* Gets the engine Lcd.
	* @return The engine Lcd.
	*/
	@:overload public function getLcd() : com.sun.jmx.snmp.internal.SnmpLcd.SnmpLcd;
	
	/**
	* Gets the engine boot number. This is the number of time this engine has rebooted. Each time an <CODE>SnmpEngine</CODE> is instantiated, it will read this value in its Lcd, and store back the value incremented by one.
	* @return The engine's number of reboot.
	*/
	@:overload public function getEngineBoots() : Int;
	
	/**
	* Constructor. A Local Configuration Datastore is passed to the engine. It will be used to store and retrieve data (engine Id, engine boots).
	* <P> WARNING : The SnmpEngineId is computed as follow:
	* <ul>
	* <li> If an lcd file is provided containing the property "localEngineID", this property value is used.</li>.
	* <li> If not, if the passed engineID is not null, this engine ID is used.</li>
	* <li> If not, a time based engineID is computed.</li>
	* </ul>
	* This constructor should be called by an <CODE>SnmpEngineFactory</CODE>. Don't call it directly.
	* @param fact The factory used to instantiate this engine.
	* @param lcd The local configuration datastore.
	* @param engineid The engine ID to use. If null is provided, an SnmpEngineId is computed using the current time.
	* @throws UnknownHostException Exception thrown, if the host name located in the property "localEngineID" is invalid.
	*/
	@:overload public function new(fact : com.sun.jmx.snmp.SnmpEngineFactory.SnmpEngineFactory, lcd : com.sun.jmx.snmp.internal.SnmpLcd.SnmpLcd, engineid : com.sun.jmx.snmp.SnmpEngineId.SnmpEngineId) : Void;
	
	/**
	* Constructor. A Local Configuration Datastore is passed to the engine. It will be used to store and retrieve data (engine ID, engine boots).
	* <P> WARNING : The SnmpEngineId is computed as follow:
	* <ul>
	* <li> If an lcd file is provided containing the property "localEngineID", this property value is used.</li>.
	* <li> If not, the passed address and port are used to compute one.</li>
	* </ul>
	* This constructor should be called by an <CODE>SnmpEngineFactory</CODE>. Don't call it directly.
	* @param fact The factory used to instantiate this engine.
	* @param lcd The local configuration datastore.
	* @param port UDP port to use in order to calculate the engine ID.
	* @param address An IP address used to calculate the engine ID.
	* @throws UnknownHostException Exception thrown, if the host name located in the property "localEngineID" is invalid.
	*/
	@:overload public function new(fact : com.sun.jmx.snmp.SnmpEngineFactory.SnmpEngineFactory, lcd : com.sun.jmx.snmp.internal.SnmpLcd.SnmpLcd, address : java.net.InetAddress.InetAddress, port : Int) : Void;
	
	/**
	* Constructor. A Local Configuration Datastore is passed to the engine. It will be used to store and retrieve data (engine ID, engine boots).
	* <P> WARNING : The SnmpEngineId is computed as follow:
	* <ul>
	* <li> If an lcd file is provided containing the property "localEngineID", this property value is used.</li>.
	* <li> If not, The passed port is used to compute one.</li>
	* </ul>
	* This constructor should be called by an <CODE>SnmpEngineFactory</CODE>. Don't call it directly.
	* @param fact The factory used to instantiate this engine.
	* @param lcd The local configuration datastore
	* @param port UDP port to use in order to calculate the engine ID.
	* @throws UnknownHostException Exception thrown, if the host name located in the property "localEngineID" is invalid.
	*/
	@:overload public function new(fact : com.sun.jmx.snmp.SnmpEngineFactory.SnmpEngineFactory, lcd : com.sun.jmx.snmp.internal.SnmpLcd.SnmpLcd, port : Int) : Void;
	
	/**
	* Constructor. A Local Configuration Datastore is passed to the engine. It will be used to store and retrieve data (engine ID, engine boots).
	* <P> WARNING : The SnmpEngineId is computed as follow:
	* <ul>
	* <li> If an lcd file is provided containing the property "localEngineID", this property value is used.</li>.
	* <li> If not, a time based engineID is computed.</li>
	* </ul>
	* When no configuration nor java property is set for the engine ID value, a unique time based engine ID will be generated.
	* This constructor should be called by an <CODE>SnmpEngineFactory</CODE>. Don't call it directly.
	* @param fact The factory used to instantiate this engine.
	* @param lcd The local configuration datastore.
	*/
	@:overload public function new(fact : com.sun.jmx.snmp.SnmpEngineFactory.SnmpEngineFactory, lcd : com.sun.jmx.snmp.internal.SnmpLcd.SnmpLcd) : Void;
	
	/**
	* Access Control will check the oids. By default is false.
	*/
	@:overload @:synchronized public function activateCheckOid() : Void;
	
	/**
	* Access Control will not check the oids. By default is false.
	*/
	@:overload @:synchronized public function deactivateCheckOid() : Void;
	
	/**
	* Access Control check or not the oids. By default is false.
	*/
	@:overload @:synchronized public function isCheckOidActivated() : Bool;
	
	/**
	* Returns the Message Processing Sub System.
	* @return The Message Processing Sub System.
	*/
	@:overload public function getMsgProcessingSubSystem() : com.sun.jmx.snmp.internal.SnmpMsgProcessingSubSystem.SnmpMsgProcessingSubSystem;
	
	/**
	* Sets the Message Processing Sub System.
	* @param sys The Message Processing Sub System.
	*/
	@:overload public function setMsgProcessingSubSystem(sys : com.sun.jmx.snmp.internal.SnmpMsgProcessingSubSystem.SnmpMsgProcessingSubSystem) : Void;
	
	/**
	* Returns the Security Sub System.
	* @return The Security Sub System.
	*/
	@:overload public function getSecuritySubSystem() : com.sun.jmx.snmp.internal.SnmpSecuritySubSystem.SnmpSecuritySubSystem;
	
	/**
	* Sets the Security Sub System.
	* @param sys The Security Sub System.
	*/
	@:overload public function setSecuritySubSystem(sys : com.sun.jmx.snmp.internal.SnmpSecuritySubSystem.SnmpSecuritySubSystem) : Void;
	
	/**
	* Sets the Access Control Sub System.
	* @param sys The Access Control Sub System.
	*/
	@:overload public function setAccessControlSubSystem(sys : com.sun.jmx.snmp.internal.SnmpAccessControlSubSystem.SnmpAccessControlSubSystem) : Void;
	
	/**
	* Returns the Access Control Sub System.
	* @return The Access Control Sub System.
	*/
	@:overload public function getAccessControlSubSystem() : com.sun.jmx.snmp.internal.SnmpAccessControlSubSystem.SnmpAccessControlSubSystem;
	
	/**
	* Checks the passed msg flags according to the rules specified in RFC 2572.
	* @param msgFlags The msg flags.
	*/
	@:overload public static function checkSecurityLevel(msgFlags : java.StdTypes.Int8) : Void;
	
	
}

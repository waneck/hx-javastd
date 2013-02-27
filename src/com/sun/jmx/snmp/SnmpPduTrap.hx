package com.sun.jmx.snmp;
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
* Represents an SNMPv1-trap PDU.
* <P>
* You will not usually need to use this class, except if you
* decide to implement your own
* {@link com.sun.jmx.snmp.SnmpPduFactory SnmpPduFactory} object.
* <P>
* The <CODE>SnmpPduTrap</CODE> extends {@link com.sun.jmx.snmp.SnmpPduPacket SnmpPduPacket}
* and defines attributes specific to an SNMPv1 trap (see RFC1157).
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpPduTrap extends SnmpPduPacket
{
	/**
	* Enterprise object identifier.
	* @serial
	*/
	public var enterprise : SnmpOid;
	
	/**
	* Agent address. If the agent address source was not an IPv4 one (eg : IPv6), this field is null.
	* @serial
	*/
	public var agentAddr : com.sun.jmx.snmp.SnmpIpAddress.SnmpIpAddress;
	
	/**
	* Generic trap number.
	* <BR>
	* The possible values are defined in
	* {@link com.sun.jmx.snmp.SnmpDefinitions#trapColdStart SnmpDefinitions}.
	* @serial
	*/
	public var genericTrap : Int;
	
	/**
	* Specific trap number.
	* @serial
	*/
	public var specificTrap : Int;
	
	/**
	* Time-stamp.
	* @serial
	*/
	public var timeStamp : haxe.Int64;
	
	/**
	* Builds a new trap PDU.
	* <BR><CODE>type</CODE> and <CODE>version</CODE> fields are initialized with
	* {@link com.sun.jmx.snmp.SnmpDefinitions#pduV1TrapPdu pduV1TrapPdu}
	* and {@link com.sun.jmx.snmp.SnmpDefinitions#snmpVersionOne snmpVersionOne}.
	*/
	@:overload public function new() : Void;
	
	
}

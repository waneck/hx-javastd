package com.sun.jmx.snmp;
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
* Represents a <CODE>get-bulk</CODE> PDU as defined in RFC 1448.
* <P>
* <P>
* The <CODE>SnmpSocpedPduBulk</CODE> extends {@link com.sun.jmx.snmp.SnmpScopedPduPacket SnmpScopedPduPacket}
* and defines attributes specific to the <CODE>get-bulk</CODE> PDU (see RFC 1448).
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class SnmpScopedPduBulk extends com.sun.jmx.snmp.SnmpScopedPduPacket.SnmpScopedPduPacket implements com.sun.jmx.snmp.SnmpPduBulkType.SnmpPduBulkType
{
	@:overload public function new() : Void;
	
	/**
	* The <CODE>max-repetitions</CODE> setter.
	* @param max Maximum repetition.
	*/
	@:overload public function setMaxRepetitions(max : Int) : Void;
	
	/**
	* The <CODE>non-repeaters</CODE> setter.
	* @param nr Non repeaters.
	*/
	@:overload public function setNonRepeaters(nr : Int) : Void;
	
	/**
	* The <CODE>max-repetitions</CODE> getter.
	* @return Maximum repetition.
	*/
	@:overload public function getMaxRepetitions() : Int;
	
	/**
	* The <CODE>non-repeaters</CODE> getter.
	* @return Non repeaters.
	*/
	@:overload public function getNonRepeaters() : Int;
	
	/**
	* Generates the pdu to use for response.
	* @return Response pdu.
	*/
	@:overload public function getResponsePdu() : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	
}

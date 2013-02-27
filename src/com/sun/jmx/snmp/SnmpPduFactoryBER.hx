package com.sun.jmx.snmp;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
//// jmx import
////
//// SNMP Runtime import
////
/**
* Default implementation of the {@link com.sun.jmx.snmp.SnmpPduFactory SnmpPduFactory} interface.
* <BR>It uses the BER (basic encoding rules) standardized encoding scheme associated with ASN.1.
* <P>
* This implementation of the <CODE>SnmpPduFactory</CODE> is very
* basic: it simply calls encoding and decoding methods from
* {@link com.sun.jmx.snmp.SnmpMsg}.
* <BLOCKQUOTE>
* <PRE>
* public SnmpPdu decodeSnmpPdu(SnmpMsg msg)
* throws SnmpStatusException {
*   return msg.decodeSnmpPdu() ;
* }
*
* public SnmpMsg encodeSnmpPdu(SnmpPdu pdu, int maxPktSize)
* throws SnmpStatusException, SnmpTooBigException {
*   SnmpMsg result = new SnmpMessage() ;       // for SNMP v1/v2
* <I>or</I>
*   SnmpMsg result = new SnmpV3Message() ;     // for SNMP v3
*   result.encodeSnmpPdu(pdu, maxPktSize) ;
*   return result ;
* }
* </PRE>
* </BLOCKQUOTE>
* To implement your own object, you can implement <CODE>SnmpPduFactory</CODE>
* or extend <CODE>SnmpPduFactoryBER</CODE>.
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpPduFactoryBER implements com.sun.jmx.snmp.SnmpPduFactory.SnmpPduFactory implements java.io.Serializable.Serializable
{
	/**
	* Calls {@link com.sun.jmx.snmp.SnmpMsg#decodeSnmpPdu SnmpMsg.decodeSnmpPdu}
	* on the specified message and returns the resulting <CODE>SnmpPdu</CODE>.
	*
	* @param msg The SNMP message to be decoded.
	* @return The resulting SNMP PDU packet.
	* @exception SnmpStatusException If the encoding is invalid.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function decodeSnmpPdu(msg : com.sun.jmx.snmp.SnmpMsg.SnmpMsg) : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	/**
	* Encodes the specified <CODE>SnmpPdu</CODE> and
	* returns the resulting <CODE>SnmpMsg</CODE>. If this
	* method returns null, the specified <CODE>SnmpPdu</CODE>
	* will be dropped and the current SNMP request will be
	* aborted.
	*
	* @param p The <CODE>SnmpPdu</CODE> to be encoded.
	* @param maxDataLength The size limit of the resulting encoding.
	* @return Null or a fully encoded <CODE>SnmpMsg</CODE>.
	* @exception SnmpStatusException If <CODE>pdu</CODE> contains
	*            illegal values and cannot be encoded.
	* @exception SnmpTooBigException If the resulting encoding does not
	*            fit into <CODE>maxPktSize</CODE> bytes.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function encodeSnmpPdu(p : com.sun.jmx.snmp.SnmpPdu.SnmpPdu, maxDataLength : Int) : com.sun.jmx.snmp.SnmpMsg.SnmpMsg;
	
	
}

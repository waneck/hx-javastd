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
* <P> An <CODE>SnmpOutgoingRequest</CODE> handles the marshalling of the message to send.</P>
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern interface SnmpOutgoingRequest
{
	/**
	* Returns the cached security data used when marshalling the call as a secure one.
	* @return The cached data.
	*/
	@:overload public function getSecurityCache() : com.sun.jmx.snmp.internal.SnmpSecurityCache.SnmpSecurityCache;
	
	/**
	* Encodes the message to send and puts the result in the specified byte array.
	*
	* @param outputBytes An array to receive the resulting encoding.
	*
	* @exception ArrayIndexOutOfBoundsException If the result does not fit
	*                                           into the specified array.
	*/
	@:overload public function encodeMessage(outputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Initializes the message to send with the passed Pdu.
	* <P>
	* If the encoding length exceeds <CODE>maxDataLength</CODE>,
	* the method throws an exception.</P>
	*
	* @param p The PDU to be encoded.
	* @param maxDataLength The maximum length permitted for the data field.
	*
	* @exception SnmpStatusException If the specified PDU <CODE>p</CODE> is
	*    not valid.
	* @exception SnmpTooBigException If the resulting encoding does not fit
	*    into <CODE>maxDataLength</CODE> bytes.
	* @exception ArrayIndexOutOfBoundsException If the encoding exceeds
	*    <CODE>maxDataLength</CODE>.
	*/
	@:overload public function encodeSnmpPdu(p : com.sun.jmx.snmp.SnmpPdu.SnmpPdu, maxDataLength : Int) : com.sun.jmx.snmp.SnmpMsg.SnmpMsg;
	
	/**
	* Returns a stringified form of the message to send.
	* @return The message state string.
	*/
	@:overload public function printMessage() : java.lang.String.String;
	
	
}

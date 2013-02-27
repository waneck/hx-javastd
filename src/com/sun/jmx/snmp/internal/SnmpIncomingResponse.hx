package com.sun.jmx.snmp.internal;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
* <P> An <CODE>SnmpIncomingResponse</CODE> handles the unmarshalling of the received response.</P>
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern interface SnmpIncomingResponse
{
	/**
	* Returns the source address.
	* @return The source address.
	*/
	@:overload public function getAddress() : java.net.InetAddress.InetAddress;
	
	/**
	* Returns the source port.
	* @return The source port.
	*/
	@:overload public function getPort() : Int;
	
	/**
	* Gets the incoming response security parameters.
	* @return The security parameters.
	**/
	@:overload public function getSecurityParameters() : com.sun.jmx.snmp.SnmpSecurityParameters.SnmpSecurityParameters;
	
	/**
	* Call this method in order to reuse <CODE>SnmpOutgoingRequest</CODE> cache.
	* @param cache The security cache.
	*/
	@:overload public function setSecurityCache(cache : com.sun.jmx.snmp.internal.SnmpSecurityCache.SnmpSecurityCache) : Void;
	
	/**
	* Gets the incoming response security level. This level is defined in
	* {@link com.sun.jmx.snmp.SnmpEngine SnmpEngine}.
	* @return The security level.
	*/
	@:overload public function getSecurityLevel() : Int;
	
	/**
	* Gets the incoming response security model.
	* @return The security model.
	*/
	@:overload public function getSecurityModel() : Int;
	
	/**
	* Gets the incoming response context name.
	* @return The context name.
	*/
	@:overload public function getContextName() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decodes the specified bytes and initializes itself with the received
	* response.
	*
	* @param inputBytes The bytes to be decoded.
	*
	* @exception SnmpStatusException If the specified bytes are not a valid encoding.
	*/
	@:overload public function decodeMessage(inputBytes : java.NativeArray<java.StdTypes.Int8>, byteCount : Int, address : java.net.InetAddress.InetAddress, port : Int) : com.sun.jmx.snmp.SnmpMsg.SnmpMsg;
	
	/**
	* Gets the request PDU encoded in the received response.
	* <P>
	* This method decodes the data field and returns the resulting PDU.
	*
	* @return The resulting PDU.
	* @exception SnmpStatusException If the encoding is not valid.
	*/
	@:overload public function decodeSnmpPdu() : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	/**
	* Returns the response request Id.
	* @param data The flat message.
	* @return The request Id.
	*/
	@:overload public function getRequestId(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Returns a stringified form of the message to send.
	* @return The message state string.
	*/
	@:overload public function printMessage() : java.lang.String.String;
	
	
}

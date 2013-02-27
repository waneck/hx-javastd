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
//// java imports
////
/**
* A partially decoded representation of an SNMP packet. It contains
* the information contained in any SNMP message (SNMPv1, SNMPv2 or
* SNMPv3).
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class SnmpMsg implements SnmpDefinitions
{
	/**
	* The protocol version.
	* <P><CODE>decodeMessage</CODE> and <CODE>encodeMessage</CODE> do not
	* perform any check on this value.
	* <BR><CODE>decodeSnmpPdu</CODE> and <CODE>encodeSnmpPdu</CODE> only
	* accept  the values 0 (for SNMPv1), 1 (for SNMPv2) and 3 (for SNMPv3).
	*/
	public var version : Int;
	
	/**
	* Encoding of the PDU.
	* <P>This is usually the BER encoding of the PDU's syntax
	* defined in RFC1157 and RFC1902. However, this can be authenticated
	* or encrypted data (but you need to implemented your own
	* <CODE>SnmpPduFactory</CODE> class).
	*/
	public var data : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Number of useful bytes in the <CODE>data</CODE> field.
	*/
	public var dataLength : Int;
	
	/**
	* Source or destination address.
	* <BR>For an incoming message it's the source.
	* For an outgoing message it's the destination.
	*/
	public var address : java.net.InetAddress.InetAddress;
	
	/**
	* Source or destination port.
	* <BR>For an incoming message it's the source.
	* For an outgoing message it's the destination.
	*/
	public var port : Int;
	
	/**
	* Security parameters. Contain informations according to Security Model (Usm, community string based, ...).
	*/
	public var securityParameters : com.sun.jmx.snmp.SnmpSecurityParameters.SnmpSecurityParameters;
	
	/**
	* Returns the encoded SNMP version present in the passed byte array.
	* @param data The unmarshalled SNMP message.
	* @return The SNMP version (0, 1 or 3).
	*/
	@:overload public static function getProtocolVersion(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Returns the associated request ID.
	* @param data The flat message.
	* @return The request ID.
	*/
	@:overload @:abstract public function getRequestId(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Encodes this message and puts the result in the specified byte array.
	* For internal use only.
	*
	* @param outputBytes An array to receive the resulting encoding.
	*
	* @exception ArrayIndexOutOfBoundsException If the result does not fit
	*                                           into the specified array.
	*/
	@:overload @:abstract public function encodeMessage(outputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Decodes the specified bytes and initializes this message.
	* For internal use only.
	*
	* @param inputBytes The bytes to be decoded.
	*
	* @exception SnmpStatusException If the specified bytes are not a valid encoding.
	*/
	@:overload @:abstract public function decodeMessage(inputBytes : java.NativeArray<java.StdTypes.Int8>, byteCount : Int) : Void;
	
	/**
	* Initializes this message with the specified <CODE>pdu</CODE>.
	* <P>
	* This method initializes the data field with an array of
	* <CODE>maxDataLength</CODE> bytes. It encodes the <CODE>pdu</CODE>.
	* The resulting encoding is stored in the data field
	* and the length of the encoding is stored in <CODE>dataLength</CODE>.
	* <p>
	* If the encoding length exceeds <CODE>maxDataLength</CODE>,
	* the method throws an exception.
	*
	* @param pdu The PDU to be encoded.
	* @param maxDataLength The maximum length permitted for the data field.
	*
	* @exception SnmpStatusException If the specified <CODE>pdu</CODE> is not valid.
	* @exception SnmpTooBigException If the resulting encoding does not fit
	* into <CODE>maxDataLength</CODE> bytes.
	* @exception ArrayIndexOutOfBoundsException If the encoding exceeds <CODE>maxDataLength</CODE>.
	*/
	@:overload @:abstract public function encodeSnmpPdu(pdu : com.sun.jmx.snmp.SnmpPdu.SnmpPdu, maxDataLength : Int) : Void;
	
	/**
	* Gets the PDU encoded in this message.
	* <P>
	* This method decodes the data field and returns the resulting PDU.
	*
	* @return The resulting PDU.
	* @exception SnmpStatusException If the encoding is not valid.
	*/
	@:overload @:abstract public function decodeSnmpPdu() : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	/**
	* Dumps the content of a byte buffer using hexadecimal form.
	*
	* @param b The buffer to dump.
	* @param offset The position of the first byte to be dumped.
	* @param len The number of bytes to be dumped starting from offset.
	*
	* @return The string containing the dump.
	*/
	@:overload public static function dumpHexBuffer(b : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.lang.String.String;
	
	/**
	* Dumps this message in a string.
	*
	* @return The string containing the dump.
	*/
	@:overload public function printMessage() : java.lang.String.String;
	
	/**
	* For SNMP Runtime private use only.
	*/
	@:overload public function encodeVarBindList(benc : com.sun.jmx.snmp.BerEncoder.BerEncoder, varBindList : java.NativeArray<SnmpVarBind>) : Void;
	
	/**
	* For SNMP Runtime private use only.
	*/
	@:overload public function decodeVarBindList(bdec : com.sun.jmx.snmp.BerDecoder.BerDecoder) : java.NativeArray<SnmpVarBind>;
	
	
}

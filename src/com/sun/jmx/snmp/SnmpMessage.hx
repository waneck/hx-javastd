package com.sun.jmx.snmp;
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
/**
* Is a partially decoded representation of an SNMP packet.
* <P>
* You will not normally need to use this class unless you decide to
* implement your own {@link com.sun.jmx.snmp.SnmpPduFactory SnmpPduFactory} object.
* <P>
* The <CODE>SnmpMessage</CODE> class is directly mapped onto the
* <CODE>Message</CODE> syntax defined in RFC1157 and RFC1902.
* <BLOCKQUOTE>
* <PRE>
* Message ::= SEQUENCE {
*    version       INTEGER { version(1) }, -- for SNMPv2
*    community     OCTET STRING,           -- community name
*    data          ANY                     -- an SNMPv2 PDU
* }
* </PRE>
* </BLOCKQUOTE>
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @see SnmpPduFactory
* @see SnmpPduPacket
*
*/
extern class SnmpMessage extends com.sun.jmx.snmp.SnmpMsg.SnmpMsg implements SnmpDefinitions
{
	/**
	* Community name.
	*/
	public var community : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Encodes this message and puts the result in the specified byte array.
	* For internal use only.
	*
	* @param outputBytes An array to receive the resulting encoding.
	*
	* @exception ArrayIndexOutOfBoundsException If the result does not fit
	*                                           into the specified array.
	*/
	@:overload override public function encodeMessage(outputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Returns the associated request ID.
	* @param inputBytes The flat message.
	* @return The request ID.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function getRequestId(inputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Decodes the specified bytes and initializes this message.
	* For internal use only.
	*
	* @param inputBytes The bytes to be decoded.
	*
	* @exception SnmpStatusException If the specified bytes are not a valid encoding.
	*/
	@:overload override public function decodeMessage(inputBytes : java.NativeArray<java.StdTypes.Int8>, byteCount : Int) : Void;
	
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
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function encodeSnmpPdu(pdu : com.sun.jmx.snmp.SnmpPdu.SnmpPdu, maxDataLength : Int) : Void;
	
	/**
	* Gets the PDU encoded in this message.
	* <P>
	* This method decodes the data field and returns the resulting PDU.
	*
	* @return The resulting PDU.
	* @exception SnmpStatusException If the encoding is not valid.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function decodeSnmpPdu() : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	/**
	* Dumps this message in a string.
	*
	* @return The string containing the dump.
	*/
	@:overload override public function printMessage() : java.lang.String.String;
	
	
}

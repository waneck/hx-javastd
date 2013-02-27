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
//// import debug stuff
////
/**
* Is a partially decoded representation of an SNMP V3 packet.
* <P>
* This class can be used when developing customized manager or agent.
* <P>
* The <CODE>SnmpV3Message</CODE> class is directly mapped onto the
* message syntax defined in RFC 2572.
* <BLOCKQUOTE>
* <PRE>
* SNMPv3Message ::= SEQUENCE {
*          msgVersion INTEGER ( 0 .. 2147483647 ),
*          -- administrative parameters
*          msgGlobalData HeaderData,
*          -- security model-specific parameters
*          -- format defined by Security Model
*          msgSecurityParameters OCTET STRING,
*          msgData  ScopedPduData
*      }
*     HeaderData ::= SEQUENCE {
*         msgID      INTEGER (0..2147483647),
*         msgMaxSize INTEGER (484..2147483647),
*
*         msgFlags   OCTET STRING (SIZE(1)),
*                    --  .... ...1   authFlag
*                    --  .... ..1.   privFlag
*                    --  .... .1..   reportableFlag
*                    --              Please observe:
*                    --  .... ..00   is OK, means noAuthNoPriv
*                    --  .... ..01   is OK, means authNoPriv
*                    --  .... ..10   reserved, must NOT be used.
*                    --  .... ..11   is OK, means authPriv
*
*         msgSecurityModel INTEGER (1..2147483647)
*     }
* </BLOCKQUOTE>
* </PRE>
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class SnmpV3Message extends com.sun.jmx.snmp.SnmpMsg.SnmpMsg
{
	/**
	* Message identifier.
	*/
	public var msgId : Int;
	
	/**
	* Message max size the pdu sender can deal with.
	*/
	public var msgMaxSize : Int;
	
	/**
	* Message flags. Reportable flag  and security level.</P>
	*<PRE>
	* --  .... ...1   authFlag
	* --  .... ..1.   privFlag
	* --  .... .1..   reportableFlag
	* --              Please observe:
	* --  .... ..00   is OK, means noAuthNoPriv
	* --  .... ..01   is OK, means authNoPriv
	* --  .... ..10   reserved, must NOT be used.
	* --  .... ..11   is OK, means authPriv
	*</PRE>
	*/
	public var msgFlags : java.StdTypes.Int8;
	
	/**
	* The security model the security sub system MUST use in order to deal with this pdu (eg: User based Security Model Id = 3).
	*/
	public var msgSecurityModel : Int;
	
	/**
	* The unmarshalled security parameters.
	*/
	public var msgSecurityParameters : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The context engine Id in which the pdu must be handled (Generaly the local engine Id).
	*/
	public var contextEngineId : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The context name in which the OID has to be interpreted.
	*/
	public var contextName : java.NativeArray<java.StdTypes.Int8>;
	
	/** The encrypted form of the scoped pdu (Only relevant when dealing with privacy).
	*/
	public var encryptedPdu : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Constructor.
	*
	*/
	@:overload public function new() : Void;
	
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
	* Decodes the specified bytes and initializes this message.
	* For internal use only.
	*
	* @param inputBytes The bytes to be decoded.
	*
	* @exception SnmpStatusException If the specified bytes are not a valid encoding.
	*/
	@:overload override public function decodeMessage(inputBytes : java.NativeArray<java.StdTypes.Int8>, byteCount : Int) : Void;
	
	/**
	* Returns the associated request Id.
	* @param data The flat message.
	* @return The request Id.
	*/
	@:overload override public function getRequestId(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
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
	* @param p The PDU to be encoded.
	* @param maxDataLength The maximum length permitted for the data field.
	*
	* @exception SnmpStatusException If the specified <CODE>pdu</CODE>
	*   is not valid.
	* @exception SnmpTooBigException If the resulting encoding does not fit
	* into <CODE>maxDataLength</CODE> bytes.
	* @exception ArrayIndexOutOfBoundsException If the encoding exceeds
	*    <CODE>maxDataLength</CODE>.
	*/
	@:overload override public function encodeSnmpPdu(p : com.sun.jmx.snmp.SnmpPdu.SnmpPdu, maxDataLength : Int) : Void;
	
	/**
	* Gets the PDU encoded in this message.
	* <P>
	* This method decodes the data field and returns the resulting PDU.
	*
	* @return The resulting PDU.
	* @exception SnmpStatusException If the encoding is not valid.
	*/
	@:overload override public function decodeSnmpPdu() : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	/**
	* Dumps this message in a string.
	*
	* @return The string containing the dump.
	*/
	@:overload override public function printMessage() : java.lang.String.String;
	
	
}

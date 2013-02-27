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
* The message processing model interface. Any message processing model must implement this interface in order to be integrated in the engine framework.
* The model is called by the dispatcher when a call is received or when a call is sent.
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern interface SnmpMsgProcessingModel extends com.sun.jmx.snmp.internal.SnmpModel.SnmpModel
{
	/**
	* This method is called when a call is to be sent to the network.
	* @param factory The pdu factory to use to encode and decode pdu.
	* @return The object that will handle every steps of the sending (mainly marshalling and security).
	*/
	@:overload public function getOutgoingRequest(factory : com.sun.jmx.snmp.SnmpPduFactory.SnmpPduFactory) : com.sun.jmx.snmp.internal.SnmpOutgoingRequest.SnmpOutgoingRequest;
	
	/**
	* This method is called when a call is received from the network.
	* @param factory The pdu factory to use to encode and decode pdu.
	* @return The object that will handle every steps of the receiving (mainly unmarshalling and security).
	*/
	@:overload public function getIncomingRequest(factory : com.sun.jmx.snmp.SnmpPduFactory.SnmpPduFactory) : com.sun.jmx.snmp.internal.SnmpIncomingRequest.SnmpIncomingRequest;
	
	/**
	* This method is called when a response is received from the network.
	* @param factory The pdu factory to use to encode and decode pdu.
	* @return The object that will handle every steps of the receiving (mainly unmarshalling and security).
	*/
	@:overload public function getIncomingResponse(factory : com.sun.jmx.snmp.SnmpPduFactory.SnmpPduFactory) : com.sun.jmx.snmp.internal.SnmpIncomingResponse.SnmpIncomingResponse;
	
	/**
	* This method is called to instantiate a pdu according to the passed pdu type and parameters.
	* @param p The request parameters.
	* @param type The pdu type.
	* @return The pdu.
	*/
	@:overload public function getRequestPdu(p : com.sun.jmx.snmp.SnmpParams.SnmpParams, type : Int) : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	/**
	* This method is called to encode a full scoped pdu that has not been encrypted. <CODE>contextName</CODE>, <CODE>contextEngineID</CODE> and data are known.
	* <BR>The specified parameters are defined in RFC 2572 (see also the {@link com.sun.jmx.snmp.SnmpV3Message} class).
	* @param version The SNMP protocol version.
	* @param msgID The SNMP message ID.
	* @param msgMaxSize The max message size.
	* @param msgFlags The message flags.
	* @param msgSecurityModel The message security model.
	* @param params The security parameters.
	* @param contextEngineID The context engine ID.
	* @param contextName The context name.
	* @param data The encoded data.
	* @param dataLength The encoded data length.
	* @param outputBytes The buffer containing the encoded message.
	* @return The encoded bytes number.
	*/
	@:overload public function encode(version : Int, msgID : Int, msgMaxSize : Int, msgFlags : java.StdTypes.Int8, msgSecurityModel : Int, params : com.sun.jmx.snmp.SnmpSecurityParameters.SnmpSecurityParameters, contextEngineID : java.NativeArray<java.StdTypes.Int8>, contextName : java.NativeArray<java.StdTypes.Int8>, data : java.NativeArray<java.StdTypes.Int8>, dataLength : Int, outputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* This method is called to encode a full scoped pdu that as been encrypted. <CODE>contextName</CODE>, <CODE>contextEngineID</CODE> and data are known.
	* <BR>The specified parameters are defined in RFC 2572 (see also the {@link com.sun.jmx.snmp.SnmpV3Message} class).
	* @param version The SNMP protocol version.
	* @param msgID The SNMP message ID.
	* @param msgMaxSize The max message size.
	* @param msgFlags The message flags.
	* @param msgSecurityModel The message security model.
	* @param params The security parameters.
	* @param encryptedPdu The encrypted pdu.
	* @param outputBytes The buffer containing the encoded message.
	* @return The encoded bytes number.
	*/
	@:overload public function encodePriv(version : Int, msgID : Int, msgMaxSize : Int, msgFlags : java.StdTypes.Int8, msgSecurityModel : Int, params : com.sun.jmx.snmp.SnmpSecurityParameters.SnmpSecurityParameters, encryptedPdu : java.NativeArray<java.StdTypes.Int8>, outputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* This method returns a decoded scoped pdu. This method decodes only the <CODE>contextEngineID</CODE>, <CODE>contextName</CODE> and data. It is needed by the <CODE>SnmpSecurityModel</CODE> after decryption.
	* @param pdu The encoded pdu.
	* @return The partialy scoped pdu.
	*/
	@:overload public function decode(pdu : java.NativeArray<java.StdTypes.Int8>) : com.sun.jmx.snmp.internal.SnmpDecryptedPdu.SnmpDecryptedPdu;
	
	/**
	* This method returns an encoded scoped pdu. This method encode only the <CODE>contextEngineID</CODE>, <CODE>contextName</CODE> and data. It is needed by the <CODE>SnmpSecurityModel</CODE> for decryption.
	* @param pdu The pdu to encode.
	* @param outputBytes The partialy scoped pdu.
	* @return The encoded bytes number.
	*/
	@:overload public function encode(pdu : com.sun.jmx.snmp.internal.SnmpDecryptedPdu.SnmpDecryptedPdu, outputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* In order to change the behavior of the translator, set it.
	* @param translator The translator that will be used.
	*/
	@:overload public function setMsgTranslator(translator : com.sun.jmx.snmp.mpm.SnmpMsgTranslator.SnmpMsgTranslator) : Void;
	
	/**
	* Returns the current translator.
	* @return The current translator.
	*/
	@:overload public function getMsgTranslator() : com.sun.jmx.snmp.mpm.SnmpMsgTranslator.SnmpMsgTranslator;
	
	
}

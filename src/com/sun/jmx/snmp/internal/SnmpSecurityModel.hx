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
* Security model interface. Any security model implementation must implement this interface in order to be integrated in the engine framework. Security models are called when SNMP messages are received or sent. They deal with security (authentication and privacy).
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern interface SnmpSecurityModel extends com.sun.jmx.snmp.internal.SnmpModel.SnmpModel
{
	/**
	* Called when a request is to be sent to the network. It must be securized.
	* <BR>The specified parameters are defined in RFC 2572 (see also the {@link com.sun.jmx.snmp.SnmpV3Message} class).
	* @param cache The cache that has been created by calling <CODE>createSecurityCache</CODE> on this model.
	* @param version The SNMP protocol version.
	* @param msgID The current request id.
	* @param msgMaxSize The message max size.
	* @param msgFlags The message flags (reportable, Auth and Priv).
	* @param msgSecurityModel This current security model.
	* @param params The security parameters that contain the model dependant parameters.
	* @param contextEngineID The context engine ID.
	* @param contextName The context name.
	* @param data The marshalled varbind list.
	* @param dataLength The marshalled varbind list length.
	* @param outputBytes The buffer to fill with securized request. This is a representation independant marshalled format. This buffer will be sent to the network.
	* @return The marshalled byte number.
	*/
	@:overload public function generateRequestMsg(cache : com.sun.jmx.snmp.internal.SnmpSecurityCache.SnmpSecurityCache, version : Int, msgID : Int, msgMaxSize : Int, msgFlags : java.StdTypes.Int8, msgSecurityModel : Int, params : com.sun.jmx.snmp.SnmpSecurityParameters.SnmpSecurityParameters, contextEngineID : java.NativeArray<java.StdTypes.Int8>, contextName : java.NativeArray<java.StdTypes.Int8>, data : java.NativeArray<java.StdTypes.Int8>, dataLength : Int, outputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Called when a response is to be sent to the network. It must be securized.
	* <BR>The specified parameters are defined in RFC 2572 (see also the {@link com.sun.jmx.snmp.SnmpV3Message} class).
	* @param cache The cache that has been created by calling <CODE>createSecurityCache</CODE> on this model.
	* @param version The SNMP protocol version.
	* @param msgID The current request id.
	* @param msgMaxSize The message max size.
	* @param msgFlags The message flags (reportable, Auth and Priv)
	* @param msgSecurityModel This current security model.
	* @param params The security parameters that contain the model dependant parameters.
	* @param contextEngineID The context engine ID.
	* @param contextName The context name.
	* @param data The marshalled varbind list.
	* @param dataLength The marshalled varbind list length.
	* @param outputBytes The buffer to fill with securized request. This is a representation independant marshalled format. This buffer will be sent to the network.
	* @return The marshalled byte number.
	*/
	@:overload public function generateResponseMsg(cache : com.sun.jmx.snmp.internal.SnmpSecurityCache.SnmpSecurityCache, version : Int, msgID : Int, msgMaxSize : Int, msgFlags : java.StdTypes.Int8, msgSecurityModel : Int, params : com.sun.jmx.snmp.SnmpSecurityParameters.SnmpSecurityParameters, contextEngineID : java.NativeArray<java.StdTypes.Int8>, contextName : java.NativeArray<java.StdTypes.Int8>, data : java.NativeArray<java.StdTypes.Int8>, dataLength : Int, outputBytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Called when a request is received from the network. It handles authentication and privacy.
	* <BR>The specified parameters are defined in RFC 2572 (see also the {@link com.sun.jmx.snmp.SnmpV3Message} class).
	* @param cache The cache that has been created by calling <CODE>createSecurityCache</CODE> on this model.
	* @param version The SNMP protocol version.
	* @param msgID The current request id.
	* @param msgMaxSize The message max size.
	* @param msgFlags The message flags (reportable, Auth and Priv)
	* @param msgSecurityModel This current security model.
	* @param params The security parameters in a marshalled format. The informations contained in this array are model dependant.
	* @param contextEngineID The context engine ID or null if encrypted.
	* @param contextName The context name or null if encrypted.
	* @param data The marshalled varbind list or null if encrypted
	* @param encryptedPdu The encrypted pdu or null if not encrypted.
	* @param decryptedPdu The decrypted pdu. If no decryption is to be done, the passed context engine ID, context name and data could be used to fill this object.
	* @return The decoded security parameters.

	*/
	@:overload public function processIncomingRequest(cache : com.sun.jmx.snmp.internal.SnmpSecurityCache.SnmpSecurityCache, version : Int, msgID : Int, msgMaxSize : Int, msgFlags : java.StdTypes.Int8, msgSecurityModel : Int, params : java.NativeArray<java.StdTypes.Int8>, contextEngineID : java.NativeArray<java.StdTypes.Int8>, contextName : java.NativeArray<java.StdTypes.Int8>, data : java.NativeArray<java.StdTypes.Int8>, encryptedPdu : java.NativeArray<java.StdTypes.Int8>, decryptedPdu : com.sun.jmx.snmp.internal.SnmpDecryptedPdu.SnmpDecryptedPdu) : com.sun.jmx.snmp.SnmpSecurityParameters.SnmpSecurityParameters;
	
	/**
	* Called when a response is received from the network. It handles authentication and privacy.
	* <BR>The specified parameters are defined in RFC 2572 (see also the {@link com.sun.jmx.snmp.SnmpV3Message} class).
	* @param cache The cache that has been created by calling <CODE>createSecurityCache</CODE> on this model.
	* @param version The SNMP protocol version.
	* @param msgID The current request id.
	* @param msgMaxSize The message max size.
	* @param msgFlags The message flags (reportable, Auth and Priv)
	* @param msgSecurityModel This current security model.
	* @param params The security parameters in a marshalled format. The informations cointained in this array are model dependant.
	* @param contextEngineID The context engine ID or null if encrypted.
	* @param contextName The context name or null if encrypted.
	* @param data The marshalled varbind list or null if encrypted
	* @param encryptedPdu The encrypted pdu or null if not encrypted.
	* @param decryptedPdu The decrypted pdu. If no decryption is to be done, the passed context engine ID, context name and data could be used to fill this object.
	* @return The security parameters.

	*/
	@:overload public function processIncomingResponse(cache : com.sun.jmx.snmp.internal.SnmpSecurityCache.SnmpSecurityCache, version : Int, msgID : Int, msgMaxSize : Int, msgFlags : java.StdTypes.Int8, msgSecurityModel : Int, params : java.NativeArray<java.StdTypes.Int8>, contextEngineID : java.NativeArray<java.StdTypes.Int8>, contextName : java.NativeArray<java.StdTypes.Int8>, data : java.NativeArray<java.StdTypes.Int8>, encryptedPdu : java.NativeArray<java.StdTypes.Int8>, decryptedPdu : com.sun.jmx.snmp.internal.SnmpDecryptedPdu.SnmpDecryptedPdu) : com.sun.jmx.snmp.SnmpSecurityParameters.SnmpSecurityParameters;
	
	/**
	* Instantiate an <CODE>SnmpSecurityCache</CODE> that is dependant to the model implementation.
	* @return The model dependant security cache.
	*/
	@:overload public function createSecurityCache() : com.sun.jmx.snmp.internal.SnmpSecurityCache.SnmpSecurityCache;
	
	/**
	* Release the previously created cache.
	* @param cache The security cache to release.
	*/
	@:overload public function releaseSecurityCache(cache : com.sun.jmx.snmp.internal.SnmpSecurityCache.SnmpSecurityCache) : Void;
	
	
}

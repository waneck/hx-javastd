package com.sun.jmx.snmp.agent;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class implements the SnmpMibRequest interface.
* It represents the part of a SNMP request that involves a specific
* MIB. One instance of this class will be created for every MIB
* involved in a SNMP request, and will be passed to the SnmpMibAgent
* in charge of handling that MIB.
*
* Instances of this class are allocated by the SNMP engine. You will
* never need to use this class directly. You will only access
* instances of this class through their SnmpMibRequest interface.
*
*/
@:internal extern class SnmpMibRequestImpl implements com.sun.jmx.snmp.agent.SnmpMibRequest.SnmpMibRequest
{
	/**
	* @param engine The local engine.
	* @param reqPdu The received pdu.
	* @param vblist The vector of SnmpVarBind objects in which the
	*        MIB concerned by this request is involved.
	* @param protocolVersion  The protocol version of the SNMP request.
	* @param userData     User allocated contextual data. This object must
	*        be allocated on a per SNMP request basis through the
	*        SnmpUserDataFactory registered with the SnmpAdaptorServer,
	*        and is handed back to the user through SnmpMibRequest objects.
	*/
	@:overload public function new(engine : com.sun.jmx.snmp.SnmpEngine.SnmpEngine, reqPdu : com.sun.jmx.snmp.SnmpPdu.SnmpPdu, vblist : java.util.Vector.Vector<SnmpVarBind>, protocolVersion : Int, userData : java.lang.Object.Object, principal : java.lang.String.String, securityLevel : Int, securityModel : Int, contextName : java.NativeArray<java.StdTypes.Int8>, accessContextName : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the local engine. This parameter is returned only if <CODE> SnmpV3AdaptorServer </CODE> is the adaptor receiving this request. Otherwise null is returned.
	* @return the local engine.
	*/
	@:overload public function getEngine() : com.sun.jmx.snmp.SnmpEngine.SnmpEngine;
	
	/**
	* Gets the incoming request principal. This parameter is returned only if <CODE> SnmpV3AdaptorServer </CODE> is the adaptor receiving this request. Otherwise null is returned.
	* @return The request principal.
	**/
	@:overload public function getPrincipal() : java.lang.String.String;
	
	/**
	* Gets the incoming request security level. This level is defined in {@link com.sun.jmx.snmp.SnmpEngine SnmpEngine}. This parameter is returned only if <CODE> SnmpV3AdaptorServer </CODE> is the adaptor receiving this request. Otherwise -1 is returned.
	* @return The security level.
	*/
	@:overload public function getSecurityLevel() : Int;
	
	/**
	* Gets the incoming request security model. This parameter is returned only if <CODE> SnmpV3AdaptorServer </CODE> is the adaptor receiving this request. Otherwise -1 is returned.
	* @return The security model.
	*/
	@:overload public function getSecurityModel() : Int;
	
	/**
	* Gets the incoming request context name. This parameter is returned only if <CODE> SnmpV3AdaptorServer </CODE> is the adaptor receiving this request. Otherwise null is returned.
	* @return The context name.
	*/
	@:overload public function getContextName() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the incoming request context name used by Access Control Model in order to allow or deny the access to OIDs. This parameter is returned only if <CODE> SnmpV3AdaptorServer </CODE> is the adaptor receiving this request. Otherwise null is returned.
	* @return The checked context.
	*/
	@:overload public function getAccessContextName() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:final public function getPdu() : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	@:overload @:final public function getElements() : java.util.Enumeration.Enumeration<Dynamic>;
	
	@:overload @:final public function getSubList() : java.util.Vector.Vector<SnmpVarBind>;
	
	@:overload @:final public function getSize() : Int;
	
	@:overload @:final public function getVersion() : Int;
	
	@:overload @:final public function getRequestPduVersion() : Int;
	
	@:overload @:final public function getUserData() : java.lang.Object.Object;
	
	@:overload @:final public function getVarIndex(varbind : SnmpVarBind) : Int;
	
	@:overload public function addVarBind(varbind : SnmpVarBind) : Void;
	
	
}

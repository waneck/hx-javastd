package com.sun.jmx.snmp.daemon;
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
//// java import
////
//// jmx imports
////
//// SNMP Runtime import
////
@:internal extern class SnmpSubRequestHandler implements SnmpDefinitions implements java.lang.Runnable.Runnable
{
	private var incRequest : com.sun.jmx.snmp.internal.SnmpIncomingRequest.SnmpIncomingRequest;
	
	private var engine : com.sun.jmx.snmp.SnmpEngine.SnmpEngine;
	
	/**
	* V3 enabled Adaptor. Each Oid is added using updateRequest method.
	*/
	@:overload private function new(engine : com.sun.jmx.snmp.SnmpEngine.SnmpEngine, incRequest : com.sun.jmx.snmp.internal.SnmpIncomingRequest.SnmpIncomingRequest, agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, req : com.sun.jmx.snmp.SnmpPdu.SnmpPdu) : Void;
	
	/**
	* V3 enabled Adaptor.
	*/
	@:overload private function new(engine : com.sun.jmx.snmp.SnmpEngine.SnmpEngine, incRequest : com.sun.jmx.snmp.internal.SnmpIncomingRequest.SnmpIncomingRequest, agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, req : com.sun.jmx.snmp.SnmpPdu.SnmpPdu, nouse : Bool) : Void;
	
	/**
	* SNMP V1/V2 . To be called with updateRequest.
	*/
	@:overload private function new(agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, req : com.sun.jmx.snmp.SnmpPdu.SnmpPdu) : Void;
	
	/**
	* SNMP V1/V2 The constuctor initialize the subrequest with the whole varbind list contained
	* in the original request.
	*/
	@:overload private function new(agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, req : com.sun.jmx.snmp.SnmpPdu.SnmpPdu, nouse : Bool) : Void;
	
	@:overload public function run() : Void;
	
	/**
	* The method returns the error status of the operation.
	* The method takes into account the protocol version.
	*/
	@:overload private function getErrorStatus() : Int;
	
	/**
	* The method returns the error index as a position in the var bind list.
	* The value returned by the method corresponds to the index in the original
	* var bind list as received by the SNMP protocol adaptor.
	*/
	@:overload private function getErrorIndex() : Int;
	
	/**
	* The method updates the varbind list of the subrequest.
	*/
	@:overload private function updateRequest(_var : SnmpVarBind, pos : Int) : Void;
	
	/**
	* The method updates a given var bind list with the result of a
	* previsouly invoked operation.
	* Prior to calling the method, one must make sure that the operation was
	* successful. As such the method getErrorIndex or getErrorStatus should be
	* called.
	*/
	@:overload private function updateResult(result : java.NativeArray<SnmpVarBind>) : Void;
	
	/**
	* Store the protocol version to handle
	*/
	private var version : Int;
	
	/**
	* Store the operation type. Remember if the type is Walk, it means
	* that we have to invoke the check method ...
	*/
	private var type : Int;
	
	/**
	* Agent directly handled by the sub-request handler.
	*/
	private var agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent;
	
	/**
	* Error status.
	*/
	private var errorStatus : Int;
	
	/**
	* Index of error.
	* A value of -1 means no error.
	*/
	private var errorIndex : Int;
	
	/**
	* The varbind list specific to the current sub request.
	* The vector must contain object of type SnmpVarBind.
	*/
	private var varBind : java.util.Vector.Vector<SnmpVarBind>;
	
	/**
	* The array giving the index translation between the content of
	* <VAR>varBind</VAR> and the varbind list as specified in the request.
	*/
	private var translation : java.NativeArray<Int>;
	
	/**
	* Contextual object allocated by the SnmpUserDataFactory.
	**/
	private var data : java.lang.Object.Object;
	
	
}
@:native('com$sun$jmx$snmp$daemon$SnmpSubRequestHandler$NonSyncVector') @:internal extern class SnmpSubRequestHandler_NonSyncVector<E> extends java.util.Vector.Vector<E>
{
	@:overload public function new(size : Int) : Void;
	
	
}

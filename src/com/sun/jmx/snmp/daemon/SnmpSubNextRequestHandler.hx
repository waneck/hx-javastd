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
//// java imports
////
//// jmx imports
////
//// SNMP Runtime import
////
/* NPCTE fix for bugId 4492741, esc 0 */
/* end of NPCTE fix for bugId 4492741 */
@:internal extern class SnmpSubNextRequestHandler extends com.sun.jmx.snmp.daemon.SnmpSubRequestHandler.SnmpSubRequestHandler
{
	/**
	* The constuctor initialize the subrequest with the whole varbind
	* list contained in the original request.
	*/
	@:overload private function new(server : com.sun.jmx.snmp.daemon.SnmpAdaptorServer.SnmpAdaptorServer, agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, req : com.sun.jmx.snmp.SnmpPdu.SnmpPdu) : Void;
	
	@:overload private function new(engine : com.sun.jmx.snmp.SnmpEngine.SnmpEngine, server : com.sun.jmx.snmp.daemon.SnmpAdaptorServer.SnmpAdaptorServer, incRequest : com.sun.jmx.snmp.internal.SnmpIncomingRequest.SnmpIncomingRequest, agent : com.sun.jmx.snmp.agent.SnmpMibAgent.SnmpMibAgent, req : com.sun.jmx.snmp.SnmpPdu.SnmpPdu) : Void;
	
	@:overload override public function run() : Void;
	
	/**
	* The method updates the varbind list of the subrequest.
	*/
	@:overload override private function updateRequest(_var : SnmpVarBind, pos : Int) : Void;
	
	/**
	* The method updates a given var bind list with the result of a
	* previsouly invoked operation.
	* Prior to calling the method, one must make sure that the operation was
	* successful. As such the method getErrorIndex or getErrorStatus should be
	* called.
	*/
	@:overload override private function updateResult(result : java.NativeArray<SnmpVarBind>) : Void;
	
	
}

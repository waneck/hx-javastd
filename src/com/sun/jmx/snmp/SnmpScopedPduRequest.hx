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
/**
* Is used to represent <CODE>get</CODE>, <CODE>get-next</CODE>, <CODE>set</CODE>, <CODE>response</CODE> SNMP V3 scoped PDUs.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class SnmpScopedPduRequest extends com.sun.jmx.snmp.SnmpScopedPduPacket.SnmpScopedPduPacket implements com.sun.jmx.snmp.SnmpPduRequestType.SnmpPduRequestType
{
	/**
	* Error index setter. Remember that SNMP indices start from 1.
	* Thus the corresponding <CODE>SnmpVarBind</CODE> is
	* <CODE>varBindList[errorIndex-1]</CODE>.
	* @param i Error index.
	*/
	@:overload public function setErrorIndex(i : Int) : Void;
	
	/**
	* Error status setter. Statuses are defined in
	* {@link com.sun.jmx.snmp.SnmpDefinitions SnmpDefinitions}.
	* @param s Error status.
	*/
	@:overload public function setErrorStatus(s : Int) : Void;
	
	/**
	* Error index getter. Remember that SNMP indices start from 1.
	* Thus the corresponding <CODE>SnmpVarBind</CODE> is
	* <CODE>varBindList[errorIndex-1]</CODE>.
	* @return Error index.
	*/
	@:overload public function getErrorIndex() : Int;
	
	/**
	* Error status getter. Statuses are defined in
	* {@link com.sun.jmx.snmp.SnmpDefinitions SnmpDefinitions}.
	* @return Error status.
	*/
	@:overload public function getErrorStatus() : Int;
	
	/**
	* Generates the pdu to use for response.
	* @return Response pdu.
	*/
	@:overload public function getResponsePdu() : com.sun.jmx.snmp.SnmpPdu.SnmpPdu;
	
	
}

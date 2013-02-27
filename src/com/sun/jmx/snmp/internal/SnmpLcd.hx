package com.sun.jmx.snmp.internal;
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
* Class to extend in order to develop a customized Local Configuration Datastore. The Lcd is used by the <CODE>SnmpEngine</CODE> to store and retrieve data.
*<P> <CODE>SnmpLcd</CODE> manages the Lcds needed by every {@link com.sun.jmx.snmp.internal.SnmpModel SnmpModel}. It is possible to add and remove {@link com.sun.jmx.snmp.internal.SnmpModelLcd SnmpModelLcd}.</P>
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class SnmpLcd
{
	/**
	* Returns the number of time the engine rebooted.
	* @return The number of reboots or -1 if the information is not present in the Lcd.
	*/
	@:overload @:abstract public function getEngineBoots() : Int;
	
	/**
	* Returns the engine Id located in the Lcd.
	* @return The engine Id or null if the information is not present in the Lcd.
	*/
	@:overload @:abstract public function getEngineId() : java.lang.String.String;
	
	/**
	* Persists the number of reboots.
	* @param i Reboot number.
	*/
	@:overload @:abstract public function storeEngineBoots(i : Int) : Void;
	
	/**
	* Persists the engine Id.
	* @param id The engine Id.
	*/
	@:overload @:abstract public function storeEngineId(id : com.sun.jmx.snmp.SnmpEngineId.SnmpEngineId) : Void;
	
	/**
	* Adds an Lcd model.
	* @param sys The subsytem managing the model.
	* @param id The model Id.
	* @param lcd The Lcd model.
	*/
	@:overload public function addModelLcd(sys : com.sun.jmx.snmp.internal.SnmpSubSystem.SnmpSubSystem, id : Int, lcd : com.sun.jmx.snmp.internal.SnmpModelLcd.SnmpModelLcd) : Void;
	
	/**
	* Removes an Lcd model.
	* @param sys The subsytem managing the model.
	* @param id The model Id.
	*/
	@:overload public function removeModelLcd(sys : com.sun.jmx.snmp.internal.SnmpSubSystem.SnmpSubSystem, id : Int) : Void;
	
	/**
	* Gets an Lcd model.
	* @param sys The subsytem managing the model
	* @param id The model Id.
	* @return The Lcd model or null if no Lcd model were found.
	*/
	@:overload public function getModelLcd(sys : com.sun.jmx.snmp.internal.SnmpSubSystem.SnmpSubSystem, id : Int) : com.sun.jmx.snmp.internal.SnmpModelLcd.SnmpModelLcd;
	
	
}
@:native('com$sun$jmx$snmp$internal$SnmpLcd$SubSysLcdManager') @:internal extern class SnmpLcd_SubSysLcdManager
{
	@:overload public function addModelLcd(id : Int, usmlcd : com.sun.jmx.snmp.internal.SnmpModelLcd.SnmpModelLcd) : Void;
	
	@:overload public function getModelLcd(id : Int) : com.sun.jmx.snmp.internal.SnmpModelLcd.SnmpModelLcd;
	
	@:overload public function removeModelLcd(id : Int) : com.sun.jmx.snmp.internal.SnmpModelLcd.SnmpModelLcd;
	
	
}

package sun.management.snmp.jvmmib;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
////
//// Generated by mibgen version 5.0 (06/02/03) when compiling JVM-MANAGEMENT-MIB in standard metadata mode.
////
//// jmx imports
////
/**
* This interface is used for representing the remote management interface for the "JvmRTBootClassPathEntry" MBean.
*/
extern interface JvmRTBootClassPathEntryMBean
{
	/**
	* Getter for the "JvmRTBootClassPathItem" variable.
	*/
	@:overload public function getJvmRTBootClassPathItem() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTBootClassPathIndex" variable.
	*/
	@:overload public function getJvmRTBootClassPathIndex() : java.lang.Integer.Integer;
	
	
}

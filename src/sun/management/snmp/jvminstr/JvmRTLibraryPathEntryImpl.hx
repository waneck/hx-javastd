package sun.management.snmp.jvminstr;
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
//// java imports
////
//// jmx imports
////
//// jdmk imports
////
/**
* The class is used for implementing the "JvmRTLibraryPathEntry" group.
*/
extern class JvmRTLibraryPathEntryImpl implements sun.management.snmp.jvmmib.JvmRTLibraryPathEntryMBean.JvmRTLibraryPathEntryMBean implements java.io.Serializable.Serializable
{
	/**
	* Constructor for the "JvmRTLibraryPathEntry" group.
	*/
	@:overload public function new(item : java.lang.String.String, index : Int) : Void;
	
	/**
	* Getter for the "JvmRTLibraryPathItem" variable.
	*/
	@:overload public function getJvmRTLibraryPathItem() : java.lang.String.String;
	
	/**
	* Getter for the "JvmRTLibraryPathIndex" variable.
	*/
	@:overload public function getJvmRTLibraryPathIndex() : java.lang.Integer.Integer;
	
	
}

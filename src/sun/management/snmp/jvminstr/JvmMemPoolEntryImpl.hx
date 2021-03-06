package sun.management.snmp.jvminstr;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* The class is used for implementing the "JvmMemPoolEntry" group.
*/
extern class JvmMemPoolEntryImpl implements sun.management.snmp.jvmmib.JvmMemPoolEntryMBean.JvmMemPoolEntryMBean
{
	/**
	* Variable for storing the value of "JvmMemPoolIndex".
	*
	* "An index value opaquely computed by the agent which uniquely
	* identifies a row in the jvmMemPoolTable.
	* "
	*
	*/
	private var jvmMemPoolIndex(default, null) : Int;
	
	/**
	* Constructor for the "JvmMemPoolEntry" group.
	*/
	@:overload public function new(mp : java.lang.management.MemoryPoolMXBean.MemoryPoolMXBean, index : Int) : Void;
	
	/**
	* Getter for the "JvmMemPoolMaxSize" variable.
	*/
	@:overload public function getJvmMemPoolMaxSize() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolUsed" variable.
	*/
	@:overload public function getJvmMemPoolUsed() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolInitSize" variable.
	*/
	@:overload public function getJvmMemPoolInitSize() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolCommitted" variable.
	*/
	@:overload public function getJvmMemPoolCommitted() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolPeakMaxSize" variable.
	*/
	@:overload public function getJvmMemPoolPeakMaxSize() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolPeakUsed" variable.
	*/
	@:overload public function getJvmMemPoolPeakUsed() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolPeakCommitted" variable.
	*/
	@:overload public function getJvmMemPoolPeakCommitted() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolCollectMaxSize" variable.
	*/
	@:overload public function getJvmMemPoolCollectMaxSize() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolCollectUsed" variable.
	*/
	@:overload public function getJvmMemPoolCollectUsed() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolCollectCommitted" variable.
	*/
	@:overload public function getJvmMemPoolCollectCommitted() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolThreshold" variable.
	*/
	@:overload public function getJvmMemPoolThreshold() : java.lang.Long.Long;
	
	/**
	* Setter for the "JvmMemPoolThreshold" variable.
	*/
	@:overload public function setJvmMemPoolThreshold(x : java.lang.Long.Long) : Void;
	
	/**
	* Checker for the "JvmMemPoolThreshold" variable.
	*/
	@:overload public function checkJvmMemPoolThreshold(x : java.lang.Long.Long) : Void;
	
	/**
	* Getter for the "JvmMemPoolThreshdSupport" variable.
	*/
	@:overload public function getJvmMemPoolThreshdSupport() : sun.management.snmp.jvmmib.EnumJvmMemPoolThreshdSupport.EnumJvmMemPoolThreshdSupport;
	
	/**
	* Getter for the "JvmMemPoolThreshdCount" variable.
	*/
	@:overload public function getJvmMemPoolThreshdCount() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmMemPoolCollectThreshold" variable.
	*/
	@:overload public function getJvmMemPoolCollectThreshold() : java.lang.Long.Long;
	
	/**
	* Setter for the "JvmMemPoolCollectThreshold" variable.
	*/
	@:overload public function setJvmMemPoolCollectThreshold(x : java.lang.Long.Long) : Void;
	
	/**
	* Checker for the "JvmMemPoolCollectThreshold" variable.
	*/
	@:overload public function checkJvmMemPoolCollectThreshold(x : java.lang.Long.Long) : Void;
	
	/**
	* Getter for the "JvmMemPoolThreshdSupport" variable.
	*/
	@:overload public function getJvmMemPoolCollectThreshdSupport() : sun.management.snmp.jvmmib.EnumJvmMemPoolCollectThreshdSupport.EnumJvmMemPoolCollectThreshdSupport;
	
	/**
	* Getter for the "JvmMemPoolCollectThreshdCount" variable.
	*/
	@:overload public function getJvmMemPoolCollectThreshdCount() : java.lang.Long.Long;
	
	@:overload public static function jvmMemPoolType(type : java.lang.management.MemoryType.MemoryType) : sun.management.snmp.jvmmib.EnumJvmMemPoolType.EnumJvmMemPoolType;
	
	/**
	* Getter for the "JvmMemPoolType" variable.
	*/
	@:overload public function getJvmMemPoolType() : sun.management.snmp.jvmmib.EnumJvmMemPoolType.EnumJvmMemPoolType;
	
	/**
	* Getter for the "JvmMemPoolName" variable.
	*/
	@:overload public function getJvmMemPoolName() : java.lang.String.String;
	
	/**
	* Getter for the "JvmMemPoolIndex" variable.
	*/
	@:overload public function getJvmMemPoolIndex() : java.lang.Integer.Integer;
	
	/**
	* Getter for the "JvmMemPoolState" variable.
	*/
	@:overload public function getJvmMemPoolState() : sun.management.snmp.jvmmib.EnumJvmMemPoolState.EnumJvmMemPoolState;
	
	/**
	* Getter for the "JvmMemPoolPeakReset" variable.
	*/
	@:overload @:synchronized public function getJvmMemPoolPeakReset() : java.lang.Long.Long;
	
	/**
	* Setter for the "JvmMemPoolPeakReset" variable.
	*/
	@:overload @:synchronized public function setJvmMemPoolPeakReset(x : java.lang.Long.Long) : Void;
	
	/**
	* Checker for the "JvmMemPoolPeakReset" variable.
	*/
	@:overload public function checkJvmMemPoolPeakReset(x : java.lang.Long.Long) : Void;
	
	
}

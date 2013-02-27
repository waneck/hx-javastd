package sun.management.snmp.jvminstr;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
* The class is used for implementing the "JvmThreadInstanceEntry" group.
*/
extern class JvmThreadInstanceEntryImpl implements sun.management.snmp.jvmmib.JvmThreadInstanceEntryMBean.JvmThreadInstanceEntryMBean implements java.io.Serializable.Serializable
{
	/**
	* Constructor for the "JvmThreadInstanceEntry" group.
	*/
	@:overload public function new(info : java.lang.management.ThreadInfo.ThreadInfo, index : java.NativeArray<java.lang.Byte.Byte>) : Void;
	
	@:overload public static function getJvmThreadInstIndexOid() : java.lang.String.String;
	
	/**
	* Getter for the "JvmThreadInstLockedOwnerId" variable.
	*/
	@:overload public function getJvmThreadInstLockOwnerPtr() : java.lang.String.String;
	
	/**
	* Getter for the "JvmThreadInstLockName" variable.
	*/
	@:overload public function getJvmThreadInstLockName() : java.lang.String.String;
	
	/**
	* Getter for the "JvmThreadInstName" variable.
	*/
	@:overload public function getJvmThreadInstName() : java.lang.String.String;
	
	/**
	* Getter for the "JvmThreadInstCpuTimeNs" variable.
	*/
	@:overload public function getJvmThreadInstCpuTimeNs() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadInstBlockTimeMs" variable.
	*/
	@:overload public function getJvmThreadInstBlockTimeMs() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadInstBlockCount" variable.
	*/
	@:overload public function getJvmThreadInstBlockCount() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadInstWaitTimeMs" variable.
	*/
	@:overload public function getJvmThreadInstWaitTimeMs() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadInstWaitCount" variable.
	*/
	@:overload public function getJvmThreadInstWaitCount() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadInstState" variable.
	*/
	@:overload public function getJvmThreadInstState() : java.NativeArray<java.lang.Byte.Byte>;
	
	/**
	* Getter for the "JvmThreadInstId" variable.
	*/
	@:overload public function getJvmThreadInstId() : java.lang.Long.Long;
	
	/**
	* Getter for the "JvmThreadInstIndex" variable.
	*/
	@:overload public function getJvmThreadInstIndex() : java.NativeArray<java.lang.Byte.Byte>;
	
	
}
@:native('sun$management$snmp$jvminstr$JvmThreadInstanceEntryImpl$ThreadStateMap') extern class JvmThreadInstanceEntryImpl_ThreadStateMap
{
	public static var mask0(default, null) : java.StdTypes.Int8;
	
	public static var mask1(default, null) : java.StdTypes.Int8;
	
	@:overload public static function setNative(bitmap : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public static function setSuspended(bitmap : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public static function setState(bitmap : java.NativeArray<java.StdTypes.Int8>, state : java.lang.Thread.Thread_State) : Void;
	
	@:overload public static function checkOther(bitmap : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public static function getState(info : java.lang.management.ThreadInfo.ThreadInfo) : java.NativeArray<java.lang.Byte.Byte>;
	
	
}
@:native('sun$management$snmp$jvminstr$JvmThreadInstanceEntryImpl$ThreadStateMap$Byte0') extern class JvmThreadInstanceEntryImpl_ThreadStateMap_Byte0
{
	public static var inNative(default, null) : java.StdTypes.Int8;
	
	public static var suspended(default, null) : java.StdTypes.Int8;
	
	public static var newThread(default, null) : java.StdTypes.Int8;
	
	public static var runnable(default, null) : java.StdTypes.Int8;
	
	public static var blocked(default, null) : java.StdTypes.Int8;
	
	public static var terminated(default, null) : java.StdTypes.Int8;
	
	public static var waiting(default, null) : java.StdTypes.Int8;
	
	public static var timedWaiting(default, null) : java.StdTypes.Int8;
	
	
}
@:native('sun$management$snmp$jvminstr$JvmThreadInstanceEntryImpl$ThreadStateMap$Byte1') extern class JvmThreadInstanceEntryImpl_ThreadStateMap_Byte1
{
	public static var other(default, null) : java.StdTypes.Int8;
	
	public static var reserved10(default, null) : java.StdTypes.Int8;
	
	public static var reserved11(default, null) : java.StdTypes.Int8;
	
	public static var reserved12(default, null) : java.StdTypes.Int8;
	
	public static var reserved13(default, null) : java.StdTypes.Int8;
	
	public static var reserved14(default, null) : java.StdTypes.Int8;
	
	public static var reserved15(default, null) : java.StdTypes.Int8;
	
	public static var reserved16(default, null) : java.StdTypes.Int8;
	
	
}

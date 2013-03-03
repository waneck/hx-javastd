package sun.management;
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
/**
* Implementation class for a memory pool.
* Standard and committed hotspot-specific metrics if any.
*
* ManagementFactory.getMemoryPoolMXBeans() returns a list of
* instances of this class.
*/
@:internal extern class MemoryPoolImpl implements java.lang.management.MemoryPoolMXBean
{
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function isValid() : Bool;
	
	@:overload @:public public function getType() : java.lang.management.MemoryType;
	
	@:overload @:public public function getUsage() : java.lang.management.MemoryUsage;
	
	@:overload @:public @:synchronized public function getPeakUsage() : java.lang.management.MemoryUsage;
	
	@:overload @:public @:synchronized public function getUsageThreshold() : haxe.Int64;
	
	@:overload @:public public function setUsageThreshold(newThreshold : haxe.Int64) : Void;
	
	@:overload @:public public function getMemoryManagerNames() : java.NativeArray<String>;
	
	@:overload @:public public function resetPeakUsage() : Void;
	
	@:overload @:public public function isUsageThresholdExceeded() : Bool;
	
	@:overload @:public public function getUsageThresholdCount() : haxe.Int64;
	
	@:overload @:public public function isUsageThresholdSupported() : Bool;
	
	@:overload @:public @:synchronized public function getCollectionUsageThreshold() : haxe.Int64;
	
	@:overload @:public public function setCollectionUsageThreshold(newThreshold : haxe.Int64) : Void;
	
	@:overload @:public public function isCollectionUsageThresholdExceeded() : Bool;
	
	@:overload @:public public function getCollectionUsageThresholdCount() : haxe.Int64;
	
	@:overload @:public public function getCollectionUsage() : java.lang.management.MemoryUsage;
	
	@:overload @:public public function isCollectionUsageThresholdSupported() : Bool;
	
	@:overload @:public public function getObjectName() : javax.management.ObjectName;
	
	
}
/**
* PoolSensor will be triggered by the VM when the memory
* usage of a memory pool is crossing the usage threshold.
* The VM will not trigger this sensor in subsequent crossing
* unless the memory usage has returned below the threshold.
*/
@:native('sun$management$MemoryPoolImpl$PoolSensor') @:internal extern class MemoryPoolImpl_PoolSensor extends sun.management.Sensor
{
	
}
/**
* CollectionSensor will be triggered and cleared by the VM
* when the memory usage of a memory pool after GC is crossing
* the collection threshold.
* The VM will trigger this sensor in subsequent crossing
* regardless if the memory usage has changed siince the previous GC.
*/
@:native('sun$management$MemoryPoolImpl$CollectionSensor') @:internal extern class MemoryPoolImpl_CollectionSensor extends sun.management.Sensor
{
	
}

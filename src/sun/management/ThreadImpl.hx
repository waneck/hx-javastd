package sun.management;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ThreadImpl implements com.sun.management.ThreadMXBean
{
	@:overload public function getThreadCount() : Int;
	
	@:overload public function getPeakThreadCount() : Int;
	
	@:overload public function getTotalStartedThreadCount() : haxe.Int64;
	
	@:overload public function getDaemonThreadCount() : Int;
	
	@:overload public function isThreadContentionMonitoringSupported() : Bool;
	
	@:overload @:synchronized public function isThreadContentionMonitoringEnabled() : Bool;
	
	@:overload public function isThreadCpuTimeSupported() : Bool;
	
	@:overload public function isCurrentThreadCpuTimeSupported() : Bool;
	
	@:overload public function isThreadAllocatedMemorySupported() : Bool;
	
	@:overload public function isThreadCpuTimeEnabled() : Bool;
	
	@:overload public function isThreadAllocatedMemoryEnabled() : Bool;
	
	@:overload public function getAllThreadIds() : java.NativeArray<haxe.Int64>;
	
	@:overload public function getThreadInfo(id : haxe.Int64) : java.lang.management.ThreadInfo;
	
	@:overload public function getThreadInfo(id : haxe.Int64, maxDepth : Int) : java.lang.management.ThreadInfo;
	
	@:overload public function getThreadInfo(ids : java.NativeArray<haxe.Int64>) : java.NativeArray<java.lang.management.ThreadInfo>;
	
	@:overload public function getThreadInfo(ids : java.NativeArray<haxe.Int64>, maxDepth : Int) : java.NativeArray<java.lang.management.ThreadInfo>;
	
	@:overload public function setThreadContentionMonitoringEnabled(enable : Bool) : Void;
	
	@:overload public function getCurrentThreadCpuTime() : haxe.Int64;
	
	@:overload public function getThreadCpuTime(id : haxe.Int64) : haxe.Int64;
	
	@:overload public function getThreadCpuTime(ids : java.NativeArray<haxe.Int64>) : java.NativeArray<haxe.Int64>;
	
	@:overload public function getCurrentThreadUserTime() : haxe.Int64;
	
	@:overload public function getThreadUserTime(id : haxe.Int64) : haxe.Int64;
	
	@:overload public function getThreadUserTime(ids : java.NativeArray<haxe.Int64>) : java.NativeArray<haxe.Int64>;
	
	@:overload public function setThreadCpuTimeEnabled(enable : Bool) : Void;
	
	@:overload public function getThreadAllocatedBytes(id : haxe.Int64) : haxe.Int64;
	
	@:overload public function getThreadAllocatedBytes(ids : java.NativeArray<haxe.Int64>) : java.NativeArray<haxe.Int64>;
	
	@:overload public function setThreadAllocatedMemoryEnabled(enable : Bool) : Void;
	
	@:overload public function findMonitorDeadlockedThreads() : java.NativeArray<haxe.Int64>;
	
	@:overload public function findDeadlockedThreads() : java.NativeArray<haxe.Int64>;
	
	@:overload public function resetPeakThreadCount() : Void;
	
	@:overload public function isObjectMonitorUsageSupported() : Bool;
	
	@:overload public function isSynchronizerUsageSupported() : Bool;
	
	@:overload public function getThreadInfo(ids : java.NativeArray<haxe.Int64>, lockedMonitors : Bool, lockedSynchronizers : Bool) : java.NativeArray<java.lang.management.ThreadInfo>;
	
	@:overload public function dumpAllThreads(lockedMonitors : Bool, lockedSynchronizers : Bool) : java.NativeArray<java.lang.management.ThreadInfo>;
	
	@:overload public function getObjectName() : javax.management.ObjectName;
	
	
}

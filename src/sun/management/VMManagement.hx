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
extern interface VMManagement
{
	/**
	* An interface for the monitoring and management of the
	* Java virtual machine.
	*/
	@:overload public function isCompilationTimeMonitoringSupported() : Bool;
	
	@:overload public function isThreadContentionMonitoringSupported() : Bool;
	
	@:overload public function isThreadContentionMonitoringEnabled() : Bool;
	
	@:overload public function isCurrentThreadCpuTimeSupported() : Bool;
	
	@:overload public function isOtherThreadCpuTimeSupported() : Bool;
	
	@:overload public function isThreadCpuTimeEnabled() : Bool;
	
	@:overload public function isBootClassPathSupported() : Bool;
	
	@:overload public function isObjectMonitorUsageSupported() : Bool;
	
	@:overload public function isSynchronizerUsageSupported() : Bool;
	
	@:overload public function isThreadAllocatedMemorySupported() : Bool;
	
	@:overload public function isThreadAllocatedMemoryEnabled() : Bool;
	
	@:overload public function isGcNotificationSupported() : Bool;
	
	@:overload public function getTotalClassCount() : haxe.Int64;
	
	@:overload public function getLoadedClassCount() : Int;
	
	@:overload public function getUnloadedClassCount() : haxe.Int64;
	
	@:overload public function getVerboseClass() : Bool;
	
	@:overload public function getVerboseGC() : Bool;
	
	@:overload public function getManagementVersion() : String;
	
	@:overload public function getVmId() : String;
	
	@:overload public function getVmName() : String;
	
	@:overload public function getVmVendor() : String;
	
	@:overload public function getVmVersion() : String;
	
	@:overload public function getVmSpecName() : String;
	
	@:overload public function getVmSpecVendor() : String;
	
	@:overload public function getVmSpecVersion() : String;
	
	@:overload public function getClassPath() : String;
	
	@:overload public function getLibraryPath() : String;
	
	@:overload public function getBootClassPath() : String;
	
	@:overload public function getVmArguments() : java.util.List<String>;
	
	@:overload public function getStartupTime() : haxe.Int64;
	
	@:overload public function getAvailableProcessors() : Int;
	
	@:overload public function getCompilerName() : String;
	
	@:overload public function getTotalCompileTime() : haxe.Int64;
	
	@:overload public function getTotalThreadCount() : haxe.Int64;
	
	@:overload public function getLiveThreadCount() : Int;
	
	@:overload public function getPeakThreadCount() : Int;
	
	@:overload public function getDaemonThreadCount() : Int;
	
	@:overload public function getOsName() : String;
	
	@:overload public function getOsArch() : String;
	
	@:overload public function getOsVersion() : String;
	
	@:overload public function getSafepointCount() : haxe.Int64;
	
	@:overload public function getTotalSafepointTime() : haxe.Int64;
	
	@:overload public function getSafepointSyncTime() : haxe.Int64;
	
	@:overload public function getTotalApplicationNonStoppedTime() : haxe.Int64;
	
	@:overload public function getLoadedClassSize() : haxe.Int64;
	
	@:overload public function getUnloadedClassSize() : haxe.Int64;
	
	@:overload public function getClassLoadingTime() : haxe.Int64;
	
	@:overload public function getMethodDataSize() : haxe.Int64;
	
	@:overload public function getInitializedClassCount() : haxe.Int64;
	
	@:overload public function getClassInitializationTime() : haxe.Int64;
	
	@:overload public function getClassVerificationTime() : haxe.Int64;
	
	@:overload public function getInternalCounters(pattern : String) : java.util.List<sun.management.counter.Counter>;
	
	
}
